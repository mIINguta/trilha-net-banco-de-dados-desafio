-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano 
FROM Filmes
ORDER BY Ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao
FROM Filmes	
WHERE Ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000

--6- Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao 

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(Nome) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10 - Buscar o nome do filme e o gênero
SELECT F.Nome, G.Genero
FROM Filmes AS F, Generos as G
INNER JOIN FilmesGenero ON G.Id = FilmesGenero.IdGenero
WHERE F.Id = FilmesGenero.IdFilme

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.nome, G.Genero
FROM Filmes AS F, Generos AS G
INNER JOIN FilmesGenero ON G.Id = FilmesGenero.IdGenero
WHERE F.Id = FilmesGenero.IdFilme AND G.Genero = 'Mistério'

--12 -Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel
FROM Filmes as F, Atores as A
INNER JOIN ElencoFilme as E ON A.Id = E.IdAtor
WHERE F.Id = E.IdFilme