INSERT INTO USUARIO (CPF, NOME, RG, ENDEREÇO, DATA_NASC) VALUES
('123456789', 'João Silva', '1234567', 'Rua dos Exemplos, 123', '1990-05-15'),
('987654321', 'Maria Santos', '7654321', 'Av. Principal, 456', '1985-10-23'),
('234567890', 'Ana Oliveira', '2345678', 'Praça das Flores, 789', '1998-07-02'),
('678901234', 'Pedro Souza', '8765432', 'Rua das Árvores, 456', '1992-12-11'),
('345678901', 'Laura Martins', '3456789', 'Av. Central, 789', '1987-03-30'),
('901234567', 'Carlos Mendes', '9876543', 'Rua dos Bancos, 123', '1995-09-05'),
('456789012', 'Sofia Almeida', '4567890', 'Rua das Escolas, 456', '2000-02-17'),
('789012345', 'André Costa', '9876543', 'Av. dos Comércios, 789', '1989-06-25'),
('567890123', 'Júlia Lima', '5678901', 'Praça Principal, 123', '1993-11-14'),
('890123456', 'Lucas Ferreira', '9012345', 'Rua dos Parques, 456', '1997-04-21');

INSERT INTO MOTORISTA (CPF_MOTORISTA, CNH, CONTA) VALUES
('123456789', '654321', 1001),
('987654321', '123456', 1002),
('234567890', '567890', 1003),
('678901234', '432109', 1004),
('345678901', '987654', 1005),
('901234567', '210987', 1006),
('456789012', '876543', 1007),
('789012345', '345678', 1008),
('567890123', '654321', 1009),
('890123456', '123456', 1010);

INSERT INTO PASSAGEIRO (CPF_PASSAGEIRO, CART_CREDT) VALUES
('123456789', 987654),
('987654321', 123456),
('234567890', 567890),
('678901234', 432109),
('345678901', 987654),
('901234567', 210987),
('456789012', 876543),
('789012345', 345678),
('567890123', 654321),
('890123456', 123456);

INSERT INTO ATENDENTE (CPF_ATENDENTE, FORM_ESCOLAR) VALUES
('123456789', 'Ensino Médio'),
('987654321', 'Ensino Superior'),
('234567890', 'Ensino Médio'),
('678901234', 'Ensino Superior'),
('345678901', 'Ensino Médio'),
('901234567', 'Ensino Superior'),
('456789012', 'Ensino Médio'),
('789012345', 'Ensino Superior'),
('567890123', 'Ensino Médio'),
('890123456', 'Ensino Superior');

INSERT INTO VEICULO (RENAVAM, DATA_COMPRA, MARCA, MODELO, ANO, PRECO, CARACTERISTICA, CPF_MOTORISTA) VALUES
(123456, '2020-01-05', 'Fiat', 'Uno', '2019-01-01', 20000, 'econômico', '123456789'),
(789012, '2018-05-10', 'Toyota', 'Corolla', '2017-01-01', 40000, 'SUV', '234567890'),
(345678, '2019-09-20', 'Ford', 'Ka', '2018-01-01', 25000, 'econômico', '567890123'),
(901234, '2022-02-15', 'Honda', 'Civic', '2021-01-01', 45000, 'luxo', '901234567'),
(456789, '2021-03-25', 'Chevrolet', 'Onix', '2020-01-01', 30000, 'econômico', '234567890'),
(234567, '2023-06-08', 'Nissan', 'Kicks', '2023-01-01', 50000, 'SUV', '678901234'),
(678901, '2020-11-30', 'Volkswagen', 'Gol', '2019-01-01', 22000, 'econômico', '345678901'),
(567890, '2022-07-01', 'Fiat', 'Argo', '2022-01-01', 28000, 'econômico', '789012345'),
(890123, '2021-08-12', 'Ford', 'Fiesta', '2021-01-01', 26000, 'econômico', '456789012'),
(901235, '2019-12-18', 'Hyundai', 'HB20', '2019-01-01', 23000, 'econômico', '789012345');

INSERT INTO SEGURADORA (CNPJ, NOME, TELEFONE, END_POSTAL) VALUES
('12345678901', 'SeguroBras', '(11) 987654321', 123456),
('98765432101', 'AutoProtec', '(21) 123456789', 654321),
('23456789012', 'SeguroMax', '(31) 567890123', 246810),
('67890123456', 'VidaSegura', '(41) 432109876', 135792),
('34567890123', 'ProteçãoSeg', '(51) 987654321', 975310),
('90123456789', 'SafeInsurance', '(61) 210987654', 864209),
('45678901234', 'SeguroTotal', '(71) 876543210', 357924),
('78901234567', 'AutoSeguro', '(81) 345678901', 692148),
('56789012345', 'MegaProteção', '(91) 654321098', 481629),
('89012345678', 'PrimeSeg', '(48) 123456789', 819273);

INSERT INTO ASSEGURA (RENAVAM, CNPJ_SEGURADORA, NUMERO_APOLICE, VALOR_APOLICE) VALUES
(123456, '12345678901', 1001, 1500.00),
(789012, '98765432101', 1002, 2500.00),
(345678, '23456789012', 1003, 1800.00),
(901234, '67890123456', 1004, 2000.00),
(456789, '34567890123', 1005, 2200.00),
(234567, '90123456789', 1006, 1900.00),
(678901, '45678901234', 1007, 2100.00),
(567890, '78901234567', 1008, 2400.00),
(890123, '56789012345', 1009, 2300.00),
(901235, '89012345678', 1010, 2600.00); 

