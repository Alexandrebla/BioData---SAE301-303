INSERT INTO Projet (Id_Projet, Nom_projet, Site_experimental, Code_postale_site, Nom_systeme, Lien_fiche_systeme) VALUES
(1, '4SYSLEG', 'Domaine Expérimental Alénya-Roussillon', '66200', 'DivAB', 'https://ecophytopic.fr/sites/default/files/201...'),
(2, '4SYSLEG', 'Domaine Expérimental Alénya-Roussillon', '66200', 'DivAB', 'https://ecophytopic.fr/sites/default/files/201...');

INSERT INTO Cible (Id_Cible, Groupe_cible, Cible_principale) VALUES
(1, 'Ascomycètes', 'Botrytis cinerea'),
(2, 'Ascomycètes', 'Sclérotinia'),
(3, 'Lépidoptères', 'Mineuses'),
(4, 'Hémiptères', 'Aleurodes'),
(5, 'Lépidoptères', 'Noctuelles');

INSERT INTO Methode (Id_Methode, Nom_methode) VALUES
(1, 'Bacillus subtilis'),
(2, 'Bacillus subtilis'),
(3, 'Bacillus thuringiensis'),
(4, 'Lecanicillium muscarium'),
(5, 'Bacillus thuringiensis');

INSERT INTO Traitement (Id_Traitement, Type_traitement, Partie_trainee, Mode_action) VALUES
(1, 'Fongicides', 'Aérienne', 'Antagonisme et stimulateur de défense des plantes'),
(2, 'Fongicides', 'Aérienne', 'Antagonisme et stimulateur de défense des plantes'),
(3, 'Insecticides', 'Aérienne', 'Ingestion'),
(4, 'Insecticides', 'Aérienne', 'Parasitisme'),
(5, 'Insecticides', 'Aérienne', 'Ingestion');

INSERT INTO Caracteristique (Id_Caracteristique, Autres_caracteristiques, Stade_application, Filiere, Cultures, Pleine_terre_abri, Periode_experimentation) VALUES
(1, NULL, 'En cas de pression modérée', 'Légumes', 'Laitue', TRUE, '2013-2018'),
(2, NULL, 'En cas de pression modérée', 'Légumes', 'Laitue', TRUE, '2013-2018'),
(3, NULL, NULL, 'Légumes', 'Tomate', TRUE, '2013-2018'),
(4, NULL, 'Application répétées', 'Légumes', 'Tomate', TRUE, '2013-2018'),
(5, NULL, NULL, 'Légumes', 'Toutes cultures leg', TRUE, '2013-2018');

INSERT INTO Famille (Id_Famille, Nom_famille) VALUES
(1, 'Micro-organismes');

INSERT INTO Sous_famille (Id_Sous_famille, Nom_sous_famille, Id_Famille) VALUES
(1, 'Préparation bactérienne', 1),
(2, 'Préparation bactérienne', 1),
(3, 'Préparation bactérienne', 1),
(4, 'Préparation fongique', 1),
(5, 'Préparation bactérienne', 1);

INSERT INTO Methode_Famille (Id_Methode, Id_Famille) VALUES
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1);

INSERT INTO Methode_Cible (Id_Methode, Id_Cible) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

INSERT INTO Methode_Caracteristique (Id_Methode, Id_Caracteristique) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

INSERT INTO Methode_Traitement (Id_Methode, Id_Traitement) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);
