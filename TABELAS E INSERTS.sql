Oficina de Reparos Automotivos

create database oficina; 
	use oficina;


/*CRIACAO DAS TABELAS*/


create table cliente(
	Pk_Cliente int primary key auto_increment,
	C_Nome varchar(30) not null,
	CPF varchar(11) not null unique,
	Telefone varchar(12) not null	
);

create table veiculo(
	Pk_Veiculo int primary key auto_increment,
	Placa varchar(7) not null unique,
	Modelo varchar(15),
	Ano char(4)default 'Não informado',
	Fabricante varchar(15) not null,
	cor varchar (15)default 'Não informado',
	Fk_Proprietario int not null,
	foreign key(Fk_Proprietario)
	references cliente(Pk_Cliente)
);

create table reparo(
	Pk_Reparo int primary key auto_increment,
	Tipo varchar(50) not null,
	Preco float(5,2) not null
);

create table funcionario(
	Pk_Funcionario int primary key auto_increment,
	F_Nome varchar(30)not null,
	Cargo enum('mecanico','eletricista','pintor')not null,
	Contratacao date not null
);

create table os(
	Pk_os int primary key auto_increment,
	Status enum('Processando','Finalizada') not null,
	Entrega date not null,
	Fk_Cliente int not null unique,
		foreign key (Fk_Cliente)
		references cliente (Pk_cliente),
	Fk_Reparo int not null,
		foreign key (Fk_Reparo)
		references reparo (pk_Reparo),
	Fk_Funcionario int not null,
		foreign key (Fk_Funcionario)
		references funcionario (Pk_Funcionario)
);





=====================================================================
/*INSERTS*/

insert into cliente values
(null, 'Maria Silva', '12345678901', '35991234567', null),
(null, 'João  da Silva', '12345678902', '35991234567', null),
(null, 'Ana Paula', '12345678903', '3599-8874224', null),
(null, 'Carlos Souza ', '12345678904', '35998874224', null),
(null, 'FERNANDA OLIVEIRA', '12345678905', '35998870000', null),
(null, 'maria das graças', '12345678906', '35998879999', null),
(null, 'Pedro', '12345678907', '359988700', null),
(null, 'Lucas Andrade', '12345678908', '35998870001', null),
(null, 'Juliana Costa', '12345678909', '35998870002', null),
(null, 'Marcos Vinicius', '12345678910', '98870003', null),
(null, 'Aline_Santos', '12345678911', '35998870004', null),
(null, 'Paulo   Lima', '12345678912', '35998870005', null),
(null, 'Beatriz  Souza', '12345678913', '35998870006', null),
(null, 'ricardo mendes', '12345678914', '35998870007', null),
(null, 'Cláudia F.', '12345678915', '35998870008', null),
(null, 'Renato--Alves', '12345678916', '35998870009', null),
(null, ' Débora Lima', '12345678917', '35998870010', null),
(null, 'Felipe', '12345678918', '35998870011', null),
(null, 'Patrícia Gomes', '12345678919', '998870012', null),
(null, 'André Castro', '12345678920', '35998870013', null),
(null, 'Camila Santos', '12345678921', '35-998870014', null),
(null, 'Thiago', '12345678922', '35998870015', null),
(null, 'mariana costa', '12345678923', '35998870016', null),
(null, 'JULIO CESAR', '12345678924', '35998870017', null),
(null, 'Fernanda Lopes', '12345678925', '35998870018', null),
(null, 'Roberto Carlos', '12345678926', '35998870019', null),
(null, 'Bruna   Dias', '12345678927', '35998870020', null),
(null, 'Alessandra', '12345678928', '35998870021', null),
(null, 'gustavo silva', '12345678929', '35998870022', null),
(null, 'MARCOS  PEREIRA', '12345678930', '35998870023', null),
(null, 'Luana', '12345678931', '998870024', null),
(null, 'Flávio A.', '12345678932', '35998870025', null),
(null, 'Tatiane Souza', '12345678933', '35998870026', null),
(null, 'Vinícius', '12345678934', '35998870027', null),
(null, 'Paula', '12345678935', '35998870028', null),
(null, 'Rodrigo', '12345678936', '35998870029', null),
(null, 'aline', '12345678937', '35998870030', null),
(null, 'CAMILA', '12345678938', '35998870031', null),
(null, 'Fabiana  Costa', '12345678939', '35998870032', null),
(null, 'Everton Silva', '12345678940', '35998870033', null),
(null, 'Douglas', '12345678941', '35998870034', null),
(null, 'Tatiane', '12345678942', '35998870035', null),
(null, 'Rafael', '12345678943', '35998870036', null),
(null, 'Cristiane', '12345678944', '35998870037', null),
(null, 'Vanessa   M.', '12345678945', '35998870038', null),
(null, 'Henrique', '12345678946', '35998870039', null),
(null, 'Sabrina', '12345678947', '35998870040', null),
(null, 'Leonardo', '12345678948', '35998870041', null),
(null, 'Karina', '12345678949', '35998870042', null),
(null, 'Maurício', '12345678950', '35998870043', null);


