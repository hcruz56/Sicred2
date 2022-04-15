create database sicooperative;

use sicooperative;

drop table associado;
drop table conta;
drop table tipo_conta;
drop table cartao;
drop table movimento;

create table if not exists associado
(
id int primary key,
nome varchar(50),
sobrenome varchar(50),
idade int,
email varchar(40)
);

create table if not exists tipo_conta
(
tipo  int,
descricao varchar(20)
);

create table if not exists conta
(
id int primary key,
tipo int, #tipo conta
data_criacao timestamp,
id_associado int
);

create table if not exists cartao
(
id int primary key,
num_cartao int,
nom_impresso varchar(100),
id_conta int,
id_associado int
);

create table if not exists movimento
(
id int primary key,
vlr_transacao decimal(10,2),
des_transacao varchar(50),
data_movimento timestamp,
id_cartao int
);

insert into associado values(1,'Francisco Antonio','Silva Cruz',40,'fransilva@gmail.com');
insert into associado values(2,'Antonio Francisco','Silva Cruz',65,'antoniofran@gmail.com');
insert into associado values(3,'Angelo Antonio','Silva Cruz',28,'angeloant@gmail.com');
insert into associado values(4,'Fernando Antonio','Silva Cruz',30,'fsilva@gmail.com');
insert into associado values(5,'Roberto Carlos','Silva Cruz',44,'rcsilva@gmail.com');
insert into associado values(6,'Bruno','soares Cruz',42,'brunosoares@gmail.com');
insert into associado values(7,'Susana ','Souza Cruz',22,'Suzana@gmail.com');
insert into associado values(8,'Fernanda ','Lima de Oliveira',48,'Suzana@gmail.com');
insert into associado values(9,'Jaqueline ','Correa',55,'Suzana@gmail.com');
insert into associado values(10,'Margarida ','Almeida Pires',82,'Suzana@gmail.com');
insert into associado values(11,'Michelle ','Fonseca de Barros',34,'mfonseca@hotmail.com');
insert into associado values(12,'Anderson ','Vieira de Barros',43,'avbarros@hotmail.com');
insert into associado values(13,'Alberto Roberto ','Fonseca de Barros',34,'albertofonseca1@hotmail.com');
insert into associado values(14,'Alessandra ','Chaves de Oliveira',43,'alechaves@hotmail.com');
insert into associado values(15,'Priscilla ','de Barros',34,'pribarros@gmail.com');
insert into associado values(16,'Rebeca ','Alencar',23,'rebecaalencar@hotmail.com');
insert into associado values(17,'Ana Paula ','Oliveira de Souza',34,'anapaulasouza@hotmail');
insert into associado values(18,'Andressa ','Vieira de Barros',43,'andressavbarros@gmail.com');
insert into associado values(19,'Paulo Roberto ','Fagundes',34,'probertofagundes@hotmail.com');
insert into associado values(20,'Carlos Alberto ','Solano',43,'csol@gmail.com');
insert into associado values(21,'Chritinne ','Barbosa',33,'chritinnebarbosa@hotmail.com');
insert into associado values(22,'Andre ','La Pasta de Souza',48,'alapasta@gmail.com');
insert into associado values(23,'Rodoldo ','dos Santos',43,'rodolfosantos43@gmail.com');
insert into associado values(24,'Rafael ','Fazio',47,'rfazio@hotmail.com');
insert into associado values(25,'Humberto ','Almeida Cruz',55,'hcruu55@gmail.com');




insert into tipo_conta values(1,'Individual');
insert into tipo_conta values(2,'Conjunta');
insert into tipo_conta values(3,'Solidária');


insert into conta values (1,'1','2019-01-01 00:00:01',9);
insert into conta values (2,'2','2019-01-28 00:00:01',9);
insert into conta values (4,'3','2022-01-18 00:00:01',9);
insert into conta values (3,'1','2018-12-01 00:00:01',8);
insert into conta values (5,'3','2016-01-28 00:00:01',12);
insert into conta values (6,'1','2021-10-01 00:00:01',11);
insert into conta values (7,'2','2016-08-28 00:00:01',11);
insert into conta values (8,'1','2019-01-01 00:00:01',1);
insert into conta values (9,'2','2019-01-28 00:00:01',7);
insert into conta values (10,'2','2022-01-18 00:00:01',24);
insert into conta values (11,'3','2022-01-18 00:00:01',18);
insert into conta values (12,'1','2022-01-18 00:00:01',22);
insert into conta values (13,'2','2022-01-18 00:00:01',22);
insert into conta values (14,'2','2022-01-18 00:00:01',25);
insert into conta values (15,'1','2022-01-18 00:00:01',20);

