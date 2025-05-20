CREATE TABLE [dbo].[Traum_Instanz] (
    traum_guid UNIQUEIDENTIFIER PRIMARY KEY,
    traum_id INT,
    status VARCHAR(50),
    verbleibende_dauer INT,
    FOREIGN KEY (traum_id) REFERENCES traeume(traum_id)
);
