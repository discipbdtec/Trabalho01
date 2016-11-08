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
![Alt text](https://github.com/gustavovictor/Trabalho01/blob/patch-1/modelo%20conceitual.jpg?raw=true "Modelo Conceitual")
    
    5.2 NOTACAO UML (Caso esteja fazendo a disciplina de analise)

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
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


###6	MODELO LÓGICO<br>
###7	MODELO FÍSICO<br>

        Entrega até este ponto em 25/10/2016
        
        
###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
####8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários


        Entrega até este ponto em 01/11/2016
        
###9	TABELAS E PRINCIPAIS CONSULTAS<br>
OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>
####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
####9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
####9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
####9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
        Entrega até este ponto em 08/11/2016
        
####9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
####9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
####9.10	SUBCONSULTAS (Mínimo 3) <br>
###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
###11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega final em 22/11/2016
###12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/




