DROP TABLE IF EXISTS DreamPulse..Traum_Welt_Link;
CREATE TABLE DreamPulse..Traum_Welt_Link (
    welt_id INT REFERENCES DreamPulse..Traum_Welt(welt_id),
    traum_id INT REFERENCES DreamPulse..Träume(traum_id),
    PRIMARY KEY (welt_id, traum_id)
);