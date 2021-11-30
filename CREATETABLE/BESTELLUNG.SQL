CREATE TABLE "Bestellung" (
	"BestellID"	        INTEGER NOT NULL UNIQUE,
	"Rechnungsbetrag"	  REAL,
	"Lieferdatum"	      DATE,
	"Bestelldatum"	    DATE,
	"Lieferstatus"	    VARCHAR(30),
	"Emailadresse"	    VARCHAR(100),
	"ZahlungsID"	      INTEGER,
	PRIMARY KEY("BestellID" AUTOINCREMENT),
	FOREIGN KEY("ZahlungsID") REFERENCES "Zahlungsmethode"("ZahlungsID"),
	FOREIGN KEY("Emailadresse") REFERENCES "Kunde"("Emailadresse")
)

