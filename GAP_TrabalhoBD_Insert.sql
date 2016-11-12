use gap;

insert into site_academia values (13,'Fabrica de Monstros','www.fabricademonstrosacademia.com.br','imageacademia.jpeg');

insert into usuario (Nome_Completo,CPF,Sexo, Data_Nascimento,Email,Nome_Usuario,Senha,Cod_Site) values
('Arya Stark',1010,'F','1984/08/10','AryaS@gmail.com','AryaS','123',13),
('João das Neves',2020,'M','1954/08/20','JoaoN@gmail.com','JoaoN','321',13),
('Marcelo Fulano',3030,'M','1950/05/21','MarceloF@gmail.com','MarceloF','456',13),
('Cristiano Neymar',4040,'M','1990/06/30','CristianoN@hotmail.com','CristianoN','654',13),
('Cassiano Venenoso',5050,'M','1979/09/09','CassianoV@ig.com.br','CassianoV','789',13),
('Drauzio Galera',6060,'M','1964/08/08','DrauzioG@yahoo.com','DrauzioG','987',13),
('Ana Maria',7070,'F','1948/01/06','AnaM@hotmail.com','AnaM','369',13),
('Katarina da Silva',8080,'F','1994/08/19','KatarinaS@gmail.com','KatarinaS','963',13),
('Annie Tibbers',9090,'F','2000/01/01','AnnieT@riot.com','AnnieT','147',13),
('Marquinhos Catchau',1011,'M','1996/08/19','MarquinhosC@mcquen.com','MarquinhosC','258',13);


insert into gerente(Matricula_Gerente,CNPJ,Cod_Site) values
(1,6300,13);

insert into professor(Matricula_Professor, Matricula_Gerente, Turno, Salario) values
(2,1,'Matutino',1200.00),
(3,1,'Vespertino',1200.00),
(4,1,'Noturno',1200.00);

insert into Aluno(Matricula_Aluno, Data_inicio) values
(5,'2016/02/20'),(6,'2015/07/08'),(7,'2016/03/04'),(8,'2015/08/07'),(9,'2016/06/06'),(10,'2016/09/01');

insert into endereco(Matricula_Usuario,CEP,Estado,Cidade,Bairro,Rua,Numero) values
(1,29162980,'ES','Serra','Laranjeiras','Rua Rio Grande do Norte',3),
(2,29164981,'ES','Norte','Norte Da Muralha','R. Rio Grande do Norte',6),
(3,29165756,'ES','Vitoria','Itararé','Av. Arlindo Sodre',25),
(4,29162262,'ES','Serra','Jose de Anchieta','R. Rio Grande do Sul',334),
(5,28174252,'ES','Vitoria','Maruipe','R. Martins Alvarino',95),
(6,29164375,'SP','Barueri','Alphavile','R. Inventada Agora',6),
(7,29162262,'RJ','RJ','Morro do Dende','Quebrada da Rapaziada',77),
(8,29162262,'RJ','RJ','Cidade de Deus','Quebrada da Mulherada',78),
(9,29162262,'SP','Liga das Lendas','Summoners Rift','R. Mid Lane',1),
(10,29162000,'SP','California','Radiator Springs','Route 108',95);

insert into contato (Matricula_Usuario,Tipo_Contato, Forma_Contato, Contato) values
(1,1,'Celular','99999-1111'),(1,2,'Telefone Fixo','3328-9562'),
(2,1,'Celular','99999-2222'),(2,2,'Telefone Fixo','3328-2222'),
(3,1,'Celular','99999-3333'),(3,2,'Telefone Fixo','3328-3333'),
(4,1,'Celular','99999-4444'),(4,2,'Telefone Fixo','3328-4444'),
(5,1,'Celular','99999-5555'),(5,2,'Telefone Fixo','3328-5555'),
(6,1,'Celular','99999-6666'),(6,2,'Telefone Fixo','3328-6666'),
(7,1,'Celular','99999-7777'),(7,2,'Telefone Fixo','3328-7777'),
(8,1,'Celular','99999-8888'),(8,2,'Telefone Fixo','3328-8888'),
(9,1,'Celular','99999-9999'),(9,2,'Telefone Fixo','3328-9999'),
(10,1,'Celular','99999-0000'),(10,2,'Telefone Fixo','3328-0000');

insert into formas_de_pagamento(Tipo, Forma_Pagamento, Matricula_Aluno)values
(1,'Cartão de Crédito',5),(2,'Boleto Bancário',6),(3,'Cheque',7),(1,'Cartão de Crédito',8),(2,'Boleto Bancário',9),(3,'Cheque',10);

insert into acompanha(Matricula_Professor, Matricula_Aluno, Altura, Peso) values
(2,5,1.75,60.2),(3,6,1.80,75.2),(4,7,1.60,82.0),(2,8,1.65,76.2),(3,9,1.77,74.2),(4,10,1.30,45.5);


select * from site_academia;
select * from usuario;
select * from gerente;
select * from professor;
select * from aluno;
select * from contato;
select * from formas_de_pagamento;
select * from acompanha;

