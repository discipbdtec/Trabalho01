# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

#Sumário

###1	COMPONENTES<br>
George Matheus e Matheus Costa<br>

###2	INTRODUÇÃO E MOTIVAÇAO<br>
Nesse projeto vizamos a criacao de um banco de dados para um site de acdemia.<br>

Para facilitar nosso desenvolvimento do PI no ano vem que tera o mesmo. <br>

Também por ser um tema que nos interessa muito. <br>

###3	MINI-MUNDO<br>
Foi-nos solicitado um site para uma academia, pois o deles estava desatualizado, lento e com muitas falhas, a academia também não tem um bom controle de pagamento pois o sistema nao avisa quando uma pessoa deveria pagar e nem da uma forma de feedback pro aluno ou professor, seja para professores que não sabem ao certo quando receberam o pagamento, quanto para alunos, tendo sempre que ir olhar nas fichas e na maioria das vezes gerando atrasos. A academia ainda conta com um sistema de ficar imprimindo as séries de exercício em folhas de papel, o que gera um gasto desnecessário de folhas, pois com frequência o aluno acaba perdendo a folha e tendo sempre que imprimir novamente.<br>
Somos uma plataforma que cuida da criação de diversos sites para academias, o site planejado promete centralizar e organizar todas essas funções, o aluno poderá de sua casa se cadastrar na academia, e lá ele poderá acompanhar seu desenvolvimento, sua série de exercícios, o dia do seu renovar sua mensalidade, horários de funcionamento e etc. Professores poderão ver os seus horários trabalho, uma lista de todos os alunos matriculados na academia, dia de pagamento e edição de desenvolvimento de alunos para um melhor acompanhamento e melhor desempenho e melhores resultados. Já o gerente da academia tem acesso a os dias de pagamento dos professores, e o dia de renovar a mensalidade dos alunos, acompanhamento de alunos, pessoas matriculadas, para um melhor controle da sua academia.<br>

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

Os dados usados são referências à gostos pessoais da dupla, foi utilizado um codigo que serve para fazer chaves compostas que não foi ensinado em sala pois não se foi necessária até aquele momento. O trabalho foi baseado em uma ideia do grupo em fazer algum sistema voltado para empresas, usamos como ajuda na resolução das duvidas uma playlist do youtube com um curso completo de mysql.
https://www.youtube.com/watch?v=Ofktsne-utM&index=1&list=PLHz_AreHm4dkBs-795Dsgvau_ekxg8g1r&spfreload=5

        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS

Script com da criação + Insert: https://github.com/MRMaken/Trabalho01/blob/master/ScriptBancoCompleto.sql

Dump Script Completo: https://github.com/MRMaken/Trabalho01/blob/master/DumpScriptCompleto.sql


###9	TABELAS E PRINCIPAIS CONSULTAS<br>
####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS<br>


USE GAP;

select * from contato_usuario;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/contato_usuario.png?raw=true "Tabela Contato Usuario")


select * from pagamento_aluno;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/pagamento_aluno.png?raw=true "Tabela Pagamento Aluno")


select * from site_academia;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/site_academia.png?raw=true "Tabela Site Academia")



select * from acompanha;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/acompanha.png?raw=true "Tabela Acompanha")



select * from aluno;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/aluno.png?raw=true "Tabela Aluno")


select * from contato;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/contato.png?raw=true "Tabela Contato")


select * from endereco;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/endereco.png?raw=true "Tabela Endereço")


select * from professor;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/professor.png?raw=true "Tabela Professor")


select * from usuario;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/usuario.png?raw=true "Tabela Usuario")


select * from tipo_pagamento;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/tipo_pagamento.png?raw=true "Tabela Tipo Pagamento")


####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE<br>


select * from endereco where Estado = 'ES';

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/where_endereco.png?raw=true "Consulta 1")


select Matricula_Aluno from pagamento_aluno where Valor_Pagamento > 60.00;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/where_pagamento_aluno.png?raw=true "Consulta 2")


