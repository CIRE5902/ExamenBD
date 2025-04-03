USE recetas_para_aprobar;
GO

SELECT * FROM dificultades ORDER BY id_dificultad;

SELECT * FROM categorias ORDER BY id_categoria;

SELECT * FROM temporadas ORDER BY id_temporada;

SELECT i.id_ingrediente, i.nombre AS ingrediente, t.nombre AS temporada 
FROM ingredientes i
JOIN temporadas t ON i.id_temporada = t.id_temporada
ORDER BY i.id_ingrediente;

SELECT 
    r.id_receta,
    r.nombre AS receta,
    r.tiempo_elaboracion AS tiempo_min,
    d.nombre AS dificultad,
    c.nombre AS categoria,
    CASE 
        WHEN DATALENGTH(r.instrucciones) > 0 
        THEN SUBSTRING(CAST(r.instrucciones AS VARCHAR(MAX)), 1, 50) + '...'
        ELSE ''
    END AS instrucciones_resumen
FROM recetas r
JOIN dificultades d ON r.id_dificultad = d.id_dificultad
JOIN categorias c ON r.id_categoria = c.id_categoria
ORDER BY r.id_receta;

SELECT 
    r.nombre AS receta,
    i.nombre AS ingrediente,
    ir.cantidad_gramos AS gramos,
    t.nombre AS temporada
FROM ingredientes_recetas ir
JOIN recetas r ON ir.id_receta = r.id_receta
JOIN ingredientes i ON ir.id_ingrediente = i.id_ingrediente
JOIN temporadas t ON i.id_temporada = t.id_temporada
ORDER BY r.nombre, i.nombre;
PRINT '';

SELECT 
    (SELECT COUNT(*) FROM dificultades) AS total_dificultades,
    (SELECT COUNT(*) FROM categorias) AS total_categorias,
    (SELECT COUNT(*) FROM temporadas) AS total_temporadas,
    (SELECT COUNT(*) FROM ingredientes) AS total_ingredientes,
    (SELECT COUNT(*) FROM recetas) AS total_recetas,
    (SELECT COUNT(*) FROM ingredientes_recetas) AS total_ingredientes_recetas;
GO