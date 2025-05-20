DROP TABLE IF EXISTS Dreampulse..Traum_Instanz;
CREATE TABLE DreamPulse..[Traum_Instanz] (
    traum_guid UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    traum_id INT NOT NULL, -- FK
    [status] VARCHAR(30),
    verbleibende_dauer INT
);