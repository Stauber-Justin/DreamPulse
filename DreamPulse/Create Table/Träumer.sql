CREATE TABLE DreamPulse..[Träumer]
(
  kunden_id INT IDENTITY PRIMARY KEY,
  traum_pass_level INT,
  fsk_id TINYINT,
  nachname VARCHAR(30),
  vorname VARCHAR(30),
  straße VARCHAR(90),
  plz VARCHAR(30),
  ort VARCHAR(90)
)
