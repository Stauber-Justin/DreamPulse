DROP TABLE IF EXISTS Dreampulse..Traum_Instanz;
CREATE TABLE DreamPulse..[Traum_Instanz] (
    traum_guid UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    traum_id INT NOT NULL, -- FK
    welt_guid UNIQUEIDENTIFIER NOT NULL, --FK
    status_id INT NOT NULL, --FK
    verbleibende_dauer INT NOT NULL,
    erstellungs_zeit DATETIME2 NOT NULL DEFAULT GETUTCDATE()
);