DROP TABLE IF EXISTS DreamPulse..[Traum_Generator];
CREATE TABLE DreamPulse..[Traum_Generator]
(
  [schnittstellen_id] INT IDENTITY(1,1) PRIMARY KEY,
  typ INT NOT NULL, -- FK
  kosten MONEY,
  kommentar VARCHAR(8000)
);