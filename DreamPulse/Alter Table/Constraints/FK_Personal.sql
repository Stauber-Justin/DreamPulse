ALTER TABLE
    DreamPulse..Personal
ADD CONSTRAINT FK_Personal_Adressen
FOREIGN KEY(adresse)
REFERENCES DreamPulse..Adressen (address_id);

ALTER TABLE
    DreamPulse..Personal
ADD CONSTRAINT FK_Personal_Abteilung
FOREIGN KEY(abteilung)
REFERENCES DreamPulse..Abteilung (abteilungs_id);

ALTER TABLE
    DreamPulse..Personal
Add CONSTRAINT FK_Personal_Positionen
FOREIGN KEY(position)
REFERENCES DreamPulse..Positionen (position)