<?php
require_once "connexion.php"; 

// Fonction pour récupérer tous les enregistrements d'une table
function getRecords($table) {
    global $conn;
    $sql = "SELECT * FROM $table";
    $result = $conn->query($sql);
    
    $data = [];
    if ($result && $result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
    }
    return $data;
}

// Fonction pour récupérer un étudiant par email
function getUserByEmail($email) {
    global $conn;
    $sql = "SELECT * FROM etudiants WHERE email = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();
    
    return $result->num_rows > 0 ? $result->fetch_assoc() : null;
}

// Fonction pour insérer un étudiant et ses informations associées
function insertUser($data) {
    global $conn;

    // Insertion dans la table etudiants
    $sql = "INSERT INTO etudiants (email, prenom, nom, telephone, age, adresse, profile, linkedin, github) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssssissss", 
        $data['email'], $data['firstname'], $data['lastname'], 
        $data['phone'], $data['age'], $data['adresse'], 
        $data['message'], $data['linkedin'], $data['github']
    );
    $stmt->execute();
    $stmt->close();

    // Insertion des formations
    if (!empty($data['modules'])) {
        foreach ($data['modules'] as $module) {
            $sql = "INSERT INTO formations (email, niveau, module) VALUES (?, ?, ?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sss", $data['email'], $data['niveau'], $module);
            $stmt->execute();
            $stmt->close();
        }
    }

    // Insertion des projets
    if (!empty($data['projects'])) {
        for ($i = 0; $i < count($data['projects']); $i++) {
            $nbr_projet = $i + 1;
            $titre = $data['projects'][$i];
            $description = $data['projectDesc'][$i];
            $date_debut = $data['projectStartDate'][$i];
            $date_fin = $data['projectEndDate'][$i];

            $sql = "INSERT INTO projets (email, nbr_projet, titre, description, date_debut, date_fin) VALUES (?, ?, ?, ?, ?, ?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sissss", $data['email'], $nbr_projet, $titre, $description, $date_debut, $date_fin);
            $stmt->execute();
            $stmt->close();
        }
    }

    // Insertion des stages
    if (!empty($data['stages'])) {
        for ($i = 0; $i < count($data['stages']); $i++) {
            $nbr_stage = $i + 1;
            $titre = $data['stages'][$i];
            $description = $data['stageDesc'][$i];
            $date_debut = $data['stageStartDate'][$i];
            $date_fin = $data['stageEndDate'][$i];
            $entreprise = $data['stageEntreprise'][$i];
            $localisation = $data['stageLocation'][$i];

            $sql = "INSERT INTO stages (email, nbr_stage, titre, description, date_debut, date_fin, entreprise, localisation) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sissssss", $data['email'], $nbr_stage, $titre, $description, $date_debut, $date_fin, $entreprise, $localisation);
            $stmt->execute();
            $stmt->close();
        }
    }

    // Insertion des expériences
    if (!empty($data['experiences'])) {
        for ($i = 0; $i < count($data['experiences']); $i++) {
            $nbr_entreprise = $i + 1;
            $entreprise = $data['experienceEntreprise'][$i];
            $description = $data['experienceDesc'][$i];
            $date_debut = $data['experienceStartDate'][$i];
            $date_fin = $data['experienceEndDate'][$i];
            $localisation = $data['experienceLocation'][$i];
            $poste = $data['experiencePosition'][$i];

            $sql = "INSERT INTO experiences (email, nbr_entreprise, entreprise, description, date_debut, date_fin, localisation, poste) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sissssss", $data['email'], $nbr_entreprise, $entreprise, $description, $date_debut, $date_fin, $localisation, $poste);
            $stmt->execute();
            $stmt->close();
        }
    }

    // Insertion des compétences
    if (!empty($data['competences'])) {
        foreach ($data['competences'] as $competence) {
            $sql = "INSERT INTO competences (email, competence) VALUES (?, ?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("ss", $data['email'], $competence);
            $stmt->execute();
            $stmt->close();
        }
    }

    // Insertion des intérêts
    if (!empty($data['interests'])) {
        foreach ($data['interests'] as $interest) {
            $sql = "INSERT INTO interets (email, interet) VALUES (?, ?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("ss", $data['email'], $interest);
            $stmt->execute();
            $stmt->close();
        }
    }

    // Insertion des langues
    $langues = [
        ["langue" => $data["langue1"], "niveau" => $data["niveau1"]],
        ["langue" => $data["langue2"], "niveau" => $data["niveau2"]],
        ["langue" => $data["langue3"], "niveau" => $data["niveau3"]]
    ];
    foreach ($langues as $langue) {
        if (!empty($langue["langue"])) {
            $sql = "INSERT INTO langues (email, langue, niveau) VALUES (?, ?, ?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sss", $data['email'], $langue["langue"], $langue["niveau"]);
            $stmt->execute();
            $stmt->close();
        }
    }
}

// Fonction pour modifier un étudiant
function updateUser($email, $data) {
    global $conn;
    $sql = "UPDATE etudiants SET prenom = ?, nom = ?, telephone = ?, age = ?, adresse = ?, profile = ?, linkedin = ?, github = ? WHERE email = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sssisssss", 
        $data['firstname'], $data['lastname'], 
        $data['phone'], $data['age'], $data['adresse'], 
        $data['message'], $data['linkedin'], $data['github'], 
        $email
    );
    return $stmt->execute();
}

// Fonction pour supprimer un étudiant
function deleteUser($email) {
    global $conn;
    $conn->begin_transaction();
    try {
        $tables = ["formations", "projets", "stages", "experiences", "competences", "interets", "langues", "etudiants"];
        foreach ($tables as $table) {
            $sql = "DELETE FROM $table WHERE email = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("s", $email);
            $stmt->execute();
            $stmt->close();
        }
        $conn->commit();
    } catch (Exception $e) {
        $conn->rollback();
    }
}
?>
