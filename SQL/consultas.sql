SELECT * FROM public.empregado
SELECT * FROM public.dependente
SELECT * FROM public.departamento
SELECT * FROM public.TrabalhaPara
SELECT * FROM public.GerenteDeDepartamento

SELECT * FROM empregado WHERE nro_depto = 4 AND salario > 500 OR nro_depto = 5 AND salario > 1000

SELECT p_nome, u_nome, salario FROM empregado WHERE nro_depto = 4 AND salario >= 1000

SELECT cod FROM empregado WHERE nro_depto = 4 OR IN (SELECT cod_supervisor FROM empregado WHERE nro_depto = 4)
SELECT cod, cod_supervisor FROM empregado WHERE nro_depto = 5

SELECT p_nome, u_nome, nome_dep FROM empregado, dependente WHERE sexo = 'F' AND cod = cod_empregado 

SELECT *
FROM departamento AS departamento INNER JOIN empregado AS GerenteDeDepartamento ON departamento.nro = GerenteDeDepartamento.nro_depto

SELECT d.nome, gerente.p_nome, gerente.u_nome FROM GerenteDeDepartamento AS d INNER JOIN empregado AS gerente ON d.cod_gerente = gerente.cod_empregado

SELECT cod, p_nome, u_nome FROM empregado WHERE cod IN (SELECT cod_empregado FROM TrabalhaPara WHERE nro_projeto IN (SELECT nro_projeto FROM TrabalhaPara WHERE cod_empregado IN (SELECT cod FROM empregado WHERE p_nome = 'João' AND u_nome = 'Silva')))

SELECT  e.p_nome, e.u_nome FROM empregado AS e LEFT JOIN dependente AS d ON e.cod = d.cod_empregado WHERE d.cod_empregado IS NULL 
