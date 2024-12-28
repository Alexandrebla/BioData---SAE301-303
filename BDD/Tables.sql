-- Création des tables basées sur le MCD

-- Table: Projet
CREATE TABLE Projet (
    Id_Projet INT PRIMARY KEY,
    Nom_projet VARCHAR(255),
    Site_experimental VARCHAR(255),
    Code_postale_site VARCHAR(10),
    Nom_systeme VARCHAR(255),
    Lien_fiche_systeme TEXT
);

-- Table: Cible
CREATE TABLE Cible (
    Id_Cible INT PRIMARY KEY,
    Groupe_cible VARCHAR(255),
    Cible_principale VARCHAR(255)
);

-- Table: Methode
CREATE TABLE Methode (
    Id_Methode INT PRIMARY KEY,
    Nom_methode VARCHAR(255)
);

-- Table: Traitement
CREATE TABLE Traitement (
    Id_Traitement INT PRIMARY KEY,
    Type_traitement VARCHAR(255),
    Partie_trainee VARCHAR(255),
    Mode_action VARCHAR(255)
);

-- Table: Caracteristique
CREATE TABLE Caracteristique (
    Id_Caracteristique INT PRIMARY KEY,
    Autres_caracteristiques TEXT,
    Stade_application VARCHAR(255),
    RDD_OAD VARCHAR(255),
    Nombre_application INT,
    Dose_application DECIMAL(10, 2),
    Filiere VARCHAR(255),
    Cultures VARCHAR(255),
    Pleine_terre_abri BOOLEAN,
    Periode_experimentation VARCHAR(255)
);

-- Table: Famille
CREATE TABLE Famille (
    Id_Famille INT PRIMARY KEY,
    Nom_famille VARCHAR(255)
);

-- Table: Sous_famille
CREATE TABLE Sous_famille (
    Id_Sous_famille INT PRIMARY KEY,
    Nom_sous_famille VARCHAR(255),
    Id_Famille INT,
    FOREIGN KEY (Id_Famille) REFERENCES Famille(Id_Famille)
);

-- Relations entre les entités

-- Relation: Methode est liée à Famille
CREATE TABLE Methode_Famille (
    Id_Methode INT,
    Id_Famille INT,
    PRIMARY KEY (Id_Methode, Id_Famille),
    FOREIGN KEY (Id_Methode) REFERENCES Methode(Id_Methode),
    FOREIGN KEY (Id_Famille) REFERENCES Famille(Id_Famille)
);

-- Relation: Methode vise Cible
CREATE TABLE Methode_Cible (
    Id_Methode INT,
    Id_Cible INT,
    PRIMARY KEY (Id_Methode, Id_Cible),
    FOREIGN KEY (Id_Methode) REFERENCES Methode(Id_Methode),
    FOREIGN KEY (Id_Cible) REFERENCES Cible(Id_Cible)
);

-- Relation: Methode possède Caracteristique
CREATE TABLE Methode_Caracteristique (
    Id_Methode INT,
    Id_Caracteristique INT,
    PRIMARY KEY (Id_Methode, Id_Caracteristique),
    FOREIGN KEY (Id_Methode) REFERENCES Methode(Id_Methode),
    FOREIGN KEY (Id_Caracteristique) REFERENCES Caracteristique(Id_Caracteristique)
);

-- Relation: Methode applique Traitement
CREATE TABLE Methode_Traitement (
    Id_Methode INT,
    Id_Traitement INT,
    PRIMARY KEY (Id_Methode, Id_Traitement),
    FOREIGN KEY (Id_Methode) REFERENCES Methode(Id_Methode),
    FOREIGN KEY (Id_Traitement) REFERENCES Traitement(Id_Traitement)
);

-- Relation: Projet induit Niveau_satisfaction (non représenté dans le MCD comme table distincte)
CREATE TABLE Projet_Niveau_Satisfaction (
    Id_Projet INT,
    Niveau_satisfaction DECIMAL(5, 2),
    PRIMARY KEY (Id_Projet),
    FOREIGN KEY (Id_Projet) REFERENCES Projet(Id_Projet)
);
