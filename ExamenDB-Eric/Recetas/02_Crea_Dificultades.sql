USE recetas_para_aprobar;
GO

CREATE TABLE dificultades (
    id_dificultad INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL CHECK (nombre IN ('Muy fácil', 'Elaborada', 'Complicada'))
);
GO
