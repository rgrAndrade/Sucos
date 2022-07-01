﻿/*
Deployment script for DW_SUCOS

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "DW_SUCOS"
:setvar DefaultFilePrefix "DW_SUCOS"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Rename refactoring operation with key 03ea1617-be7b-4609-9fec-d2f8c5a58b56, ef6c5a09-de63-49bb-8f73-217bfd115bb8, 2249b96f-f669-4065-8c63-f5198a0a7706 is skipped, element [dbo].[Table1].[Id] (SqlSimpleColumn) will not be renamed to Cod_Cliente';


GO
PRINT N'Rename refactoring operation with key ca34e4f4-3e53-40cc-8031-53998f2c545e is skipped, element [dbo].[Table1].[Desc_liente] (SqlSimpleColumn) will not be renamed to Desc_Cliente';


GO
PRINT N'Rename refactoring operation with key f2821630-0e70-485f-aabf-66c5707a97c1 is skipped, element [dbo].[Table1].[Desc_C] (SqlSimpleColumn) will not be renamed to Desc_Estado';


GO
PRINT N'Creating [dbo].[Table1]...';


GO
CREATE TABLE [dbo].[Table1] (
    [Cod_Cliente]   NVARCHAR (50)  NOT NULL,
    [Desc_Cliente]  NVARCHAR (200) NULL,
    [Cod_Cidade]    NVARCHAR (50)  NULL,
    [Desc_Cidade]   NVARCHAR (200) NULL,
    [Cod_Estado]    NVARCHAR (50)  NULL,
    [Desc_Estado]   NVARCHAR (200) NULL,
    [Cod_Regiao]    NVARCHAR (50)  NULL,
    [Desc_Regiao]   NVARCHAR (200) NULL,
    [Cod_Segmento]  NVARCHAR (50)  NULL,
    [Desc_Segmento] NVARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([Cod_Cliente] ASC)
);


GO
-- Refactoring step to update target server with deployed transaction logs
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '03ea1617-be7b-4609-9fec-d2f8c5a58b56')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('03ea1617-be7b-4609-9fec-d2f8c5a58b56')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'ef6c5a09-de63-49bb-8f73-217bfd115bb8')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('ef6c5a09-de63-49bb-8f73-217bfd115bb8')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '2249b96f-f669-4065-8c63-f5198a0a7706')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('2249b96f-f669-4065-8c63-f5198a0a7706')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'ca34e4f4-3e53-40cc-8031-53998f2c545e')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('ca34e4f4-3e53-40cc-8031-53998f2c545e')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'f2821630-0e70-485f-aabf-66c5707a97c1')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('f2821630-0e70-485f-aabf-66c5707a97c1')

GO

GO
PRINT N'Update complete.';


GO
