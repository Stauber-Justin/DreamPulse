DROP TABLE IF EXISTS DreamPulse..Träumer
CREATE TABLE DreamPulse..[Träumer]
(
  kunden_id INT IDENTITY PRIMARY KEY,
  traum_pass varchar(30), -- FK
  fsk_id TINYINT, -- FK
  nachname VARCHAR(30),
  vorname VARCHAR(30),
  straße VARCHAR(90),
  plz VARCHAR(30),
  ort VARCHAR(90),
);