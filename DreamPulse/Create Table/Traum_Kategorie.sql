DROP TABLE IF EXISTS DreamPulse..Traum_Kategorie
CREATE TABLE DreamPulse..[Traum_Kategorie]
(
    kategorie_id INT PRIMARY KEY IDENTITY,
    welt_id INT,
    titel VARCHAR(100),
    beschreibung VARCHAR(max),
    preis DECIMAL(10,2),
    genre VARCHAR(50)
);
