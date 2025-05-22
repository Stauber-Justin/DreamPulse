ALTER TABLE
    DreamPulse..Traum_Instanz
ADD CONSTRAINT FK_Instanz_Traum
    FOREIGN KEY (traum_id)
    REFERENCES DreamPulse..Träume(traum_id);

ALTER TABLE
    DreamPulse..Traum_Instanz
ADD CONSTRAINT FK_Instanz_Welt
    FOREIGN KEY (welt_guid)
    REFERENCES DreamPulse..Traum_Welt_Instanz(welt_guid);

ALTER TABLE
    DreamPulse..Traum_Instanz
ADD CONSTRAINT FK_Instanz_status
    FOREIGN KEY (status_id)
    REFERENCES DreamPulse..Status_Lookup(status_id);

/*
ALTER TABLE
    DreamPulse..Traum_Instanz
DROP CONSTRAINT FK_Instanz_Traum;

ALTER TABLE
    DreamPulse..Traum_Instanz
DROP CONSTRAINT FK_Instanz_Welt;

ALTER TABLE
    DreamPulse..Traum_Instanz
DROP CONSTRAINT FK_Instanz_status;
*/