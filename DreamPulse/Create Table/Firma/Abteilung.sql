-- Create a new table called 'Abteilung' in schema 'DreamPulse.'
-- Drop the table if it already exists
IF OBJECT_ID('DreamPulse..Abteilung', 'U') IS NOT NULL
DROP TABLE DreamPulse..Abteilung
GO
-- Create the table in the specified schema
CREATE TABLE DreamPulse..Abteilung
(
    abteilungs_id INT IDENTITY (1,1) PRIMARY KEY,
    abteilungs_leiter INT, -- FK
    abteilungs_name NVARCHAR(100) NOT NULL,
    anzahl_mitarbeiter INTEGER NOT NULL, --View
);
GO