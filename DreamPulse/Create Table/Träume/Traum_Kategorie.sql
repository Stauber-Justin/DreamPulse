DROP TABLE IF EXISTS DreamPulse..Traum_Kategorie;
CREATE TABLE DreamPulse..[Traum_Kategorie]
(
    kategorie_id INT IDENTITY(1,1) PRIMARY KEY,
    titel NVARCHAR(200) NOT NULL,
    beschreibung NVARCHAR(4000) NOT NULL,
    preis DECIMAL(10,2),
    genre NVARCHAR(60)
);