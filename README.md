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
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/Modelo_CBD.jpg?raw=true "Modelo Conceitual")
    
    5.2 NOTACAO UML (Caso esteja fazendo a disciplina de analise)
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/BD.jpg?raw=true "Modelo UML")
####5.1 Validação do Modelo Conceitual
    Grupo 1: Estêvão Segatto, Matheus Lopes
    Grupo 2: Matheus Santos, George Matheus

####5.2 DECISÕES DE PROJETO
Nas tabelas Pessoa, Desenvolvedor e Usuario:
    Há os ID de desenvolvedor, usuario e o do tipo. Contendo também nome, contatos e cpf;
    Senha e Nick.
Informações especificas de cada jogo: data de lançamento, preço, capa, descrição, trailer, nome, link do jogo, requisitos de sistema e generos.

####5.3 DESCRIÇÃO DOS DADOS     
Pessoa: um campo no qual de dividem mais dois, e possuim por atributos nome, contatos e cpf dos usuarios.
Usuario: um identificador que validará suas permições.
Desenvolvedor: um identificador que validará suas permições.
Log in: usuario e senha para validar a entrada.
Jogo: nome do jogo e suas informações relevantes.
Genero: genero(s) ao(s) qual(is) o jogo pertence.

###6	MODELO LÓGICO<br>
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/Modelo_LBD.jpg?raw=true "Modelo Logico")
    
###7	MODELO FÍSICO<br>
[Modelo Físico - SQL](https://github.com/gustavovictor/Trabalho01/blob/patch-1/IndieGame.sql)

        
###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
####8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) Geramos dados apartir de jogos de nosso conhecimento, uma vez que possuimos forte envolvimento na área, como jogadores.
        b) Não houve reutilização de códigos.
        c) Basicamento estudos realizados nas aulas de Banco de Dados.
        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/Insert.sql "Insert")

        
###9	TABELAS E PRINCIPAIS CONSULTAS<br>
####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
select * from Login;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/login.png?raw=true "Title")

select * <br>
from Pessoa;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/pessoa.png?raw=true "Title")

select * <br>
from Genero;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/genero.png?raw=true "Title")

select * <br>
from Desenvolvedor;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/desenvolvedor.png?raw=true "Title")

select * <br>
from Usuario;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/usuario.png?raw=true "Title")

select * <br>
from Jogo;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/jogo.png?raw=true "Title")

select * <br>
from Contato;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/contato.png?raw=true "Title")

select * <br>
from Visualizou;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/visualizou.png?raw=true "Title")

select * <br>
from Contem;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/contem.png?raw=true "Title")

select * <br>
from Usuario_Avaliaçao;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/usuario_avaliacao.png?raw=true "Title")

select * <br>
from Usuario_Comentario;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/usuario_comentario.png?raw=true "Title")

select * <br>
from Pertence;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/pertence.png?raw=true "Title")

    
####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>
select data <br>
from Jogo <br>
where nome = "Undertale";<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons1.png?raw=true "Title")

select * <br>
from Jogo <br>
where Link_do_Jogo = null;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons2.png?raw=true "Title")

select nome <br>
from Pessoa <br>
where cidade = "Catalao";<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons3.png?raw=true "Title")
    
    
####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
select requisitos_de_sistema as "Do que voce precisa" <br>
from Jogo <br>
where preço <= 20;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons4.png?raw=true "Title")

select nome,trailer,link_do_jogo,descrição <br>
from Jogo <br>
where preço < 40;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons5.png?raw=true "Title")
    
####9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
select nome,nick <br>
from Pessoa <br>
where cidade like "N%";<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons6.png?raw=true "Title")

select id_jogo,nome <br>
from Jogo <br>
where nome like "s%";<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons7.png?raw=true "Title")

select nick <br>
from Login <br>
where nick like "A%";<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons8.png?raw=true "Title")

####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    update jogo set preço = 31 where nome = "undertale";
    update login set senha = "****" where nick = "balerion21";
    update jogo set data = "01/01/2001" where nome = "FEZ";
   
    delete from jogo where nome = "heavy metal machine";
    delete from login where nick = "balerion21";
    delete from genero where id_genero = 666;
    
####9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
select * <br>
from jogo <br>
inner join usuario_comentario <br>
group by nome;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons9.png?raw=true "Title")
    
####9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
select jogo.id_jogo,nome,requisitos_de_sistema,descrição <br>
from jogo <br>
inner join usuario_comentario <br>
group by jogo.id_jogo;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons10.png?raw=true "Title")
    
select nome <br>
from jogo <br>
inner join genero <br>
group by jogo.id_jogo;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons11.png?raw=true "Title")
    
select nome,pessoa.nick <br>
from login <br>
inner join pessoa <br>
group by cidade;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons12.png?raw=true "Title")
    
select usuario_avaliaçao.id_login <br>
from usuario_avaliaçao <br>
inner join usuario_comentario <br>
group by usuario_avaliaçao.id_jogo;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons13.png?raw=true "Title")
    
select nome,cep <br>
from login <br>
inner join pessoa <br>
group by cep;<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons14.png?raw=true "Title")
        
####9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
Select pessoa.id_login as login_da_pessoa, nome,pessoa.id_tipo<br>
from pessoa<br>
Right join desenvolvedor<br>
on (desenvolvedor.id_tipo = pessoa.id_tipo);<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons15.png?raw=true "Title")   

Select pessoa.id_login as login_da_pessoa, pessoa.id_tipo, nome, cpf<br>
from pessoa<br>
Right join desenvolvedor<br>
on (desenvolvedor.id_tipo = pessoa.id_tipo);<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons16.png?raw=true "Title")

Select pessoa.nick, pessoa.nome<br>
from pessoa <br>
left join usuario_comentario<br>
on (usuario_comentario.id_login = pessoa.id_login);<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons17.png?raw=true "Title")

Select pessoa.id_login, pessoa.id_tipo, nome, cpf<br>
from pessoa<br>
left join desenvolvedor<br>
on (pessoa.id_login = desenvolvedor.id_login);<br>
![Alt text](https://raw.githubusercontent.com/gustavovictor/Trabalho01/patch-1/cons18.png?raw=true "Title")

    
####9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>

####9.10	SUBCONSULTAS (Mínimo 3) <br>

###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
https://docs.google.com/presentation/d/1035SlDoQEX97g9zJeuX9rxuQA3Kmb38cBpzI4kSAF-o/edit?usp=sharing
###11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>
    Implementação real do que vimos em sua maioria apenas o teórico.
    
###12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/




