# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

#Sumário

###1	COMPONENTES<br>
George Matheus e Matheus Costa<br>

###2	INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados <academia do projeto> e motivação da escolha realizada. <br>

###3	MINI-MUNDO<br>
Foi-nos solicitado um site para uma academia, pois o deles estava desatualizado, lento e com muitas falhas, a academia também não tem um bom controle de pagamento pois o sistema nao avisa quando uma pessoa deveria pagar e nem da uma forma de feedback pro aluno ou professor, seja para professores que não sabem ao certo quando receberam o pagamento, quanto para alunos, tendo sempre que ir olhar nas fichas e na maioria das vezes gerando atrasos. A academia ainda conta com um sistema de ficar imprimindo as séries de exercício em folhas de papel, o que gera um gasto desnecessário de folhas, pois com frequência o aluno acaba perdendo a folha e tendo sempre que imprimir novamente.<br>
O site planejado promete centralizar e organizar todas essas funções, o aluno poderá de sua casa se cadastrar na academia, e lá ele poderá acompanhar seu desenvolvimento, sua série de exercícios, o dia do seu renovar sua mensalidade, horários de funcionamento e etc. Professores poderão ver os seus horários trabalho, uma lista de todos os alunos matriculados na academia, dia de pagamento e edição de desenvolvimento de alunos para um melhor acompanhamento e melhor desempenho e melhores resultados. Já o gerente da academia tem acesso a os dias de pagamento dos professores, e o dia de renovar a mensalidade dos alunos, acompanhamento de alunos, pessoas matriculadas, para um melhor controle da sua academia.<br>

###4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

https://github.com/MRMaken/Trabalho01/blob/master/Academia.pdf


###5	MODELO CONCEITUAL<br>
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Conc_Academia.jpg?raw=true "Modelo Conceitual")
    
####5.1 Validação do Modelo Conceitual
    Consultório Odontológico: Weber Gonçalves.
    Jogos Indie: Gustavo de Assis e Victor Martins

####5.2 DECISÕES DE PROJETO

    a) Endereço: fizemos de endereço um campo composto, para ter mais organização nas tabelas.
    b) Contato: é um campo multivalorado que se estende da quantidade de contatos que o individuo tem.
    c) Formas_de_Pagamento: Fizemos desse um campo multivalorado pra ter opçoes de pagamento para o aluno.
    d) Tabela Acompanha: A chave primaria da tabela é uma chave composta,
       pois precisavamos que dois dados não se repetissem.
    

####5.3 DESCRIÇÃO DOS DADOS 
    1)Site Academia: tabela nescessaria para identificação do site e cada pagina do site.
        a)Nome do site: guardara o nome do site no caso todos 
        seram da academia, para que nãp haja plagio de outras empresas.
        b)link do site: guardamos o link do site como chave primaria
        pois e esse link é unico, e para termos salvo em um lugar seguro.
        c)Logo_Site: Guardamos aqui o link das imagens e logos correpondentes a cada pagina
        do site e com isso temos a imagem segura no banco de dados.
    2)Usuario:
        a)Matricula: Identificação do individuo no banco de dados da academia.
        b)Nome Completo: dado cadastral do aluno
        nescessario para identificação do individuo, é solicitado pela academia.
        c)Data Nascimento: dado cadastral 
        nescessario para saber a idade do individuo, é solicitado pela academia.
        d)Sexo: dado cadastral nescessario para saber o sexo
        do individuo, é solicitado pela academia.
        e)CPF: dado cadastral nescessario para identificar
        o individuo, é solicitado pela academia.
        f)Nome_Usuario: dado cadastral nescessario para login no site
        e para que o individuo tenha acesso ao seu perfil.
        g)Senha: dado cadastral nescessario para login no site
        e para que o individuo tenha acesso ao seu perfil.
        h)Email: dado cadastral solicitado no cadastro pela academia.
        i)Contato: um campo multivalorado no caso do aluno ter contatos extras para facilitar a comunicação.
        j)Endereço: campo multivalorado que vai guardar o endereço completo da pessoa CEP, Estado
        Cidade, Bairro, Rua, Numero.
    3)Gerente: tabela nescessaria para identificação do Gerente.
        a)Matricula_Gerente: Referencia a Matricula da tabela usuario e identifica o Gerente.
        b)CNPJ: Campo que Identifica a empresa da Academia
    4)Aluno: tabela nescessaria para identificação do aluno.
        a)Matricula_Aluno: Referencia a Matricula da tabela usuario e identifica o Aluno.
        b)Data_Pagamento: Guardara o dia em que o aluno devera pagar sua mensalidade.
        c)Data_Inicio: Guardara o data no dia em que o aluno se cadastrou no site da academia
        d)Formas_de_Pagamento: a forma em que o aluno deseja pagar seja cheque, cartao, dinheiro, etc.
    5)Professor: tabela nescessaria para identificação do Professor.
        a)Matricula_Professor: Referencia a Matricula da tabela usuario e identifica o Professor.
        b)Turno: Guarda o Turno em que o Professor trabalha, seja, de manhã, de tarde ou de noite.
        c)Salario: Vai Guardar o salario que o professor vai Receber no dia do pagamento.
    6)Acompanha: se tornara uma tabela nescessaria para guardar o desenvolvimento do aluno sua altura e peso.
        a)Altura: campo que vai guardar a altura do aluno.
        b)Peso: campo que vai guardar a peso do aluno.
    

