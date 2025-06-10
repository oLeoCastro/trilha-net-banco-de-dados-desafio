USE [Filmes]

-- 1
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC

-- 2
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano ASC

-- 3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = "De Volta para o Futuro"

-- 4
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000
ORDER BY Ano ASC

-- 6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao BETWEEN 100 AND 150
ORDER BY Duracao ASC

-- 7
SELECT 
    Ano,
    COUNT(*) AS Quantidade
FROM 
    Filmes
GROUP BY 
    Ano
ORDER BY 
    Quantidade DESC

-- 8
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = "M"

-- 9
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = "F"
ORDER BY PrimeiroNome ASC

-- 10
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
ORDER BY Generos.Genero ASC

-- 11
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = "Mistério"

-- 12
SELECT 
Filmes.Nome AS Filme,
Atores.PrimeiroNome AS NomeAtor, 
Atores.UltimoNome AS SobrenomeAtor, 
ElencoFilme.Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
