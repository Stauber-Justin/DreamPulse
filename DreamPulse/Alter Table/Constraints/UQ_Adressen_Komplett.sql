ALTER TABLE
    DreamPulse..Adressen
ADD CONSTRAINT UQ_Adresse_Komplett
        UNIQUE (plz, ort, straße, hausnummer);

/*
ALTER TABLE
    DreamPulse..Adressen
DROP CONSTRAINT
    UQ_Adresse_Komplett;
*/