###6	MODELO LÓGICO<br>
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Logico_Academia.jpg?raw=true "Modelo Lógico")

###7	MODELO FÍSICO<br>
https://github.com/MRMaken/Trabalho01/blob/master/GAP_TrabalhoBD_Create.sql



###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
####8.1 DETALHAMENTO DAS INFORMAÇÕES
        Os dados usados são referencias a gosto pessoais da dupla, e não reutilizamos nenhum codigo.O trabalho foi baseado em uma ideia do grupo em fazer algum sistema voltado para empresas.
        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
Script com da criação + Insert: https://github.com/MRMaken/Trabalho01/blob/master/ScriptBancoCompleto.sql
Dump Script Completo: https://github.com/MRMaken/Trabalho01/blob/master/DumpScriptCompleto.sql


###9	TABELAS E PRINCIPAIS CONSULTAS<br>
####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS<br>

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/contato_usuario.jpg?raw=true "Tabela Contato Usuario")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/pagamento_aluno%3B.jpg?raw=true "Tabela Pagamento Aluno")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/site_academia.jpg?raw=true "Tabela Site Academia")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tabela_acompanha.jpg?raw=true "Tabela Acompanha")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tabela_aluno.jpg?raw=true "Tabela Aluno")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tabela_contato.jpg?raw=true "Tabela Contato")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tabela_endereco.jpg?raw=true "Tabela Endereço")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tabela_professor.jpg?raw=true "Tabela Professor")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tabela_usuario.jpg?raw=true "Tabela Usuario")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tipo_pagamento.jpg?raw=true "Tabela Tipo Pagamento")

Script Comandos: https://github.com/MRMaken/Trabalho01/blob/master/9.1.sql

####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE<br>
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Consulta%201_9.2.jpg?raw=true "Consulta 1")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Consulta2_9.2.jpg?raw=true "Consulta 2")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Consulta3_9.2.jpg?raw=true "Consulta 3")


Script comandos: https://github.com/MRMaken/Trabalho01/blob/master/9.2.sql

####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS<br>
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Consulta1_9.3.jpg?raw=true "Consulta 1")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Consulta2_9.3.jpg?raw=true "Consulta 2")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Consulta3_9.3.jpg?raw=true "Consulta 3")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Consulta4_9.3.jpg?raw=true "Consulta 4")

Script Comandos: https://github.com/MRMaken/Trabalho01/blob/master/9.3.sql

