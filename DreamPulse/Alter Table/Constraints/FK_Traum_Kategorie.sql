ALTER TABLE
    DreamPulse..Traum_Kategorie
ADD CONSTRAINT FK_Kategorie_Traum_Welt
    FOREIGN KEY (welt_id)
    REFERENCES DreamPulse..Traum_Welt(welt_id);

/*
ALTER TABLE
    DreamPulse..Traum_Kategorie
DROP CONSTRAINT FK_Kategorie_Traum_Welt;
*/