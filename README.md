# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

#Sumário

###1	COMPONENTES<br>
George Matheus e Matheus Costa<br>

###2	INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados <academia do projeto> e motivação da escolha realizada. <br>

###3	MINI-MUNDO<br>
Foi solicitado um sistema para uma academia, pois o sistema que deles estava desatualizado, lento e com muitas falhas, a academia também não tem um bom controle de pagamento pois o sistema nao avisa quando uma pessoa deveria pagar e nem da uma forma de feedback pro aluno ou professor, seja para professores que não sabem ao certo quando pagamento, quanto para alunos, tendo sempre que ir olhar nas fichas e na maioria das vezes gerando atrasos. A academia ainda conta com um sistema de ficar imprimindo as séries de exercício em folhas de papel, o que gera um gasto desnecessário de folhas, pois com frequência o aluno acaba perdendo a folha e tendo sempre que imprimir novamente.
O sistema planejado promete centralizar e organizar todas essas funções, o usuário poderá de sua casa se cadastrar na academia, e lá ele poderá acompanhar seu desenvolvimento, sua série de exercícios, o dia do seu pagamento, horários de funcionamento e etc. Professores poderão ver os seus horários, uma lista de todos os alunos matriculados na academia, dia de pagamento e edição de desenvolvimento de alunos para um melhor acompanhamento e melhor desempenho e melhores resultados. Já o dono da academia tem acesso a dias de pagamentos de ambos (tanto professores, quanto alunos), desenvolvimentos de alunos, pessoas matriculadas, para um melhor controle do seu negócio.  <br>

###4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>



![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Academia.pdf?raw=true "Title")


###5	MODELO CONCEITUAL<br>
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Conc_Academia.jpg?raw=true "Modelo Conceitual")
    
    5.2 NOTACAO UML
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/UML%20-%20Academia.jpg?raw=true "Notação UML")

####5.1 Validação do Modelo Conceitual
    Consultório Odontológico: Weber Gonçalves.
    Jogos Indie: Gustavo de Assis e Victor Martins

####5.2 DECISÕES DE PROJETO
    a) Endereço: fizemos de endereço um campo multivalorado, para ter mais organização nas tabelas.<br>
    b) Contato: é um campo multivalorado que se estende da quantidade de contatos que o individuo tem.<br>
    
    

####5.3 DESCRIÇÃO DOS DADOS 
    a)Nome do site: guardara o nome do site no caso todos 
    seram da academia, para que nãp haja plagio de outras empresas.
    b)link do site: guardamos o link do site como chave primaria
    pois e esse link é unico, e para termos salvo em um lugar seguro.
    c)Logo_Site: Guardamos aqui o link das imagens e logos correpondentes a cada pagina
    do site e com isso temos a imagem segura no banco de dados.
    d)Nome Completo Aluno/Professor: dado cadastral do aluno
    nescessario para identificação do individuo, é solicitado pela academia.
    e)Data Nascimento Aluno/Professor: dado cadastral 
    nescessario para saber a idade do individuo, é solicitado pela academia.
    f)Sexo Aluno/Professor: dado cadastral nescessario para saber o sexo
    do individuo, é solicitado pela academia.
    g)CPF Aluno/Professor/Gerente: dado cadastral nescessario para identificar
    o individuo, é solicitado pela academia.
    h)Nome_Usuario Aluno/Professor: dado cadastral nescessario para login no site
    e para que o individuo tenha acesso ao seu perfil.
    i)Senha Aluno/Professor: dado cadastral nescessario para login no site
    e para que o individuo tenha acesso ao seu perfil.
    j)Email Aluno/Professor: dado cadastral solicitado no cadastro pela academia.
    j)MatAluno: Identificação do aluno da academia.
    k)MatProf: Identificação do Professor da academia.
    l)Contato: contato extra para facilitar o contato com o aluno.
    m)AlturaAluno: campo que vai guardar a altura do aluno.
    n)PesoAluno: campo que vai guardar a peso do aluno.
    o)MatGerente: Identificação do Gerente da academia.
    p)NomeGerente: Campo que guarda o nome do gerente.
    q)CNPJ: Campo que Identifica a Academia
    r)Site_Academia: tabela nescessaria para identificação do site e cada pagina do site.
    s)Aluno: tabela nescessaria para identificação do aluno.
    t)Gerente: tabela nescessaria para identificação do Gerente.
    u)Professor: tabela nescessaria para identificação do Professor.
    v)Desenvolvimento: tabela nescessaria guardar o desenvolvimento do aluno.
    
    

