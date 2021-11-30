--Aufgabe 1: 
--Es gibt eine allgemeine Störung bei den PayPal-Zahlungen. 
--Der Automatismus zum Deaktivieren zur Zahlungsmethode hat aber 
--nicht gegriffen, weshalb Kunden weiterhin auf die Methode zugreifen konnten 
--(diese hat im Hintergrund aber nicht mehr funktioniert, 
--weshalb die Zahlungstransaktionen nicht abgeschlossen werden konnten). 
--Finde heraus welche Bestellungen am 29.11.2021 mittels PayPal durchgeführt 
--wurden, sodass eine Korrektur im System vorgenommen werden kann.

SELECT 
Bestellung.Bestelldatum, 
Zahlungsmethode.Zahlungsart, 
Zahlungsmethode.Emailadresse

FROM Bestellung

INNER JOIN Zahlungsmethode
ON Bestellung.ZahlungsID = Zahlungsmethode.ZahlungsID

WHERE Zahlungsmethode.Zahlungsart = 'PayPal'
AND Bestellung.Bestelldatum = '26.11.2021'

