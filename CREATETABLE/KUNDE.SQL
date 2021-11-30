CREATE TABLE "Kunde" (
	"Emailadresse"	    VARCHAR(100) NOT NULL UNIQUE,
	"Telefonnummer"	    VARCHAR(30),
	"Vorname" 	        VARCHAR(50),
	"Nachname" 	        VARCHAR(50),
	"Passwort"	        VARCHAR(100),
	"Postleitzahl"	    VARCHAR(10),
	"Strasse"	          VARCHAR(50),
	"Hausnummer"	      INTEGER,
	"Adresszusatz"	    VARCHAR(50),
	PRIMARY KEY("Emailadresse")
)