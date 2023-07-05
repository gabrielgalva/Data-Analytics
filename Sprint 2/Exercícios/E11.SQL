- Exercício de programação 11: E11
SELECT
cdcli, nmcli ,
SUM(v.qtd * v.vrunt) AS gasto
FROM tbvendas v
GROUP BY cdcli, nmcli
ORDER BY gasto DESC
limit 1
