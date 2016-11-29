#9.6
select * from
usuario join aluno
on(aluno.Matricula_Aluno = usuario.Matricula);

select * from
usuario join professor
on(professor.Matricula_Professor = usuario.Matricula);

select * from
usuario join gerente
on(gerente.Matricula_Gerente = usuario.Matricula);

#Join Tabela Inteira
select * from usuario
inner join aluno
inner join Pagamento_Aluno
inner join tipo_pagamento
inner join acompanha
inner join professor
inner join gerente
inner join site_academia
inner join Endereco
inner join contato_usuario
inner join contato
on aluno.Matricula_Aluno = usuario.matricula 
and aluno.Matricula_Aluno = pagamento_aluno.Matricula_Aluno 
and tipo_pagamento.Cod_Tipo = pagamento_aluno.Tipo_Pagamento
and aluno.Matricula_Aluno = acompanha.Matricula_Aluno
and acompanha.Matricula_Professor = professor.Matricula_Professor
and gerente.Matricula_Gerente = professor.Matricula_Gerente
and site_academia.Cod_Site = usuario.Cod_Site
and endereco.Matricula_Usuario = usuario.Matricula
and contato_usuario.matricula_usuario = usuario.matricula
and contato.Cod_Contato = contato_usuario.tipo_contato;