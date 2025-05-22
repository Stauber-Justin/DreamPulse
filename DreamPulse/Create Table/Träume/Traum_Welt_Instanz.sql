DROP TABLE IF EXISTS DreamPulse..Traum_Welt_Instanz;
CREATE TABLE DreamPulse..[Traum_Welt_Instanz]
(
    welt_guid UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    welt_id INT NOT NULL, -- FK
    aktive_user INT NOT NULL DEFAULT 0,
    daytime TIME(1),
    erstellungs_zeit DATETIME2 NOT NULL DEFAULT GETUTCDATE()
);