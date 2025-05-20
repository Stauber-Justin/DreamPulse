ALTER TABLE
    DreamPulse..Traum_Welt
ADD CONSTRAINT FK_Welt_Element_Set
    FOREIGN KEY (element_set_id)
    REFERENCES DreamPulse..Element_Set(set_id);

/*
ALTER TABLE
    DreamPulse..Traum_Welt
DROP CONSTRAINT FK_Welt_Element_Set;
*/