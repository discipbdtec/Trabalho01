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

https://github.com/MRMaken/Trabalho01/blob/master/Academia.pdf


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
    c) Formas_de_Pagamento: Fizemos desse um campo multivalorado pra ter opçoes de pagamento para o aluno.<br>
    
    

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

#####SCRIPT CONSULTAS
https://github.com/MRMaken/Trabalho01/blob/master/GAP_Consultas_9.1.sql

#####TABELA SITE
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tabela_site.jpg?raw=true "Tabela Site")

#####TABELA USUARIO
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tabela_usuario.jpg?raw=true "Tabela Usuário")

#####TABELA GERENTE
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tabela_gerente.jpg?raw=true "Tabela Gerente")

#####TABELA ALUNO
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tabela_aluno.jpg?raw=true "Tabela Aluno")

#####TABELA PROFESSOR
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tabela_Professor.jpg?raw=true "Tabela Professor")

#####TABELA CONTATO DOS USUARIOS
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tabela_contato.jpg?raw=true "Contato")

#####TABELA ACOMPANHAMENTO DESENVOLVIMENTO
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tabela_acompanha.jpg?raw=true "Tabela Acompanha")

#####TABELA FORMAS PAGAMENTO DO ALUNO
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tabela_Fpagamento.jpg?raw=true "Tabela Formas de Pagamento")

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




