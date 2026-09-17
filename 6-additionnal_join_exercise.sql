-- 1. Liste des clients avec leurs voitures louées (toutes les locations)
SELECT c.nom, c.email, v.modele
FROM location l
INNER JOIN voiture v ON l.voiture_id = v.id
INNER JOIN client c ON l.client_id = c.id

-- 2. Clients qui ont loué plusieurs fois la même voiture
SELECT c.id AS client_id, c.nom, l.voiture_id, COUNT(*) AS nb_locations
FROM location l
INNER JOIN client c ON c.id = l.client_id
GROUP BY c.id, l.voiture_id
HAVING COUNT(*) > 1;


-- 3. Clients n'ayant jamais loué de voiture
SELECT c.*
FROM client c
LEFT JOIN location l ON l.client_id = c.id
WHERE l.id IS NULL;


-- 4. Clients ayant loué une voiture d'une marque spécifique (Toyota)
SELECT DISTINCT c.*
FROM client c
INNER JOIN location l ON l.client_id = c.id
INNER JOIN voiture v ON v.id = l.voiture_id
WHERE v.marque = 'Toyota';


-- 5. Liste des voitures louées avec la date de la première et la dernière location
SELECT v.id AS voiture_id, v.modele,
       MIN(l.date_location) AS premiere_location,
       MAX(l.date_location) AS derniere_location
FROM voiture v
INNER JOIN location l ON l.voiture_id = v.id
GROUP BY v.id;


-- 6. Clients ayant loué des voitures dans une période donnée
SELECT DISTINCT c.*
FROM client c
INNER JOIN location l ON l.client_id = c.id
WHERE l.date_location BETWEEN '2023-01-01' AND '2023-12-31';


-- 7. Voitures n'ayant jamais été louées
SELECT v.*
FROM voiture v
LEFT JOIN location l ON l.voiture_id = v.id
WHERE l.id IS NULL;


-- 8. Nombre total de jours loués par voiture
SELECT v.id AS voiture_id, v.modele,
       SUM(DATEDIFF(l.date_retour, l.date_location)) AS total_jours_loues
FROM voiture v
INNER JOIN location l ON l.voiture_id = v.id
GROUP BY v.id;


-- 9. Liste des clients avec le nombre de voitures différentes louées
SELECT c.id AS client_id, c.nom, COUNT(DISTINCT l.voiture_id) AS nb_voitures_differentes
FROM client c
INNER JOIN location l ON l.client_id = c.id
GROUP BY c.id;


-- 10. Voitures louées par plusieurs clients différents
SELECT v.id AS voiture_id, v.modele, COUNT(DISTINCT l.client_id) AS nb_clients_differents
FROM voiture v
INNER JOIN location l ON l.voiture_id = v.id
GROUP BY v.id
HAVING COUNT(DISTINCT l.client_id) >= 2;


-- 11. Client ayant dépensé le plus d'argent en location
SELECT c.id AS client_id, c.nom, SUM(l.prix_total) AS total_depense
FROM client c
INNER JOIN location l ON l.client_id = c.id
GROUP BY c.id
ORDER BY total_depense DESC
LIMIT 1;


-- 12. Location la plus longue pour chaque client
SELECT *
FROM (
    SELECT l.*, c.nom,
           DATEDIFF(l.date_retour, l.date_location) AS duree,
           ROW_NUMBER() OVER (PARTITION BY l.client_id ORDER BY DATEDIFF(l.date_retour, l.date_location) DESC) AS rang
    FROM location l
    INNER JOIN client c ON c.id = l.client_id
) AS classement
WHERE rang = 1;


-- 13. Liste des voitures ayant été louées plusieurs fois avec les dates de la première et dernière location
SELECT v.id AS voiture_id, v.modele,
       MIN(l.date_location) AS premiere_location,
       MAX(l.date_location) AS derniere_location,
       COUNT(*) AS nb_locations
FROM voiture v
INNER JOIN location l ON l.voiture_id = v.id
GROUP BY v.id
HAVING COUNT(*) >= 2;


-- 14. Nombre de jours total de location pour chaque client
SELECT c.id AS client_id, c.nom,
       SUM(DATEDIFF(l.date_retour, l.date_location)) AS total_jours
FROM client c
INNER JOIN location l ON l.client_id = c.id
GROUP BY c.id;


-- 15. Voitures louées uniquement par un seul client
SELECT v.id AS voiture_id, v.modele
FROM voiture v
INNER JOIN location l ON l.voiture_id = v.id
GROUP BY v.id
HAVING COUNT(DISTINCT l.client_id) = 1;


-- 16. Nombre moyen de jours de location par client
SELECT c.id AS client_id, c.nom,
       AVG(DATEDIFF(l.date_retour, l.date_location)) AS moyenne_jours
FROM client c
INNER JOIN location l ON l.client_id = c.id
GROUP BY c.id;


-- 17. Clients ayant loué des voitures de différentes marques
SELECT c.id AS client_id, c.nom, COUNT(DISTINCT v.marque) AS nb_marques_differentes
FROM client c
INNER JOIN location l ON l.client_id = c.id
INNER JOIN voiture v ON v.id = l.voiture_id
GROUP BY c.id
HAVING COUNT(DISTINCT v.marque) > 1;


-- 18. Client ayant loué le plus grand nombre de voitures différentes
SELECT c.id AS client_id, c.nom, COUNT(DISTINCT l.voiture_id) AS nb_voitures_differentes
FROM client c
INNER JOIN location l ON l.client_id = c.id
GROUP BY c.id
ORDER BY nb_voitures_differentes DESC
LIMIT 1;


-- 19. Location la plus chère pour chaque client
SELECT *
FROM (
    SELECT l.*, c.nom,
           ROW_NUMBER() OVER (PARTITION BY l.client_id ORDER BY l.prix_total DESC) AS rang
    FROM location l
    INNER JOIN client c ON c.id = l.client_id
) AS classement
WHERE rang = 1;


-- 20. Clients ayant loué des voitures sur une durée moyenne supérieure à 7 jours
SELECT c.id AS client_id, c.nom,
       AVG(DATEDIFF(l.date_retour, l.date_location)) AS moyenne_jours
FROM client c
INNER JOIN location l ON l.client_id = c.id
GROUP BY c.id
HAVING AVG(DATEDIFF(l.date_retour, l.date_location)) > 7;