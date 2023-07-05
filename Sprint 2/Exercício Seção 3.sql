<h1>Execício - AWS 2/10</h1>

<h2>• Linguagem SQL</h2>
<h4>-  Abaixo compartilhei os exercícios resolvidos na seção 3 sobre SQL. </h4>

<h2>• Caso de estudo"Biblioteca"</h2>
  

<h3>- Exercício de programação 1: E1</h3>
select DISTINCT *
from livro 
WHERE livro.publicacao > '2015-01-01'
ORDER BY livro.cod  ASC;


<h3>- Exercício de programação 2: E2</h3>
select titulo, valor 
from livro l 
ORDER by valor desc
limit 10 

  
<h3>- Exercício de programação 3: E3</h3>
SELECT COUNT(livro.cod) AS quantidade, editora.nome, endereco.estado, endereco.cidade
FROM livro
INNER JOIN editora ON livro.editora = editora.codeditora
INNER JOIN endereco ON editora.endereco = endereco.codendereco
GROUP BY editora.nome, endereco.estado, endereco.cidade
ORDER BY quantidade DESC
LIMIT 5;


<h3>- Exercício de programação 4: E4</h3>
SELECT autor.codautor, autor.nome, autor.nascimento, COUNT(livro.cod) AS quantidade
FROM autor
LEFT JOIN livro ON livro.autor = autor.codautor
GROUP BY autor.codautor, autor.nome, autor.nascimento
ORDER BY autor.nome ASC;


<h3>- Exercício de programação 5: E5</h3>
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


<h3>- Exercício de programação 6: E6</h3>
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


<h3>- Exercício de programação 7: E7</h3>
select
    nome
from
     autor a
left join livro l
    on a.codautor = l.autor
where l.autor is null
order by nome asc;







