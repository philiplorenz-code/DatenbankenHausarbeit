-- Aufgabe 2:
-- Welche Kunden kauften ein Produkt, 
-- dessen Preis über 20€ liegt? Gib die Kunden 
-- und das jeweilig bestelle Produkt an.

SELECT Kunde.Vorname || ' ' || Kunde.Nachname AS Kundenname, Produkt.Name
FROM Produkt

INNER JOIN Beinhaltet
ON Produkt.ProduktID = Beinhaltet.ProduktID

INNER JOIN Bestellung
ON Bestellung.BestellID = Beinhaltet.BestellID

INNER JOIN Kunde
ON Kunde.Emailadresse = Bestellung.Emailadresse

WHERE Produkt.Preis > 20