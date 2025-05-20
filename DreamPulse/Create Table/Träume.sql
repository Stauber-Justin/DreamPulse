-- Drop Table if exists DreamPulse..Träume
CREATE TABLE DreamPulse..[Träume]
(
    traum_id INT PRIMARY KEY IDENTITY(1,1),
    kategorie_id INT,
    welt_id INT,
    fsk_id INT,
    traum_dauer INT,
    Foreign Key (kategorie_id) References DreamPulse..traum_kategorie(kategorie_id),
    Foreign Key(welt_id) REFERENCES DreamPulse..traum_welt(welt_id),
    Foreign Key (fsk_id) References DreamPulse..fsk(fsk)
);
