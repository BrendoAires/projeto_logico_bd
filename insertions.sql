insert into client (Fname, Minit, Lname, CPF, endereço) 
				values
					('Maria','M','Silva', 12346789, 'rua silva de prata 29, Carangola - Cidade das flores'),
					('Matheus','O','Pimentel', 987654321,'rua alemeda 289, Centro - Cidade das flores'),
					('Ricardo','F','Silva', 45678913,'avenida alemeda vinha 1009, Centro - Cidade das flores'),
					('Julia','S','França', 789123456,'rua lareijras 861, Centro - Cidade das flores'),
					('Roberta','G','Assis', 98745631,'avenidade koller 19, Centro - Cidade das flores'),
					('Isabela','M','Cruz', 654789123,'rua alemeda das flores 28, Centro - Cidade das flores'),
                    ('Elias','B','Alves', 99749999,'rua alemeda 45, Centro - Cidade das artes'),
					('Bruno','E','José', 45633443,'avenida das rosas 1009, Centro - Cidade das flores'),
					('Juliana','Q','Portugal', 247777756,'rua lareijras 861, Centro - Cidade das flores'),
					('Ana','G','Silva', 98888631,'avenidade koller 54, Centro - Cidade das flores'),
					('Joana','M','Alves', 656666123,'rua alemeda das flores 28, Centro - Cidade das flores');
                    

             
insert into product (Pname, classification_kids, category, avaliação, size)
				values
					('Notebook Dell', false, 'Eletrônico', '2', null),
                    ('Mouse Itautec', false, 'Eletrônico', '2', null),
                    ('Monitor Sony', false, 'Eletrônico', '2', null),                    
					('Fone de ouvido',false,'Eletrônico','4',null),
					('Barbie Elsa',true,'Brinquedos','3',null),
                    ('Body Carters',true,'Vestimenta','5',null),
					('Microfone Vedo - Youtuber',False,'Eletrônico','4',null),
                    ('Sofá retrátil',False,'Móveis','3','3x57x80'),
                    ('Farinha de arroz',False,'Alimentos','2',null),
                    ('Fire Stick Amazon',False,'Eletrônico','3',null),
                    ('Cadeira Gamer', false, 'Móveis', '5', null),
                    ('Mesa Computador', false, 'Móveis', '5', null); 
                    
                    
			
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus)
				values
						(1,1,2, null),
                        (3,2,1, null),
                        (8,3,1, null),
                        (4,4,2, null),
                        (10,5,1, null),
                        (16,6,1, null),
                        (17,7,2, null),
                        (8,8,1, null),
                        (4,9,1, null),
                        (6,10,2, null),
                        (9,11,1, null),
                        (2,12,1, null),
                        (5,13,2, null),
                        (8,14,1, null),
                        (10,15,1, null),
                        (13,16,2, null),
                        (17,17,1, null),
                        (2,18,1, null),
                        (7,19,2, null),
                        (6,20,1, null),
                        (8,21,1, null),
                        (9,22,2, null),
                        (10,23,1, null),
                        (12,24,1, null),
                        (14,25,2, null),
                        (16,26,1, null),
                        (17,27,1, null);
                        
                        
insert into productStorage (storageLocation, quantity) 
				values
						('Rio de Janeiro', 500),
                        ('São Paulo', 10),
                        ('São Paulo', 100),
                        ('São Paulo', 20),
                        ('São Paulo', 60);
                        
insert into supplier (SocialName, CNPJ, contact)
				values
						('Almeida e filhos', 123456789123456,'21985474'),
						('Eletrônicos Silva',854519649143457,'21985484'),
						('Eletrônicos Valma', 934567893934695,'21975474');
                        
insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact)
				values
						('Tech eletronics', null, 123456789456321, null, 'Rio de Janeiro', 219946287),
					    ('Botique Durgas',null,null,123456783,'Rio de Janeiro', 219567895),
						('Kids World',null,456789123654485,null,'São Paulo', 1198657484);
                        
                   
insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) 
				values 
						(2, default,'compra via aplicativo',50,1),
                        (3, default,'compra via aplicativo',null,0),
                        (2, default,'compra via aplicativo',40,0),
                        (5, default,'compra via aplicativo',null,0),
                        (7, default,'compra via aplicativo',30,0),
                        (6, 'Confirmado','compra via aplicativo',null,0),
                        (2, 'Confirmado','compra via aplicativo',null,1),
                        (3, 'Cancelado','compra via aplicativo',20,0),
                        (6, default,'compra via aplicativo',null,1),
                        (9, default,'compra via aplicativo',null,0),
                        (7, 'Cancelado','compra via aplicativo',null,1),
                        (9, 'Confirmado','compra via site',null,1),
                        (8, 'Confirmado','compra via site',null,0),
                        (4, 'Cancelado','compra via aplicativo',null,1),
                        (8, 'Cancelado','compra via aplicativo',null,0),
                        (7, 'Cancelado','compra via aplicativo',null,0),
                        (5, default,'compra via aplicativo',null,1),
                        (3, 'Confirmado','compra via aplicativo',30,1),
                        (2, default,'compra via aplicativo',20,0),
                        (5, default,'compra via site',null,1),
                        (10, default,'compra via site',50,0),
                        (11, 'Confirmado','compra via aplicativo',null,1),
                        (7, 'Confirmado','compra via aplicativo',null,0),
                        (5, 'Confirmado','compra via site',null,1),
                        (1, default,'compra via site',60,1),
                        (3, 'Em processamento','compra via site',40,0),
                        (4, 'Cancelado','compra via site',30,1);              
                        
					