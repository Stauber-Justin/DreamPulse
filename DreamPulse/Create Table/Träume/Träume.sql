DROP TABLE IF EXISTS DreamPulse..Träume;
CREATE TABLE DreamPulse..[Träume]
(
    traum_id INT IDENTITY(1,1) PRIMARY KEY,
    kategorie_id INT NOT NULL, -- FK
    welt_id INT NOT NULL, -- FK
    fsk_id TINYINT NOT NULL, -- FK
    traum_erbauer INT NOT NULL, --FK
    traum_dauer SMALLINT NOT NULL
);