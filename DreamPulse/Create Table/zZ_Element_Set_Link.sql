DROP TABLE IF EXISTS DreamPulse..Element_Set_Link;
CREATE TABLE DreamPulse..Element_Set_Link
(
  element_set_id INT REFERENCES DreamPulse..Element_Set(set_id),
  element_id INT REFERENCES DreamPulse..Traum_Elemente(element_id),
  PRIMARY KEY (element_set_id, element_id)
);