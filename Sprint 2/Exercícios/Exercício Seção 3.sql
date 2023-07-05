Execício - AWS 2/10

• Linguagem SQL
-  Abaixo compartilhei os exercícios resolvidos na seção 3 sobre SQL. 

• Caso de estudo"Biblioteca"
  

- Exercício de programação 1: E1
select DISTINCT *
from livro 
WHERE livro.publicacao > '2015-01-01'
ORDER BY livro.cod  ASC;


- Exercício de programação 2: E2
select titulo, valor 
from livro l 
ORDER by valor desc
limit 10 

  
- Exercício de programação 3: E3
SELECT COUNT(livro.cod) AS quantidade, editora.nome, endereco.estado, endereco.cidade
FROM livro
INNER JOIN editora ON livro.editora = editora.codeditora
INNER JOIN endereco ON editora.endereco = endereco.codendereco
GROUP BY editora.nome, endereco.estado, endereco.cidade
ORDER BY quantidade DESC
LIMIT 5;


- Exercício de programação 4: E4
SELECT autor.codautor, autor.nome, autor.nascimento, COUNT(livro.cod) AS quantidade
FROM autor
LEFT JOIN livro ON livro.autor = autor.codautor
GROUP BY autor.codautor, autor.nome, autor.nascimento
ORDER BY autor.nome ASC;


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

- Exercício de programação 7: E7
select
    nome
from
     autor a
left join livro l
    on a.codautor = l.autor
where l.autor is null
order by nome asc;







