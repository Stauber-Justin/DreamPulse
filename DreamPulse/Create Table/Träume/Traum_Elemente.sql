DROP TABLE IF EXISTS DreamPulse..Traum_Elemente;
CREATE TABLE DreamPulse..Traum_Elemente(
    element_id INT IDENTITY(1,1) PRIMARY KEY,
    objekt VARCHAR(90) NOT NULL,
    objekt_typ INT NOT NULL,
    kommentar NVARCHAR(4000)
);