USE DreamPulse;
GO

SET XACT_ABORT ON;
BEGIN TRANSACTION;
BEGIN TRY
    ----------------------------------------------------------------
    -- 1) Fremdschlüssel-Constraints deaktivieren
    ----------------------------------------------------------------
    DECLARE @sql NVARCHAR(MAX) = N'';
    SELECT @sql +=
        N'ALTER TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME(parent_object_id)) 
        + N'.' + QUOTENAME(OBJECT_NAME(parent_object_id))
        + N' NOCHECK CONSTRAINT ' + QUOTENAME(name) + ';' + CHAR(13)
    FROM sys.foreign_keys
    WHERE schema_id = SCHEMA_ID('dbo');
    
    EXEC sp_executesql @sql;

    ----------------------------------------------------------------
    -- 2) Alle Tabellen leeren
    ----------------------------------------------------------------
    SET @sql = N'';
    SELECT @sql += 
        N'DELETE FROM ' + QUOTENAME(SCHEMA_NAME(schema_id)) 
        + N'.' + QUOTENAME(name) + ';' + CHAR(13)
    FROM sys.tables
    WHERE schema_id = SCHEMA_ID('dbo');
    
    EXEC sp_executesql @sql;

    ----------------------------------------------------------------
    -- 3) Fremdschlüssel-Constraints wieder aktivieren und prüfen
    ----------------------------------------------------------------
    SET @sql = N'';
    SELECT @sql +=
        N'ALTER TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME(parent_object_id)) 
        + N'.' + QUOTENAME(OBJECT_NAME(parent_object_id))
        + N' WITH CHECK CHECK CONSTRAINT ' + QUOTENAME(name) + ';' + CHAR(13)
    FROM sys.foreign_keys
    WHERE schema_id = SCHEMA_ID('dbo');
    
    EXEC sp_executesql @sql;

    COMMIT TRANSACTION;
    PRINT '► Alle dbo-Tabellen wurden geleert und Constraints reaktiviert.';
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    PRINT '❌ Fehler: ' + ERROR_MESSAGE();
END CATCH;
GO
