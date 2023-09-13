# Banco de Dados

Scripts de consultas e criação de bancos, Schemas, modelos lógicos(MER) e normalizações em exercícios e avaliações de banco de dados convencionais

# Trabalho Final:

Implementar um projeto de banco de dados relacional desde a sua modelagem lógica até a sua efetiva implementação em um SGBD relacional, passando, necessariamente, pelas etapas de (i) mapeamento entre os Modelos Entidade-Relacionamento/Relacional e (ii) normalização (1FN, 2FN e 3FN). O relatório entregue deve conter todos os passos da modelagem de acordo com o algoritmo de projeto de banco de dados discutido em aula. Cada tabela gerada deve ser povoada com pelo menos 10 tuplas que podem ser geradas a partir de dados fictícios. 

- Requisitos do banco de dados:
   
Deseja-se projetar a base de dados de um sistema de transporte de passageiros que reservam suas viagens por celular e que são atendidos por motoristas autônomos que efetivamente realizam o traslado (corrida) em seus veículos particulares. 
Construa o modelo ER referente à base de dados. A base de dados não deve conter redundância de dados. O modelo ER pode ser representado com a notação vista nas aulas. Mapeie o modelo ER para o modelo Relacional. Normalize o modelo relacional mapeado. 
A base de dados deve incluir motoristas, identificados por seus cpfs, rg, endereço, data de nascimento, número da cnh e conta corrente para pagamento, bem como passageiros, identificados por seus cpfs, rg, endereço, data de nascimento e número do cartão de crédito. Além deles, deve-se registar os atendentes, que são identificados por seus cpfs, rg, endereço, data de nascimento e formação escolar. Motoristas e atendentes podem usar os serviços de transporte como passageiros. Um atendente pode ser um motorista nas horas vagas. 
Um ou mais veículos são associados a um motorista, sendo que cada veículo deve ser identificado pelo seu número de RENAVAM, data de compra, marca, modelo, ano, preço e característica que deve ser um valor dentre {econômico, SUV, luxo, rural}. 
Uma seguradora é identificada por um CNPJ, nome, telefone e endereço postal. Uma seguradora pode ser responsável por um ou mais seguros de veículos, que são identificados por número e valor da apólice. O sistema não armazena o histórico de apólices dos veículos, logo, no máximo, apenas um único número de apólice por veículo aparece no sistema por vez. 
Uma corrida é registrada como o serviço de um motorista para vários passageiros, sendo identificada pelo número da corrida, endereço de destino, data início, data fim, hora início, hora fim, valor total da corrida e preço da corrida por passageiro. Um atendente é vinculado ao suporte de cada corrida, sendo que os passageiros podem enviar questionamentos, identificados por um número sequencial, texto da pergunta e texto da resposta, ao atendente durante a corrida. O sistema armazena o histórico de corridas.

Consultas a serem respondidas 
1. Dado uma seguradora, identificar quais são os veículos com seguros sob sua responsabilidade e listar as vigências das apólices. 
2. Dado um atendente, descobrir se ele já usou o serviço de corridas e quando. 3. Listar quais foram os passageiros que nunca fizeram uma corrida. 
4. Dado uma corrida, listar todas as perguntas e respostas feitas ao atendente responsável. 5. Duas perguntas que o grupo julgar relevante para os requisitos. 


