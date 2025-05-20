DROP TABLE IF EXISTS DreamPulse..[Generator_speziell]
CREATE TABLE DreamPulse..[Generator_speziell]
(
  typ_id INT NOT NULL PRIMARY KEY,
  typ_name VARCHAR(60),
  user_gewicht INT,
  user_höhe INT 
)
