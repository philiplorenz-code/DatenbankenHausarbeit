CREATE TABLE "Waehlt" (
	"Emailadresse"	VARCHAR(100),
	"ProduktID"	    INTEGER,
	FOREIGN KEY("Emailadresse") REFERENCES "Kunde"("Emailadresse"),
	FOREIGN KEY("ProduktID") REFERENCES "Produkt"("ProduktID")
)
