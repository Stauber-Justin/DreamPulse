CREATE TABLE [dbo].[Traum_Generator]
(
    schnittstellen_id INT PRIMARY KEY IDENTITY(1,1),
    schnittstellen_typ VARCHAR(50),
    kosten DECIMAL(10,2),
    kommentar TEXT
);