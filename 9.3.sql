#9.3
select Matricula_Usuario, Estado from endereco where Estado = 'ES' or Estado = 'RJ';
select * from professor where Salario > 1200 or Salario <= 1300;
select Matricula_Professor, Salario * 1.10 as Novo_Salario from professor where Salario >= 1200;
select Matricula, Nome_Completo as Mulheres_da_Academia from usuario where Sexo = 'F';