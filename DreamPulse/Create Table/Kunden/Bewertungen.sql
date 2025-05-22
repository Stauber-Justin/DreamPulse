DROP TABLE if exists DreamPulse..Bewertungen;
CREATE TABLE DreamPulse..[Bewertungen]
(
  bewertungs_id INT IDENTITY(1,1) PRIMARY KEY,
  kunden_id INT NOT NULL, -- FK
  traum_id INT NOT NULL, --FK
  welt_id INT NOT NULL, --FK
  bewertung DECIMAL(3,2) NOT NULL
);