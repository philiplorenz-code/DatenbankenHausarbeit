BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Anbieter" (
	"AnbieterID"	INTEGER NOT NULL UNIQUE,
	"Name"	VARCHAR(100),
	"Trustscore"	INTEGER,
	"Website"	VARCHAR(50),
	"Emailadresse"	VARCHAR(50),
	PRIMARY KEY("AnbieterID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Bestellung" (
	"BestellID"	INTEGER NOT NULL UNIQUE,
	"Rechnungsbetrag"	REAL,
	"Lieferdatum"	DATE,
	"Bestelldatum"	DATE,
	"Lieferstatus"	VARCHAR(30),
	"Emailadresse"	VARCHAR(100),
	"ZahlungsID"	INTEGER,
	PRIMARY KEY("BestellID" AUTOINCREMENT),
	FOREIGN KEY("ZahlungsID") REFERENCES "Zahlungsmethode"("ZahlungsID"),
	FOREIGN KEY("Emailadresse") REFERENCES "Kunde"("Emailadresse")
);
CREATE TABLE IF NOT EXISTS "Produkt" (
	"ProduktID"	INTEGER NOT NULL UNIQUE,
	"Name"	VARCHAR(50),
	"Beschreibungstext"	VARCHAR(250),
	"Preis"	REAL,
	"Produktbild"	VARCHAR(250),
	"AnbieterID"	INTEGER,
	PRIMARY KEY("ProduktID" AUTOINCREMENT),
	FOREIGN KEY("AnbieterID") REFERENCES "Anbieter"("AnbieterID")
);
CREATE TABLE IF NOT EXISTS "Waehlt" (
	"Emailadresse"	VARCHAR(100),
	"ProduktID"	INTEGER,
	FOREIGN KEY("ProduktID") REFERENCES "Produkt"("ProduktID"),
	FOREIGN KEY("Emailadresse") REFERENCES "Kunde"("Emailadresse")
);
CREATE TABLE IF NOT EXISTS "Bewertung" (
	"BewertungID"	INTEGER NOT NULL UNIQUE,
	"Bewertungstitel"	VARCHAR(50),
	"Alter"	INTEGER,
	"Bewertungstext"	VARCHAR(250),
	"Datum"	DATE,
	"Emailadresse"	VARCHAR(100),
	"ProduktID"	INTEGER,
	"Punkte"	INTEGER,
	PRIMARY KEY("BewertungID" AUTOINCREMENT),
	FOREIGN KEY("Emailadresse") REFERENCES "Kunde"("Emailadresse"),
	FOREIGN KEY("ProduktID") REFERENCES "Produkt"("ProduktID")
);
CREATE TABLE IF NOT EXISTS "Beinhaltet" (
	"ProduktID"	INTEGER,
	"BestellID"	INTEGER,
	FOREIGN KEY("ProduktID") REFERENCES "Produkt"("ProduktID"),
	FOREIGN KEY("BestellID") REFERENCES "Bestellung"("BestellID")
);
CREATE TABLE IF NOT EXISTS "Kunde" (
	"Emailadresse"	VARCHAR(100) NOT NULL UNIQUE,
	"Telefonnummer"	VARCHAR(30),
	"Vorname"	VARCHAR(50),
	"Nachname"	VARCHAR(50),
	"Passwort"	VARCHAR(100),
	"Postleitzahl"	VARCHAR(10),
	"Strasse"	VARCHAR(50),
	"Hausnummer"	INTEGER,
	"Adresszusatz"	VARCHAR(50),
	PRIMARY KEY("Emailadresse")
);
CREATE TABLE IF NOT EXISTS "Zahlungsmethode" (
	"ZahlungsID"	INTEGER NOT NULL UNIQUE,
	"Zahlungsart"	VARCHAR(50),
	"Inhabername"	VARCHAR(50),
	"Emailadresse"	VARCHAR(100),
	"IBAN"	VARCHAR(30),
	"Kontoadresse"	VARCHAR(30),
	"Kartennummer"	VARCHAR(30),
	"CVV"	INTEGER,
	"Code"	VARCHAR(15),
	PRIMARY KEY("ZahlungsID" AUTOINCREMENT),
	FOREIGN KEY("Emailadresse") REFERENCES "Kunde"("Emailadresse")
);
INSERT INTO "Anbieter" VALUES (2,'Moebel GmbH',10,'moebel-gmbh.de','service@moebel-gmbh.de');
INSERT INTO "Anbieter" VALUES (3,'Adidas',10,'adidas.de','info@adidas');
INSERT INTO "Anbieter" VALUES (4,'FanartikelShop',10,'shop.fanartikel.de','request@fanartikel.de');
INSERT INTO "Anbieter" VALUES (5,'Angelzubehoer',10,'angel-zubehoer.de','ticket@angel-zubehoer.de');
INSERT INTO "Anbieter" VALUES (6,'Dampfershop',10,'dampfer-shop.de','service@dampfer-shop.de');
INSERT INTO "Bestellung" VALUES (1,'32.33','29.11.2021','26.11.2021','Geliefert','hendrik.schmitt@web.de',1);
INSERT INTO "Bestellung" VALUES (2,'09.70','19.11.2021','15.11.2021','Retoure','philip.lorenz@web.de',2);
INSERT INTO "Bestellung" VALUES (3,'15.00','12.11.2021','09.11.2021','In Zustellung','jens.schmalen@gmx.de',3);
INSERT INTO "Bestellung" VALUES (4,'39.90','11.11.2021','05.11.2021','Geliefert','max-mustermann@protonmail.com',4);
INSERT INTO "Bestellung" VALUES (5,'220.00','15.12.2021','09.12.2021','Auftragsverarbeitung','helga-maier@mail.de',5);
INSERT INTO "Produkt" VALUES (1,'Sportshirt','Atmungsaktives Sportshirt','39.90','amazon-marketplace.com/shirt.png',3);
INSERT INTO "Produkt" VALUES (2,'Lampe','Grosse Stehlampe. Geeignet für Wohnzimmer.','220.00','amazon-marketplace.com/lampe.png',2);
INSERT INTO "Produkt" VALUES (3,'Fan-Sticker','Individuelle Fansticker. 20er Pack.','15.00','amazon-marketplace.com/ind-sticker.png',4);
INSERT INTO "Produkt" VALUES (4,'Angelhaken - 3er Pack','Profi-Angelhaken','09.70','amazon-marketplace.com/haken3er.png',5);
INSERT INTO "Produkt" VALUES (5,'Vape','','33.33','amazon-marketplace.com/vape.png',6);
INSERT INTO "Waehlt" VALUES ('helga-maier@mail.de',2);
INSERT INTO "Waehlt" VALUES ('max-mustermann@protonmail.com',1);
INSERT INTO "Waehlt" VALUES ('jens.schmalen@gmx.de',3);
INSERT INTO "Waehlt" VALUES ('philip.lorenz@web.de',4);
INSERT INTO "Waehlt" VALUES ('hendrik.schmitt@web.de',5);
INSERT INTO "Bewertung" VALUES (1,'Super Shirt',40,'Shirt sitzt super! Wirkt außerdem sehr hochwertig - auch nach dem ersten Waschgang','20.10.2021','max-mustermann@protonmail.com',1,5);
INSERT INTO "Bewertung" VALUES (2,'Sticker lösen sich schnell!',50,'Sticker lösen sich leider bereits nach wenigen Tagen...nicht weiterzuempfehlen!','10.10.2021','jens.schmalen@gmx.de',3,2);
INSERT INTO "Bewertung" VALUES (3,'Vape dampft gut',60,'Kann ich weiterempfehlen','30.09.2020','hendrik.schmitt@web.de',5,4);
INSERT INTO "Bewertung" VALUES (4,'Angelhaken wunderbar',64,'Aller super!','26.09.2020','philip.lorenz@web.de',4,5);
INSERT INTO "Bewertung" VALUES (5,'Lampe hält, was sie verspricht, aaaaber..',68,'...manchmal geht sie einfach aus. Muss dann aus- und wieder eingeschaltet werden','22.09.2020','helga-maier@mail.de',2,4);
INSERT INTO "Beinhaltet" VALUES (5,1);
INSERT INTO "Beinhaltet" VALUES (4,2);
INSERT INTO "Beinhaltet" VALUES (3,3);
INSERT INTO "Beinhaltet" VALUES (2,4);
INSERT INTO "Beinhaltet" VALUES (1,5);
INSERT INTO "Kunde" VALUES ('hendrik.schmitt@web.de','015219211922','Hendrik','Schmitt','32597832jlkbnrwejn124','06385','Eschenweg',12,'a');
INSERT INTO "Kunde" VALUES ('philip.lorenz@web.de','06920436149','Philip','Lorenz','3dfj7832jlkbnrwejn124','09217','Ringstrasse',16,'');
INSERT INTO "Kunde" VALUES ('jens.schmalen@gmx.de','030214802537','Jens','Schmalen','32579s32jlkbnrwejn124','97794','Burgstrasse',4,'');
INSERT INTO "Kunde" VALUES ('max-mustermann@protonmail.com','030214802538','Max','Mustermann','325sdhf2jlkbnrwejn124','49808','Fliederweg',42,'a');
INSERT INTO "Kunde" VALUES ('helga-maier@mail.de','080020033407','Helga','Maier','32597832jlkjrwesgjn124','73760','Nelkenweg',113,'');
INSERT INTO "Zahlungsmethode" VALUES (1,'PayPal','Hendrik Schmitt','hendrik.schmitt@web.de','','hendrik.schmitt@web.de','','','');
INSERT INTO "Zahlungsmethode" VALUES (2,'SEPA','Philip Lorenz','philip.lorenz@web.de','GB33BUKB20201555555555','','','','');
INSERT INTO "Zahlungsmethode" VALUES (3,'Kreditkarte','Jens Schmalen','jens.schmalen@gmx.de','','','4012888888881881',543,'');
INSERT INTO "Zahlungsmethode" VALUES (4,'Gutschein','Max Mustermann','max-mustermann@protonmail.com','','','','','AMP-FBJ1285F');
INSERT INTO "Zahlungsmethode" VALUES (5,'SEPA','Helga Maier','helga-maier@mail.de','GB33BUKB20201555553333','','','','');
COMMIT;