select Nome_Completo, Data_Nascimento, CPF from usuario where Data_Nascimento > '1994-05-01';

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/where_usuario.png?raw=true "Consulta 3")


####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS<br>


select Matricula_Usuario, Estado from endereco where Estado = 'ES' or Estado = 'RJ';

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/LACr_endereco.png?raw=true "Consulta 1")


select * from professor where Salario > 1200 or Salario <= 1300;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/LACr_professor.png?raw=true "Consulta 2")


select Matricula_Professor, Salario * 1.10 as Novo_Salario from professor where Salario >= 1200;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/LACr_professor2.png?raw=true "Consulta 3")


select Matricula, Nome_Completo as Mulheres_da_Academia from usuario where Sexo = 'F';

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/LACr_usuario.png?raw=true "Consulta 4")


####9.4	CONSULTAS QUE USAM OPERADORES LIKE<br>


select * from usuario where Nome_Completo like 'A%';

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Like_usuario.png?raw=true "Consulta 1")


select * from usuario where Email like '%@gmail.com';


![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Like_usuario2.png?raw=true "Consulta 2")


select * from usuario where Nome_Completo like '_a%';

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Like_usuario3.png?raw=true "Consulta 3")


####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS<br>


update gerente set CNPJ = 146509 where Matricula_Gerente = 1;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/update_delete_gerente.png?raw=true "Consulta 1")


update professor set Salario = 1350.00 where Matricula_Professor = 2;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/update_delete_professor.png?raw=true "Consulta 1.1")


update professor set Turno = 'Noturno' where Matricula_Professor = 3;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/update_delete_professor2.png?raw=true "Consulta 2")


####9.6	CONSULTAS COM JUNÇÃO<br>

select * from Usuario join Aluno 
on(Aluno.Matricula_Aluno = Usuario.Matricula);

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.6.1.jpg?raw=true "Junção Usuario + Aluno")

select * from Usuario join Professor
on(Professor.Matricula_Professor = Usuario.Matricula);
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.6.2.jpg?raw=true "Junção Usuario + Professor")

select * from Usuario join Gerente
on(Gerente.Matricula_Gerente = Usuario.Matricula);

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.6.3.jpg?raw=true "Junção Usuario + Gerente")

Devido ao tamanho do comando, ele foi colocado em um arquivo separado, e somente parte do que ele faz está na imagem, segue no link abaixo:
https://github.com/MRMaken/Trabalho01/blob/master/9.6.sql
![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.6.4.jpg?raw=true "Junção Tabela Aluno com as outras")




####9.7	CONSULTAS COM GROUP BY<br>

select usuario.Matricula, usuario.Nome_Completo, usuario.CPF, aluno.Data_inicio from usuario join aluno
on(aluno.Matricula_Aluno = usuario.Matricula)
group by usuario.Nome_Completo, usuario.Matricula;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Groupby_consult1.jpg?raw=true "Consulta 1")

select usuario.Matricula, usuario.Nome_Completo, usuario.CPF, aluno.Data_inicio from usuario join aluno 
on(aluno.Matricula_Aluno = usuario.Matricula)
group by usuario.Matricula desc;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Groupby_consult2.jpg?raw=true "Consulta 2")

select usuario.Matricula, usuario.Nome_Completo, aluno.Data_Inicio, pagamento_aluno.Valor_Pagamento
from usuario join aluno join pagamento_aluno
on(aluno.Matricula_Aluno = usuario.Matricula and pagamento_aluno.Matricula_Aluno = aluno.Matricula_Aluno)
group by pagamento_aluno.Valor_Pagamento, usuario.Matricula;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Groupby_consult3.jpg?raw=true "Consulta 3")

select * from usuario
group by Nome_Completo, Matricula;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Groupby_consult4.jpg?raw=true "Consulta 4")

select * from endereco
group by Estado, Matricula_Usuario;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/Groupby_consult5.jpg?raw=true "Consulta 5")



####9.8	CONSULTAS COM LEFT E RIGHT JOIN<br>


