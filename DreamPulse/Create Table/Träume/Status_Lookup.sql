DROP TABLE IF EXISTS DreamPulse..Status_Lookup;
CREATE TABLE DreamPulse..Status_Lookup (
    status_id INT IDENTITY(1,1) PRIMARY KEY,
    status_text VARCHAR(42) NOT NULL
);