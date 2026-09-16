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

