DROP TABLE if exists DreamPulse..Bewertungen;
CREATE TABLE DreamPulse..[Bewertungen]
(
  bewertungs_id INT IDENTITY(1,1) PRIMARY KEY,
  kunden_id INT NOT NULL, -- FK
  bewertung DECIMAL(3,2),
  kommentare VARCHAR(8000)
);