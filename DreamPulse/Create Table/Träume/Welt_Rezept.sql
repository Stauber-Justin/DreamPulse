DROP TABLE IF EXISTS DreamPulse..[Welt_Rezept];
CREATE TABLE DreamPulse..[Welt_Rezept]
(
  [rezept_id] INT IDENTITY(1,1) PRIMARY KEY,
  welt_id INT NOT NULL, -- FK
  element_id INT NOT NULL
);