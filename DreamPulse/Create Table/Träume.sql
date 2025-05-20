DROP TABLE IF EXISTS DreamPulse..Träume
CREATE TABLE DreamPulse..[Träume]
(
    traum_id INT PRIMARY KEY IDENTITY(1,1),
    kategorie_id INT, -- FK
    welt_id INT, -- FK
    fsk_id TINYINT, -- FK
    traum_dauer INT
);
