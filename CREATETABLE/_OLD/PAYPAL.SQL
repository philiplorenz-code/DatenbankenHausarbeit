CREATE TABLE "PayPal" (
	"ZahlungsID"			INTEGER NOT NULL UNIQUE,
	"Inhabername"			VARCHAR(50),
	"Kontoadresse"		VARCHAR(30),
	"Emailadresse"		VARCHAR(100),
	PRIMARY KEY("ZahlungsID" AUTOINCREMENT),
	FOREIGN KEY("Emailadresse") REFERENCES "Kunde"("Emailadresse")
)