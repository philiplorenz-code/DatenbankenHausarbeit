CREATE TABLE "Zahlungsmethode" (
	"ZahlungsID"	    INTEGER NOT NULL UNIQUE,
	"Zahlungsart"	    VARCHAR(50),
	"Inhabername"	    VARCHAR(50),
	"Emailadresse"	  VARCHAR(100),
	"IBAN"	          VARCHAR(30),
	"Kontoadresse"		VARCHAR(30),
	"Kartennummer"	  VARCHAR(30),
	"CVV"	            INTEGER,
	"Code"	          VARCHAR(15),
	PRIMARY KEY("ZahlungsID" AUTOINCREMENT),
	FOREIGN KEY("Emailadresse") REFERENCES "Kunde"("Emailadresse")
)
