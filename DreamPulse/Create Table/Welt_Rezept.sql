DROP TABLE IF EXISTS DreamPulse..[Welt_Rezept]
CREATE TABLE DreamPulse..[Welt_Rezept]
(
  [rezept_id] INT IDENTITY(1,1) PRIMARY KEY,
  element_id INT NOT NULL,
  Welt_ID INT NOT NULL -- FK
)
