CREATE TABLE "Gutschein" (
	"ZahlungsID"	    INTEGER NOT NULL UNIQUE,
	"Code"	          VARCHAR(15),
	"Inhabername" 	  VARCHAR(50),
	"Emailadresse"	  VARCHAR(100),
	PRIMARY KEY("ZahlungsID" AUTOINCREMENT),
	FOREIGN KEY("Emailadresse") REFERENCES "Kunde"("Emailadresse")
)

