-- REQUETE DE SELECTION

-- 1. Rechercher une voiture par modèle et par couleur
SELECT *
FROM voiture v
WHERE v.modele = 'Civic'
AND v.couleur = 'Noir';


-- 2. Voitures les plus anciennes du parc (top 3)
SELECT *
FROM voiture v
ORDER BY v.annee ASC
LIMIT 3;

-- 3. Rechercher les voitures dont le prix d'achat est supérieur à la moyenne des prix d'achat de toutes les voitures
SELECT *
FROM voiture v
WHERE v.prix_achat > (
    SELECT AVG(v.prix_achat)
    FROM voiture v);

-- 4. Rechercher les voitures disponibles à la location, triées par prix de location par jour
SELECT *
FROM voiture v
WHERE v.disponibilite = 1
ORDER BY v.prix_location_jour;

-- 5. Rechercher le nombre de voitures par marque
SELECT v.marque, COUNT(*)
FROM voiture v
GROUP BY v.marque;

-- 6. Rechercher les voitures de couleur bleue avec un prix d'achat supérieur à 10000
SELECT *
FROM voiture v
WHERE v.couleur = 'Bleu'
AND v.prix_achat > 10000;

-- 7. Rechercher les voitures avec un prix d'achat supérieur à 30000 et un prix de location par jour supérieur à 500
SELECT *
FROM voiture v
WHERE v.prix_achat > 30000
AND v.prix_location_jour > 500;

-- 8. Rechercher les voitures pour lesquelles le ratio prix d'achat/prix de location par jour est supérieur à 50
SELECT *
FROM voiture v
WHERE (v.prix_achat / v.prix_location_jour) > 50;

-- 9. Rechercher les voitures dont l'année de fabrication est impaire
SELECT *
FROM voiture v
WHERE MOD(v.annee, 2) = 1;

-- 10. TOP 5 des voitures les moins cheres à la location
SELECT *
FROM voiture v
ORDER BY v.prix_location_jour ASC
LIMIT 5;

-- 11. Marques disponibles avec des voitures ayant moins de 100 000 km
SELECT DISTINCT v.marque
FROM voiture v
WHERE v.kilometrage < 100000;

-- 12. **A ESSAYER APRES AVOIR AJOUTER LES AUTRES TABLES** Voitures ayant été louées au moins une fois
SELECT DISTINCT v.*
FROM voiture v
INNER JOIN location l ON l.voiture_id = v.id;

--13. Dernières voiture ajoutée dans le parc
SELECT *
FROM voiture v
ORDER BY v.date_ajout DESC
LIMIT 10;

-- 14. Voitures avec un prix d'achat dans les 20% les plus chers
SELECT *
FROM (SELECT *,
      NTILE(5) OVER (ORDER BY prix_achat DESC) AS groupe 
      FROM voiture v) AS classement
WHERE classement.groupe = 1;

-- 15. Couleur de voitures les plus populaires
SELECT v.couleur, COUNT(*) AS nb_voiture
FROM voiture v
GROUP BY v.couleur
ORDER BY nb_voiture DESC;

-- 16.Rechercher une voiture par un intervalle de kilométrage
SELECT *
FROM voiture v
WHERE v.kilometrage BETWEEN 50000 AND 100000;

-- 17. Rechercher les voitures avec un prix de location par jour inférieur à la moyenne
SELECT *
FROM voiture v
WHERE v.prix_location_jour < (
    SELECT AVG(v.prix_location_jour)
    FROM voiture v);

--18. Écart entre le prix d'achat et le prix de location
SELECT v.id, v.marque, v.modele, (v.prix_achat - v.prix_location_jour) AS ecart
FROM voiture v;

-- 19. Rechercher les voitures disponibles à la location et dont l'année de fabrication est supérieure à 2015
SELECT *
FROM voiture v
WHERE v.disponibilite = 1
AND v.année > 2015;

--20. Recherche de voiture en fonction de plusieurs critères
SELECT *
FROM voiture v
WHERE v.marque = 'Toyota'
AND v.prix_location_jour < 100
AND v.kilometrage < 10000;