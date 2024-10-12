--1
select Nome,Ano from dbo.Filmes 
--2
select Nome,Ano from dbo.Filmes order by Ano
--3
select * from dbo.Filmes where Nome='De volta para o futuro'
--4
select * from dbo.Filmes where Ano=1997
--5
select * from dbo.Filmes where Ano>2000
--6
select * from dbo.Filmes where Duracao>100 and Duracao<150
--7
select
	Ano,
	count(1) quan
from Filmes
group by Ano
order by quan desc
--8
select PrimeiroNome,UltimoNome from dbo.Atores where Genero='M'
--9
select PrimeiroNome,UltimoNome from dbo.Atores where Genero='F' order by PrimeiroNome
--10
select
	f.Nome,
	g.Genero
from Filmes f
inner join FilmesGenero fg on f.Id = fg.IdFilme
inner join Generos g on fg.IdGenero = g.Id
--11
select
	f.Nome,
	g.Genero
from Filmes f
inner join FilmesGenero fg on f.Id = fg.IdFilme
inner join Generos g on fg.IdGenero = g.Id
where g.Genero='Mistério'

--12
select
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
from  Filmes f
inner join ElencoFilme ef on f.Id = ef.IdFilme
inner join Atores a on ef.IdAtor = a.Id 