/*insert de veiculos*/

insert into veiculo values
(null, 'ABC1234', 'Civic', '2018', 'Honda', 'Preto', 1),
(null, 'XYZ9876', 'Corolla', '2020', 'Toyota', 'Branco', 1);
insert into veiculo values
(null, 'MNO4567', 'Gol', '2015', 'Volkswagen', 'Prata', 2),
(null, 'QWE7412', 'Onix', '2019', 'Chevrolett', 'Vermelho', 2),
(null, 'JKL852', 'Fiesta', '20X7', 'Ford', 'Azul', 2);
insert into veiculo values
(null, 'RTY9632', 'HB20', '2025', 'Hyundai', 'Cinza', 3);
insert into veiculo values
(null, 'UIO1597', 'Uno', '2014', 'Fiat', 'Verde', 4),
(null, 'BNM3579', 'Palio', 'abcd', 'Fiat', 'Amarelo', 4);
insert into veiculo values
(null, 'GHJ2581', 'Compass', '2022', 'Jeep', 'Preto', 5);
insert into veiculo values
(null, 'VBN7531', 'Toro', '2020', 'Fiatt', 'Branco', 6), 
(null, 'PLK1235', 'S10', '2018', 'Chevrolet', 'Prata', 6);
insert into veiculo values
(null, 'ZXC8524', 'Hilux', '2021', 'Toyta', 'Cinza', 7); 
insert into veiculo values
(null, 'ASD9517', 'Ka', '2016', 'Ford', 'Azul', 8),
(null, 'FGH1478', 'March', '2019', 'Nissan', 'Transparente', 8); 
insert into veiculo values
(null, 'QAZ6541', 'Celta', '2012', 'Chevrolet', 'Preto', 9);
insert into veiculo values
(null, 'WSX3214', 'Golf', '2020', 'Volkswagen', 'Branco', 10),
(null, 'EDC7415', 'Renegade', '2021', 'Jeep', NULL, 10); 
insert into veiculo values
(null, 'RFV9516', 'Creta', '2022', 'Hyundai', 'Azul', 11);

-- Cliente 12
insert into veiculo values
(null, 'TGB3571', 'Sandero', '2017', 'Renault', 'Prata', 12);
insert into veiculo values
(null, 'YHN1593', 'Logan', '2018', 'Renault', 'Vermelho', 13);
insert into veiculo values
(null, 'UJM4567', 'Kwid', '2022', 'Renault', 'Branco', 14),
(null, 'IKJ8520', 'Duster', '2021', 'Renault', 'Preto', 14);
insert into veiculo values
(null, 'OLP9517', 'Argo', '2019', 'Fiat', 'Cinza', 15);

