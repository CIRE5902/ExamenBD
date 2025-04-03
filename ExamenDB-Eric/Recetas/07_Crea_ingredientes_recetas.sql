USE recetas_para_aprobar;
GO

CREATE TABLE ingredientes_recetas (
    id_receta INT NOT NULL FOREIGN KEY REFERENCES recetas(id_receta),
    id_ingrediente INT NOT NULL FOREIGN KEY REFERENCES ingredientes(id_ingrediente),
    cantidad_gramos INT NOT NULL CHECK (cantidad_gramos >= 1),
    PRIMARY KEY (id_receta, id_ingrediente)
);
GO