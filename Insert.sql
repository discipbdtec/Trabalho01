CREATE DATABASE INDGAM;

USE INDGAM;

CREATE TABLE Login(
Senha VARCHAR(100),
Nick VARCHAR(100),
id_login VARCHAR(100)PRIMARY KEY);

CREATE TABLE Pessoa(
Nome VARCHAR(100),
CPF VARCHAR(100),
Nick VARCHAR(100),
País VARCHAR(100),
Municipio VARCHAR(100),
Cep VARCHAR(100),
Estado VARCHAR(100),
Cidade VARCHAR(100),
id_login VARCHAR(100),
Senha VARCHAR(100),
id_tipo VARCHAR(100)PRIMARY KEY,
foreign key (id_login) references login(id_login));

CREATE TABLE genero (
descricao VARCHAR(100),
id_genero VARCHAR(100) PRIMARY KEY
);

CREATE TABLE Desenvolvedor (
Nome_Desenvolverdor VARCHAR(100),
id_desenvolvedor VARCHAR(100) PRIMARY KEY,
id_tipo VARCHAR(100),
id_login VARCHAR(100),
FOREIGN KEY (id_login) REFERENCES Login(id_login),
FOREIGN KEY (id_tipo) REFERENCES Pessoa(id_tipo));

CREATE TABLE Usuario (
id_user VARCHAR(100) PRIMARY KEY,
id_tipo VARCHAR(100),
id_login VARCHAR(100),
FOREIGN KEY (id_login) REFERENCES Login(id_login),
FOREIGN KEY (id_tipo) REFERENCES Pessoa(id_tipo));


CREATE TABLE Jogo (
Requisitos_de_Sistema VARCHAR(100),
Data VARCHAR(100),
id_jogo VARCHAR(100) PRIMARY KEY,
Nome VARCHAR(100),
Link_do_Jogo VARCHAR(100),
Trailer VARCHAR(100),
Descrição VARCHAR(100),
Capa VARCHAR(100),
Preço VARCHAR(100),
id_genero VARCHAR(100),
FOREIGN KEY (id_genero) REFERENCES genero(id_genero));

CREATE TABLE Contato (
Contato_PK INTEGER PRIMARY KEY,
Tipo VARCHAR(100),
Descricao VARCHAR(100),
Cod_tipo VARCHAR(100),
id_tipo_FK VARCHAR(100)
);

CREATE TABLE Visualizou (
id_login VARCHAR(100),
id_jogo VARCHAR(100),
id_tipo VARCHAR(100),
FOREIGN KEY (id_login) REFERENCES Login(id_login),
FOREIGN KEY (id_tipo) REFERENCES Pessoa(id_tipo),
FOREIGN KEY (id_jogo) REFERENCES Jogo(id_jogo));

CREATE TABLE contem (
id_genero VARCHAR(100),
id_jogo VARCHAR(100),
FOREIGN KEY(id_genero) REFERENCES genero (id_genero),
FOREIGN KEY(id_jogo) REFERENCES Jogo (id_jogo)
);

CREATE TABLE Usuario_Avaliaçao (
Avaliaçao VARCHAR(100),
id_login VARCHAR(100),
id_tipo VARCHAR(100),
id_jogo VARCHAR(100),
FOREIGN KEY (id_login) REFERENCES Login(id_login),
FOREIGN KEY (id_tipo) REFERENCES Pessoa(id_tipo),
FOREIGN KEY (id_jogo) REFERENCES Jogo(id_jogo));


CREATE TABLE Usuario_Comentario (
Comentario VARCHAR(100),
id_login VARCHAR(100),
id_tipo VARCHAR(100),
id_jogo VARCHAR(100),
FOREIGN KEY (id_login) REFERENCES Login(id_login),
FOREIGN KEY (id_tipo) REFERENCES Pessoa(id_tipo),
FOREIGN KEY (id_jogo) REFERENCES Jogo(id_jogo));

CREATE TABLE Pertence (
id_desenvolvedor VARCHAR(100),
id_jogo VARCHAR(100),
FOREIGN KEY(id_desenvolvedor) REFERENCES Desenvolvedor (id_desenvolvedor),
FOREIGN KEY(id_jogo) REFERENCES Jogo (id_jogo)
);

INSERT INTO Login(senha,nick,id_login)
VALUES 
("**********","20COMER","2311"),
("*********","M4T4D0","4553"),
("**********","BOIBANDIDO","3241"),
("**********","AVESTRUZ_QUE_TE_SEDUZ","6731"),
("**********","PEIDA_NA_LANCHEIRA","9012"),
("***********","OLHA_A_PAMONHA","0123");

INSERT INTO PESSOA(NOME,CPF,NICK,PAÍS,MUNICIPIO,CEP,ESTADO,CIDADE,ID_LOGIN,SENHA,ID_TIPO)
VALUES
("PEDRO_DE_ALCANTARA","00000000000","20COMER","AUSTRALIA","ACRE","29175117","MELBOUNER","NAO_SEI","2311","********","0001"),
("FRANCISCO ANTONIO","11111111111","M4T4D0","ISRAEL","AMAZONAS","29036111","RAND","PASHTU_E_DARI","4553","*********","0021"),
("JOAO_CARLOS","222222222222","BOIBANDIDO","AFRICA_DO_SUL","PRETORIA","29123033","AFEGANI","CATALAO","3241","**********","0002"),
("PAULA_MIGUEL","333333333333","AVESTRUZ_QUE_TE_SEDUZ","ARGELIA","DINAR_ARGELINO","29140190","DRAM","TAKA","6731","*********","0022"),
("RAFAEL_JOAQUIM","44444444444","PEIDA_NA_LANCHEIRA","COREIA_DO_NORTE","PESO_CHILENO","29140110","ESLOVACO","QUITO","9012","********","0003"),
("CIPRIANO_SARAFIM","555555555555","OLHA_A_PAMONHA","ERITREIA","ASMARA","29150505","NAKFA","ARABE","0123","***********","0023");

