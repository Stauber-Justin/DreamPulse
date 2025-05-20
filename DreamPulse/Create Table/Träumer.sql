Drop Table if EXISTS DreamPulse..Träumer
CREATE TABLE DreamPulse..[Träumer]
(
  kunden_id INT IDENTITY PRIMARY KEY,
  traum_pass_level INT,
  fsk_id TINYINT,
  nachname VARCHAR(30),
  vorname VARCHAR(30),
  straße VARCHAR(90),
  plz VARCHAR(30),
  ort VARCHAR(90),
  FOREIGN KEY (traum_pass_level) REFERENCES DreamPulse..Traum_Pass(pass_id),
  FOREIGN KEY (fsk_id) REFERENCES DreamPulse..fsk(fsk)
);
ALter Table DreamPulse..Träumer add CONSTRAINT FK_Traum_Pass FOREIGN KEY (traum_pass_level) REFERENCES DreamPulse..Traum_Pass(pass_id)
