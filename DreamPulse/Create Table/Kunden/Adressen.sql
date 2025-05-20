DROP TABLE IF EXISTS DreamPulse..Adressen;
CREATE TABLE DreamPulse..Adressen (
    address_id INT IDENTITY(1,1) PRIMARY KEY,
    plz VARCHAR(10) NOT NULL,
    ort VARCHAR(90) NOT NULL,
    straße VARCHAR(90) NOT NULL,
    hausnummer VARCHAR(10) NOT NULL
);