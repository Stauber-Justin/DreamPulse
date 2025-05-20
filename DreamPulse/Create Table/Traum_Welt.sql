DROP TABLE IF EXISTS DreamPulse..Traum_Welt
CREATE TABLE DreamPulse..[Traum_Welt] (
    welt_id INT PRIMARY KEY IDENTITY,
    element_set_id INT NOT NULL, -- FK
    tag_nacht_zyklus VARCHAR(50),
    welt_name VARCHAR (60)
);

