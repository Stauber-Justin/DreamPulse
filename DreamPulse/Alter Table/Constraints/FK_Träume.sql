ALTER TABLE
    DreamPulse..Träume
ADD CONSTRAINT FK_Träume_Traum_Kategorie
    FOREIGN KEY (kategorie_id)
    REFERENCES DreamPulse..Traum_Kategorie(kategorie_id);

ALTER TABLE
    DreamPulse..Träume
ADD CONSTRAINT FK_Träume_Traum_Welt
    FOREIGN KEY (welt_id)
    REFERENCES DreamPulse..Traum_Welt(welt_id);

ALTER TABLE
    DreamPulse..Träume
ADD CONSTRAINT FK_Träume_FSK
    FOREIGN KEY (fsk_id)
    REFERENCES DreamPulse..fsk(fsk);

/*
ALTER TABLE
    DreamPulse..Träume
DROP CONSTRAINT FK_Träume_Traum_Kategorie;

ALTER TABLE
    DreamPulse..Träume
DROP CONSTRAINT FK_Träume_Traum_Welt;

ALTER TABLE
    DreamPulse..Träume
DROP CONSTRAINT FK_Träume_FSK;
*/