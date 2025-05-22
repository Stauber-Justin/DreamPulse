DROP TABLE IF EXISTS DreamPulse..[Traum_Generator];
CREATE TABLE DreamPulse..[Traum_Generator]
(
  schnittstellen NVARCHAR(60) PRIMARY KEY,
  generator_typ INT NOT NULL, -- FK
  preis DECIMAL(10,2),
  kommentar NVARCHAR(4000)
);