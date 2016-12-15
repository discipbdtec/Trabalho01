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
[Link PDF Mockups](https://github.com/gustavovictor/Trabalho01/blob/patch-1/Projeto_UniversoIndie.pdf)

###5	MODELO CONCEITUAL<br>
####5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/Modelo_CBD.jpg?raw=true "Modelo Conceitual")
    
####5.2 NOTACAO UML (Caso esteja fazendo a disciplina de analise)

####5.1 Validação do Modelo Conceitual
Grupo 1: Estêvão Segatto, Matheus Lopes<br>
Grupo 2: Matheus Santos, George Matheus

####5.2 DECISÕES DE PROJETO
Nas tabelas Pessoa, Desenvolvedor e Usuario:<br>
    Há os ID de desenvolvedor, usuario e o do tipo. Contendo também nome, contatos e cpf;
    Senha e Nick.
    
Informações especificas de cada jogo:<br>
    Data de lançamento, preço, capa, descrição, trailer, nome, link do jogo, requisitos de sistema e generos.

####5.3 DESCRIÇÃO DOS DADOS     
**Tabela Login** <br>
Senha: uma string podendo conter caracteres de todos os tipos.<br>
Nick: uma string podendo conter caracteres de todos os tipos e que não pode se repetir.<br>
id_login: um valor inteiro, não nulo, para cada login (chave primaria).<br>
<br>
**Tabela Pessoa** <br>
Nome: o nome da pessoa.<br>
CPF: um valor inteiro.<br>
Nick: uma string podendo conter caracteres de todos os tipos e que não pode se repetir.<br>
País: pais de origem.<br>
Municipio: onde mora.<br>
CEP: onde mora.<br>
Estado: onde mora.<br>
Cidade: onde mora<br>
Senha: uma string podendo conter caracteres de todos os tipos.<br>
id_login: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
id_tipo: um valor inteiro, não nulo, para cada login (chave primaria).<br>
<br>
**Tabela Genero **<br>
Descricao: descrição do genero.<br>
id_genero: um valor inteiro, não nulo, para cada login (chave primaria).<br>
<br>
**Tabela Desenvolvedor**<br>
Nome_Desenvolverdor: o nome do desenvolvidor ou da empresa que desenvolve.<br>
id_desenvolvedor: um valor inteiro, não nulo, para cada login (chave primaria).<br>
id_tipo: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
id_login: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
<br>
**Tabela Usuario **<br>
id_user: um valor inteiro, não nulo, para cada login (chave primaria).<br>
id_tipo: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
id_login: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
<br>
**Tabela Jogo**br>
Requisitos_de_Sistema: as necessidades de hardware para cada jogo.<br>
data_lancamento: data de lançamento do jogo.<br>
id_jogo: um valor inteiro, não nulo, para cada login (chave primaria).<br>
Nome: nome do jogo.<br>
Link_do_Jogo: link para download ou compra do jogo.<br>
Trailer: link para o trailer do jogo.<br>
Descrição: detalhamento do que é o jogo.<br>
Capa: link para capa do jogo.<br>
Preço: valor de compra para a compra do jogo, podendo ser nulo.<br>
id_genero: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
<br>
**Tabela Contato**<br>
Contato_PK: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
Tipo: tipo de cada contato.<br>
Descricao: descrição desse contato.<br>
Cod_tipo: codigo do tipo.<br>
id_tipo_FK: tipo de contato.<br>
<br>
**Tabela Visualizou**<br>
id_login: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
id_jogo: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
id_tipo: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
<br>
**Tablea Contem** <br>
id_genero: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
id_jogo: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
<br>
**Tabela Usuario_Avaliaçao **<br>
Avaliaçao: avaliação do jogo.<br>
id_login: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
id_tipo: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
id_jogo: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
<br>
**Tabela Usuario_Comentario** <br>
Comentario: comentario do usuario.<br>
id_login: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
id_tipo: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
id_jogo: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
<br>
**Tabela Pertence**<br>
id_desenvolvedor: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
id_jogo: um valor inteiro, não nulo, para cada login (chave estrangeira).<br>
<br>

###6	MODELO LÓGICO<br>
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/Modelo_LBD.jpg?raw=true "Modelo Logico")
    
