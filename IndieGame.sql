create database indgam;
use indgam;

CREATE TABLE Login(
	Senha VARCHAR(100),
	Nick VARCHAR(100),
	id_login int not null PRIMARY KEY
);

CREATE TABLE Pessoa(
	Nome VARCHAR(100),
	CPF VARCHAR(11),
	Nick VARCHAR(50),
	País VARCHAR(50),
	Municipio VARCHAR(50),
	Cep VARCHAR(8),
	Estado VARCHAR(50),
	Cidade VARCHAR(50),
	id_login int not null,
	Senha VARCHAR(100),
	id_tipo int not null PRIMARY KEY,
	foreign key (id_login) references login(id_login)
);

CREATE TABLE genero (
	descricao VARCHAR(100),
	id_genero int not null PRIMARY KEY
);

CREATE TABLE Desenvolvedor (
	Nome_Desenvolverdor VARCHAR(100),
	id_desenvolvedor int not null PRIMARY KEY,
	id_tipo int not null,
	id_login int not null,
	FOREIGN KEY (id_login) REFERENCES Login(id_login),
	FOREIGN KEY (id_tipo) REFERENCES Pessoa(id_tipo)
);

CREATE TABLE Usuario (
	id_user int not null PRIMARY KEY,
	id_tipo int not null,
	id_login int not null,
	FOREIGN KEY (id_login) REFERENCES Login(id_login),
	FOREIGN KEY (id_tipo) REFERENCES Pessoa(id_tipo)
);

CREATE TABLE Jogo (
	Requisitos_de_Sistema VARCHAR(100),
	data_lancamento date,
	id_jogo int not null PRIMARY KEY,
	Nome varchar(100),
	Link_do_Jogo VARCHAR(100),
	Trailer VARCHAR(100),
	Descrição VARCHAR(100),
	Capa VARCHAR(100),
	Preço float,
	id_genero int not null,
	FOREIGN KEY (id_genero) REFERENCES genero(id_genero)
);

CREATE TABLE Contato (
	Contato_PK INTEGER PRIMARY KEY,
	Tipo VARCHAR(100),
	Descricao VARCHAR(100),
	Cod_tipo int not null,
	id_tipo_FK int not null
);

CREATE TABLE Visualizou (
	id_login int not null,
	id_jogo int not null,
	id_tipo int not null,
	FOREIGN KEY (id_login) REFERENCES Login(id_login),
	FOREIGN KEY (id_tipo) REFERENCES Pessoa(id_tipo),
	FOREIGN KEY (id_jogo) REFERENCES Jogo(id_jogo)
);

CREATE TABLE contem (
	id_genero int not null,
	id_jogo int not null,
	FOREIGN KEY(id_genero) REFERENCES genero (id_genero),
	FOREIGN KEY(id_jogo) REFERENCES Jogo (id_jogo)
);

CREATE TABLE Usuario_Avaliaçao (
	Avaliaçao VARCHAR(100),
	id_login int not null,
	id_tipo int not null,
	id_jogo int not null,
	FOREIGN KEY (id_login) REFERENCES Login(id_login),
	FOREIGN KEY (id_tipo) REFERENCES Pessoa(id_tipo),
	FOREIGN KEY (id_jogo) REFERENCES Jogo(id_jogo)
);

CREATE TABLE Usuario_Comentario (
	Comentario int not null,
	id_login int not null,
	id_tipo int not null,
	id_jogo int not null,
	FOREIGN KEY (id_login) REFERENCES Login(id_login),
	FOREIGN KEY (id_tipo) REFERENCES Pessoa(id_tipo),
	FOREIGN KEY (id_jogo) REFERENCES Jogo(id_jogo)
);

CREATE TABLE Pertence (
	id_desenvolvedor int not null,
	id_jogo int not null,
	FOREIGN KEY(id_desenvolvedor) REFERENCES Desenvolvedor (id_desenvolvedor),
	FOREIGN KEY(id_jogo) REFERENCES Jogo (id_jogo)
);
