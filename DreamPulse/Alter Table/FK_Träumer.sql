/*
ALTER TABLE
    DreamPulse..Träumer
ADD CONSTRAINT FK_Träumer_Traum_Pass
    FOREIGN KEY (traum_pass)
    REFERENCES DreamPulse..Traum_Pass(pass_name);

ALTER TABLE
    DreamPulse..Träumer
ADD CONSTRAINT FK_Träumer_FSK
    FOREIGN KEY (fsk_id)
    REFERENCES DreamPulse..fsk(fsk)

*/

ALTER TABLE
    DreamPulse..Träumer
DROP CONSTRAINT
    FK_Träumer_Traum_Pass

ALTER TABLE
    DreamPulse..Träumer
DROP CONSTRAINT
    FK_Träumer_FSK