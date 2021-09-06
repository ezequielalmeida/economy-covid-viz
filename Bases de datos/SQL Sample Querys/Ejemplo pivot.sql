Select [Singapore], [New Zealand], [Australia]
FROM
(
SELECT country_name AS Nombre, ef_world_rank AS Ranking FROM Economia
FULL OUTER JOIN Pais ON Economia.CountryID=Pais.CountryID
) AS tabla_ranking
PIVOT
(
MAX(ranking)
FOR Nombre IN ([Singapore], [New Zealand], [Australia]
)) as tabla_pivote

UNION

Select [Singapore], [New Zealand], [Australia]
FROM
(
SELECT country_name AS Nombre, GDP FROM Economia
FULL OUTER JOIN Pais ON Economia.CountryID=Pais.CountryID
) AS tabla_ranking
PIVOT
(
MAX(GDP)
FOR Nombre IN ([Singapore], [New Zealand], [Australia]
)) as tabla_pivote1;