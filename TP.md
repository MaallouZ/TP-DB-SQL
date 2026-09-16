# Exercice : Gestion des Voitures

Vous devez créer une base de données qui gère des informations sur un parc de voitures. Chaque voiture aura un identifiant unique, des caractéristiques spécifiques, ainsi que des informations liées à la location et à l'entretien.

## Informations à stocker sur chaque voiture

| Colonne | Description |
|---|---|
| `id` | Identifiant unique de la voiture (clé primaire) |
| `marque` | La marque de la voiture (ex : Toyota, Honda, etc.) |
| `modele` | Le modèle de la voiture (ex : Corolla, Civic, etc.) |
| `annee` | Année de fabrication |
| `kilometrage` | Kilométrage actuel de la voiture |
| `couleur` | Couleur de la voiture |
| `prix_achat` | Prix d'achat de la voiture |
| `prix_location_jour` | Tarif de location par jour |
| `disponibilite` | Indique si la voiture est disponible pour location (1 pour oui, 0 pour non) |

---

## 1. Création de la Table

Créez une table nommée `voiture` pour stocker les informations listées ci-dessus.

## 2. Insertion de Données

Ajoutez au moins 15 voitures dans la table `voiture` avec des valeurs variées pour chaque colonne.

## 3. Requêtes de Sélection

1. **Rechercher une voiture par modèle et par couleur**
   Sélectionnez les voitures d'un modèle et d'une couleur spécifiques (ex. modèle = 'Civic' et couleur = 'Rouge').

2. **Voitures les plus anciennes du parc**
   Sélectionnez les voitures les plus anciennes (en utilisant la colonne `annee`), par exemple les 3 plus anciennes.

3. **Voitures dont le prix d'achat est supérieur à une valeur moyenne**
   Sélectionnez les voitures dont le `prix_achat` est supérieur au prix moyen de toutes les voitures.

4. **Liste des voitures disponibles par prix de location croissant**
   Affichez uniquement les voitures disponibles (`disponibilite = 1`) et triez-les par `prix_location_jour` dans l'ordre croissant.

5. **Nombre de voitures par marque**
   Comptez combien de voitures il y a pour chaque marque, et affichez la marque avec le nombre total de voitures associées.

6. **Voitures ayant une couleur spécifique et un prix d'achat au-dessus d'un certain montant**
   Sélectionnez les voitures ayant une couleur spécifique (ex : Bleu) et un `prix_achat` supérieur à 10 000.

7. **Rechercher les voitures avec une valeur d'achat et une valeur de location élevées**
   Sélectionnez les voitures dont le `prix_achat` est supérieur à 30 000 et dont le `prix_location_jour` est supérieur à 500.

8. **Voitures ayant une différence significative entre le prix d'achat et le prix de location**
   Sélectionnez les voitures dont le rapport `prix_achat / prix_location_jour` est supérieur à une valeur donnée (ex : 50).

9. **Voitures ayant une année de fabrication impaire**
   Sélectionnez toutes les voitures dont l'année de fabrication est un nombre impair.

10. **Top 5 des voitures les moins chères à la location**
    Sélectionnez les 5 voitures ayant le prix de location journalier le plus bas.

11. **Marques disponibles avec des voitures ayant moins de 100 000 km**
    Affichez uniquement les marques des voitures ayant un kilométrage inférieur à 100 000 km et qui sont disponibles pour location.

12. **Voitures ayant été louées au moins une fois**
    Écrivez une requête pour sélectionner les voitures qui apparaissent dans la table `location` au moins une fois.

13. **Dernières voitures ajoutées dans le parc**
    Affichez les 10 dernières voitures ajoutées en fonction de leur `id` ou de leur `annee` si cela correspond à l'année d'achat.

14. **Voitures avec un prix d'achat dans les 20% les plus chers**
    Sélectionnez les voitures dans le top 20% des prix d'achat les plus élevés.

15. **Couleurs de voitures les plus populaires**
    Comptez le nombre de voitures par couleur et triez le résultat de la plus commune à la moins commune.

16. **Rechercher une voiture par un intervalle de kilométrage**
    Sélectionnez les voitures ayant un kilométrage compris entre 50 000 et 100 000 km.

17. **Voitures dont le prix de location est inférieur à la moyenne des prix de location**
    Sélectionnez toutes les voitures ayant un `prix_location_jour` inférieur au prix de location moyen de toutes les voitures.

18. **Écart entre le prix d'achat et le prix de location**
    Affichez l'écart entre `prix_achat` et `prix_location_jour` pour chaque voiture, en calculant une nouvelle colonne nommée `ecart`.

19. **Voitures disponibles en fonction d'une année minimum**
    Sélectionnez les voitures disponibles pour la location ayant une `annee` supérieure à une certaine valeur (ex : 2015).

20. **Recherche de voiture en fonction de plusieurs critères**
    Créez une requête pour sélectionner des voitures correspondant aux critères : `marque = 'Toyota'`, `prix_location_jour < 100`, et `kilometrage < 10000`.

## 4. Mise à Jour des Données

Écrivez des requêtes SQL pour :

- Changer la couleur d'une voiture spécifique : modifiez la couleur d'une voiture en fonction de son identifiant.
- Augmenter le prix de location journalier de 10% pour toutes les voitures de plus de 5 ans.
- Réinitialiser la disponibilité : définissez `disponibilite` à 1 pour toutes les voitures dont le kilométrage est inférieur à 20 000 km.
- Mettre à jour le kilométrage : augmentez le kilométrage d'une voiture spécifique après une location.

