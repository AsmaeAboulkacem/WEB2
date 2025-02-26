CREATE DATABASE IF NOT EXISTS cv_database;
USE cv_database;

-- Table des étudiants (utilisateur principal)
CREATE TABLE IF NOT EXISTS etudiants (
    email VARCHAR(255) PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    telephone VARCHAR(20),
    adresse TEXT,
    photo_profil VARCHAR(255),
    description_profil TEXT
);

-- Table des formations
CREATE TABLE IF NOT EXISTS formations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    nom_ecole VARCHAR(255),
    diplome VARCHAR(255),
    date_debut DATE,
    date_fin DATE,
    FOREIGN KEY (email) REFERENCES etudiants(email) ON DELETE CASCADE
);

-- Table des compétences
CREATE TABLE IF NOT EXISTS competences (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    competence VARCHAR(255),
    FOREIGN KEY (email) REFERENCES etudiants(email) ON DELETE CASCADE
);

-- Table des centres d'intérêt
CREATE TABLE IF NOT EXISTS centres_interet (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    interet VARCHAR(255),
    FOREIGN KEY (email) REFERENCES etudiants(email) ON DELETE CASCADE
);

-- Table des langues
CREATE TABLE IF NOT EXISTS langues (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    langue VARCHAR(100),
    niveau ENUM('debutant', 'intermediaire', 'avance'),
    FOREIGN KEY (email) REFERENCES etudiants(email) ON DELETE CASCADE
);

-- Table des expériences professionnelles
CREATE TABLE IF NOT EXISTS experiences (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    entreprise VARCHAR(255),
    position VARCHAR(255),
    localisation VARCHAR(255),
    date_debut DATE,
    date_fin DATE,
    description TEXT,
    FOREIGN KEY (email) REFERENCES etudiants(email) ON DELETE CASCADE
);

-- Table des stages
CREATE TABLE IF NOT EXISTS stages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    entreprise VARCHAR(255),
    localisation VARCHAR(255),
    date_debut DATE,
    date_fin DATE,
    description TEXT,
    FOREIGN KEY (email) REFERENCES etudiants(email) ON DELETE CASCADE
);

-- Table des projets
CREATE TABLE IF NOT EXISTS projets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    titre VARCHAR(255),
    date_debut DATE,
    date_fin DATE,
    description TEXT,
    FOREIGN KEY (email) REFERENCES etudiants(email) ON DELETE CASCADE
);
