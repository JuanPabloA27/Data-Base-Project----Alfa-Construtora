-- CONSULTA A
-- CPF e nomes dos trabalhadores que ganham mais do que R$ 2.500,00

SELECT cpf, nome
FROM Trabalhadores
WHERE salario > 2500;


-- CONSULTA B
-- Nomes e salários dos trabalhadores da Construtora Alfa
-- em ordem alfabética crescente

SELECT t.nome, t.salario
FROM Trabalhadores t
JOIN Obras o
    ON t.codigo_obra = o.codigo
JOIN Construtoras c
    ON o.codigo_construtora = c.codigo
WHERE c.nome = 'Construtora Alfa S.A.'
ORDER BY t.nome ASC;


-- CONSULTA C
-- Valor total das diárias dos equipamentos utilizados na obra
-- Condomínio dos Lagos no mês de março de 2022

SELECT SUM(
           (LEAST(oe.data_final, DATE '2022-03-31')
            - GREATEST(oe.data_inicio, DATE '2022-03-01')
            + 1)
           * e.valor_de_uso_diario
       ) AS valor_total
FROM obra_equipamentos oe
JOIN Obras o
    ON oe.codigo_obra = o.codigo
JOIN Equipamentos e
    ON oe.codigo_equipamento = e.codigo
WHERE o.nome = 'Condomínio dos Lagos'
  AND oe.data_inicio <= DATE '2022-03-31'
  AND oe.data_final >= DATE '2022-03-01';


-- CONSULTA D
-- Folha de pagamento de cada obra, calculada pela soma
-- dos salários dos trabalhadores

SELECT o.nome AS obra,
       SUM(t.salario) AS folha_pagamento
FROM Obras o
JOIN Trabalhadores t
    ON t.codigo_obra = o.codigo
GROUP BY o.codigo, o.nome
ORDER BY o.nome ASC;