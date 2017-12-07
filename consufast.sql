CREATE TABLE Endereço (
    ID_Ende INT PRIMARY KEY,
    Logradouro varchar(150),
    Número INT,
    Cep INT
);

CREATE TABLE Consultas (
    Horario INT
);

CREATE TABLE Pessoa (
    ID_Pssa INT PRIMARY KEY,
    Nome varchar(150),
    Login varchar(100),
    Senha varchar(100),
    Data_Nsc INT,
    Rg INT,
    Cpf INT,
    Sexo varchar(50),
    FK_Endereço_ID_Ende INT
);

CREATE TABLE Paciente (
    ID_User INT,
    Plano_Sd INT,
    FK_Pessoa_ID_Pssa INT,
    PRIMARY KEY (ID_User, FK_Pessoa_ID_Pssa)
);

CREATE TABLE Médico  (
    Ada varchar(150),
    Crm INT,
    Esp varchar(300),
    ID_Medic INT,
    FK_Pessoa_ID_Pssa INT,
    PRIMARY KEY (ID_Medic, FK_Pessoa_ID_Pssa)
);

CREATE TABLE Contato (
    ID_Contato INT,
    ID_Pssa INT,
    Descrição varchar(300),
    PRIMARY KEY (ID_Contato, ID_Pssa)
);

CREATE TABLE Cidade (
    ID_Ciade INT PRIMARY KEY,
    Cidade varchar(300),
    FK_Bairro_ID_Bairro INT,
    FK_Estado_ID_Estado INT
);

CREATE TABLE Estado (
    ID_Estado INT PRIMARY KEY,
    Siglas varchar(50)
);

CREATE TABLE Bairro (
    ID_Bairro INT PRIMARY KEY,
    Bairro varchar(300)
);

CREATE TABLE Clinica (
    ID_Clinica INT,
    FK_Pessoa_ID_Pssa INT,
    PRIMARY KEY (ID_Clinica, FK_Pessoa_ID_Pssa)
);

CREATE TABLE TipoCont (
    Tipo varchar(150)
);

CREATE TABLE Marcar (
    FK_Paciente_ID_User INT,
    FK_Paciente_FK_Pessoa_ID_Pssa INT
);

CREATE TABLE Cont (
    FK_Contato_ID_Contato INT,
    FK_Contato_ID_Pssa INT,
    FK_Pessoa_ID_Pssa INT
);

CREATE TABLE Consul (
    FK_Clinica_ID_Clinica INT,
    FK_Clinica_FK_Pessoa_ID_Pssa INT
);

CREATE TABLE tem1 (
    FK_Endereço_ID_Ende INT,
    FK_Bairro_ID_Bairro INT
);
 
ALTER TABLE Pessoa ADD CONSTRAINT FK_Pessoa_1
    FOREIGN KEY (FK_Endereço_ID_Ende)
    REFERENCES Endereço (ID_Ende);
 
ALTER TABLE Paciente ADD CONSTRAINT FK_Paciente_1
    FOREIGN KEY (FK_Pessoa_ID_Pssa)
    REFERENCES Pessoa (ID_Pssa);
 
ALTER TABLE Médico  ADD CONSTRAINT FK_Médico_1
    FOREIGN KEY (FK_Pessoa_ID_Pssa)
    REFERENCES Pessoa (ID_Pssa);
 
ALTER TABLE Cidade ADD CONSTRAINT FK_Cidade_1
    FOREIGN KEY (FK_Bairro_ID_Bairro)
    REFERENCES Bairro (ID_Bairro);
 
ALTER TABLE Cidade ADD CONSTRAINT FK_Cidade_2
    FOREIGN KEY (FK_Estado_ID_Estado)
    REFERENCES Estado (ID_Estado);
 
ALTER TABLE Clinica ADD CONSTRAINT FK_Clinica_1
    FOREIGN KEY (FK_Pessoa_ID_Pssa)
    REFERENCES Pessoa (ID_Pssa);
 
ALTER TABLE Marcar ADD CONSTRAINT FK_Marcar_0
    FOREIGN KEY (FK_Paciente_ID_User, FK_Paciente_FK_Pessoa_ID_Pssa)
    REFERENCES Paciente (ID_User, FK_Pessoa_ID_Pssa);
 
ALTER TABLE Cont ADD CONSTRAINT FK_Cont_0
    FOREIGN KEY (FK_Contato_ID_Contato, FK_Contato_ID_Pssa)
    REFERENCES Contato (ID_Contato, ID_Pssa);
 
ALTER TABLE Cont ADD CONSTRAINT FK_Cont_1
    FOREIGN KEY (FK_Pessoa_ID_Pssa)
    REFERENCES Pessoa (ID_Pssa);
 
ALTER TABLE Consul ADD CONSTRAINT FK_Consul_0
    FOREIGN KEY (FK_Clinica_ID_Clinica, FK_Clinica_FK_Pessoa_ID_Pssa)
    REFERENCES Clinica (ID_Clinica, FK_Pessoa_ID_Pssa);
 
ALTER TABLE tem1 ADD CONSTRAINT FK_tem1_0
    FOREIGN KEY (FK_Endereço_ID_Ende)
    REFERENCES Endereço (ID_Ende);
 
ALTER TABLE tem1 ADD CONSTRAINT FK_tem1_1
    FOREIGN KEY (FK_Bairro_ID_Bairro)
    REFERENCES Bairro (ID_Bairro);