###7	MODELO FÍSICO<br>
[Modelo Físico - SQL](https://github.com/gustavovictor/Trabalho01/blob/patch-1/IndieGame.sql)
        
###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
####8.1 DETALHAMENTO DAS INFORMAÇÕES
Geramos dados apartir de jogos de nosso conhecimento, uma vez que possuimos forte envolvimento na área, como jogadores;<br>
Não houve reutilização de códigos;<br>
Basicamento estudos realizados nas aulas de Banco de Dados;<br>
Um desenvolvimento que levou como referência em certos pontos o site da empresa Stream.<br>

####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
[Insert - SQL](https://github.com/gustavovictor/Trabalho01/blob/patch-1/IndieGameInsert.sql)
        
###9	TABELAS E PRINCIPAIS CONSULTAS<br>
####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
**select * from Login;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/login.png?raw=true "Title")

**select * <br>
from Pessoa;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/pessoa.png?raw=true "Title")

**select * <br>
from Genero;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/genero.png?raw=true "Title")

**select * <br>
from Desenvolvedor;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/desenvolvedor.png?raw=true "Title")

**select * <br>
from Usuario;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/usuario.png?raw=true "Title")

**select * <br>
from Jogo;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/jogo.png?raw=true "Title")

**select * <br>
from Contato;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/contato.png?raw=true "Title")

**select * <br>
from Visualizou;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/visualizou.png?raw=true "Title")

**select * <br>
from Contem;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/contem.png?raw=true "Title")

**select * <br>
from Usuario_Avaliaçao;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/usuario_avaliacao.png?raw=true "Title")

**select * <br>
from Usuario_Comentario;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/usuario_comentario.png?raw=true "Title")

**select * <br>
from Pertence;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/pertence.png?raw=true "Title")

    
####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>
**select data <br>
from Jogo <br>
where nome = "Undertale";**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons1.png?raw=true "Title")

**select * <br>
from Jogo <br>
where Link_do_Jogo = null;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons2.png?raw=true "Title")

**select nome <br>
from Pessoa <br>
where cidade = "Catalao";**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons3.png?raw=true "Title")
    
####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
**select requisitos_de_sistema as "Do que voce precisa" <br>
from Jogo <br>
where preço <= 20;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons4.png?raw=true "Title")

**select nome,trailer,link_do_jogo,descrição <br>
from Jogo <br>
where preço < 40;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons5.png?raw=true "Title")
    
####9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
**select nome,nick <br>
from Pessoa <br>
where cidade like "N%";**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons6.png?raw=true "Title")

**select id_jogo,nome <br>
from Jogo <br>
where nome like "s%";**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons7.png?raw=true "Title")

**select nick <br>
from Login <br>
where nick like "A%";**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons8.png?raw=true "Title")

####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
**update jogo set preço = 31 where nome = "undertale";**<br>
**update login set senha = "****" where nick = "balerion21";**<br>
**update jogo set data = "01/01/2001" where nome = "FEZ";**<br>
<br>
**delete from jogo where nome = "heavy metal machine";**<br>
**delete from login where nick = "balerion21";**<br>
**delete from genero where id_genero = 666;**<br>

####9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
**select * <br>
from jogo <br>
inner join usuario_comentario <br>
group by nome;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons9.png?raw=true "Title")
    
####9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
**select jogo.id_jogo,nome,requisitos_de_sistema,descrição <br>
from jogo <br>
inner join usuario_comentario <br>
group by jogo.id_jogo;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons10.png?raw=true "Title")
    
**select nome <br>
from jogo <br>
inner join genero <br>
group by jogo.id_jogo;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons11.png?raw=true "Title")
    
**select nome,pessoa.nick <br>
from login <br>
inner join pessoa <br>
group by cidade;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons12.png?raw=true "Title")
    
