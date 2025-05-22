DROP TABLE IF EXISTS DreamPulse..Träumer;
CREATE TABLE DreamPulse..[Träumer]
(
  kunden_id INT IDENTITY(101,1) PRIMARY KEY,
  address_id INT NOT NULL, --FK
  traum_pass NVARCHAR(42) NOT NULL, -- FK
  fsk_id TINYINT NOT NULL, -- FK
  schnittstelle NVARCHAR(60) NOT NULL, -- FK
  nachname NVARCHAR(100) NOT NULL,
  vorname NVARCHAR(100) NOT NULL
);