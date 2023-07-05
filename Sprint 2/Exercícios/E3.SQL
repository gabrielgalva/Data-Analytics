-Exercício de programação 3: E3
SELECT COUNT(livro.cod) AS quantidade, editora.nome, endereco.estado, endereco.cidade
FROM livro
INNER JOIN editora ON livro.editora = editora.codeditora
INNER JOIN endereco ON editora.endereco = endereco.codendereco
GROUP BY editora.nome, endereco.estado, endereco.cidade
ORDER BY quantidade DESC
LIMIT 5;