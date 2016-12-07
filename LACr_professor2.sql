USE GAP;

select Matricula_Professor, Salario * 1.10 as Novo_Salario from professor where Salario >= 1200;
