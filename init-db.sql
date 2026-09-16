-- 1. Création de la base de données
CREATE DATABASE parc_voitures;
USE parc_voitures;

-- 2. Création de la table
CREATE TABLE voiture (
    id                  INT AUTO_INCREMENT PRIMARY KEY,
    marque              VARCHAR(50)     NOT NULL,
    modele              VARCHAR(50)     NOT NULL,
    annee               SMALLINT        NOT NULL,
    kilometrage         INT             NOT NULL DEFAULT 0,
    couleur             VARCHAR(30)     NOT NULL,
    prix_achat          DECIMAL(10,2)   NOT NULL,
    prix_location_jour  DECIMAL(8,2)    NOT NULL,
    disponibilite       TINYINT(1)      NOT NULL DEFAULT 1
);

-- 3. Insertion de données
INSERT INTO voiture (marque, modele, annee, kilometrage, couleur, prix_achat, prix_location_jour, disponibilite)
VALUES
('Toyota',    'Corolla',   2020, 35000,  'Blanc',    18000.00, 45.00, 1),
('Honda',     'Civic',     2019, 42000,  'Noir',     17500.00, 42.00, 1),
('Renault',   'Clio',      2021, 15000,  'Rouge',    14000.00, 30.00, 1),
('Peugeot',   '208',       2022, 8000,   'Bleu',     15500.00, 32.00, 1),
('Volkswagen','Golf',      2018, 65000,  'Gris',     16000.00, 38.00, 0),
('Ford',      'Focus',     2017, 78000,  'Blanc',    13000.00, 28.00, 1),
('BMW',       'Serie 3',   2021, 22000,  'Noir',     32000.00, 65.00, 1),
('Audi',      'A4',        2020, 30000,  'Gris',     31000.00, 62.00, 0),
('Mercedes',  'Classe A',  2022, 5000,   'Blanc',    29000.00, 60.00, 1),
('Nissan',    'Micra',     2016, 90000,  'Jaune',    9000.00,  25.00, 1),
('Hyundai',   'i20',       2019, 40000,  'Rouge',    12500.00, 27.00, 1),
('Kia',       'Sportage',  2021, 20000,  'Vert',     22000.00, 48.00, 1),
('Fiat',      '500',       2018, 55000,  'Rose',     10500.00, 26.00, 0),
('Opel',      'Corsa',     2020, 33000,  'Bleu',     13500.00, 29.00, 1),
('Skoda',     'Octavia',   2022, 10000,  'Gris',     23000.00, 50.00, 1),
('Toyota',   'Corolla', 2020, 35000, 'Blanc', 18000.00, 45.00, 1),
('Toyota',   'Corolla', 2021, 22000, 'Blanc', 18500.00, 45.00, 1),
('Toyota',   'Corolla', 2019, 48000, 'Gris',  17000.00, 43.00, 0),
('Toyota',   'Yaris',   2021, 18000, 'Rouge', 15000.00, 35.00, 1),
('Toyota',   'Yaris',   2022, 9000,  'Blanc', 15500.00, 36.00, 1),

('Renault',  'Clio',    2020, 30000, 'Rouge', 14000.00, 30.00, 1),
('Renault',  'Clio',    2021, 21000, 'Bleu',  14500.00, 31.00, 1),
('Renault',  'Clio',    2022, 12000, 'Blanc', 15000.00, 32.00, 1),
('Renault',  'Clio',    2019, 55000, 'Gris',  13000.00, 28.00, 0),
('Renault',  'Megane',  2020, 40000, 'Noir',  17000.00, 38.00, 1),

('Peugeot',  '208',     2021, 20000, 'Bleu',  15500.00, 32.00, 1),
('Peugeot',  '208',     2022, 8000,  'Blanc', 16000.00, 33.00, 1),
('Peugeot',  '208',     2020, 33000, 'Rouge', 14500.00, 31.00, 1),
('Peugeot',  '308',     2019, 47000, 'Gris',  16500.00, 36.00, 0),

('Volkswagen','Golf',   2018, 65000, 'Gris',  16000.00, 38.00, 0),
('Volkswagen','Golf',   2020, 35000, 'Noir',  18000.00, 40.00, 1),
('Volkswagen','Golf',   2021, 25000, 'Blanc', 19000.00, 41.00, 1),
('Volkswagen','Polo',   2021, 19000, 'Bleu',  14000.00, 30.00, 1),

('Ford',     'Focus',   2017, 78000, 'Blanc', 13000.00, 28.00, 1),
('Ford',     'Focus',   2019, 50000, 'Gris',  14000.00, 29.00, 1),
('Ford',     'Fiesta',  2020, 30000, 'Rouge', 12500.00, 27.00, 1),
('Ford',     'Fiesta',  2018, 60000, 'Noir',  11500.00, 25.00, 0),

('BMW',      'Serie 3', 2021, 22000, 'Noir',  32000.00, 65.00, 1),
('BMW',      'Serie 3', 2020, 31000, 'Gris',  30000.00, 63.00, 1),
('BMW',      'Serie 1', 2019, 40000, 'Blanc', 25000.00, 55.00, 1),

('Audi',     'A4',      2020, 30000, 'Gris',  31000.00, 62.00, 0),
('Audi',     'A4',      2021, 18000, 'Noir',  33000.00, 64.00, 1),
('Audi',     'A3',      2019, 45000, 'Blanc', 24000.00, 52.00, 1),

('Mercedes', 'Classe A',2022, 5000,  'Blanc', 29000.00, 60.00, 1),
('Mercedes', 'Classe A',2021, 15000, 'Noir',  28000.00, 59.00, 1),
('Mercedes', 'Classe C',2020, 32000, 'Gris',  35000.00, 70.00, 0);