DROP TABLE if exists DreamPulse..Bewertungen
CREATE TABLE DreamPulse..[Bewertungen]
(
  [bewertungs_id] INT NOT NULL PRIMARY KEY,
  kunden_id INT NOT NULL,
  kommentare VARCHAR(max),
  bewertungen FLOAT 
)
