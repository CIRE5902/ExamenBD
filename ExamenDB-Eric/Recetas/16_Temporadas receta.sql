USE recetas_para_aprobar;
GO

SELECT 
    r.nombre AS RECETA,
    STUFF((
        SELECT DISTINCT ', ' + t.nombre
        FROM ingredientes_recetas ir2
        JOIN ingredientes i2 ON ir2.id_ingrediente = i2.id_ingrediente
        JOIN temporadas t ON i2.id_temporada = t.id_temporada
        WHERE ir2.id_receta = r.id_receta
        FOR XML PATH('')), 1, 2, '') AS TEMPORADAS
FROM 
    recetas r
ORDER BY 
    r.nombre;
GO