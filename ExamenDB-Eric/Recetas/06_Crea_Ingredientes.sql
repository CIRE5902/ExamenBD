USE recetas_para_aprobar;
GO

CREATE TABLE ingredientes (
    id_ingrediente INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_temporada INT NOT NULL FOREIGN KEY REFERENCES temporadas(id_temporada)
);
GO