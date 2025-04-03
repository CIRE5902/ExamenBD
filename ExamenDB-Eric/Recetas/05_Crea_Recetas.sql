USE recetas_para_aprobar;
GO

CREATE TABLE recetas (
    id_receta INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    instrucciones TEXT NOT NULL,
    tiempo_elaboracion INT NOT NULL CHECK (tiempo_elaboracion > 0 AND tiempo_elaboracion <= 240),
    id_dificultad INT NOT NULL FOREIGN KEY REFERENCES dificultades(id_dificultad),
    id_categoria INT NOT NULL FOREIGN KEY REFERENCES categorias(id_categoria)
);
GO