###6	MODELO LÓGICO<br>
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Logico_Academia.jpg?raw=true "Modelo Lógico")

###7	MODELO FÍSICO<br>

-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Gerente (
MatGerente Varchar(20) PRIMARY KEY,
NomeGerente Varchar(40),
CPF Int,
CNPJ Int,
LinkSite Varchar(40)
)

CREATE TABLE Professor (
Nome_Usuario Varchar(20),
Senha Varchar(20),
Email Varchar(40),
MatProf Varchar(20) PRIMARY KEY,
Contato Varchar(40),
Contato 1 Varchar(40),
Contato 2 Varchar(40),
Contato 3 Varchar(40),
 Contato 4 Varchar(40),
Nome Completo Varchar(60),
Data Nascimento Date,
Sexo Char,
CPF Int,
Rua Varchar(40),
Número int,
CEP Int,
Cidade Varchar(20),
Estado Varchar(20),
Bairro Varchar(30),
LinkSite Varchar(40),
MatGerente Varchar(20),
FOREIGN KEY(MatGerente) REFERENCES Gerente (MatGerente)
)

CREATE TABLE Aluno (
Nome Completo Varchar(40),
MatAluno Varchar(20) PRIMARY KEY,
Nome_Usuario Varchar(20),
Email Varchar(40),
Senha Varchar(20),
CEP Int,
Cidade Varchar(30),
Estado Varchar(30),
Bairro Varchar(30),
Número Int,
Rua Varchar(40),
Data Nascimento Date,
Sexo Char,
CPF Int,
Contato Varchar(40),
Contato 1 Varchar(40),
Contato 2 Varchar(40),
Contato 3 Varchar(40),
Contato 4 Varchar(40),
LinkSite Varchar(40)
)

CREATE TABLE Site_Academia (
Logo_Site Varchar(40),
Nome_Site Varchar(40),
LinkSite Varchar(40) PRIMARY KEY
)

CREATE TABLE Desenvolvimento (
AlturaAluno Float,
PesoAluno Float,
MatAluno Varchar(20),
MatProf Varchar(20),
LinkSite Varchar(40),
FOREIGN KEY(MatAluno) REFERENCES Aluno (MatAluno),
FOREIGN KEY(MatProf) REFERENCES Professor (MatProf),
FOREIGN KEY(LinkSite) REFERENCES Site_Academia (LinkSite)
)

ALTER TABLE Gerente ADD FOREIGN KEY(LinkSite) REFERENCES Site_Academia (LinkSite)
ALTER TABLE Professor ADD FOREIGN KEY(LinkSite) REFERENCES Site_Academia (LinkSite)
ALTER TABLE Aluno ADD FOREIGN KEY(LinkSite) REFERENCES Site_Academia (LinkSite)


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

###9	TABELAS E PRINCIPAIS CONSULTAS<br>
####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS<br>
####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE<br>
####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS<br>
####9.4	CONSULTAS QUE USAM OPERADORES LIKE<br>
####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS<br>
####9.6	CONSULTAS COM JUNÇÃO<br>
####9.7	CONSULTAS COM GROUP BY<br>
####9.8	CONSULTAS COM LEFT E RIGHT JOIN<br>
####9.9	CONSULTAS COM SELF JOIN E VIEW<br>
####9.10	SUBCONSULTAS<br>
###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
###11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>
###12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/




