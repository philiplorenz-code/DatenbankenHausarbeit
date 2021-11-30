-- Aufgabe 5:
-- Wielange dauert eine Lieferung im Schnitt? 
-- (Differenz zwischen Bestell- und Lieferdatum)

SELECT AVG(Bestellung.Lieferdatum - Bestellung.Bestelldatum) AS Lieferdauer
FROM Bestellung
