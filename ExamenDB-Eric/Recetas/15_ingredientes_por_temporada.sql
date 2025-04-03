USE recetas_para_aprobar;
GO

SELECT 
    t.nombre AS TEMPORADA,
    COUNT(i.id_ingrediente) AS [NÚMERO DE INGREDIENTES]
FROM 
    temporadas t
LEFT JOIN 
    ingredientes i ON t.id_temporada = i.id_temporada
GROUP BY 
    t.nombre
ORDER BY 
    t.nombre;
GO