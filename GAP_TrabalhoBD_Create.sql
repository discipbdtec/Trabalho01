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

CREATE TABLE Contato (
Matricula_Usuario int not null,
Tipo_Contato INTEGER NOT NULL,
Forma_Contato VARCHAR(30),
Contato VARCHAR(30),
FOREIGN KEY(Matricula_Usuario) REFERENCES Usuario (Matricula),
constraint pk_CE primary key(Matricula_Usuario,Tipo_Contato)
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

CREATE TABLE Formas_de_Pagamento (
Tipo INTEGER,
Forma_Pagamento VARCHAR(30),
Matricula_Aluno INTEGER,
FOREIGN KEY(Matricula_Aluno) REFERENCES Aluno (Matricula_Aluno),
constraint pk_CE primary key(Tipo, Matricula_Aluno)
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



