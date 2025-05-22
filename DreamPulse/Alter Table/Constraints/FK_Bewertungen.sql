ALTER TABLE
    DreamPulse..Bewertungen
ADD CONSTRAINT FK_Bewertungen_Träumer
    FOREIGN KEY (kunden_id)
    REFERENCES DreamPulse..Träumer(kunden_id);

ALTER TABLE
    DreamPulse..Bewertungen
ADD CONSTRAINT FK_Bewertungen_Traum
    FOREIGN KEY (traum_id)
    REFERENCES DreamPulse..Träume(traum_id);

ALTER TABLE
    DreamPulse..Bewertungen
ADD CONSTRAINT FK_Bewertungen_Welt
    FOREIGN KEY (welt_id)
    REFERENCES DreamPulse..Traum_Welt(welt_id);

/*
ALTER TABLE
    DreamPulse..Bewertungen
DROP CONSTRAINT
    FK_Bewertungen_Träumer;

ALTER TABLE
    DreamPulse..Bewertungen
DROP CONSTRAINT
    FK_Bewertungen_Traum;

ALTER TABLE
    DreamPulse..Bewertungen
DROP CONSTRAINT
    FK_Bewertungen_Welt;
*/
