- Exercício de programação 13: E13
SELECT
  cdpro,
  nmcanalvendas,
  nmpro,
  SUM(ve.qtd) AS quantidade_vendas
FROM tbvendas ve
WHERE ve.status = 'Concluído' 
group by cdpro, nmcanalvendas
ORDER BY quantidade_vendas ASC
