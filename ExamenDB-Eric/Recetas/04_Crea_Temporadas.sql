USE recetas_para_aprobar;
GO

CREATE TABLE temporadas (
    id_temporada INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL CHECK (nombre IN ('Verano', 'Invierno', 'Primavera', 'Otoño'))
);
GO