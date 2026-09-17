-- 1. Changer la couleur d'une voiture spécifique : modifiez la couleur d'une voiture en fonction de son identifiant.

UPDATE voiture
SET couleur = 'Rouge'
WHERE id = 1;

--2. Augmenter le prix de location journalier de 10% pour toutes les voitures de plus de 5 ans.
UPDATE voiture
SET prix_location_jour = prix_location_jour * 1.10
WHERE (YEAR(CURDATE()) - annee) > 5;

--3. Réinitialiser la disponibilité : définissez `disponibilite` à 1 pour toutes les voitures dont le kilométrage est inférieur à 20 000 km.
UPDATE voiture
SET disponibilite = 1
WHERE kilometrage < 20000;

--4. Mettre à jour le kilométrage : augmentez le kilométrage d'une voiture spécifique après une location.
UPDATE voiture
SET kilometrage = kilometrage + 350
WHERE id = 1;