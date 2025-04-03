USE master;
GO

IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'recetas_para_aprobar')
    CREATE DATABASE recetas_para_aprobar;
GO

USE recetas_para_aprobar;
GO