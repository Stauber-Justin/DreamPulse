/*
ALTER TABLE
    DreamPulse..Bewertungen
ADD CONSTRAINT FK_Bewertungen_Träumer
    FOREIGN KEY (kunden_id)
    REFERENCES DreamPulse..Träumer(kunden_id)
    */

ALTER TABLE
    DreamPulse..Bewertungen
DROP CONSTRAINT
    FK_Bewertungen_Träumer