USE DreamPulse;
GO

DECLARE @sql NVARCHAR(MAX) = N'';

SELECT @sql = @sql + N'ALTER TABLE [' + sch.name + N'].[' + t.name + N'] DROP CONSTRAINT [' + fk.name + N'];' + CHAR(13)
FROM sys.foreign_keys fk
INNER JOIN sys.tables t ON fk.parent_object_id = t.object_id
INNER JOIN sys.schemas sch ON t.schema_id = sch.schema_id;

EXEC sp_executesql @sql;