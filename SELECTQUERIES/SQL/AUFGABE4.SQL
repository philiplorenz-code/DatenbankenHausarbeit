-- Aufgabe 4: 
-- Amazon Marketplace updated sein Anti-Fraud-System. 
-- Bevor sie durch die neue Sicherheitsrichtlinie
-- Punkte auf ihrem Trust-Score Konto abgezogen bekommen, 
-- müssen alle Anbieter mit einem Trustscore unter 40 ermittelt werden, 
-- die Produkte anbieten, welchen kein Bild zugeordnet ist. Konkret sollen
-- die Mails, der entsprechenden Anbieter ermittelt werden, da an die Query
-- anknüpfend automatisiert eine Mail an die Anbieter gesendet werden soll,
-- sodass diese ihren Produkten Bilder hinzufügen können, bevor ihr Trustscore negativ
-- belastet wird

SELECT Anbieter.Emailadresse
FROM Produkt

INNER JOIN Anbieter
ON Anbieter.AnbieterID = Produkt.AnbieterID

WHERE Produkt.Produktbild = '' AND Anbieter.Trustscore < 40