insert into veiculo values
(null, 'POI7531', 'HB20S', '2020', 'Hyundai', 'Branco', 16);
insert into veiculo values
(null, 'LKJ3579', 'Tucson', '2021', 'Hyundai', 'Prata', 17);
insert into veiculo values
(null, 'MNZ1478', 'Kicks', '2019', 'Nissan', 'Vermelho', 18),
(null, 'XCV7415', 'Versa', '2020', 'Nissan', 'Azul', 18);
insert into veiculo values
(null, 'RTS9516', 'Civic', '2022', 'Honda', 'Preto', 19);
insert into veiculo values
(null, 'TGB1597', 'Corolla', '2021', 'Toyota', 'Prata', 20),
(null, 'VFR3571', 'Yaris', '2020', 'Toyota', 'Branco', 20);
insert into veiculo values
(null, 'AAA111', 'Uno', '2010', 'Fiat', 'Prata', 21),
(null, 'BBB-222', 'Corsa', '2009', 'Chevrolet', 'Verde', 22),
(null, 'CCC3333', 'EcoSport', '2017', 'Ford', 'Preto', 23),
(null, 'DDD4444', 'Strada', '2018', 'Fiat', 'Branco', 24),
(null, 'EEE5555', 'Cruze', '2019', 'Chevrolet', 'Azul', 25),
(null, 'FFF6666', 'HRV', '2021', 'Honda', 'Cinza', 26),
(null, 'GGG7777', 'City', '2022', 'Honda', 'Preto', 27),
(null, 'HHH8888', 'Saveiro', '2020', 'Volkswagen', 'Prata', 28),
(null, 'III9999', 'Siena', '2015', 'Fiat', 'Vermelho', 29),
(null, 'JJJ0000', 'Spin', '2023', 'Chevrolet', 'Azul', 30);
insert into veiculo values
(null, 'KLM1234', 'Fiorino', '2014', 'Fiat', 'Branco', 31),
(null, 'NOP5678', 'Ka+', '2017', 'Ford', 'Preto', 32), 
(null, 'QRS9012', 'Fit', '2018', 'Honda', 'Cinza', 33),
(null, 'TUV3456', 'Polo', '2019', 'Volkswagen', 'Branco', 34),
(null, 'WXY7890', 'Virtus', '2020', 'Volkswagen', 'Azul', 35),
(null, 'ZAB1357', 'Fox', '2016', 'Volkswagen', 'Vermelho', 36),
(null, 'CDE2468', 'Bravo', '2015', 'Fiat', 'Preto', 37),
(null, 'FGH3691', 'Idea', '2012', 'Fiat', 'Branco', 38),
(null, 'IJK4825', 'Tracker', '2021', 'Chevrolet', 'Prata', 39),
(null, 'LMN5936', 'Spin', '2020', 'Chevrolet', 'Azul', 40);
insert into veiculo values
(null, 'ABC1234', 'Civic', '2018', 'Honda', 'Preto', 41),
(null, 'OPQ1478', 'Corolla', '2020', 'Toyota', 'Cinza', 42),
(null, 'RST2581', 'Hilux', '2021', 'Toyota', 'Branco', 43),
(null, 'UVW3692', 'T-Cross', '2022', 'Volkswagen', 'Prata', 44),
(null, 'XYZ9876', 'Golf', '2019', 'Volkswagen', 'Azul', 45),
(null, 'AAA111', 'HRV', '2023', 'Honda', 'Preto', 46), 
(null, 'BCD2345', 'Toro', '2018', 'Fiat', 'Cinza', 47),
(null, 'DEF3456', 'Renegade', '2020', 'Jeep', 'Vermelho', 48),
(null, 'GHI4567', 'Compass', '2021', 'Jeep', 'Branco', 49),
(null, 'JKL5678', 'Wrangler', '2022', 'Jeep', 'Preto', 50),
(null, 'MNO6789', 'Cherokee', '2020', 'Jeep', 'Prata', 51),
(null,'WSW9898','null','null','Toyota','Preto',13);


/*insert de funcionarios*/

insert into funcionario values
(null,' Caio da Silva ','pintor','2017-05-19'),
(null,'mariana souza','mecanico','1901-03-12'),
(null,'Pedro Henrique','eletricista','2019-07-01'),
(null,'Lucas Almeida','pintor','2020-11-23'),
(null,'Ana Beatriz','mecanico','2021-01-15'),
(null,'Carlos da Silva','pintor','2019-05-10'),
(null,'João Pedro','eletricista','2020-09-30'),
(null,'Fernanda Oliveira','eletricista','2027-02-11'),
(null,'Mariana Souza','mecanico','2018-03-12'),
(null,'','pintor','2020-08-20'),
(null,'123456','mecanico','2017-01-05'),
(null,'Lucas Almeida','eletricista','2018-12-31'),
(null,'Rafael Lima','pintor','2016-06-12'),
(null,'Aline Costa','eletricista','2019-09-21'),
(null,'Bruno Martins','mecanico','2015-12-01'),
(null,'Letícia Ferreira','pintor','2020-02-15'),
(null,'Roberto Souza','mecanico','2018-08-08'),
(null,'Vanessa Almeida','eletricista','2021-05-30'),
(null,'Marcos Vinicius','pintor','2022-01-10'),
(null,'Patrícia Lopes','mecanico','2017-11-19'),
(null,'Gabriel Silva','eletricista','2019-03-03'),
(null,'Felipe Santos','pintor','2020-07-25'),
(null,'Juliana Rocha','eletricista','2023-12-01'),
(null,'Vítor Hugo','pintor','2025-05-15'),
(null,'Camila Dias','mecanico','2016-09-09'),
(null,'Mateus Oliveira','pintor','2021-10-20'),
(null,'Larissa Costa','eletricista','2020-04-04'),
(null,'Diego Ferreira','pintor','2019-06-06'),
(null,'Beatriz Gomes','mecanico','2022-03-03'),
(null,'Eduardo Lima','eletricista','2020-12-31');


