# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

#Sumário

###1	COMPONENTES<br>
Gustavo de Assis Medeiros<br>
Victor da Silva Martins<br>

###2	INTRODUÇÃO E MOTIVAÇAO<br>
Neste documento apresentamos um projeto de site, no qual estaremos realizando a amostra de jogos indie, jogos de criação independente, onde os usuários padrões poderam visualizar os jogos e os desenvolvedores de jogos poderam publicar seus jogos.<br>
Tivemos por motivação nosso gosto pessoal por tais tipos de jogos e nosso interesse em possuir um meio onde pudéssemos encontrar de forma organizada tais jogos.<br>

###3	MINI-MUNDO<br>
Em nosso site, pretendemos apresentar jogos caracterizados como indie, jogos de desenvolivmentos independente. Tais jogos pertencem à um ou mais desenvolvedores, que possuim a permissão de se cadastrar no site e postar seus jogos, com suas informações, data de lançamentos, preço, capa, descrição, link onde poderar ser adquirido, uma vez que não o manteremos em nosso dominio, o nome do jogo e os requisitos de sistema, e cada jogo também contém gêneros. <br>
Os usuarios, não necessariamente desenvolvedores, mas pessoas comuns que podem se cadastrar em nosso site a partir de um log in, respondendo apenas por nome, respectivos contatos do usuario e cpf. Estes usuarios. <br>
Tanto o desenvolver e o usuario são pessoas, ambos possuim log in, a partir deste log in eles poderam visualizar os jogos, comentarem e avaliarem os mesmo. <br>

###4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
"Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas." <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/img16.jpg?raw=true "Title")
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/img40.jpg?raw=true "Title")
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/img74.jpg?raw=true "Title")
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/img110.jpg?raw=true "Title")
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/img134.jpg?raw=true "Title")
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/img152.jpg?raw=true "Title")
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/img176.jpg?raw=true "Title")
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/img194.jpg?raw=true "Title")
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/img212.jpg?raw=true "Title")
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/img230.jpg?raw=true "Title")
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/img248.jpg?raw=true "Title")


###5	MODELO CONCEITUAL<br>
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/Modelo_CBD.jpg?raw=true "Modelo Conceitual")
    
    5.2 NOTACAO UML (Caso esteja fazendo a disciplina de analise)
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/BD.jpg?raw=true "Modelo UML")
####5.1 Validação do Modelo Conceitual
    [Grupo01]: [Estêvão Segatto, Matheus Lopes]
    [Grupo02]: [Matheus Santos, George Matheus]

####5.2 DECISÕES DE PROJETO
    Pessoa: um campo no qual de dividem mais dois, e possuim por atributos nome, contatos e cpf dos usuarios.
    Usuario: um identificador que validará suas permições.
    Desenvolvedor: um identificador que validará suas permições.
    Log in: usuario e senha para validar a entrada.
    Jogo: nome do jogo e suas informações relevantes.
    Genero: genero(s) ao(s) qual(is) o jogo pertence.

####5.3 DESCRIÇÃO DOS DADOS 
    Nas tabelas Pessoa, Desenvolvedor e Usuario:
        Há os ID de desenvolvedor, usuario e o do tipo. Contendo também nome, contatos e cpf.
    Senha e Nick.
    Informações especificas de cada jogo: data de lançamento, preço, capa, descrição, trailer, nome, link do jogo, requisitos de sistema e generos.


###6	MODELO LÓGICO<br>
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/Modelo_LBD.jpg?raw=true "Modelo Logico")
    
###7	MODELO FÍSICO<br>
    create database indgam;
    use indgam;

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

        
###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
####8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) Geramos dados apartir de jogos de nosso conhecimento, uma vez que possuimos forte envolvimento na área, como jogadores.
        b) Não houve reutilização de códigos.
        c) Basicamento estudos realizados nas aulas de Banco de Dados.
        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/Insert.sql?raw=true "Insert")

        
###9	TABELAS E PRINCIPAIS CONSULTAS<br>
OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
select * from Login;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/login.png?raw=true "Title")

select * from Pessoa;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/pessoa.png?raw=true "Title")

select * from Genero;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/genero.png?raw=true "Title")

select * from Desenvolvedor;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/desenvolvedor.png?raw=true "Title")

select * from Usuario;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/usuario.png?raw=true "Title")

select * from Jogo;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/jogo.png?raw=true "Title")

select * from Contato;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/contato.png?raw=true "Title")

select * from Visualizou;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/visualizou.png?raw=true "Title")

select * from Contem;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/contem.png?raw=true "Title")

select * from Usuario_Avaliaçao;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/usuario_avaliacao.png?raw=true "Title")

select * from Usuario_Comentario;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/usuario_comentario.png?raw=true "Title")

select * from Pertence;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/pertence.png?raw=true "Title")

    
####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>
select data from Jogo where nome = "Undertale";<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons1.png?raw=true "Title")

select * from Jogo where Link_do_Jogo = null;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons2.png?raw=true "Title")

select nome from Pessoa where cidade = "Catalao";<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons3.png?raw=true "Title")
    
    
####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
select requisitos_de_sistema as "Do que voce precisa" from Jogo where preço <= 20;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons4.png?raw=true "Title")

select nome,trailer,link_do_jogo,descrição from Jogo where preço < 40;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons5.png?raw=true "Title")
    
####9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
    select * from Pessoa where cidade like "S%";
    select * from Jogo where cidade like "M%";
    select nick from Login where cidade like "b%";

####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    update jogo set preco = 30 where nome = "heavy metal machine";
    update login set senha = "****" where nick = "balerion21";
    update genero set id_genero = 666 where descricao = "simulacao";
   
    delete from jogo where nome = "haevy metal machine";
    delete from login where nick = "balerion21";
    delete from genero where id_genero = 666;
    
####9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
    select * from jogo inner join usuario_comentario;
    
####9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
    select * from jogo inner join usuario_comentario group by id_jogo;
    select nome,descricao.genero from jogo inner join genero group by id_genero;
    select * from login inner join pessoa group by cidade;
    select id_login from usuario_avaliacao inner join usuario_comentario group by id_jogo;
    select nick from login inner join pessoa group by cep;
        
####9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
    
    
####9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
    
    
####9.10	SUBCONSULTAS (Mínimo 3) <br>
###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
###11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega final em 22/11/2016
###12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/




