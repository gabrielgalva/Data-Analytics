Execício - AWS 2/10

• Linguagem SQL
-  Abaixo compartilhei os exercícios resolvidos na seção 4 sobre SQL. 

• Caso de estudo "Loja" 

- Exercício de programação 8: E8
SELECT t.cdvdd, t.nmvdd
FROM tbvendedor t
WHERE t.cdvdd = (
    SELECT v.cdvdd
    FROM tbvendas v
    GROUP BY v.cdvdd
    ORDER BY COUNT(*) DESC
    LIMIT 1
);


- Exercício de programação 9: E9
SELECT  cdpro, nmpro
FROM tbvendas
WHERE dtven BETWEEN '2014-02-03' AND '2018-02-02'
GROUP BY cdpro, nmpro
ORDER BY COUNT(*) DESC
LIMIT 1;


- Exercício de programação 10: E10
select
    ve.nmvdd as vendedor,
    sum(v.qtd * v.vrunt) as valor_total_vendas,
    round(perccomissao/100.0 * sum(v.qtd * v.vrunt), 2) as comissao 
    
from tbvendedor ve 
left join tbvendas v on ve.cdvdd= v.cdvdd
where status = 'Concluído' 
group by ve.nmvdd
order by comissao desc;


- Exercício de programação 11: E11
SELECT
cdcli, nmcli ,
SUM(v.qtd * v.vrunt) AS gasto
FROM tbvendas v
GROUP BY cdcli, nmcli
ORDER BY gasto DESC
limit 1


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


- Exercício de programação 14: E14
SELECT estado, ROUND(AVG(qtd * vrunt), 2) AS gastomedio
FROM tbvendas
where status='Concluído'
GROUP BY estado
ORDER BY gastomedio DESC;


- Exercício de programação 15: E15
SELECT cdven
FROM tbvendas
WHERE deletado = 1
ORDER BY cdven ASC;


- Exercício de programação 16: E16
SELECT estado, nmpro AS nmpro, ROUND(AVG(qtd), 4) AS quantidade_media
FROM tbvendas
WHERE status = 'Concluído'
GROUP BY estado, nmpro
ORDER BY estado, nmpro;




