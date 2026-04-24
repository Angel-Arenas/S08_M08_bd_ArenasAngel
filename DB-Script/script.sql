-- Script para crear la tabla en SQL Server
-- Ejecutar en SQL Server Management Studio o Azure Data Studio

-- Crear base de datos si no existe
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'streaming_db')
BEGIN
    CREATE DATABASE streaming_db;
END
GO

USE streaming_db;
GO

-- Crear tabla streaming_service
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'streaming_service') AND type in (N'U'))
BEGIN
    CREATE TABLE streaming_service (
        id BIGINT IDENTITY(1,1) PRIMARY KEY,
        nombre NVARCHAR(255) NOT NULL,
        precio DECIMAL(10,2) NOT NULL,
        fechaInicio NVARCHAR(50) NOT NULL,
        fechaFin NVARCHAR(50) NOT NULL,
        estado NVARCHAR(50) NOT NULL
    );
END
GO

-- Verificar tabla creada
SELECT * FROM streaming_service;
GO