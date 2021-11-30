-- Aufgabe 3: 
-- Was ist der durchschnittliche Bestellwert? 
-- Welche Kunden liegen darüber?

SELECT Kunde.Emailadresse, Kunde.Vorname, Kunde.Nachname 

FROM Bestellung

INNER JOIN Kunde
ON Kunde.Emailadresse = Bestellung.Emailadresse

WHERE Bestellung.Rechnungsbetrag > (
  SELECT AVG(Rechnungsbetrag) 
  FROM Bestellung
)


