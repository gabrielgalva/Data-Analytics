- Exercício de programação 5: E5
SELECT DISTINCT 
    a.nome
FROM 
    Autor a
INNER JOIN livro l
    ON a.codautor = l.autor
INNER JOIN editora e 
    ON l.editora = e.codeditora
LEFT JOIN endereco en 
    ON e.endereco = en.codendereco
WHERE UPPER(en.estado) NOT IN ('PARANÁ', 'RIO GRANDE DO SUL', 'SANTA CATARINA') 
ORDER BY a.nome ASC;
