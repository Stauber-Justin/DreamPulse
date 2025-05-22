DROP TABLE IF EXISTS DreamPulse..Traum_Welt;
CREATE TABLE DreamPulse..[Traum_Welt] (
    welt_id INT IDENTITY(1,1) PRIMARY KEY,
    element_set_id INT NOT NULL, -- FK
    welt_name NVARCHAR(100) NOT NULL,
    tag_nacht_zyklus BIT -- Bool
);