/*insert de reparos*/
insert into reparo values
(null, 'Troca de óleo', 89.90),
(null, 'Alinhamento', 120.00),
(null, 'Balanceamento', 60.00),
(null, 'Troca de pastilhas de freio', 250.00),
(null, 'Substituição de filtro de ar', 45.50),
(null, 'Revisão completa', 550.00),
(null, 'Troca de óleo ', 95.00),
(null, 'ALinhamento', 130.00),
(null, 'balanceamento', 55.00),
(null, 'Troca de bateria', 300.00),
(null, 'Troca de correia dentada', 450.00),
(null, 'Substituição amortecedor', 380.00),
(null, 'Revisão completa', 560.00), 
(null, 'Lavagem do motor', 70.00),
(null, 'Troca de óleo sintetico', 120.00),
(null, 'Troca de pneus', 200.00),
(null, 'Reparo suspensão', 400.00),
(null, 'Troca de lâmpadas', 40.00),
(null, 'Troca de pastilha de freio', 260.00), 
(null, 'Troca de oleo', 85.00); 


/*insetrt de os*/
insert into os values
(null,'Processando','2025-09-01',1,1,1),
(null,'Finalizada','2025-09-03',1,2,2),
(null,'Processando','2024-12-30',2,3,3),
(null,'Finalizada','2024-11-15',2,4,4),
(null,'Processando','2023-01-10',3,5,5),
(null,'Finalizada','2022-05-20',4,6,6),
(null,'Processando','2025-08-25',4,7,7),
(null,'Finalizada','2021-12-01',5,8,8),
(null,'Processando','2023-03-03',6,9,9),
(null,'Finalizada','2022-07-07',6,10,10),
(null,'Processando','2024-02-14',7,11,11),
(null,'Finalizada','2023-11-30',8,12,12),
(null,'Processando','2025-06-01',8,13,13),
(null,'Finalizada','2024-09-09',9,14,14),
(null,'Processando','2022-04-04',10,15,15),
(null,'Finalizada','2023-10-10',10,16,16),
(null,'Processando','2025-12-12',11,17,17),
(null,'Finalizada','2023-05-05',12,18,18),
(null,'Processando','2024-08-08',13,19,19),
(null,'Finalizada','2022-09-09',14,20,20),
(null,'Processando','2023-03-15',15,1,1),
(null,'Finalizada','2024-07-20',16,2,2),
(null,'Processando','2025-01-30',17,3,3),
(null,'Finalizada','2024-02-28',18,4,4),
(null,'Processando','2023-06-10',19,5,5),
(null,'Finalizada','2024-09-12',20,6,6),
(null,'Processando','2022-11-05',21,7,7),
(null,'Finalizada','2023-12-01',22,8,8),
(null,'Processando','2025-04-04',23,9,9),
(null,'Finalizada','2024-06-06',24,10,10),
(null,'Processando','2023-08-08',25,11,11),
(null,'Finalizada','2024-10-10',26,12,12),
(null,'Processando','2022-12-12',27,13,13),
(null,'Finalizada','2023-01-01',28,14,14),
(null,'Processando','2025-03-03',29,15,15),
(null,'Finalizada','2024-05-05',30,16,16),
(null,'Processando','2023-07-07',31,17,17),
(null,'Finalizada','2024-09-09',32,18,18),
(null,'Processando','2022-02-02',33,19,19),
(null,'Finalizada','2023-04-04',34,20,20),
(null,'Processando','2025-06-06',35,1,1),
(null,'Finalizada','2024-08-08',36,2,2),
(null,'Processando','2023-10-10',37,3,3),
(null,'Finalizada','2024-12-12',38,4,4),
(null,'Processando','2022-01-15',39,5,5),
(null,'Finalizada','2023-03-20',40,6,6),
(null,'Processando','2025-05-25',41,7,7),
(null,'Finalizada','2024-07-30',42,8,8),
(null,'Processando','2023-09-05',43,9,9),
(null,'Finalizada','2024-11-10',44,10,10),
(null,'Processando','2022-03-15',45,11,11),
(null,'Finalizada','2023-04-01',46,12,12),
(null,'Processando','2024-05-02',47,13,13),
(null,'Finalizada','2025-06-03',48,14,14),
(null,'Processando','2023-07-04',49,15,15),
(null,'Finalizada','2024-08-05',50,16,16),
(null,'Processando','2022-09-06',51,17,17),
(null,'Finalizada','2023-10-07',1,18,18),
(null,'Processando','2025-11-08',2,19,19),
(null,'Finalizada','2024-12-09',3,20,20),
(null,'Processando','2023-01-10',4,1,1),
(null,'Finalizada','2025-02-11',5,2,2),
(null,'Processando','2024-03-12',6,3,3),
(null,'Finalizada','2023-04-13',7,4,4),
(null,'Processando','2025-05-14',8,5,5),
(null,'Finalizada','2024-06-15',9,6,6),
(null,'Processando','2023-07-16',10,7,7),
(null,'Finalizada','2025-08-17',11,8,8),
(null,'Processando','2024-09-18',12,9,9),
(null,'Finalizada','2023-10-19',13,10,10);
















