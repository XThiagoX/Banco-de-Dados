SELECT CNPJ_SEGURADORA, RENAVAM, NUMERO_APOLICE FROM ASSEGURA WHERE CNPJ_SEGURADORA = '12345678901' 

SELECT NUM_CORRIDA, DATA_INICIO FROM HISTORICO_CORRIDAS WHERE  NUM_CORRIDA IN (SELECT NUM_CORRIDA FROM CARONANTES_CORRIDA WHERE  CPF_PASSAGEIRO_RESPONSAVEL =  '123456789'  OR CPF_PASSAGEIRO_CARONANTE  =  '123456789')

SELECT CPF_PASSAGEIRO, CART_CREDT
FROM PASSAGEIRO
WHERE CPF_PASSAGEIRO NOT IN (
    SELECT CPF_PASSAGEIRO_RESPONSAVEL
    FROM HISTORICO_CORRIDAS
    UNION
    SELECT CPF_PASSAGEIRO_RESPONSAVEL
    FROM CARONANTES_CORRIDA
)
AND CPF_PASSAGEIRO NOT IN (
    SELECT CPF_PASSAGEIRO_CARONANTE
    FROM CARONANTES_CORRIDA
);

SELECT TXT_PERGUNTA,TXT_RESPOSTA FROM CONVERSA WHERE NUM_CORRIDA = 1001 AND CPF_PASSAGEIRO_RESPONSAVEL = '123456789'

SELECT COUNT(*) FROM HISTORICO_CORRIDAS WHERE CPF_MOTORISTA = '987654321'

SELECT * FROM VEICULO WHERE CPF_MOTORISTA = CPF

SELECT * FROM HISTORICO_CORRIDAS WHERE DATA_INICIO = '2023-06-04'

