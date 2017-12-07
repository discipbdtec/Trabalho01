# Consultas Online 

# Sumário

### 1.COMPONENTES<br>
João Pedro Fs ( jj.pedrinho@hotmail.com) <br>
Lucas Calazans ( lucascalazans04@hotmail.com) <br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>

A melhoria da saúde pública é um desses grandes desafios que o Brasil precisa vencer, principalmente quando avaliamos o Sistema Único de Saúde (SUS).

Para garantir saúde pública de qualidade a toda população, o Brasil ainda precisa percorrer um longo caminho. A falta de médicos em regiões afastadas em contraponto à intensa concentração nas grandes cidades, além da dificuldade em conseguir atendimento no SUS são apenas alguns dos inúmeros problemas que atingem os brasileiros que tentam utilizar a saúde pública diariamente. 

Para tentar amenizar um pouco desse problema, que é a crescente demora e dificuldade de conseguir atendimento no SUS, pensamos em aplicativo que pode tornar muito mais fácil a qualquer um que o tenha de ser atendido.

A pessoa que obtiver esse aplicativo em mãos poderá marcar sua consulta ou exame em algum horário de sua preferência ( desde que esse horário esteja disponível para o médico em questão. Isso fará com que o cliente não fique esperando em filas para marcar sua consulta ou que não dependa de terceiros para marcarem em uma hora inconveniente.  Esse aplicativo tornará a marcação de consultas e exames, em geral, muito mais prática, simples e pertinente.


<br>

### 3.MINI-MUNDO<br>


O aplicativo foi criado com o objetivo de facilitar a marcação de consulta e torná-la mais simples. O paciente terá mais facilidade para agendar a especialidade que necessita. No consultafast poderá ser encontrado o prontuário do paciente, a Classificação Internacional de Doenças - CID 10, lembretes e observações, chat com médicos e outros pacientes mediante uma rede interna, biblioteca com listagem de todos os medicamentos e fórmulas, remédios caseiros, exames e relatórios integrados ao perfil do paciente, também será possível a marcação de exames, além do mais terá dicas de prevenção de doenças e de primeiros socorros, mostrará hospitais e postos de saúde mais próximos do paciente, contando também com uma função de emergência, no qual o paciente envia a localização para que seja atendido pela ambulância mais próxima. O aplicativo conta ainda com mensagens enviadas ao paciente para lembrá-lo de suas consultas de modo que não se esqueçam das consultas. 

Para a marcação de consultas o paciente entrará com os dados: nome, login, senha, sexo, número de telefone, data a nascimento, endereço, etc. Quando o paciente for entrar na sua conta no sistema, ele deverá escolher a opção de "logar como paciente" e somente assim será exigido seu login e senha. Os dados do paciente ficaram armazenados podendo ser editados a qualquer momento. 

Os médicos também deverão ser cadastrados no , sistema. Devendo inserir endereço, telefone, data de nascimento, sexo, especialidade, número de registro e clínica no qual atua. A clinica para ser cadastrada, também deverá inserir os dados como nome, endereço, cnpj, telefone e planos atendidos na mesma. O médico após a ter realizado o cadastro será capaz de fazer o login em sua conta e editar as informações de seu perfil. Podendo apenas um paciente por horário. O paciente tem a possibilidade de desmarcar e assim possibilitar que outra pessoa possa marcar e os médicos não fiquem com horários vagos.

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>



![teste](https://user-images.githubusercontent.com/31417932/30292162-90761878-970b-11e7-9049-ba2c5685ae3a.jpg)


### 5.MODELO CONCEITUAL<br>
![gftgg](https://user-images.githubusercontent.com/26657007/33724674-3956bdd2-db57-11e7-9a0b-ba10f1fdd59e.png)





#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Sergio Vago e Isabela de assis]
    [Grupo02]: [Ramon e Jean]

#### 5.2 DECISÕES DE PROJETO
     
    Tabela pessoas: Pensamos em coloca-lo para as caracteristicas tanto de medicos quanto clientes se localizarem nele e ter um mais facil acesso.
    Tabela endereço: Optamos por colocar um campo multivalorado e composto, pois cada medico e cada clinica tem seu proprio endereço.
    Tabela contatos: Optamos por isso devido ao fato de cada pessoa pode ter 1 ou mais contatos, ou seja, facilitaria a vida dela  com isso.
    Essas decisões foram tomadas com o objetivo de otimizar o banco de dados e deixar-lo melhor para o uso dos Pacientes.

#### 5.3 DESCRIÇÃO DOS DADOS 

    PACIENTE: Tabela que armazena as informações relativas ao cliente.
    PESSOAS : Tabela que armazena as informações da herança que tanto o paciente quanto o médico poderá ter.
    CONSULTAS : Tabela que contém as informações necessárias a serem fornecidas sobre cada consulta que será realizada.
    CLINICA : Tabela que armazena as informações relativas a clínica onde o cliente fará sua consulta.
    ENDEREÇO : Tabela que contém as informações do endereço do médico, do cliente e da clinica.
    MÉDICO : Tabela que contém as informações relativas ao médico.        
    CONTATO : Tabela que tem os tipo de contatos ( telefone, email, sinal de fumaça e etc )

### 6	MODELO LÓGICO<br>

![sdsds](https://user-images.githubusercontent.com/26657007/33726423-263982de-db5c-11e7-85b1-a2509cd5d448.png)




### 7	MODELO FÍSICO<br>

[Fisíco.txt](https://github.com/discipbdtec/Trabalho01/files/1540543/Fisico.txt) 
 
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

[Trabalho BD.txt](https://github.com/discipbdtec/Trabalho01/files/1540770/Trabalho.BD.txt)

#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        Dados obtidos atravéz de tabelas de outros bancos com nomes, epecialidade e outros dados. Endereços obtidos no google maps no estado do Espíto Santo
        b) obtenção de códigos reutilizados
        Não teve códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        Aulas de BD em sala de aula e tutorias da internet
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários


        
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>


#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
SELECT * FROM ENDEREÇO

![endereco](https://user-images.githubusercontent.com/31863030/33741189-8731148e-db8a-11e7-9e5c-8b5bf3f50d8d.png)

SELECT * FROM PACIENTE

![paciente](https://user-images.githubusercontent.com/31863030/33741354-132c7118-db8b-11e7-8f4d-f94d2b2b0b48.png)

SELECT * FROM MÉDICO

![medico](https://user-images.githubusercontent.com/31863030/33741305-ec2fb9da-db8a-11e7-8add-11ef1f470918.png)

SELECT * FROM PESSOA

![pessoa](https://user-images.githubusercontent.com/31863030/33741384-39a0071a-db8b-11e7-83d3-98c78b7fde70.png)

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>
select * from Médico
where Esp = 'cirurgião'

![endereco](https://user-images.githubusercontent.com/31863030/33741738-b1fd2e4e-db8c-11e7-98d8-5797cf58ce3a.png)

select * from paciente
where Plano_SD > 100000;

![pl s](https://user-images.githubusercontent.com/31863030/33741708-8fc57e76-db8c-11e7-8c6f-abbda2cc1e9a.png)

select * from endereço 
where Logradouro = 'rua'

![lo](https://user-images.githubusercontent.com/31863030/33741651-65006d40-db8c-11e7-9dd8-1ca5c9ec1860.png)


#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>

select avg(horario) from consultas

![me](https://user-images.githubusercontent.com/31863030/33742014-aa9821e4-db8d-11e7-9f17-4e5ca67b6d70.png)

select sum(Número) from endereço 

![su](https://user-images.githubusercontent.com/31863030/33741966-8b4de49a-db8d-11e7-89c4-688b9bac901a.png)

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
select * from médico where Esp like "c%"

![lk](https://user-images.githubusercontent.com/31863030/33742306-ea853b4c-db8e-11e7-8ca7-a219d95d1b67.png)

select * from pessoa where nome like "m%"

![lk p](https://user-images.githubusercontent.com/31863030/33742351-1af30c5a-db8f-11e7-8623-163f3deae2cb.png)

select cep from endereço where logradouro like "r%"

![lk cep](https://user-images.githubusercontent.com/31863030/33742371-32ed8d3a-db8f-11e7-9e1a-dfec309241de.png)

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
update médico set Esp = 'Cardiologista' where ID_Medic > 1000

update pessoa set login = 'pedrocao' where nome = pedro

update endereço set logradouro = 'rua' where ID_Ende = 102

delete from pessoa where ID_Pssa < 0

delete from endereço where cep < 0

delete from Bairro where ID_Bairro < 0

#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
select nome,ID_pssa from pessoa
inner join médico
on (pessoa.ID_Pssa = médico.FK_Pessoa_ID_Pssa)


![join](https://user-images.githubusercontent.com/31863030/33743010-283b14d6-db92-11e7-84c3-a78ea7d9caee.png)

select pessoa.nome, contato.descrição from pessoa
inner join contato
on (pessoa.ID_Pssa = contato.ID_pssa)

![join2](https://user-images.githubusercontent.com/31863030/33743040-4106307c-db92-11e7-9e04-eadf9f001bb3.png)

select pessoa.nome, paciente.Plano_Sd from pessoa
inner join paciente
on (pessoa.ID_pssa = paciente.FK_Pessoa_ID_pssa)

![join3](https://user-images.githubusercontent.com/31863030/33743063-5ac3b2f0-db92-11e7-970c-0788b3525336.png)

#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
select * from pessoa group by sexo

![group](https://user-images.githubusercontent.com/31863030/33743315-749297b8-db93-11e7-805d-ba94bba79e26.png)

select * from endereço group by logradouro

![group2](https://user-images.githubusercontent.com/31863030/33743351-95a2ed54-db93-11e7-8d2f-d53592ad6762.png)

select * from pessoa group by Data_Nsc

![group3](https://user-images.githubusercontent.com/31863030/33743367-b0554d0e-db93-11e7-936f-c70220a54844.png)

select * from pessoa group by nome
select * from endereço group by número

#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
select pessoa.nome, contato.descrição from pessoa left outer join contato on (pessoa.ID_Pssa = contato.ID_pssa)

#### 9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>

#### 9.10	SUBCONSULTAS (Mínimo 3) <br>

#####################################################



### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>

[DB-Apresentaçao.pptx](https://github.com/discipbdtec/Trabalho01/files/1539752/DB-Apresentacao.pptx)


### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Houve dificuldade na relação de tabelas e cardinalidade entre elas.
        Vários problemas de relacionamento de tabelas, principalmente nas de endereço e contato.
        Houve também dificuldade para fazer as heranças, dividir em pessoa fisica e juridica.
        Dificuldade para rodar o físico no SQL.
        Vários problemas em relação ter que mudar uma coisa no modelo conceitual e ter que mudar todo trabalho, ou mudar o fisico e             refazer tod o trabalho também.




#####################################################


###  Trabalho de APS

### Requisitos

    Caso 1 - Medico
    RF001 : Cadastrar médico
    RNF001: Mostrar perfil
    RF002 : Fazer login
    RF003 : Disponibilizar horários

    Caso 2 - Cliente
    RF004: Cadastrar cliente
    RF005 : Fazer login
    RF006: Buscar consultório e buscar medico
    RF006: Marcar consulta / exame
    RF007: Desmarcar consulta / exame
    RNF002: Mostrar perfil
    RNF005: Visualizar horários disponíveis



####  Casos de Uso

![diagrama casos de uso](https://user-images.githubusercontent.com/26657007/33725848-8a1c4da6-db5a-11e7-8de0-e72a8f0a42e8.png)


### Sequência

![diagrama de sequencia](https://user-images.githubusercontent.com/26657007/33725850-8a69bda2-db5a-11e7-9c73-cd68969f56e4.png)


### Atividades

![diagrama de atividades](https://user-images.githubusercontent.com/26657007/33725849-8a44ec3e-db5a-11e7-9911-33d21afb19cf.png)


    