insert into cartao values (1,11111111,'JAQUELINE CORREA',2,9);
insert into cartao values (2,4444444,'JAQUELINE CORREA',3,8);
insert into cartao values (3,8888888,'JAQUELINE CORREA',3,8);
insert into cartao values (4,22222222,'JAQUELINE CORREA',2,9);
insert into cartao values (5,12112118,'ANDERSON V BARROS',8,12);
insert into cartao values (6,99999999,'ANDERSON V BARROS',5,12);
insert into cartao values (7,3333333,'FERNANDA L OLIVEIRA',3,8);
insert into cartao values (8,21212118,'ANDERSON V BARROS',5,12);
insert into cartao values (9,17117171,'MICHELLE F BARROS',6,11);
insert into cartao values (10,77777777,'ANDERSON V BARROS',5,12);
insert into cartao values (11,37388558,'MICHELLE F BARROS',7,11);
insert into cartao values (12,21212121,'ANDERSON V BARROS',5,12);
insert into cartao values (13,47455888,'HUMBERTO A S CRUZ',14,25);
insert into cartao values (14,47455899,'ANDRE LA PASTA',12,22);
insert into cartao values (15,47455777,'CARLOS ALBERTO SOLANO',15,20);
insert into cartao values (16,55466533,'RAFAEL FAZIO',10,24);
insert into cartao values (17,47455890,'ANDRESSA V BARROS',11,18);
insert into cartao values (18,48566888,'ANDRE LA PASTA',13,22);
insert into cartao values (19,36388558,'CARLOS ALBERTO SOLANO',15,20);
insert into cartao values (20,21212121,'SUSANA SOUZA CRUZ',9,7);

insert into movimento values (1,2800.32,'Emprestimo Pessoal','2019-12-01 22:00:01',1);
insert into movimento values (2,850.88,'Compra Loja','2019-12-01 23:00:01',4);
insert into movimento values (3,1550.00,'Emprestimo Pessoal','2021-05-01 09:30:01',7);
insert into movimento values (4,2800.32,'Compra Passagem Aerea','2019-12-01 22:00:01',7);
insert into movimento values (5,12800.00,'Emprestimo Pessoal','2019-05-01 22:00:01',4);
insert into movimento values (6,980.88,'Compra Loja Eletronico','2019-12-01 23:00:01',8);
insert into movimento values (7,1550.00,'Compra Mercado Livre','2021-05-01 09:30:01',8);
insert into movimento values (8,300.00,'Compra Mercado','2019-12-01 22:00:01',12);
insert into movimento values (9,2000.00,'Emprestimo Pessoal','2019-05-24 22:00:01',12);
insert into movimento values (10,480.88,'Compra Veterinaria','2019-12-01 23:00:01',10);
insert into movimento values (11,12000.00,'Emprestimo Pessoal','2019-05-24 22:00:01',11);
insert into movimento values (12,1980.81,'Compra Supermercado','2019-12-01 23:00:01',9);
insert into movimento values (13,1300.00,'Compra Autopecas','2021-12-12 13:00:01',20);
insert into movimento values (14,483.25,'Compra Supermercado','2019-12-12 21:00:01',20);
insert into movimento values (15,2550.81,'Compra Passagem Aerea','2022-04-01 23:00:01',20);
insert into movimento values (16,343.81,'Compra Posto Combustivel','2021-05-12 23:00:01',20);
insert into movimento values (17,128.88,'Compra Posto Combustivel','2021-05-19 12:35:22',13);
insert into movimento values (18,345.00,'Compra Resturante','2021-05-19 23:00:01',13);
insert into movimento values (19,208.91,'Compra Loja Esportiva','2021-05-20 23:00:01',13);
insert into movimento values (20,1208.91,'Compra Material Informática','2022-04-12 14:00:01',18);
insert into movimento values (21,3208.91,'Compra Televisão','2022-04-08 19:00:01',19);
insert into movimento values (22,208.91,'Compra Resturante','2022-04-19 22:00:01',19);
insert into movimento values (23,889.91,'Compra Hotel','2022-01-20 12:00:01',19);
insert into movimento values (24,1800.00,'Compra Hotel','2021-12-31 12:00:01',16);
insert into movimento values (25,350.91,'Compra Rest]','2022-01-01 12:00:01',16);



select * from associado;
select * from associado;
select * from conta;
select * from cartao;
select * from movimento;


#Valido
Select a.nome as nome_associado, a.sobrenome as sobrenome_associado, a.idade as idade_associado,mo.vlr_transacao as vlr_transacao_movimento, 
mo.des_transacao as des_transacao_movimento, mo.data_movimento as data_movimento,ct.num_cartao as numero_cartao, 
ct.nom_impresso as nome_impresso_cartao,co.data_criacao as data_criacao_cartao,tp.descricao as tipo_conta,co.data_criacao as data_criacao_conta
From associado as a inner join cartao as ct on a.id = ct.id_associado 
inner join conta as co on a.id = co.id_associado 
and ct.id_conta=co.id 
inner join tipo_conta tp on tp.tipo=co.tipo
inner join movimento as mo on mo.id_cartao = ct.id;

CREATE OR REPLACE VIEW movimento_flat AS Select a.nome as nome_associado, a.sobrenome as sobrenome_associado, a.idade as idade_associado,mo.vlr_transacao as vlr_transacao_movimento, 
mo.des_transacao as des_transacao_movimento, mo.data_movimento as data_movimento,ct.num_cartao as numero_cartao, 
ct.nom_impresso as nome_impresso_cartao,co.data_criacao as data_criacao_cartao,tp.descricao as tipo_conta,co.data_criacao as data_criacao_conta
From associado as a inner join cartao as ct on a.id = ct.id_associado 
inner join conta as co on a.id = co.id_associado 
and ct.id_conta=co.id 
inner join tipo_conta tp on tp.tipo=co.tipo
inner join movimento as mo on mo.id_cartao = ct.id;

select * from movimento_flat;

