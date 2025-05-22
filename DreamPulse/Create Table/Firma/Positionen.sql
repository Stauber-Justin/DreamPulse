-- Create a new table called 'Positionen' in schema 'DreamPulse.'
-- Drop the table if it already exists
IF OBJECT_ID('DreamPulse..Positionen', 'U') IS NOT NULL
DROP TABLE DreamPulse..Positionen
GO
-- Create the table in the specified schema
CREATE TABLE DreamPulse..Positionen
(
    position VARCHAR(42) PRIMARY KEY, -- primary key column
    gehalte MONEY NOT NULL
);
GO