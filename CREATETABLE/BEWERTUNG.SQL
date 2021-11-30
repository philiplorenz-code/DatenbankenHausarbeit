CREATE TABLE "Bewertung" (
	"BewertungID"	    INTEGER NOT NULL UNIQUE,
	"Bewertungstitel" VARCHAR(50),
	"Alter"	          INTEGER,
	"Bewertungstext"	VARCHAR(250),
	"Datum"	          DATE,
	"Punkte"					INTEGER,
	"Emailadresse"	  VARCHAR(100),
	"ProduktID"	      INTEGER,
	PRIMARY KEY("BewertungID" AUTOINCREMENT),
	FOREIGN KEY("Emailadresse") REFERENCES "Kunde"("Emailadresse"),
	FOREIGN KEY("ProduktID") REFERENCES "Produkt"("ProduktID")
)


