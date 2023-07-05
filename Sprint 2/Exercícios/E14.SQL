- Exercício de programação 14: E14
SELECT estado, ROUND(AVG(qtd * vrunt), 2) AS gastomedio
FROM tbvendas
where status='Concluído'
GROUP BY estado
ORDER BY gastomedio DESC;