**select usuario_avaliaçao.id_login <br>
from usuario_avaliaçao <br>
inner join usuario_comentario <br>
group by usuario_avaliaçao.id_jogo;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons13.png?raw=true "Title")
    
**select nome,cep <br>
from login <br>
inner join pessoa <br>
group by cep;**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons14.png?raw=true "Title")
        
####9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
**Select pessoa.id_login as login_da_pessoa, nome,pessoa.id_tipo<br>
from pessoa<br>
Right join desenvolvedor<br>
on (desenvolvedor.id_tipo = pessoa.id_tipo);**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons15.png?raw=true "Title")   

**Select pessoa.id_login as login_da_pessoa, pessoa.id_tipo, nome, cpf<br>
from pessoa<br>
Right join desenvolvedor<br>
on (desenvolvedor.id_tipo = pessoa.id_tipo);**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons16.png?raw=true "Title")

**Select pessoa.nick, pessoa.nome<br>
from pessoa <br>
left join usuario_comentario<br>
on (usuario_comentario.id_login = pessoa.id_login);**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons17.png?raw=true "Title")

**Select pessoa.id_login, pessoa.id_tipo, nome, cpf<br>
from pessoa<br>
left join desenvolvedor<br>
on (pessoa.id_login = desenvolvedor.id_login);**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons18.png?raw=true "Title")

    
####9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
**select jogo1.data_lancamento, jogo2.nome, jogo1.preço<br>
from jogo jogo1<br>
inner join jogo jogo2<br>
on(jogo1.id_jogo = jogo2.id_jogo);**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/1.png?raw=true "Title")

**select contato1.tipo, contato2.tipo<br>
from contato contato1<br>
inner join contato contato2<br>
on(contato1.tipo = contato2.tipo);**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/2.png?raw=true "Title")

**select desenvolvedor1.id_tipo, desenvolvedor1.nome_desenvolverdor, desenvolvedor1.nome_desenvolverdor<br>
from desenvolvedor desenvolvedor1<br>
inner join desenvolvedor desenvolvedor2<br>
on(desenvolvedor1.id_login = desenvolvedor2.id_login);**<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/3.png?raw=true "Title")

**create view nomes as <br>
select Nome_Desenvolverdor <br>
from desenvolvedor <br>
where Nome_Desenvolverdor<br>
like "a%";**<br>
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/4.PNG?raw=true "Title")

**create view id111 as<br>
select * from pertence<br>
where id_desenvolvedor = 111;**<br>
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/5.PNG?raw=true "Title")

**create view joguinho as<br> 
select nome,link_do_jogo,descrição <br>
from Jogo <br>
where preço < 40;**<br>
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/6.PNG?raw=true "Title")

####9.10	SUBCONSULTAS (Mínimo 3) <br>
**select requisitos_de_sistema from jogo where id_jogo<br>
= (select max(id_jogo) from jogo);**<br>
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/7.PNG?raw=true "Title")

**select nome from pessoa where CPF<br>
= (select max(cpf) from pessoa);**<br>
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/8.PNG?raw=true "Title")

**select tipo from contato where tipo<br>
= (select min(tipo) from contato);**<br>
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/9.PNG?raw=true "Title")

###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>

[Slides](https://drive.google.com/open?id=0B1s9xG9KM9-wb2lqdFRqV2Y2TkE)

###11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>
Não houveram grandes dificuldades para a realização do trabalho, exceto na utilização do BrModelo, do MySQL, que por vezes não aceitava realizar a conexão e por detalhes que, por vezes, passaram despercebidos no desenvolvimentos do bando de dados.    <br>
    
###12 Trabalho de Rede Social<br>
[Pesquisa](https://github.com/gustavovictor/Trabalho01/blob/patch-1/Pesquisa.py?raw=true "Pesquisa")<br>
[Banco de Dado](https://github.com/gustavovictor/Trabalho01/blob/patch-1/DateBase.py?raw=true "Banco de Dado")<br>
    
###13  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
