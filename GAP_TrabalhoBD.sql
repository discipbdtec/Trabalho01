CREATE DATABASE GAP;
USE GAP;

CREATE TABLE Site_Academia (
Nome_Site VARCHAR(10),
Link_Site VARCHAR(30),
Logo_Site VARCHAR(40),
Cod_Site INTEGER PRIMARY KEY
);

CREATE TABLE Usuario(
Email VARCHAR(30),
Nome_Usuario VARCHAR(30),
Senha VARCHAR(20),
Matricula INTEGER PRIMARY KEY,
CPF INTEGER,
Sexo enum('M','F'),
Data_Nascimento date,
Nome_Completo VARCHAR(40),
Cod_Site INTEGER,
FOREIGN KEY(Cod_Site) REFERENCES Site_Academia (Cod_Site)
);

CREATE TABLE Gerente (
CNPJ INTEGER,
Matricula_Gerente INTEGER PRIMARY KEY,
Cod_Site INTEGER,
FOREIGN KEY(Matricula_Gerente) REFERENCES Usuario (Matricula),
FOREIGN KEY(Cod_Site) REFERENCES Site_Academia (Cod_Site)
);

CREATE TABLE Aluno (
Data_inicio date,
Matricula_Aluno INTEGER PRIMARY KEY,
FOREIGN KEY(Matricula_Aluno) REFERENCES Usuario (Matricula)
);


CREATE TABLE Professor (
Turno VARCHAR(10),
Salario float,
Matricula_Professor INTEGER PRIMARY KEY,
Matricula_Gerente INTEGER,
FOREIGN KEY(Matricula_Professor) REFERENCES Usuario (Matricula),
FOREIGN KEY(Matricula_Gerente) REFERENCES Gerente (Matricula_Gerente)
);

CREATE TABLE Contato (
Contato_PK INTEGER PRIMARY KEY,
Contato VARCHAR(30)
);

CREATE TABLE Endereço (
Endereco INTEGER PRIMARY KEY,
CEP INTEGER,
Estado VARCHAR(2),
Cidade VARCHAR(30),
Bairro VARCHAR(30),
Rua VARCHAR(30),
Numero INTEGER,
Matricula_Usuario INTEGER,
FOREIGN KEY(Matricula_Usuario) REFERENCES Usuario (Matricula)
);

CREATE TABLE Formas_de_Pagamento (
Tipo_forma_pagamento INTEGER PRIMARY KEY,
Formas_de_Pagamento VARCHAR(20),
Matricula_Aluno INTEGER,
FOREIGN KEY(Matricula_Aluno) REFERENCES Aluno (Matricula_Aluno)
);

CREATE TABLE Acompanha  (
Altura float,
Peso float,
Matricula_Professor INTEGER,
Matricula_Aluno INTEGER,
FOREIGN KEY(Matricula_Professor) REFERENCES Professor (Matricula_Professor),
FOREIGN KEY(Matricula_Aluno) REFERENCES Aluno (Matricula_Aluno)
);





