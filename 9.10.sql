use gap;
#SubConsulta

Select * from usuario
where sexo in(
select sexo from usuario 
where sexo = "F");

select * from usuario
inner join professor
on professor.Matricula_Professor = usuario.Matricula
where turno in(
select Turno from professor
where turno<>"Vespertino");

select * from usuario
inner join pagamento_aluno 
on pagamento_aluno.Matricula_Aluno=usuario.Matricula
where valor_pagamento in(
select valor_pagamento from pagamento_aluno
where Valor_Pagamento>=80.00);
