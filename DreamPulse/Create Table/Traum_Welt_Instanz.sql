CREATE TABLE [dbo].[Traum_Welt_Instanz]
(
    instnaz_guid UNIQUEIDENTIFIER PRIMARY KEY,
    welt_id INT,
    aktive_user INT,
    daytime VARCHAR(50),
    FOREIGN KEY (welt_id) REFERENCES traum_welt(welt_id)
);
