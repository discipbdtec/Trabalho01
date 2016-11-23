use gap;

insert into site_academia values (13,'Fabrica de Monstros','www.fabricademonstrosacademia.com.br','imageacademia.jpeg');

insert into usuario (Nome_Completo,CPF,Sexo, Data_Nascimento,Email,Nome_Usuario,Senha,Cod_Site) values
('Arya Stark',1010,'F','1984/08/10','AryaS@gmail.com','AryaS','123',13),
('JoÃ£o das Neves',2020,'M','1954/08/20','JoaoN@gmail.com','JoaoN','321',13),
('Marcelo Fulano',3030,'M','1950/05/21','MarceloF@gmail.com','MarceloF','456',13),
('Cristiano Neymar',4040,'M','1990/06/30','CristianoN@hotmail.com','CristianoN','654',13),
('Cassiano Venenoso',5050,'M','1979/09/09','CassianoV@ig.com.br','CassianoV','789',13),
('Drauzio Galera',6060,'M','1964/08/08','DrauzioG@yahoo.com','DrauzioG','987',13),
('Ana Maria',7070,'F','1948/01/06','AnaM@hotmail.com','AnaM','369',13),
('Katarina da Silva',8080,'F','1994/08/19','KatarinaS@gmail.com','KatarinaS','963',13),
('Annie Tibbers',9090,'F','2000/01/01','AnnieT@riot.com','AnnieT','147',13),
('Marquinhos Catchau',1011,'M','1996/08/19','MarquinhosC@mcquen.com','MarquinhosC','258',13);

insert into pacote_academia(Valor_Pacote) values
(65.00),(75.00),(80.00),(100.00);

insert into gerente(Matricula_Gerente,CNPJ,Cod_Site) values
(1,6300,13);

insert into professor(Matricula_Professor, Matricula_Gerente, Turno, Salario) values
(2,1,'Matutino',1200.00),
(3,1,'Vespertino',1200.00),
(4,1,'Noturno',1200.00);

insert into aluno(Matricula_Aluno, Data_inicio, Tipo_Pacote) values
(5,'2016/02/20',1),(6,'2015/07/08',2),(7,'2016/03/04',3),(8,'2015/08/07',4),(9,'2016/06/06',1),(10,'2016/09/01',2);

insert into endereco(Matricula_Usuario,CEP,Estado,Cidade,Bairro,Rua,Numero) values
(1,29162980,'ES','Serra','Laranjeiras','Rua Rio Grande do Norte',3),
(2,29164981,'ES','Norte','Norte Da Muralha','R. Rio Grande do Norte',6),
(3,29165756,'ES','Vitoria','ItararÃ©','Av. Arlindo Sodre',25),
(4,29162262,'ES','Serra','Jose de Anchieta','R. Rio Grande do Sul',334),
(5,28174252,'ES','Vitoria','Maruipe','R. Martins Alvarino',95),
(6,29164375,'SP','Barueri','Alphavile','R. Inventada Agora',6),
(7,29162262,'RJ','RJ','Morro do Dende','Quebrada da Rapaziada',77),
(8,29162262,'RJ','RJ','Cidade de Deus','Quebrada da Mulherada',78),
(9,29162262,'SP','Liga das Lendas','Summoners Rift','R. Mid Lane',1),
(10,29162000,'SP','California','Radiator Springs','Route 108',95);

insert into contato(Contato) values
('Telefone'),('Celular');

insert into contato_usuario(Tipo_Contato, Matricula_Usuario, Contato_Usuario) values
(1,1,'99999-1111'),
(2,1,'3328-6666'),
(2,2,'3328-3333'),
(1,3,'99999-3333'),
(2,4,'3328-4444'),
(1,5,'99999-5555'),
(2,6,'3328-6666'),
(1,7,'99999-7777'),
(2,8,'3328-8888'),
(1,9,'99999-9999'),
(2,10,'3328-0000');


insert into tipo_pagamento(Forma_Pagamento) values
('Cartão'),('Dinheiro'),('Cheque');


insert into pagamento_aluno(Tipo_Pagamento, Valor_Pagamento, Matricula_Aluno)values
(1,65.00,5),(2,75.00,6),(3,80.00,7),(1,100.00,8),(2,75.00,9),(3,80.00,10);


insert into acompanha(Matricula_Professor, Matricula_Aluno, Altura, Peso) values
(2,5,1.75,60.2),(3,6,1.80,75.2),(4,7,1.60,82.0),(2,8,1.65,76.2),(3,9,1.77,74.2),(4,10,1.30,45.5);


