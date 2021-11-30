CREATE TABLE "SEPA" (
	"ZahlungsID"	    INTEGER NOT NULL UNIQUE,
	"IBAN"	          VARCHAR(30),
	"Inhabername"	    VARCHAR(50),
	"Emailadresse"	  VARCHAR(100),
	PRIMARY KEY("ZahlungsID" AUTOINCREMENT),
	FOREIGN KEY("Emailadresse") REFERENCES "Kunde"("Emailadresse")
)

