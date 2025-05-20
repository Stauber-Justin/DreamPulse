DROP TABLE IF EXISTS DreamPulse..Träumer;
CREATE TABLE DreamPulse..[Träumer]
(
  kunden_id INT IDENTITY(000100,1) PRIMARY KEY,
  address_id INT NOT NULL, --FK
  traum_pass varchar(30) NOT NULL, -- FK
  fsk_id TINYINT NOT NULL, -- FK
  schnittstelle INT NOT NULL, -- FK
  nachname VARCHAR(30) NOT NULL,
  vorname VARCHAR(30) NOT NULL
);