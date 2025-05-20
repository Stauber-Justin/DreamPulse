ALTER TABLE
    DreamPulse..Traum_Instanz
ADD CONSTRAINT FK_Instanz_Traum
    FOREIGN KEY (traum_id)
    REFERENCES DreamPulse..Träume(traum_id);

/*
ALTER TABLE
    DreamPulse..Traum_Instanz
DROP CONSTRAINT FK_Instanz_Traum;
*/