INSERT INTO HISTORICO_CORRIDAS (NUM_CORRIDA, CPF_PASSAGEIRO_RESPONSAVEL, CPF_MOTORISTA, ENDE_DESTINO, DATA_INICIO, DATA_FIM, HORA_INICIO, HORA_FIM, VALOR_TOTAL) VALUES
(1001, '123456789', '987654321', 'Rua das Flores, 123', '2023-06-01', '2023-06-01', '09:00:00', '11:00:00', 35.00),
(1002, '987654321', '234567890', 'Av. Central, 456', '2023-06-02', '2023-06-02', '14:30:00', '16:30:00', 42.50),
(1003, '234567890', '678901234', 'Praça Principal, 789', '2023-06-03', '2023-06-03', '17:45:00', '19:45:00', 29.80),
(1004, '678901234', '345678901', 'Rua dos Parques, 456', '2023-06-04', '2023-06-04', '11:15:00', '13:15:00', 38.20),
(1005, '345678901', '901234567', 'Av. dos Comércios, 789', '2023-06-05', '2023-06-05', '18:30:00', '20:30:00', 45.60),
(1006, '901234567', '456789012', 'Rua dos Bancos, 123', '2023-06-06', '2023-06-06', '10:45:00', '12:45:00', 32.70),
(1007, '456789012', '789012345', 'Rua das Escolas, 456', '2023-06-07', '2023-06-07', '15:20:00', '17:20:00', 41.80),
(1008, '789012345', '567890123', 'Praça das Flores, 789', '2023-06-08', '2023-06-08', '13:10:00', '15:10:00', 37.90),
(1009, '567890123', '890123456', 'Rua dos Exemplos, 123', '2023-06-09', '2023-06-09', '16:55:00', '18:55:00', 43.20),
(1010, '890123456', '123456789', 'Av. Principal, 456', '2023-06-10', '2023-06-10', '12:40:00', '14:40:00', 39.50);

INSERT INTO CARONANTES_CORRIDA (NUM_CORRIDA, CPF_PASSAGEIRO_RESPONSAVEL, CPF_PASSAGEIRO_CARONANTE) VALUES
(1001, '123456789', '987654321'),
(1002, '987654321', '234567890'),
(1003, '234567890', '678901234'),
(1004, '678901234', '345678901'),
(1005, '345678901', '901234567'),
(1006, '901234567', '456789012'),
(1007, '456789012', '789012345'),
(1008, '789012345', '567890123'),
(1009, '567890123', '890123456'),
(1010, '890123456', '901234567');

INSERT INTO ATENDENTE_CORRIDA (NUM_CORRIDA, CPF_PASSAGEIRO_RESPONSAVEL, CPF_ATENDENTE) VALUES
(1001, '123456789','987654321' ),
(1002, '987654321', '123456789'),
(1003, '234567890','567890123' ),
(1004, '678901234', '234567890'),
(1005, '345678901', '789012345'),
(1006, '901234567', '345678901'),
(1007, '456789012', '890123456'),
(1008, '789012345', '456789012'),
(1009, '567890123', '901234567'),
(1010, '890123456', '678901234');

INSERT INTO CONVERSA (NUM_CORRIDA, CPF_PASSAGEIRO_RESPONSAVEL, NUMERO_SEQ, TXT_PERGUNTA, TXT_RESPOSTA) VALUES
(1001, '123456789', 1, 'Qual o tempo estimado de chegada?', 'Aproximadamente 15 minutos.'),
(1001, '123456789', 2, 'Aceita cartão de crédito?', 'Sim, aceitamos cartão de crédito.'),
(1002, '987654321', 1, 'Vocês oferecem serviço de transporte de bagagens?', 'Sim, temos espaço para bagagens.'),
(1002, '987654321', 2, 'É possível solicitar um carro com ar-condicionado?', 'Sim, temos carros com ar-condicionado disponíveis.'),
(1003, '234567890', 1, 'Qual o valor da corrida até o aeroporto?', 'O valor da corrida até o aeroporto é R$ 50,00.'),
(1003, '234567890', 2, 'Vocês possuem carros adaptados para pessoas com mobilidade reduzida?', 'Sim, temos carros adaptados disponíveis.'),
(1004, '678901234', 1, 'Vocês aceitam animais de estimação?', 'Sim, aceitamos animais de estimação.'),
(1004, '678901234', 2, 'Qual é o número de contato em caso de emergência?', 'O número de contato de emergência é (XX) XXXXX-XXXX.'),
(1005, '345678901', 1, 'Existe algum desconto para corridas frequentes?', 'Sim, oferecemos descontos para corridas frequentes.'),
(1005, '345678901', 2, 'Vocês possuem serviço de transporte de encomendas?', 'Sim, oferecemos serviço de transporte de encomendas.');

INSERT INTO USUARIO (CPF, NOME, RG, ENDEREÇO, DATA_NASC) VALUES
('123482387', 'Laura Nascimento', '3476789', 'Av. Central, 780', '1989-03-30');

INSERT INTO PASSAGEIRO (CPF_PASSAGEIRO, CART_CREDT) VALUES
('123482387', 989654);