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



