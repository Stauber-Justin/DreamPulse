DROP TABLE IF EXISTS DreamPulse..Traum_Welt
CREATE TABLE DreamPulse..[Traum_Welt] (
    welt_id INT PRIMARY KEY IDENTITY,
    tag_nacht_zyklus VARCHAR(50),
    Traumwelt_name VARCHAR (60),
    Element_id INT
);

