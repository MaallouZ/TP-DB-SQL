--1. Supprimer une voiture spécifique en utilisant son `id`.
DELETE FROM voiture
WHERE id = 1;

--2. Supprimer toutes les voitures ayant un kilométrage supérieur à 200 000 km.
DELETE FROM voiture
WHERE kilometrage > 200000;

--3. Supprimer les voitures d'une année inférieure à 2000.
DELETE FROM voiture
WHERE annee < 2000;