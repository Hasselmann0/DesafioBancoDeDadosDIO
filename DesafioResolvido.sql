--- 1 ---
SELECT Nome, Ano 
FROM Filmes
--- 1 ---
--- 2 ---
SELECT Nome, Ano 
FROM Filmes
ORDER BY Ano
--- 2 ---
--- 3 ---
SELECT * FROM Filmes
	WHERE Nome LIKE '%FUTURO'
--- 3 ---
--- 4 ---
SELECT * FROM Filmes
	WHERE Ano LIKE 1997
--- 4 ---
--- 5 ---
SELECT * FROM Filmes
	WHERE Ano > 2000
--- 5 ---
--- 6 ---
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao
--- 6 ---
--- 7 ---
SELECT Ano,
		COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade desc
--- 7 ---
--- 8 ---
SELECT *
FROM Atores
WHERE Genero = 'M'
--- 8 ---
--- 9 ---
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
--- 9 ---
--- 10 ---
SELECT Filmes.Nome, Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
--- 10 ---
--- 11 ---
SELECT Filmes.Nome, Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero LIKE 'Mistério'
--- 11 ---
--- 12 ---
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM ElencoFilme
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
--- 12 ---