use gap;

create View Valor_pago_por_aluno AS 
Select Usuario.Nome_Completo, pagamento_aluno.Valor_Pagamento From usuario
inner join pagamento_aluno
on usuario.matricula = pagamento_aluno.Matricula_Aluno;

Select * from Valor_pago_por_aluno;


Create View Valor_salario_Professor AS 
Select Usuario.Nome_Completo, professor.salario From usuario
inner join professor
on usuario.matricula = professor.Matricula_Professor;

Select * from Valor_salario_Professor;


Create View CNPJ_gerente AS 
Select Usuario.Nome_Completo, gerente.CNPJ From usuario
inner join gerente
on usuario.matricula = gerente.Matricula_gerente;

Select * from CNPJ_gerente;

