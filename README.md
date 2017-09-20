# Consultas Online 

# Sumário

### 1.COMPONENTES<br>
João Pedro Fs ( jj.pedrinho@hotmail.com) <br>
Lucas Calazans ( lucascalazans04@hotmail.com) <br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> e motivação da escolha realizada. <br>

### 3.MINI-MUNDO<br>
O aplicativo foi criado com a intenção de ficar mais prático a marcação de consultas
e saber qual consultório fica mais perto do paciente, o aplicativo consiste com dois
logins, uma para o médico entrar e colocar os horários que estará disponível e ver o
perfil do paciente (usuário), para então ligar para confirmar a consulta, e o outro
será para o paciente (usuário) entrar e criar o seu perfil onde poderá colocar suas
Especificações, seu Telefone e etc.. No aplicativo ele poderá procurar os médicos
perto da sua localização e então ver o médico que necessita, a partir daí marcar a
consulta de acordo com seu horário livre, depois só esperar o médico retornar para
confirmar a consulta. <br>


### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

https://agendemedic.mybalsamiq.com/projects/agende/grid<br>

![teste](https://user-images.githubusercontent.com/31417932/30292162-90761878-970b-11e7-9049-ba2c5685ae3a.jpg)

#### 4.1 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual
    c) Após criada esta tabela não deve ser modificada, pois será comparada com a tabela final na conclusão do trabalho
    
    
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 10 principais relatórios que podero ser obtidos por meio do sistema proposto!

### 5.MODELO CONCEITUAL<br>
    a) NOTACAO ENTIDADE RELACIONAMENTO
![2017-09-12](https://user-images.githubusercontent.com/31417932/30355999-20c9de80-980d-11e7-9f28-4e4a424cab31.png)

    
    b) NOTACAO UML (Caso esteja fazendo a disciplina de analise)

#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
     
    a) Campo pessoas: Pensamos em coloca-lo para as caracteristicas tanto de medicos quanto clientes se localizarem nele e ter um mais facil acesso.
    Campo endereço: Optamos por colocar um campo multivalorado e composto, pois cada medico e cada clinica tem seu proprio endereço.
    b) Essas decisões foram tomadas com o objetivo de otimizar nosso banco de dados e deixar-lo melhor para o uso dos clientes!

#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    CLIENTE: Tabela que armazena as informações relativas ao cliente.
    PESSOAS : Tabela que armazena as informações que todas as pessoas que acessarem o banco vao precisar.
    CONSULTAS : Campo que contém as informações necessárias a serem infornecidas sobre cada consulta que será realizada.
    CLINICA : Tabela que armazena as informações relativas a clínica onde o cliente fará sua consulta.
    ENDEREÇO : Tabela que contém as informações do endereço do médico, do cliente e da clinica.
    MÉDICO : Tabela que contém as informações relativas ao médico.        

### 6	MODELO LÓGICO<br>
### 7	MODELO FÍSICO<br>    
 
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto

## Entrega até este ponto em (20/09/2017)
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários



        
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
        Entrega até este ponto em (data a ser definida)
        
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
#### 9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
#### 9.10	SUBCONSULTAS (Mínimo 3) <br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega até este ponto em (data a ser definida)
        
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

#### Link para BrModelo:
http://sis4.com/brModelo/brModelo/download.html
#### Link para Download do Mysql
https://dev.mysql.com/downloads/file/?id=471661
https://dev.mysql.com/downloads/windows/installer/5.7.html

### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.

