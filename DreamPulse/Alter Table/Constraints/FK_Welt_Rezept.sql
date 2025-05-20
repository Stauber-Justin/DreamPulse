ALTER TABLE
    DreamPulse..Welt_Rezept
ADD CONSTRAINT FK_Rezept_Element
    FOREIGN KEY (element_id)
    REFERENCES DreamPulse..Traum_Elemente(element_id);

ALTER TABLE
    DreamPulse..Welt_Rezept
ADD CONSTRAINT FK_Rezept_Welt
    FOREIGN KEY (welt_id)
    REFERENCES DreamPulse..Traum_Welt (welt_id);

/*
ALTER TABLE
    DreamPulse..Welt_Rezept
DROP CONSTRAINT FK_Rezept_Element;

ALTER TABLE
    DreamPulse..Welt_Rezept
DROP CONSTRAINT FK_Rezept_Welt;
*/