CREATE TABLE "Produkt" (
	"ProduktID"	        INTEGER NOT NULL UNIQUE,
	"Name"	            VARCHAR(50),
	"Beschreibungstext"	VARCHAR(250),
	"Preis"	            REAL,
	"Produktbild"	      VARCHAR(250),
	"AnbieterID"	      INTEGER,
	PRIMARY KEY("ProduktID" AUTOINCREMENT),
	FOREIGN KEY("AnbieterID") REFERENCES "Anbieter"("AnbieterID")
)





