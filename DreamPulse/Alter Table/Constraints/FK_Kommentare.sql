ALTER TABLE
    DreamPulse..Kommentare
ADD CONSTRAINT FK_Kommentare_Träumer
    FOREIGN KEY (kunden_id)
    REFERENCES DreamPulse..Träumer(kunden_id);

ALTER TABLE
    DreamPulse..Kommentare
ADD CONSTRAINT FK_Kommentare_Traum
    FOREIGN KEY (traum_id)
    REFERENCES DreamPulse..Träume(traum_id);

ALTER TABLE
    DreamPulse..Kommentare
ADD CONSTRAINT FK_Kommentare_Welt
    FOREIGN KEY (welt_id)
    REFERENCES DreamPulse..Traum_Welt(welt_id);

/*
ALTER TABLE
    DreamPulse..Kommentare
DROP CONSTRAINT
    FK_Kommentare_Träumer;

ALTER TABLE
    DreamPulse..Kommentare
DROP CONSTRAINT
    FK_Kommentare_Traum;

ALTER TABLE
    DreamPulse..Kommentare
DROP CONSTRAINT
    FK_Kommentare_Welt;
*/
