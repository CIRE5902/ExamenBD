USE recetas_para_aprobar;
GO

-- Insertar ingredientes para la Sopa de Calabaza (asumiendo id_receta=1)
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad_gramos)
VALUES 
(1, (SELECT id_ingrediente FROM ingredientes WHERE nombre = 'Calabaza'), 500),
(1, (SELECT id_ingrediente FROM ingredientes WHERE nombre = 'Cebolla tierna'), 150),
(1, (SELECT id_ingrediente FROM ingredientes WHERE nombre = 'Perejil'), 5);
GO