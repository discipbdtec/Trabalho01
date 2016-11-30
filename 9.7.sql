select usuario.Matricula, usuario.Nome_Completo, usuario.CPF, aluno.Data_inicio from usuario join aluno 
on(aluno.Matricula_Aluno = usuario.Matricula)
group by usuario.Nome_Completo, usuario.Matricula;

select usuario.Matricula, usuario.Nome_Completo, usuario.CPF, aluno.Data_inicio from usuario join aluno 
on(aluno.Matricula_Aluno = usuario.Matricula)
group by usuario.Matricula desc;

select usuario.Matricula, usuario.Nome_Completo, aluno.Data_Inicio, pagamento_aluno.Valor_Pagamento
from usuario join aluno join pagamento_aluno
on(aluno.Matricula_Aluno = usuario.Matricula and pagamento_aluno.Matricula_Aluno = aluno.Matricula_Aluno)
group by pagamento_aluno.Valor_Pagamento, usuario.Matricula;

select * from usuario
group by Nome_Completo, Matricula;

select * from endereco
group by Estado, Matricula_Usuario;