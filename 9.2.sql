#9.2
USE GAP;

select Nome_Completo, Data_Nascimento, CPF from usuario where Data_Nascimento > '1994-05-01';
select Matricula_Aluno from pagamento_aluno where Valor_Pagamento > 60.00;
select * from endereco where Estado = 'ES';
