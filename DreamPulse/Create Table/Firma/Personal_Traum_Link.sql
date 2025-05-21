-- Create a new table called 'Personal_Traum_Link' in schema 'DreamPulse.'
-- Drop the table if it already exists
IF OBJECT_ID('DreamPulse..Personal_Traum_Link', 'U') IS NOT NULL
DROP TABLE DreamPulse..Personal_Traum_Link
GO
-- Create the table in the specified schema
CREATE TABLE DreamPulse..Personal_Traum_Link
(
    personal_id INT NOT NULL, -- FK
    traum_id INT NOT NULL, -- FK
    PRIMARY KEY (personal_id, traum_id)
);
GO