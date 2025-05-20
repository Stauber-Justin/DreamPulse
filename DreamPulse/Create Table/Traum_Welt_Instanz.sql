DROP TABLE IF EXISTS DreamPulse..Traum_welt_Instanz
CREATE TABLE DreamPulse..[Traum_Welt_Instanz]
(
    instnaz_guid UNIQUEIDENTIFIER PRIMARY KEY,
    welt_id INT,
    aktive_user INT,
    daytime VARCHAR(50)
);
