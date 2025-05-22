-- Create a new table called 'Personal' in schema 'DreamPulse.'
-- Drop the table if it already exists
IF OBJECT_ID('DreamPulse..Personal', 'U') IS NOT NULL
DROP TABLE DreamPulse..Personal
GO
-- Create the table in the specified schema
CREATE TABLE DreamPulse..Personal
(
    personal_id INT IDENTITY(1,1) PRIMARY KEY, -- primary key column
    abteilung INT NOT NULL, -- FK
    position VARCHAR(42) NOT NULL, -- FK
    adresse INT NOT NULL, -- FK
    anzahl_projekte INT NOT NULL DEFAULT 0, --View
    nachname NVARCHAR(100),
    vorname NVARCHAR(100)
);
GO