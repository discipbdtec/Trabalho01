#9.5
select * from professor;
update professor set Salario = 1350.00 where Matricula_Professor = 2;
update professor set Turno = 'Noturno' where Matricula_Professor = 3;

select * from gerente;
update gerente set CNPJ = 146509 where Matricula_Gerente = 1;