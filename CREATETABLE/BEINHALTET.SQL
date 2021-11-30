CREATE TABLE "Beinhaltet" (
	"ProduktID"	    INTEGER,
  "BestellID"     INTEGER,
  FOREIGN KEY("ProduktID") REFERENCES "Produkt"("ProduktID")
  FOREIGN KEY("BestellID") REFERENCES "Bestellung"("BestellID")
)
