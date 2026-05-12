-- Script para crear la tabla en SQL Server
-- Ejecutar en SQL Server Management Studio o Azure Data Studio

DROP DATABASE IF EXISTS streaming_db;
GO
CREATE DATABASE streaming_db;
GO
USE streaming_db;
GO



GO
CREATE TABLE streaming_service (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(255) NOT NULL,
    email NVARCHAR(255),
    precio DECIMAL(10,2) NOT NULL,
    planes NVARCHAR(50) NOT NULL,
    fecha_inicio NVARCHAR(50) NOT NULL,
    fecha_fin NVARCHAR(50) NOT NULL,
    estado NVARCHAR(50) NOT NULL
);
GO
