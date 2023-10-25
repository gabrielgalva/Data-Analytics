- Exercício de programação 12: E12
SELECT
  d.cddep,
  d.nmdep,
  d.dtnasc,
  v.valor_total_vendas
FROM Tbdependente d
JOIN (
  SELECT
    cdvdd,
    SUM(qtd * vrunt) AS valor_total_vendas
  FROM tbvendas
  WHERE status = 'Concluído'
  GROUP BY cdvdd
  HAVING valor_total_vendas > 0
  ORDER BY valor_total_vendas ASC
  LIMIT 1
) v ON d.cdvdd = v.cdvdd;
