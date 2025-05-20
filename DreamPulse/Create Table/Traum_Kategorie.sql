CREATE TABLE DreamPulse..[Traum_Kategorie]
(
    kategorie_id INT PRIMARY KEY IDENTITY,
    welt_id INT,
    titel VARCHAR(100),
    beschreibung TEXT,
    preis DECIMAL(10,2),
    genre VARCHAR(50)
);
