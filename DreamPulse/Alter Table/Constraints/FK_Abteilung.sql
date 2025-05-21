ALTER TABLE
    DreamPulse..Abteilung
ADD CONSTRAINT FK_Abteilung_Gehaltsebene
    FOREIGN KEY (gehaltsebene_id)
    REFERENCES DreamPulse..Gehaltsebene (gehaltsebene_id);

/*
alter table 
    DreamPulse..Abteilung
drop constraint FK_Abteilung_Gehaltsebene
*/