select Usuario.Matricula, Usuario.Nome_Completo, Aluno.Data_inicio from Usuario
left join Aluno
on(Usuario.Matricula = Aluno.Matricula_Aluno);

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.8Consul1.jpg?raw=true "Consulta 1")

select usuario.Matricula, usuario.Nome_Completo, usuario.CPF, aluno.Data_inicio from usuario join aluno 
on(aluno.Matricula_Aluno = usuario.Matricula)
group by usuario.Matricula desc;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.8Consult2.jpg?raw=true "Consulta 2")

select Usuario.Nome_Completo, Acompanha.Altura, Acompanha.Peso
from Usuario left join Acompanha
on(Usuario.Matricula = Acompanha.Matricula_Aluno);

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.8Consult3.jpg?raw=true "Consulta 3")


select Usuario.Nome_Completo, Acompanha.Altura, Acompanha.Peso
from Usuario right join Acompanha
on(Usuario.Matricula = Acompanha.Matricula_Aluno);

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.8Consult4.png?raw=true "Consulta 4")



####9.9	CONSULTAS COM SELF JOIN E VIEW<br>

create View Valor_pago_por_aluno AS 
Select Usuario.Nome_Completo, pagamento_aluno.Valor_Pagamento From usuario
inner join pagamento_aluno
on usuario.matricula = pagamento_aluno.Matricula_Aluno;
Select * from Valor_pago_por_aluno;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.9.1.jpg?raw=true "Mensalidade do Aluno")

Create View Valor_salario_Professor AS 
Select Usuario.Nome_Completo, professor.salario From usuario
inner join professor
on usuario.matricula = professor.Matricula_Professor;

Select * from Valor_salario_Professor;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.9.2.jpg?raw=true "Salario Professor")

Create View CNPJ_gerente AS 
Select Usuario.Nome_Completo, gerente.CNPJ From usuario
inner join gerente
on usuario.matricula = gerente.Matricula_gerente;

Select * from CNPJ_gerente;

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.9.3.jpg?raw=true "CNPJ Gerente")

select * from Usuario
join Acompanha on Acompanha.Matricula_Aluno = Usuario.Matricula
join Usuario as Usuario2 on Acompanha.Matricula_Professor = Usuario2.Matricula

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.9.4.jpg?raw=true "Self Join1")


select * from Usuario
join Professor on Professor.Matricula_Professor = Usuario.Matricula
join Usuario as Usuario2 on Professor.Matricula_Gerente = Usuario2.Matricula

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/9.9.5.jpg?raw=true "Self Join2")



####9.10	SUBCONSULTAS<br>

Select * from usuario
where sexo in(
select sexo from usuario 
where sexo = "F");

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/SubConsulta1.png?raw=true "SubConsulta1")

select * from usuario
inner join professor
on professor.Matricula_Professor = usuario.Matricula
where turno in(
select Turno from professor
where turno<>"Vespertino");

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/SubConsulta2.png?raw=true "SubConsulta2")

select * from usuario
inner join pagamento_aluno 
on pagamento_aluno.Matricula_Aluno=usuario.Matricula
where valor_pagamento in(
select valor_pagamento from pagamento_aluno
where Valor_Pagamento>=80.00);

![Alt text](https://github.com/MRMaken/Trabalho01/blob/master/SubConsulta3.png?raw=true "SubConsulta3")


###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>

https://github.com/MRMaken/Trabalho01/blob/master/Slides%20Academia.odp

###11   TRABALHO DO TWITTER<br>

###12	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

A dificuldade encontrada pelo grupo, ocorreu na criação do banco, foram encontradas diversas irregularidades, por conta disso tivemos de refazer-lo diversas vezes, no momento de fazer alguns inner joins tivemos alguns dificuldades para ligar todas as tabelas, pois as vezes o comando funcionava, mas nem sempre mostrava o que queriamos e tinhamos que tentar varias vezes até dar certo, e na hora de fazer subconsultas tinhamos dificuldade, pois mesmo sabendo o para que servia a gente não conseguia usar ela em nosso banco. 


###13  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/




