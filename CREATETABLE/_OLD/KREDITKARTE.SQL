CREATE TABLE "Kreditkarte" (
	"ZahlungsID"	    INTEGER NOT NULL UNIQUE,
	"Inhabername"	    VARCHAR(50),
	"Kartennummer"	  VARCHAR(30),
	"CVV"	            INTEGER,
	"Emailadresse"	  VARCHAR(100),
	PRIMARY KEY("ZahlungsID" AUTOINCREMENT),
	FOREIGN KEY("Emailadresse") REFERENCES "Kunde"("Emailadresse")
)




