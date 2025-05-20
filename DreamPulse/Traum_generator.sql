CREATE TABLE [dbo].[Traum_generator]
(
  schnittstellen_id INT NOT NULL PRIMARY KEY,
  typ INT,
  kosten MONEY,
  kommentar VARCHAR(max)
)
