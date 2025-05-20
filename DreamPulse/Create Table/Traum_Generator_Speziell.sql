DROP TABLE IF EXISTS DreamPulse..[Generator_Speziell];
CREATE TABLE DreamPulse..[Generator_Speziell]
(
  typ_id INT PRIMARY KEY,
  typ_name VARCHAR(60) NOT NULL DEFAULT '',
  max_gewicht INT,
  max_höhe INT,
  max_kopfumfang INT
);