INSERT INTO GENERO(DESCRICAO,ID_GENERO)
VALUES
("TERROR","1"),
("ACAO","2"),
("AVENTURA","3"),
("CORRIDA","4"),
("ESTRATEGIA","5"),
("SIMULAÇAO","6");

INSERT INTO DESENVOLVEDOR(ID_DESENVOLVEDOR,NOME_DESENVOLVERDOR,ID_LOGIN,ID_TIPO)
VALUES
("0111","AMARELO","4553","0021"),
("0222","ABACATE","6731","0022"),
("0333","ABACAXI","0123","0023");

INSERT INTO USUARIO(ID_USER,ID_TIPO,ID_LOGIN)
VALUES
("1000","0001","2311"),
("1002","0002","3241"),
("1003","0003","9012");

INSERT INTO JOGO(REQUISITOS_DE_SISTEMA,DATA,ID_JOGO,NOME,LINK_DO_JOGO,TRAILER,DESCRIÇÃO,CAPA,PREÇO,ID_GENERO)
VALUES
("WINDOWS_XP,2GB_RAM,128MB","2015/09/15","1100","UNDERTALE","http://store.steampowered.com/app/391540/?l=portuguese","http://cdn.akamai.steamstatic.com/steam/apps/256655616/movie480.webm?t=1447377566","MATA_TUDO","http://cdn.akamai.steamstatic.com/steam/apps/391540/header.jpg?t=1478073703","R$20,00","5"),#STEAM
("WINDOWS_XP,1GB_RAM","2013/10/28","1101","SLENDER:_THE_ARRIVAL","http://store.steampowered.com/app/252330/?l=portuguese","http://cdn.akamai.steamstatic.com/steam/apps/2029925/movie480.webm?t=1447359294","RUN_RUN_RUN!!!!!","http://cdn.akamai.steamstatic.com/steam/apps/252330/header.jpg?t=1460595452","R$20,00","1"),
("WINDOWS_7,4GB_RAM","2016/02/25","1102","SUPER_HOT","http://store.steampowered.com/app/322500/?l=portuguese","http://cdn.akamai.steamstatic.com/steam/apps/256661069/movie480.webm?t=1456505603","DORGAS!!!","http://cdn.akamai.steamstatic.com/steam/apps/322500/header.jpg?t=1478021958","R$40,00","6"),
("WINDOWS_7,1GB_RAM","2010/11/30","1103","SUPER_MEAT_BOY","http://store.steampowered.com/app/40800/?l=portuguese","http://cdn.akamai.steamstatic.com/steam/apps/5713/movie480.webm?t=1447353186","VC_VAI_MORRE","http://cdn.akamai.steamstatic.com/steam/apps/40800/header.jpg?t=1447352515","R$25,00","3"),
("WINDOWS_XP,2GB_RAM","2013/05/01","1104","FEZ","http://store.steampowered.com/app/224760/?l=portuguese","http://cdn.akamai.steamstatic.com/steam/apps/2028481/movie480.webm?t=1447357646","BUG","http://cdn.akamai.steamstatic.com/steam/apps/224760/header.jpg?t=1472521163","R$17,00","5"),
("WINDOWS_XP,512MB","2011/08/02","1105","LIMBO","http://store.steampowered.com/app/48000/?l=portuguese#app_reviews_hash","http://cdn.akamai.steamstatic.com/steam/apps/80896/movie480.webm?t=1447354302","MUITO_ESCURO","http://cdn.akamai.steamstatic.com/steam/apps/48000/header.jpg?t=1478090357","R$17,00","3");

INSERT INTO CONTATO(CONTATO_PK,TIPO,DESCRICAO,COD_TIPO,ID_TIPO_FK)
VALUES
("1","01","FACEBOOK","001","10"),
("2","02","EMAIL","002","20"),
("3","03","GMAIL","003","30"),
("4","04","ORKUT","004","40"),
("5","05","INSTAGRAM","005","50"),
("6","06","TWITTER","006","60");

INSERT INTO VISUALIZOU(ID_LOGIN,ID_JOGO,ID_TIPO)
VALUES
("2311","1101","0021"),
("4553","1102","0022"),
("3241","1101","0023"),
("6731","1104","0001"),
("9012","1105","0002"),
("0123","1103","0003");

INSERT INTO CONTEM(ID_GENERO,ID_JOGO)
VALUES
("5","1100"),
("1","1101"),
("6","1102"),
("3","1103"),
("5","1104"),
("3","1105");

INSERT INTO USUARIO_AVALIAÇAO(AVALIAÇAO,ID_LOGIN,ID_TIPO,ID_JOGO)
VALUES
("3","2311","0021","1100"),
("4","4553","0022","1101"),
("5","3241","0023","1103"),
("5","6731","0001","1102"),
("1","9012","0002","1105"),
("2","0123","0003","1104");

INSERT INTO USUARIO_COMENTARIO(COMENTARIO,ID_LOGIN,ID_TIPO,ID_JOGO)
VALUES
("MAIS_OU_MENOS","2311","0021","1100"),
("LEGAL","4553","0022","1101"),
("OLTIMO","3241","0023","1103"),
("MUITO_BOM","6731","0001","1102"),
("RUIM","9012","0002","1105"),
("MAIS_OU_MENOS","0123","0003","1104");

INSERT INTO PERTENCE(ID_DESENVOLVEDOR,ID_JOGO)
VALUES
("0111","1101"),
("0222","1104"),
("0333","1105");












