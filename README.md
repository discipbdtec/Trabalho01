# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

#Sumário

###1	COMPONENTES<br>
George Matheus e Matheus Costa<br>

###2	INTRODUÇÃO E MOTIVAÇAO<br>
Nesse projeto vizamos a criacao de um banco de dados para um site de acdemia.<br>

Para facilitar nosso desenvolvimento do PI no ano vem que tera o mesmo. <br>

Também por ser um tema que nos intereca muito. <br>

###3	MINI-MUNDO<br>
Foi-nos solicitado um site para uma academia, pois o deles estava desatualizado, lento e com muitas falhas, a academia também não tem um bom controle de pagamento pois o sistema nao avisa quando uma pessoa deveria pagar e nem da uma forma de feedback pro aluno ou professor, seja para professores que não sabem ao certo quando receberam o pagamento, quanto para alunos, tendo sempre que ir olhar nas fichas e na maioria das vezes gerando atrasos. A academia ainda conta com um sistema de ficar imprimindo as séries de exercício em folhas de papel, o que gera um gasto desnecessário de folhas, pois com frequência o aluno acaba perdendo a folha e tendo sempre que imprimir novamente.<br>
O site planejado promete centralizar e organizar todas essas funções, o aluno poderá de sua casa se cadastrar na academia, e lá ele poderá acompanhar seu desenvolvimento, sua série de exercícios, o dia do seu renovar sua mensalidade, horários de funcionamento e etc. Professores poderão ver os seus horários trabalho, uma lista de todos os alunos matriculados na academia, dia de pagamento e edição de desenvolvimento de alunos para um melhor acompanhamento e melhor desempenho e melhores resultados. Já o gerente da academia tem acesso a os dias de pagamento dos professores, e o dia de renovar a mensalidade dos alunos, acompanhamento de alunos, pessoas matriculadas, para um melhor controle da sua academia.<br>

###4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

https://github.com/MRMaken/Trabalho01/blob/master/Academia.pdf


###5	MODELO CONCEITUAL<br>
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Conc_Academia.jpg?raw=true "Modelo Conceitual")
    
     5.2 NOTACAO UML (Caso esteja fazendo a disciplina de analise)
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/UML%20-%20Academia.jpg?raw=true "Notacao UML")
    
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

Os dados usados são referências à gostos pessoais da dupla, não foi reutilizado nenhum codigo, exceto os aprendidos em sala de aula, o trabalho foi baseado em uma ideia do grupo em fazer algum sistema voltado para empresas.
        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS

Script com da criação + Insert: https://github.com/MRMaken/Trabalho01/blob/master/ScriptBancoCompleto.sql

Dump Script Completo: https://github.com/MRMaken/Trabalho01/blob/master/DumpScriptCompleto.sql


###9	TABELAS E PRINCIPAIS CONSULTAS<br>
####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS<br>

https://github.com/MRMaken/Trabalho01/blob/master/select_contato_usuario.sql

use gap;

select * from contato_usuario;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/contato_usuario.png?raw=true "Tabela Contato Usuario")

https://github.com/MRMaken/Trabalho01/blob/master/select_pagamento_usuario.sql

use gap;

select * from pagamento_aluno;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/pagamento_aluno.png?raw=true "Tabela Pagamento Aluno")

https://github.com/MRMaken/Trabalho01/blob/master/select_site_academia.sql

use gap;

select * from site_academia;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/site_academia.png?raw=true "Tabela Site Academia")

https://github.com/MRMaken/Trabalho01/blob/master/select_acompanha.sql

use gap;

select * from acompanha;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/acompanha.png?raw=true "Tabela Acompanha")

https://github.com/MRMaken/Trabalho01/blob/master/select_aluno.sql

use gap;

select * from aluno;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/aluno.png?raw=true "Tabela Aluno")

https://github.com/MRMaken/Trabalho01/blob/master/select_contato.sql

use gap;

select * from contato;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/contato.png?raw=true "Tabela Contato")

https://github.com/MRMaken/Trabalho01/blob/master/select_endereco.sql

