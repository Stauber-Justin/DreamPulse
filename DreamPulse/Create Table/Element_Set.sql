DROP TABLE IF EXISTS DreamPulse..[Element_Set]
CREATE TABLE DreamPulse..[Element_Set]
(
  set_id INT NOT NULL PRIMARY KEY,
  set_name VARCHAR(90) NOT NULL,
  beschreibung VARCHAR(max)
)
