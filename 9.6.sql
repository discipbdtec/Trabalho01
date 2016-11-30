#9.6
select * from
Usuario join Aluno
on(Aluno.Matricula_Aluno = Usuario.Matricula);

select * from
Usuario join Professor
on(Professor.Matricula_Professor = Usuario.Matricula);

select * from
Usuario join Gerente
on(Gerente.Matricula_Gerente = Usuario.Matricula);

#Join Tabela Inteira
select * from Usuario
inner join Aluno
inner join Pagamento_Aluno
inner join Tipo_Pagamento
inner join Acompanha
inner join Professor
inner join Gerente
inner join Site_Academia
inner join Endereco
inner join Contato_Usuario
inner join Contato
on Aluno.Matricula_Aluno = Usuario.Matricula 
and Aluno.Matricula_Aluno = Pagamento_Aluno.Matricula_Aluno 
and Tipo_Pagamento.Cod_Tipo = Pagamento_Aluno.Tipo_Pagamento
and Aluno.Matricula_Aluno = Acompanha.Matricula_Aluno
and Acompanha.Matricula_Professor = Professor.Matricula_Professor
and Gerente.Matricula_Gerente = Professor.Matricula_Gerente
and Site_Academia.Cod_Site = Usuario.Cod_Site
and Endereco.Matricula_Usuario = Usuario.Matricula
and Contato_Usuario.Matricula_Usuario = Usuario.Matricula
and Contato.Cod_Contato = Contato_Usuario.Tipo_Contato;
