--1. Liste des voitures louées avec les informations du client
SELECT c.nom, c.email, c.telephone, v.id, v.marque, v.modele, v.annee, v.kilometrage
FROM location l
INNER JOIN voiture v ON l.voiture_id = v.id
INNER JOIN client c ON l.client_id = c.id;

--2. Historique des locations d'une voiture spécifique
SELECT *
FROM location l
WHERE l.voiture_id = 12;

--3. Locations en cours pour un client spécifique
SELECT *
FROM location l
WHERE l.client_id = 5;