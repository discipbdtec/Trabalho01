CREATE DATABASE if not exists GAP
default character set utf8
default collate utf8_general_ci;
USE GAP;


CREATE TABLE Site_Academia (
Cod_Site INTEGER PRIMARY KEY,
Nome_Site VARCHAR(40),
Link_Site VARCHAR(50),
Logo_Site VARCHAR(40)
)default charset = utf8;


CREATE TABLE Usuario(
Matricula INTEGER PRIMARY KEY not null auto_increment,
Nome_Completo VARCHAR(50) not null,
CPF INTEGER not null,
Sexo enum('M','F'),
Data_Nascimento date,
Email VARCHAR(50),
Nome_Usuario VARCHAR(30),
Senha VARCHAR(20) NOT NULL,
Cod_Site INTEGER,
FOREIGN KEY(Cod_Site) REFERENCES Site_Academia (Cod_Site)
)default charset = utf8;

CREATE TABLE Gerente (
Matricula_Gerente INTEGER PRIMARY KEY,
CNPJ INTEGER,
Cod_Site INTEGER,
FOREIGN KEY(Matricula_Gerente) REFERENCES Usuario (Matricula),
FOREIGN KEY(Cod_Site) REFERENCES Site_Academia (Cod_Site)
)default charset = utf8;

CREATE TABLE Aluno (
Matricula_Aluno INTEGER PRIMARY KEY,
Data_inicio date,
FOREIGN KEY(Matricula_Aluno) REFERENCES Usuario (Matricula)
)default charset = utf8;


CREATE TABLE Professor (
Matricula_Professor INTEGER PRIMARY KEY,
Matricula_Gerente INTEGER,
Turno VARCHAR(20),
Salario float,
FOREIGN KEY(Matricula_Professor) REFERENCES Usuario (Matricula),
FOREIGN KEY(Matricula_Gerente) REFERENCES Gerente (Matricula_Gerente)
)default charset = utf8;

CREATE TABLE Contato(
Cod_Contato int not null auto_increment primary key,
Desc_Contato varchar(30)
)default charset = utf8;


CREATE TABLE Contato_Usuario(
Cod_Contato int not null auto_increment primary key,
Tipo_Contato int,
Matricula_Usuario int not null,
Contato_Usuario VARCHAR(30),
FOREIGN KEY(Matricula_Usuario) REFERENCES Usuario (Matricula),
FOREIGN KEY(Tipo_Contato) REFERENCES Contato(Cod_Contato)
)default charset = utf8;

CREATE TABLE Endereco(
Matricula_Usuario INTEGER PRIMARY KEY,
CEP INTEGER,
Estado VARCHAR(2),
Cidade VARCHAR(30),
Bairro VARCHAR(30),
Rua VARCHAR(30),
Numero INTEGER,
FOREIGN KEY(Matricula_Usuario) REFERENCES Usuario (Matricula)
) default charset = utf8;

CREATE TABLE Tipo_Pagamento (
Cod_Tipo int not null auto_increment primary key,
Desc_Pagamento varchar(30)
)default charset = utf8;

CREATE TABLE Pagamento_Aluno(
Cod_Pagamento int not null auto_increment primary key,
Tipo_Pagamento int,
Valor_Pagamento float,
Matricula_Aluno INTEGER,
FOREIGN KEY(Matricula_Aluno) REFERENCES Aluno (Matricula_Aluno),
FOREIGN KEY(Tipo_Pagamento) REFERENCES Tipo_Pagamento(Cod_Tipo)
)default charset = utf8;


CREATE TABLE Acompanha  (
Matricula_Professor INTEGER,
Matricula_Aluno INTEGER,
Altura decimal(3,2),
Peso decimal(5,2),
FOREIGN KEY(Matricula_Professor) REFERENCES Professor (Matricula_Professor),
FOREIGN KEY(Matricula_Aluno) REFERENCES Aluno (Matricula_Aluno),
constraint pk_CE primary key(Matricula_Professor, Matricula_Aluno)
)default charset = utf8;


insert into Site_Academia values (13,'Fabrica de Monstros','www.fabricademonstrosacademia.com.br','imageacademia.jpeg');

insert into Usuario (Nome_Completo,CPF,Sexo, Data_Nascimento,Email,Nome_Usuario,Senha,Cod_Site) values
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


insert into Gerente(Matricula_Gerente,CNPJ,Cod_Site) values
(1,6300,13);

insert into Professor(Matricula_Professor, Matricula_Gerente, Turno, Salario) values
(2,1,'Matutino',1200.00),
(3,1,'Vespertino',1200.00),
(4,1,'Noturno',1200.00);

insert into Aluno(Matricula_Aluno, Data_inicio) values
(5,'2016/02/20'),(6,'2015/07/08'),(7,'2016/03/04'),(8,'2015/08/07'),(9,'2016/06/06'),(10,'2016/09/01');

insert into Endereco(Matricula_Usuario,CEP,Estado,Cidade,Bairro,Rua,Numero) values
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

insert into Contato(Desc_Contato) values
('Telefone'),('Celular'),('Facebook'),('WhatsApp');

insert into Contato_Usuario(Tipo_Contato, Matricula_Usuario, Contato_Usuario) values
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


insert into Tipo_Pagamento(Desc_Pagamento) values
('Cartão'),('Dinheiro'),('Cheque');


insert into Pagamento_Aluno(Tipo_Pagamento, Valor_Pagamento, Matricula_Aluno)values
(1,65.00,5),(2,75.00,6),(3,80.00,7),(1,100.00,8),(2,75.00,9),(3,80.00,10);


insert into Acompanha(Matricula_Professor, Matricula_Aluno, Altura, Peso) values
(2,5,1.75,60.2),(3,6,1.80,75.2),(4,7,1.60,82.0),(2,8,1.65,76.2),(3,9,1.77,74.2),(4,10,1.30,45.5);

