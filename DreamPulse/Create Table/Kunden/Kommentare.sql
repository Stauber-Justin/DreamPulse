DROP TABLE IF EXISTS DreamPulse..Kommentare;
CREATE TABLE DreamPulse..Kommentare (
    kommentar_id INT IDENTITY(1,1) PRIMARY KEY,
    kunden_id INT NOT NULL, --FK
    traum_id INT NOT NULL, --FK
    welt_id INT NOT NULL, --FK
    kommentare NVARCHAR(4000)
);