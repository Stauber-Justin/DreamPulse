USE DreamPulse;
GO

SET XACT_ABORT ON;
BEGIN TRANSACTION;
BEGIN TRY

    --------------------------------------------------------------------
    -- 1) Lookup-Tabellen füllen
    --------------------------------------------------------------------
    INSERT INTO DreamPulse.dbo.Positionen   (position,     gehalte) VALUES
      ('Leiter',       7000.00),
      ('Senior Dev',   5500.00),
      ('Junior Dev',   3500.00),
      ('Tester',       3000.00),
      ('Supporter',    2800.00);

    INSERT INTO DreamPulse.dbo.FSK         (fsk) VALUES (0),(6),(12),(16),(18);

    INSERT INTO DreamPulse.dbo.Status_Lookup (status_text) VALUES
      ('Aktiv'),
      ('Beendet'),
      ('Fehlerhaft'),
      ('In Warteschleife');

    INSERT INTO DreamPulse.dbo.Traum_Pass  (pass_name,preis) VALUES
      ('Basic',    9.99),
      ('Standard',19.99),
      ('Premium', 29.99),
      ('Elite',   49.99);

    --------------------------------------------------------------------
    -- 2) Adressen, Sets & Generatoren
    --------------------------------------------------------------------
    INSERT INTO DreamPulse.dbo.Adressen    (plz,ort,straße,hausnummer) VALUES
      ('10115','Berlin',    'Musterstraße','1A'),
      ('80331','München',   'Hauptstraße','12'),
      ('50667','Köln',      'Domgasse','3'),
      ('20095','Hamburg',   'Reeperbahn','24'),
      ('70173','Stuttgart', 'Büchsenstraße','5');

    INSERT INTO DreamPulse.dbo.Element_Set (set_id,set_name,beschreibung) VALUES
      (1,'Wald-Sammlung','Baum, Pilz, Vogelgesang'),
      (2,'Stadt-Sammlung','Straße, Laterne, Verkehr'),
      (3,'Traum-Sammlung','Nebel, Lichtblitze, Schatten'),
      (4,'Cyber-Sammlung','Neonlichter, Digitalschrift');

    INSERT INTO DreamPulse.dbo.Generator_Speziell (max_gewicht,max_höhe,max_kopfumfang) VALUES
      (50,180,60),
      (30,150,55),
      (70,200,65),
      (40,160,58);

    --------------------------------------------------------------------
    -- 3) Abteilung & Personal (Eltern für Träume)
    --------------------------------------------------------------------
    INSERT INTO DreamPulse.dbo.Abteilung    (abteilungs_leiter,abteilungs_name,anzahl_mitarbeiter) VALUES
      (NULL,'Traumforschung',     5),
      (NULL,'Simulations-Tech',   7),
      (NULL,'Qualitätskontrolle', 4),
      (NULL,'Kundenservice',      6);

    -- Personal muss nach Abteilung und Adressen kommen:
    INSERT INTO DreamPulse.dbo.Personal     (abteilung,position,adresse,nachname,vorname) VALUES
      (1,'Leiter',     1,'Klein','Karl'),
      (2,'Senior Dev', 2,'Gross','Gisela'),
      (3,'Junior Dev', 3,'Schwarz','Stefan'),
      (4,'Tester',     4,'Weiss','Ulrike'),
      (1,'Supporter',  5,'Braun','Thomas');

    --------------------------------------------------------------------
    -- 4) Welt, Kategorie & Träume
    --------------------------------------------------------------------
    INSERT INTO DreamPulse.dbo.Traum_Welt   (element_set_id,welt_name,tag_nacht_zyklus) VALUES
      (1,'Nebelland',     1),
      (2,'Sterneninsel',  0),
      (3,'Untertempel',   1),
      (4,'Cyber-Wüste',   0);

    INSERT INTO DreamPulse.dbo.Traum_Kategorie (titel,beschreibung,preis,genre) VALUES
      ('Albtraum','Intensive, furchteinflößende Szenarien',199.99,'Horror'),
      ('Luzid',   'Volle Traumkontrolle',               299.99,'Fantasy'),
      ('Abenteuer','Epische Quests',                    249.99,'Action'),
      ('Romantik','Gefühlvolle Erlebnisse',             159.99,'Drama'),
      ('Comedy',  'Lustige, absurde Situationen',       129.99,'Humor');

    INSERT INTO DreamPulse.dbo.Träume      (kategorie_id,welt_id,fsk_id,traum_erbauer,traum_dauer) VALUES
      (1,1,16,1,30),
      (2,2,12,2,45),
      (3,3,18,3,60),
      (4,4,6,4,20);

    --------------------------------------------------------------------
    -- 5) Instanzen, Links, Bewertungen, Kommentare
    --------------------------------------------------------------------
    INSERT INTO DreamPulse.dbo.Traum_Welt_Instanz (welt_id,aktive_user,daytime) VALUES
      (1,3,'22:00'),
      (2,5,'07:30'),
      (3,2,'14:15'),
      (4,4,'03:45');

    -- Traum_Instanz (Zufallszuweisung der Welt-GUIDs):
    DECLARE @w1 UNIQUEIDENTIFIER = (SELECT TOP 1 welt_guid FROM DreamPulse.dbo.Traum_Welt_Instanz ORDER BY NEWID());
    DECLARE @w2 UNIQUEIDENTIFIER = (SELECT TOP 1 welt_guid FROM DreamPulse.dbo.Traum_Welt_Instanz ORDER BY NEWID());
    INSERT INTO DreamPulse.dbo.Traum_Instanz (traum_id,welt_guid,status_id,verbleibende_dauer) VALUES
      (1,@w1,1,30),
      (2,@w1,2,0),
      (3,@w2,1,60),
      (4,@w2,3,0);

      -- Generator
      INSERT INTO 
        DreamPulse..Traum_generator (schnittstellen,generator_typ, preis,kommentar)
        VALUES 
            ('Gear', 1,1000.00, 'Wear'),
            ('Bett', 2,3500.00, 'sleep'),
            ('Getränk', 3,200.00, 'drink'),
            ('Brille', 1,800.00, 'wear'),
            ('Kissen', 2,500.00, 'sleep');


    -- Träumer
    INSERT INTO DreamPulse.dbo.Träumer     (address_id,traum_pass,fsk_id,schnittstelle,nachname,vorname) VALUES
      (1,'Basic',12,'Gear','Müller','Anna'),
      (2,'Standard',16,'Bett','Schmidt','Bernd'),
      (3,'Premium',18,'Gear','Weber','Claudia'),
      (4,'Elite',0,'Kissen','Fischer','Dieter'),
      (5,'Basic',6,'Kissen','Becker','Eva');


    -- Bewertungen
    INSERT INTO DreamPulse.dbo.Bewertungen (kunden_id,traum_id,welt_id,bewertung) VALUES
      (101,1,1,4.50),
      (102,2,2,3.75),
      (103,3,3,5.00),
      (104,4,4,2.25),
      (105,1,1,4.00);

    -- Kommentare
    INSERT INTO DreamPulse.dbo.Kommentare  (kunden_id,traum_id,welt_id,kommentare) VALUES
      (101,1,1,'Sehr intensiv!'),
      (102,2,2,'Fantastisch kontrollierbar.'),
      (103,3,3,'Spannend aber gruselig.'),
      (104,4,4,'Zu kurz.'),
      (105,1,1,'Wiederholenswert.');

    -- Links: Personal ↔ Träume
    INSERT INTO DreamPulse.dbo.Personal_Traum_Link (personal_id,traum_id) VALUES
      (1,1),(1,2),
      (2,3),(3,1),
      (4,4),(5,2);

    --------------------------------------------------------------------
    -- 6) Commit
    --------------------------------------------------------------------
    COMMIT TRANSACTION;
    PRINT '► Alle Inserts erfolgreich!';

END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    PRINT '❌ Fehler bei Inserts: ' + ERROR_MESSAGE();
END CATCH;
GO
