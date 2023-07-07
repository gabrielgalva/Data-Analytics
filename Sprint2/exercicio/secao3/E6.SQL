- Exercício de programação 6: E6
SELECT a.codautor, a.nome, COUNT(l.cod) AS quantidade_publicacoes
FROM autor a
INNER JOIN livro l ON a.codautor = l.autor
GROUP BY a.codautor, a.nome
HAVING COUNT(l.cod) = (
    SELECT COUNT(cod)
    FROM livro
    GROUP BY autor
    ORDER BY COUNT(cod) DESC
    LIMIT 1
);