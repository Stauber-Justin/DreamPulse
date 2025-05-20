CREATE TABLE [dbo].[Träume]
(
    traum_id INT PRIMARY KEY IDENTITY(1,1),
    kategorie_id INT,
    welt_id INT,
    fsk_id INT,
    traum_dauer INT,
    FOREIGN KEY (kategorie_id) REFERENCES traum_kategorie(kategorie_id),
    FOREIGN KEY (welt_id) REFERENCES traum_welt(welt_id),
    FOREIGN KEY (fsk_id) REFERENCES traum_fsk(fsk_id)
);
