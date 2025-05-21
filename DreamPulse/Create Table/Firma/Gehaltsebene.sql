-- Create a new table called 'Gehaltsebene' in schema 'DreamPulse.'
-- Drop the table if it already exists
IF OBJECT_ID('DreamPulse..Gehaltsebene', 'U') IS NOT NULL
DROP TABLE DreamPulse..Gehaltsebene
GO
-- Create the table in the specified schema
CREATE TABLE DreamPulse..Gehaltsebene
(
    gehaltsebene_id INT NOT NULL PRIMARY KEY, -- primary key column
    geschäftsleitung MONEY NOT NULL,
    abteilungsleiter MONEY NOT NULL,
    dream_design MONEY NOT NULL,
    backoffice MONEY NOT NULL,
    kundenservice MONEY NOT NULL,
    support MONEY NOT NULL
    -- specify more columns here
);
GO