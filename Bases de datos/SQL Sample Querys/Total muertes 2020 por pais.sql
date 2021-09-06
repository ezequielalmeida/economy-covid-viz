SELECT [COVID 19].iso_code AS Codigo_iso,MAX(country_name) AS Nombre_pais,
CASE SUM(new_deaths) 
	WHEN 0 THEN 'sin_datos_oficiales'
	ELSE CAST(SUM(new_deaths) AS varchar)
	END
	AS Total_muertes_2020

FROM [COVID 19]

JOIN [Pais] ON [COVID 19].iso_code=pais.iso_code

WHERE DATEPART(YEAR, [date])=2020
GROUP BY [COVID 19].iso_code
ORDER BY [COVID 19].iso_code;
