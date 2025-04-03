USE recetas_para_aprobar;
GO

CREATE TABLE categorias (
    id_categoria INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL
);
GO