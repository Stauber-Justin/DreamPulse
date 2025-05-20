ALTER TABLE
    DreamPulse..Traum_Generator
ADD CONSTRAINT FK_Generator_Typ
    FOREIGN KEY (typ)
    REFERENCES DreamPulse..Generator_Speziell(typ_id);

/*
ALTER TABLE
    DreamPulse..Traum_Generator
DROP CONSTRAINT FK_Generator_Typ
*/