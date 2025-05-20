/*
ALTER TABLE
    DreamPulse..Traum_Welt_Instanz
ADD CONSTRAINT FK_Instanz_Traum_Welt
    FOREIGN KEY (welt_id)
    REFERENCES DreamPulse..Traum_Welt(welt_id)
    */

ALTER TABLE
    DreamPulse..Traum_Welt_Instanz
DROP CONSTRAINT FK_Instanz_Traum_Welt