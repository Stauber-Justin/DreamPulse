USE DreamPulse;
GO

-- 1. Procedure anlegen
CREATE PROCEDURE dbo.usp_GetOrCreateAdresse
    @plz        VARCHAR(10),
    @ort        VARCHAR(90),
    @strasse    VARCHAR(90),
    @hausnummer VARCHAR(10),
    @address_id INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        -- 2. Existierende Adresse suchen
        SELECT @address_id = address_id
        FROM DreamPulse..Adressen
        WHERE plz        = @plz
          AND ort        = @ort
          AND straße     = @strasse
          AND hausnummer = @hausnummer;

        -- 3. Wenn nicht gefunden, neu anlegen
        IF @address_id IS NULL
        BEGIN
            INSERT INTO DreamPulse.Adressen (plz, ort, straße, hausnummer)
            VALUES (@plz, @ort, @strasse, @hausnummer);

            SET @address_id = SCOPE_IDENTITY();
        END
    END TRY
    BEGIN CATCH
        -- Fehlerbehandlung: Fehlermeldung weiterwerfen
        DECLARE @ErrMsg NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrNo  INT           = ERROR_NUMBER();
        RAISERROR('Fehler in usp_GetOrCreateAdresse (%d): %s', 16, 1, @ErrNo, @ErrMsg);
        RETURN;
    END CATCH
END
GO

-- 4. Beispielaufruf
DECLARE @addr INT;
EXEC dbo.usp_GetOrCreateAdresse
     @plz        = '12345',
     @ort        = 'Traumstadt',
     @strasse    = 'Hauptstraße',
     @hausnummer = '7A',
     @address_id = @addr OUTPUT;

SELECT @addr AS AddressID;
