-Exercício de programação 4: E4
SELECT autor.codautor, autor.nome, autor.nascimento, COUNT(livro.cod) AS quantidade
FROM autor
LEFT JOIN livro ON livro.autor = autor.codautor
GROUP BY autor.codautor, autor.nome, autor.nascimento
ORDER BY autor.nome ASC;

