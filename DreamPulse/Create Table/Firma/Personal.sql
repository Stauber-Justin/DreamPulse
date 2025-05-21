-- Create a new table called 'Personal' in schema 'DreamPulse.'
-- Drop the table if it already exists
IF OBJECT_ID('DreamPulse..Personal', 'U') IS NOT NULL
DROP TABLE DreamPulse..Personal
GO
-- Create the table in the specified schema
CREATE TABLE DreamPulse..Personal
(
    personal_id INT NOT NULL PRIMARY KEY, -- primary key column
    vorname VARCHAR(30) NOT NULL,
    nachname VARCHAR(30) NOT NULL,
    adresse INT NOT NULL, --FK
    abteilung INT NOT NULL, --FK
    projekt INT NOT NULL,  --FK
    gehaltsebene INT NOT NULL  --FK

    -- specify more columns here
);
GO