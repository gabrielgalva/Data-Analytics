- Exercício de programação 9: E9
SELECT  cdpro, nmpro
FROM tbvendas
WHERE dtven BETWEEN '2014-02-03' AND '2018-02-02'
GROUP BY cdpro, nmpro
ORDER BY COUNT(*) DESC
LIMIT 1;

