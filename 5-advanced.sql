--1. Total des revenus générés par chaque voiture
SELECT l.voiture_id, v.marque, v.modele, SUM(l.prix_total)
FROM location l
INNER JOIN voiture v ON l.voiture_id = v.id
GROUP BY l.voiture_id;

--2. Voitures les plus rentables
SELECT l.voiture_id, v.marque, v.modele, SUM(l.prix_total) AS revenu_total
FROM location l
INNER JOIN voiture v ON l.voiture_id = v.id
GROUP BY l.voiture_id
ORDER BY revenu_total DESC
LIMIT 5;

--3. Durée moyenne des locations par voiture
SELECT l.voiture_id, v.marque, v.modele,
       AVG(DATEDIFF(l.date_retour, l.date_location)) AS duree_moyenne_jours
FROM location l
INNER JOIN voiture v ON l.voiture_id = v.id
GROUP BY l.voiture_id;

--4. Taux d'occupation des voitures

SELECT l.voiture_id, v.marque, v.modele,
       ROUND(
           SUM(DATEDIFF(l.date_retour, l.date_location)) 
           / DATEDIFF(CURDATE(), MAKEDATE(v.annee, 1)) * 100, 2
       ) AS taux_occupation_pct
FROM location l
INNER JOIN voiture v ON l.voiture_id = v.id
GROUP BY l.voiture_id;