DROP TABLE IF EXISTS DreamPulse..[Element_Set];
CREATE TABLE DreamPulse..[Element_Set]
(
  set_id INT PRIMARY KEY,
  set_name VARCHAR(90) NOT NULL,
  beschreibung VARCHAR(8000)
);