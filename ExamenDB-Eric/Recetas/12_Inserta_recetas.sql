USE recetas_para_aprobar;
GO

-- Asumiendo que Sopas tiene id_categoria=3 y Elaborada tiene id_dificultad=2
INSERT INTO recetas (nombre, instrucciones, tiempo_elaboracion, id_categoria, id_dificultad)
VALUES (
    'Sopa de Calabaza',
    'Cortar la calabaza (500grm) en cubos y caramelizar la cebolla tierna (150 grm). Cocinar hasta que la calabaza esté tierna. Triturar. Servir caliente, decorada con perejil fresco (5 gr).',
    30,
    (SELECT id_categoria FROM categorias WHERE nombre = 'Sopas'),
    (SELECT id_dificultad FROM dificultades WHERE nombre = 'Elaborada')
);
GO