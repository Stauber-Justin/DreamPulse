DROP TABLE IF EXISTS DreamPulse..[Traum_generator]
CREATE TABLE DreamPulse..[Traum_generator]
(
  [schnittstellen_id] INT NOT NULL PRIMARY KEY,
  typ INT,
  kosten MONEY,
  kommentar VARCHAR(max)
)
