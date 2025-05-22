DROP TABLE IF EXISTS DreamPulse..[Generator_Speziell];
CREATE TABLE DreamPulse..[Generator_Speziell]
(
  typ_id INT IDENTITY(1,1) PRIMARY KEY,
  max_gewicht TINYINT,
  max_höhe TINYINT,
  max_kopfumfang TINYINT
);