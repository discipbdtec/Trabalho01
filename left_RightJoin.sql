USE GAP;

select Usuario.Matricula, Usuario.Nome_Completo, Aluno.Data_inicio from Usuario
left join Aluno
on(Usuario.Matricula = Aluno.Matricula_Aluno);

select Usuario.Matricula, Usuario.Nome_Completo, Aluno.Data_inicio from Usuario
right join Aluno
on(Usuario.Matricula = Aluno.Matricula_Aluno);


select Usuario.Nome_Completo, Acompanha.Altura, Acompanha.Peso
from Usuario left join Acompanha
on(Usuario.Matricula = Acompanha.Matricula_Aluno);

select Usuario.Nome_Completo, Acompanha.Altura, Acompanha.Peso
from Usuario right join Acompanha
on(Usuario.Matricula = Acompanha.Matricula_Aluno);



