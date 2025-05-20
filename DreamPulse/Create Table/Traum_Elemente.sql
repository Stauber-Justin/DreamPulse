DROP TABLE IF EXISTS DreamPulse..Traum_Elemente
CREATE TABLE DreamPulse..Traum_Elemente(
    element_id INT PRIMARY KEY IDENTITY(1,1),
    objekt VARCHAR(90) NOT NULL,
    objekt_typ INT NOT NULL,
    kommentar VARCHAR(max)
)