## 5. Suppression de Données

Écrivez des requêtes SQL pour :

- Supprimer une voiture spécifique en utilisant son `id`.
- Supprimer toutes les voitures ayant un kilométrage supérieur à 200 000 km.
- Supprimer les voitures d'une année inférieure à 2000.

## 6. Création de Relations et Contraintes

### Table `client`

Créez une table `client` pour enregistrer les clients qui louent des voitures, avec les colonnes suivantes :

| Colonne | Description |
|---|---|
| `id` | Identifiant unique du client |
| `nom` | Nom du client |
| `email` | Email du client |
| `telephone` | Numéro de téléphone |

### Table `location`

Créez une table `location` pour gérer les locations de voitures, avec les colonnes suivantes :

| Colonne | Description |
|---|---|
| `id` | Identifiant unique de la location |
| `voiture_id` | Identifiant de la voiture louée (clé étrangère vers `voiture`) |
| `client_id` | Identifiant du client (clé étrangère vers `client`) |
| `date_location` | Date de début de la location |
| `date_retour` | Date de retour prévue |
| `prix_total` | Prix total de la location (basé sur `prix_location_jour` et la durée de location) |

### Contraintes

Ajoutez des contraintes pour garantir :

- Qu'un client ne peut louer qu'une seule voiture à la fois.
- Que les dates de retour sont postérieures aux dates de location.
- Qu'une voiture ne peut être louée si elle est déjà en location (`disponibilite = 0`).

## 7. Exercices de Jointure

1. **Liste des voitures louées avec les informations du client**
   Affichez les informations sur les voitures et les clients associés pour chaque location en cours.

2. **Historique des locations d'une voiture spécifique**
   Affichez toutes les locations passées pour une voiture donnée.

3. **Locations en cours pour un client spécifique**
   Affichez toutes les locations en cours pour un client donné.

## 8. Exercices Avancés

1. **Total des revenus générés par chaque voiture**
   Calculez le revenu total généré par chaque voiture en additionnant tous les `prix_total` de chaque location.

2. **Voitures les plus rentables**
   Affichez les voitures ayant généré le plus de revenus depuis leur mise en service.

3. **Durée moyenne des locations par voiture**
   Calculez la durée moyenne de location pour chaque voiture.

4. **Taux d'occupation des voitures**
   Calculez le pourcentage de temps où chaque voiture est en location par rapport au total de jours depuis l'enregistrement de la voiture.

## 9. Exercices Complémentaires sur les Jointures

1. **Liste des clients avec leurs voitures louées (toutes les locations)**
   Affichez le nom du client, l'email et le modèle de la voiture louée, y compris les locations passées et actuelles.

2. **Clients qui ont loué plusieurs fois la même voiture**
   Sélectionnez les clients ayant loué plus d'une fois la même voiture, avec le nombre total de locations pour chaque client et voiture.

3. **Clients n'ayant jamais loué de voiture**
   Affichez la liste des clients qui ne figurent dans aucune location.

4. **Clients ayant loué une voiture d'une marque spécifique**
   Sélectionnez tous les clients ayant loué une voiture de la marque Toyota.

5. **Liste des voitures louées avec la date de la première et la dernière location**
   Affichez le modèle de la voiture, la date de la première location et la date de la dernière location.

6. **Clients ayant loué des voitures dans une période donnée**
   Sélectionnez tous les clients ayant loué une voiture entre deux dates données (ex : entre 2023-01-01 et 2023-12-31).

7. **Voitures n'ayant jamais été louées**
   Affichez la liste des voitures qui ne figurent dans aucune location.

8. **Nombre total de jours loués par voiture**
   Affichez la somme totale des jours de location pour chaque voiture.

9. **Liste des clients avec le nombre de voitures différentes louées**
   Sélectionnez chaque client avec le nombre de voitures différentes qu'il a louées.

10. **Voitures louées par plusieurs clients différents**
    Sélectionnez les voitures ayant été louées par au moins 2 clients différents.

11. **Client ayant dépensé le plus d'argent en location**
    Affichez le nom du client et le montant total qu'il a dépensé pour la location de voitures.

12. **Location la plus longue pour chaque client**
    Sélectionnez pour chaque client la location avec la plus longue durée.

13. **Liste des voitures ayant été louées plusieurs fois avec les dates de la première et dernière location**
    Affichez le modèle de la voiture avec les dates de la première et de la dernière location pour chaque voiture louée au moins deux fois.

14. **Nombre de jours total de location pour chaque client**
    Calculez le nombre total de jours loués pour chaque client.

15. **Voitures louées uniquement par un seul client**
    Affichez les voitures qui n'ont été louées que par un seul client.

16. **Nombre moyen de jours de location par client**
    Affichez le nom de chaque client avec le nombre moyen de jours de location pour toutes ses locations.

17. **Clients ayant loué des voitures de différentes marques**
    Sélectionnez les clients ayant loué des voitures de marques différentes.

18. **Client ayant loué le plus grand nombre de voitures différentes**
    Affichez le nom du client et le nombre de voitures différentes qu'il a louées.

19. **Location la plus chère pour chaque client**
    Sélectionnez pour chaque client la location avec le prix total le plus élevé.

20. **Clients ayant loué des voitures sur une durée moyenne supérieure à 7 jours**
    Sélectionnez tous les clients dont la durée moyenne de location est supérieure à 7 jours.