####9.4	CONSULTAS QUE USAM OPERADORES LIKE<br>

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Consulta%201_9.4.jpg?raw=true "Consulta 1")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Consulta2_9.4.jpg?raw=true "Consulta 2")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Consulta3_9.4.jpg?raw=true "Consulta 3")

Script Comandos: https://github.com/MRMaken/Trabalho01/blob/master/9.4.sql

####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS<br>

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Consulta1_9.5.jpg?raw=true "Consulta 1")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Consulta1.1_9.5.jpg?raw=true "Consulta 1.1")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Consulta2_9.5.jpg?raw=true "Consulta 2")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Consulta3_9.5.jpg?raw=true "Consulta 3")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Consulta3.1_9.5.jpg?raw=true "Consulta 3.1")

Script Comandos: https://github.com/MRMaken/Trabalho01/blob/master/9.5.sql

####9.6	CONSULTAS COM JUNÇÃO<br>

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Join_Gerente.jpg?raw=true "Junção Usuario + Gerente")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Join_Professor.jpg?raw=true "Junção Usuario + Professor")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Join_Aluno.jpg?raw=true "Junção Usuario + Aluno")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/InnerJoinCompleto1.png?raw=true "Junção Tabela Aluno com as outras")


Script Comandos: https://github.com/MRMaken/Trabalho01/blob/master/9.6.sql

####9.7	CONSULTAS COM GROUP BY<br>

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Groupby_consult1.jpg?raw=true "Consulta 1")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Groupby_consult2.jpg?raw=true "Consulta 2")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Groupby_consult3.jpg?raw=true "Consulta 3")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Groupby_consult4.jpg?raw=true "Consulta 4")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Groupby_consult5.jpg?raw=true "Consulta 5")

Script Comandos: https://github.com/MRMaken/Trabalho01/blob/master/9.7.sql

####9.8	CONSULTAS COM LEFT E RIGHT JOIN<br>

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.8Consul1.jpeg?raw=true "Consulta 1")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.8Consult2.jpeg?raw=true "Consulta 2")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.8Consult3.jpeg?raw=true "Consulta 3")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.8Consult4.png?raw=true "Consulta 4")

Script Comandos: https://github.com/MRMaken/Trabalho01/blob/master/left_RightJoin.sql

####9.9	CONSULTAS COM SELF JOIN E VIEW<br>

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/View%20_mensalidadeAluno.jpg?raw=true "Mensalidade do Aluno")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/View_SalarioProf.jpg?raw=true "Salario Professor")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/View_CNPJ.jpg?raw=true "CNPJ Gerente")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/SelfJoin1.png?raw=true "Self Join1")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/SelfJoin2.png?raw=true "Self Join2")

Script Comandos: https://github.com/MRMaken/Trabalho01/blob/master/9.9.sql

####9.10	SUBCONSULTAS<br>

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/SubConsulta1.png?raw=true "SubConsulta1")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/SubConsulta2.png?raw=true "SubConsulta2")

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/SubConsulta3.png?raw=true "SubConsulta3")

Script Comandos: https://github.com/MRMaken/Trabalho01/blob/master/9.10.sql

###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>

https://github.com/MRMaken/Trabalho01/blob/master/Slides%20Academia.odp

###11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

A dificuldade encontrada pelo grupo, ocorreu na criação do banco, foram encontradas diversas irregularidades, por conta disso tivemos de refazer-lo diversas vezes, no momento de fazer alguns inner joins tivemos alguns dificuldades para ligar todas as tabelas, pois as vezes o comando funcionava, mas nem sempre mostrava o que queriamos e tinhamos que tentar varias vezes até dar certo, e na hora de fazer subconsultas tinhamos dificuldade, pois mesmo sabendo o para que servia a gente não conseguia usar ela em nosso banco. 
Foi utilizado como ajuda para criação do banco um curso no youtube que ajudou na resolução de algumas duvidas.

https://www.youtube.com/watch?v=Ofktsne-utM&index=1&list=PLHz_AreHm4dkBs-795Dsgvau_ekxg8g1r&spfreload=5

###12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/




