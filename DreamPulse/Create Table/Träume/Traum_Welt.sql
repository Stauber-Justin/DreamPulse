DROP TABLE IF EXISTS DreamPulse..Traum_Welt;
CREATE TABLE DreamPulse..[Traum_Welt] (
    welt_id INT IDENTITY(1,1) PRIMARY KEY,
    element_set_id INT NOT NULL, -- FK
    tag_nacht_zyklus BIT,
    welt_name VARCHAR(60) NOT NULL
);