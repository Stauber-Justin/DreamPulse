DROP TABLE IF EXISTS Dreampulse..traum_instanz
CREATE TABLE DreamPulse..[Traum_Instanz] (
    traum_guid UNIQUEIDENTIFIER PRIMARY KEY,
    traum_id INT,
    [status] VARCHAR(50),
    verbleibende_dauer INT
);
