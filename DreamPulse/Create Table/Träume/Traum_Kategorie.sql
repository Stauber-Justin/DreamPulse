DROP TABLE IF EXISTS DreamPulse..Traum_Kategorie;
CREATE TABLE DreamPulse..[Traum_Kategorie]
(
    kategorie_id INT IDENTITY(1,1) PRIMARY KEY,
    welt_id INT NOT NULL, -- FK
    genre VARCHAR(42), -- FK
    titel VARCHAR(100) NOT NULL,
    beschreibung VARCHAR(8000) DEFAULT '',
    preis MONEY,
);