CREATE TABLE client (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    nom         VARCHAR(100) NOT NULL,
    email       VARCHAR(100) NOT NULL UNIQUE,
    telephone   VARCHAR(20)
);

CREATE TABLE location (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    voiture_id      INT NOT NULL,
    client_id       INT NOT NULL,
    date_location   DATE NOT NULL,
    date_retour     DATE NOT NULL,
    prix_total      DECIMAL(10,2) NOT NULL,

    CONSTRAINT fk_location_voiture
        FOREIGN KEY (voiture_id) REFERENCES voiture(id),

    CONSTRAINT fk_location_client
        FOREIGN KEY (client_id) REFERENCES client(id),

    CONSTRAINT chk_dates_location
        CHECK (date_retour > date_location)
);