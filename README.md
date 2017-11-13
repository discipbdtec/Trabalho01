# Consultas Online 

# Sumário

### 1.COMPONENTES<br>
João Pedro Fs ( jj.pedrinho@hotmail.com) <br>
Lucas Calazans ( lucascalazans04@hotmail.com) <br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>

A melhoria da saúde pública é um desses grandes desafios que o Brasil precisa vencer, principalmente quando avaliamos o Sistema Único de Saúde (SUS).

Para garantir saúde pública de qualidade a toda população, o Brasil ainda precisa percorrer um longo caminho. A falta de médicos em regiões afastadas em contraponto à intensa concentração nas grandes cidades, além da dificuldade em conseguir atendimento no SUS são apenas alguns dos inúmeros problemas que atingem os brasileiros que tentam utilizar a saúde pública diariamente. 

Para tentar amenizar um pouco desse problema, que é a crescente demora e dificuldade de conseguir atendimento no SUS, pensamos em aplicativo que pode tornar muito mais fácil a qualquer um que o tenha de ser atendido.

A pessoa que obtiver esse aplicativo em mãos poderá marcar sua consulta ou exame em algum horário de sua preferência ( desde que esse horário esteja disponível para o médico em questão ). Isso fará com que o cliente não fique esperando em filas para marcar sua consulta ou que não dependa de terceiros para marcarem em uma hora inconveniente.  Esse aplicativo tornará a marcação de consultas e exames, em geral, muito mais prática, simples e pertinente.


<br>

### 3.MINI-MUNDO<br>


O aplicativo foi criado com o objetivo de facilitar a marcação de consulta e torná-la mais simples. O paciente terá mais facilidade para agendar a especialidade que necessita. No consultafast poderá ser encontrado o prontuário do paciente, a Classificação Internacional de Doenças - CID 10, lembretes e observações, chat com médicos e outros pacientes mediante uma rede interna, biblioteca com listagem de todos os medicamentos e fórmulas, remédios caseiros, exames e relatórios integrados ao perfil do paciente, também será possível a marcação de exames, além do mais terá dicas de prevenção de doenças e de primeiros socorros, mostrará hospitais e postos de saúde mais próximos do paciente, contando também com uma função de emergência, no qual o paciente envia a localização para que seja atendido pela ambulância mais próxima. O aplicativo conta ainda com mensagens enviadas ao paciente para lembrá-lo de suas consultas de modo que não se esqueçam das consultas. 

Para a marcação de consultas o paciente entrará com os dados: nome, login, senha, sexo, número de telefone, data a nascimento, endereço, etc. Quando o paciente for entrar na sua conta no sistema, ele deverá escolher a opção de "logar como paciente" e somente assim será exigido seu login e senha. Os dados do paciente ficaram armazenados podendo ser editados a qualquer momento. 

Os médicos também deverão ser cadastrados no , sistema. Devendo inserir endereço, telefone, data de nascimento, sexo, especialidade, número de registro e clínica no qual atua. A clinica para ser cadastrada, também deverá inserir os dados como nome, endereço, cnpj, telefone e planos atendidos na mesma. O médico após a ter realizado o cadastro será capaz de fazer o login em sua conta e editar as informações de seu perfil. Podendo apenas um paciente por horário. O paciente tem a possibilidade de desmarcar e assim possibilitar que outra pessoa possa marcar e os médicos não fiquem com horários vagos.

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

[agende.pdf](https://github.com/discipbdtec/Trabalho01/files/1338085/agende.pdf)



![teste](https://user-images.githubusercontent.com/31417932/30292162-90761878-970b-11e7-9049-ba2c5685ae3a.jpg)


### 5.MODELO CONCEITUAL<br>
![captura de tela 37 _edited](https://user-images.githubusercontent.com/26657007/32698569-029c2f92-c78f-11e7-95c1-6db3d8702d86.jpg)


   

#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Sergio Vago e Isabela de assis]
    [Grupo02]: [Ramon e Jean]

#### 5.2 DECISÕES DE PROJETO
     
    a) Campo pessoas: Pensamos em coloca-lo para as caracteristicas tanto de medicos quanto clientes se localizarem nele e ter um mais facil acesso.
    Campo endereço: Optamos por colocar um campo multivalorado e composto, pois cada medico e cada clinica tem seu proprio endereço.
    b) Essas decisões foram tomadas com o objetivo de otimizar nosso banco de dados e deixar-lo melhor para o uso dos clientes!

#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    PACIENTE: Tabela que armazena as informações relativas ao cliente.
    PESSOAS : Tabela que armazena as informações da herança que tanto o paciente quanto o médico poderá ter.
    CONSULTAS : Tabela que contém as informações necessárias a serem fornecidas sobre cada consulta que será realizada.
    CLINICA : Tabela que armazena as informações relativas a clínica onde o cliente fará sua consulta.
    ENDEREÇO : Tabela que contém as informações do endereço do médico, do cliente e da clinica.
    MÉDICO : Tabela que contém as informações relativas ao médico.        
    CONTATO : Tabela que tem os tipo de contatos ( telefone, email, sinal de fumaça e etc )

### 6	MODELO LÓGICO<br>

![captura de tela 36 _edited](https://user-images.githubusercontent.com/26657007/32698568-02733f92-c78f-11e7-9496-b986c7051979.jpg)




### 7	MODELO FÍSICO<br>


[WinsBd.txt](https://github.com/discipbdtec/Trabalho01/files/1464586/WinsBd.txt)


        
 
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>



[Insert no trab.txt](https://github.com/discipbdtec/Trabalho01/files/1467623/Insert.no.trab.txt)




#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários


        
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>


#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
#### 9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
#### 9.10	SUBCONSULTAS (Mínimo 3) <br>





#####################################################





### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega até este ponto em (data a ser definida)
        
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/




#####################################################


Trabalho de APS

### Requisitos

    Caso 1 - Medico
    RF001 : Cadastrar médico
    RNF001: Mostrar perfil
    RF002 : Fazer login
    RF003 : Disponibilizar horários
    RF004 : Dar dicas de prevenção de doenças e primeiros socorros

    Caso 2 - Cliente
    RF004: Cadastrar cliente
    RF005 : Fazer login
    RF006: Buscar consultorio e buscar medico
    RF006: Marcar consulta / exame
    RF007: Desmarcar consulta / exame
    RF008: Criar lembretes o observações
    RNF002: Mostrar perfil
    RNF003: Indicar local mais próximo
    RNF004: Mostrar avaliação do medico
    RNF005: Visualizar horários disponiveis


    Caso 3 - Administrador:
    RF001: Fazer classificação internacional de doenças
    RF002: Criar chat com médicos e outros pacientes
    RF003: Enviar ambulância mais próxima a pacientes em caso de emergência
    RF004: Enviar mensagem ao paciente para lembrar de consultas marcadas
