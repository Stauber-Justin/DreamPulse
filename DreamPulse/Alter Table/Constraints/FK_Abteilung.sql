ALTER TABLE
    DreamPulse..Abteilung
ADD CONSTRAINT FK_Abteilung_Personal
    FOREIGN KEY (abteilungs_leiter)
    REFERENCES DreamPulse..Personal (personal_id);

/*
alter table 
    DreamPulse..Abteilung
drop constraint FK_Abteilung_Personal
*/
