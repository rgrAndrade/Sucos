CREATE TABLE [dbo].[Dim_Tempo]
(
	[Cod_Dia] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [Data] DATE NULL, 
    [Cod_Semana] NCHAR(10) NULL
)
