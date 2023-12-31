/*Criando Database*/

create database if not exists ecommerce;
use ecommerce;
/*Criando as tabelas*/



create table client(
	idClient int auto_increment primary key,
    Fname varchar(10),
    Minit char(3),
    Lname varchar(20),
    CPF char(11) not null,
    endereço varchar(30),
    constraint unique_cpf_cliente unique (CPF)
    );
    
    
    /* Criando Tabela Produtos*/
    
    create table product(
	idPproduct int auto_increment primary key,
    Pname varchar(255) not null,
    classification_kids bool default false,
    category enum("Eletrônico", "Vestimenta", "Brinquedos", "Alimentos","Móveis") not null,
    avaliação float default 0,
    size varchar(10)
    );
    
    /*Tabela Pagamento*/
    
create table payment(
	idCliente int primary key,
    id_payment int,
    typePayment enum("Boleto", "Cartão", "Dois Cartões"),
    limitAvailable float,
    primary key(idClient, id_payment)
);
    
    /* Criando tabela Pedido */


create table orders(
	idOrder int auto_increment primary key,
    idOrderClient int,
    orderStatus enum("Cancelado", "Confirmado", "Em processamento") default "Em processamento",
    orderDescription varchar(255),
    sendValue float default 0,   
    paymentCash bool default false,
    constraint fk_orders_client foreign key (idOrderClient) references client(idClient)
			on update cascade
);

-- Incluir idProduto vendido


/*Criando tabela Storage*/


create table productStorage(
	idProdStoragre int auto_increment primary key,
    storageLocation varchar(255),
    quantity int default 0    
);


/* Criando tabela Fornecedor */

create table supplier(
	idSupplier int auto_increment primary key,
    socialName varchar(255) not null,
    CNPJ char(15) not null,
    contact char(11) not null,
    constraint unique_supplier unique(CNPJ)
);


/*Criando tabela vendedor*/

create table seller(
	idSeller int auto_increment primary key,
    socialName varchar(255) not null,
    AbstName varchar(255),
    CNPJ char(15),
    CPF char(9),
    location varchar(255),
    contact char(11) not null,
    constraint unique_cnpj unique(CNPJ),
    constraint unique_cpf unique(CPF)
);

create table productOrder(
	idPOproduct int,
    idPOorder int,
    poQuantity int default 1,
    poStatus enum("Disponível", "Sem estoque") default "Disponível",
    primary key (idPOproduct, idPOorder),
    constraint fk_productorder_product foreign key (idPOproduct) references product(idPproduct),
    constraint fk_productorder_order foreign key (idPOorder) references orders(idOrder)
);

create table productSeller(
	idPseller int,
    idPproduct int,
    prodQuantity int default 1,
    primary key (idPseller, idPproduct),
    constraint fk_product_seller foreign key (idPseller) references seller(idSeller),
    constraint fk_product_product foreign key (idPproduct) references product(idPproduct)
);


create table storageLocation(
	idLproduct int,
    idLstorage int,
    location varchar(255) not null,
    primary key(idLproduct, idLstorage),
    constraint fk_storage_location_product foreign key (idLproduct) references product(idProduct),
    constraint fk_product_location_product foreign key (idLstorage) references productStorage(idProdStorage)
);

create table productSupplier(
	idPsSupplier int,
    idPsProduct int,
    quantity int not null,
    primary key (idPsSupplier, idPsProduct),
    constraint fk_product_supplier_suplier foreign key (idPsSupplier) references supplier(idSupplier),
    constraint fk_product_supplier_product foreign key (idPsProduct) references product(idProduct)
);