use gap;

select * from endereco;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/endereco.png?raw=true "Tabela Endereço")

https://github.com/MRMaken/Trabalho01/blob/master/select_professor.sql

use gap;

select * from professor;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/professor.png?raw=true "Tabela Professor")

https://github.com/MRMaken/Trabalho01/blob/master/select_usuario.sql

use gap;

select * from usuario;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/usuario.png?raw=true "Tabela Usuario")

https://github.com/MRMaken/Trabalho01/blob/master/select_tipo_pagamento.sql

USE GAP;

select * from tipo_pagamento;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tipo_pagamento.png?raw=true "Tabela Tipo Pagamento")


####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE<br>

https://github.com/MRMaken/Trabalho01/blob/master/filtro_where_endereco.sql

USE GAP;

select * from endereco where Estado = 'ES';

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/where_endereco.png?raw=true "Consulta 1")

https://github.com/MRMaken/Trabalho01/blob/master/filtro_where_pagamento_aluno.sql

USE GAP;

select Matricula_Aluno from pagamento_aluno where Valor_Pagamento > 60.00;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/where_pagamento_aluno.png?raw=true "Consulta 2")

https://github.com/MRMaken/Trabalho01/blob/master/filtro_where_usuario.sql

USE gap;

select Nome_Completo, Data_Nascimento, CPF from usuario where Data_Nascimento > '1994-05-01';

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/where_usuario.png?raw=true "Consulta 3")


####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS<br>

https://github.com/MRMaken/Trabalho01/blob/master/LACr_endereco.sql

USE GAP;

select Matricula_Usuario, Estado from endereco where Estado = 'ES' or Estado = 'RJ';

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/LACr_endereco.png?raw=true "Consulta 1")

https://github.com/MRMaken/Trabalho01/blob/master/LACr_professor.sql

USE GAP;

select * from professor where Salario > 1200 or Salario <= 1300;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/LACr_professor.png?raw=true "Consulta 2")

https://github.com/MRMaken/Trabalho01/blob/master/LACr_professor2.sql

USE GAP;

select Matricula_Professor, Salario * 1.10 as Novo_Salario from professor where Salario >= 1200;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/LACr_professor2.png?raw=true "Consulta 3")

https://github.com/MRMaken/Trabalho01/blob/master/LACr_usuario.sql

USE GAP;

select Matricula, Nome_Completo as Mulheres_da_Academia from usuario where Sexo = 'F';

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/LACr_usuario.png?raw=true "Consulta 4")


####9.4	CONSULTAS QUE USAM OPERADORES LIKE<br>

https://github.com/MRMaken/Trabalho01/blob/master/Like_usuario.sql

USE GAP;

select * from usuario where Nome_Completo like 'A%';

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Like_usuario.png?raw=true "Consulta 1")

https://github.com/MRMaken/Trabalho01/blob/master/Like_usuario2.sql

USE GAP;

select * from usuario where Email like '%@gmail.com';

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Like_usuario2.png?raw=true "Consulta 2")

https://github.com/MRMaken/Trabalho01/blob/master/Like_usuario3.sql

USE GAP;

select * from usuario where Nome_Completo like '_a%';

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Like_usuario3.png?raw=true "Consulta 3")


####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS<br>

https://github.com/MRMaken/Trabalho01/blob/master/update_delete_gerente.sql

USE GAP;

update gerente set CNPJ = 146509 where Matricula_Gerente = 1;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/update_delete_gerente.png?raw=true "Consulta 1")

https://github.com/MRMaken/Trabalho01/blob/master/update_delete_professor.sql

USE GAP;

update professor set Salario = 1350.00 where Matricula_Professor = 2;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/update_delete_professor.png?raw=true "Consulta 1.1")

https://github.com/MRMaken/Trabalho01/blob/master/update_delete_professor2.sql

USE GAP;

update professor set Turno = 'Noturno' where Matricula_Professor = 3;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/update_delete_professor2.png?raw=true "Consulta 2")


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




