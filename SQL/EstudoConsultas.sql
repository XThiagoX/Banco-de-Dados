select * from GerenteDeDepartamento
select * from Departamento
select * from Dependente
select * from Empregado
select * from Projeto
select * from TrabalhaPara
select nro, cod_gerente from Departamento, GerenteDeDepartamento Where nro = nro_depto

-- Produto cartesiano 
select nro, cod_gerente from Departamento, GerenteDeDepartamento 

--- Tabelas por conjuntos
select ALL salario from empregado

--- Tabelas por conjuntos com DISTINCT
select distinct salario from empregado

select distinct Projeto.nro as  Projeto_nro, Departamento.nro as Departamento_nro, GerenteDeDepartamento.cod_gerente from Projeto, Departamento, GerenteDeDepartamento 
where Projeto.nro_depto = Departamento.nro AND Departamento.nro = GerenteDeDepartamento.nro_depto

--- Empregados que não tem supervisor 
select p_nome, u_nome,cod_supervisor from Empregado where cod_supervisor is null

--- Empregados que tem supervisor 
select p_nome, u_nome, cod_supervisor from Empregado where cod_supervisor is not null

--- Consulta Aninhada
select distinct Projeto.nro from Projeto where nro in
(select Projeto.nro from Projeto, departamento, empregado where departamento.nro = projeto.nro_depto and cod_supervisor = cod and u_nome = 'Silva')
or Projeto.nro in (select nro_projeto from TrabalhaPara, empregado  where TrabalhaPara.cod_empregado = empregado.cod and u_nome = 'Silva')

--- Consulta Aninhada
SELECT cod_empregado, nro_projeto, horas from TrabalhaPara where (nro_projeto, horas) in 
(select nro_projeto, horas from TrabalhaPara where cod_empregado = 9)

--- junção
--- ineer join
select D.nro as nro_depto, D.nome, P.nro as nro_proj, P.nome, P.nro_depto from departamento as D inner join projeto as P on D.nro = P.nro_depto

--- left join
select D.nro as nro_depto, D.nome, P.nro as nro_proj, P.nome, P.nro_depto from departamento as D left join projeto as P on D.nro = P.nro_depto

--- right join
select D.nro as nro_depto, D.nome, P.nro as nro_proj, P.nome, P.nro_depto from departamento as D right join projeto as P on D.nro = P.nro_depto

--- full outer join
select D.nro as nro_depto, D.nome, P.nro as nro_proj, P.nome, P.nro_depto from departamento as D full outer join projeto as P on D.nro = P.nro_depto

--- Funções de agragação com produto cartesiano
select departamento.nro, departamento.nome, sum(salario), max(salario), min(salario), avg(salario) from empregado, departamento
where empregado.nro_depto = departamento.nro
group by departamento.nome, departamento.nro

--- Funções de agragação com junção por INEER JOIN
select departamento.nro, departamento.nome, sum(salario), max(salario), min(salario), avg(salario) 
from (empregado inner join departamento on empregado.nro_depto = departamento.nro)
group by departamento.nome, departamento.nro

--- Funções de agragação com junção por FULL OUTER JOIN
select departamento.nro, departamento.nome, sum(salario), max(salario), min(salario), avg(salario) 
from (empregado full outer join departamento on empregado.nro_depto = departamento.nro)
group by departamento.nome, departamento.nro

select * from Departamento full outer join empregado on empregado.nro_depto = departamento.nro
--- Lista de Ex's
/* Liste o código dos empregados que trabalham para o departamento 5 ou que
supervisionam um empregado que trabalha para o departamento 5. */

select cod, cod_supervisor
from empregado
where empregado.nro_depto = 5

/* Recupere, para cada empregado do sexo feminino, o seu nome completo e os nomes dos
seus dependentes. Use a operação de produto cartesiano. */
select p_nome, u_nome, nome_dep
from empregado, dependente
where cod = cod_empregado and sexo = 'F'

/* Recupere, para cada departamento, o seu nome e o nome completo de seu gerente. */
select departamento.nome, empregado.p_nome, empregado.u_nome
from departamento, GerenteDeDepartamento, empregado
where GerenteDeDepartamento.nro_depto = departamento.nro and empregado.cod = cod_gerente


select * from Empregado
select * from Projeto
select * from TrabalhaPara
/*Recupere o nome completo dos empregados que trabalham em todos os projetos no qual
o empregado João Silva trabalha. */
select cod, empregado.p_nome, empregado.u_nome
from empregado where cod in
(select cod_empregado
 from TrabalhaPara
where nro_projeto in
(select nro_projeto 
from TrabalhaPara 
where cod_empregado in 
(select cod 
from empregado
where p_nome = 'João' and u_nome = 'Silva')))


