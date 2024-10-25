CREATE DATABASE plateformeDB DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE plateformedb;
-- Insertion des rôles
INSERT INTO `plateformedb`.`roles` (`description`, `nom`) VALUES
                                                              ('Administrateur', 'Admin'),
                                                              ('Membre standard', 'Membre'),
                                                              ('Privilégié', 'Privilege');

-- Insertion des utilisateurs avec leurs informations
INSERT INTO `plateformedb`.`utilisateurs` (`actif`, `email`, `interets_culturels`, `langue`, `mot_de_passe`, `nom`, `nom_utilisateur`, `photo_profile`) VALUES
                                                                                                                                                            (1, 'membre1@example.com', 'Sports', 'Français', 'motdepasse1', 'Goku', 'SonGoku', 'Goku.png'),
                                                                                                                                                            (1, 'membre2@example.com', 'Animaux et insectes', 'Anglais', 'motdepasse2', 'Luffy', 'MonkeyD', 'Luffy.png'),
                                                                                                                                                            (1, 'membre3@example.com', 'Japanimation', 'Espagnol', 'motdepasse3', 'Naruto', 'UzumakiNaruto', 'Naruto.png'),
                                                                                                                                                            (1, 'membre4@example.com', 'Automobile et mécanique', 'Allemand', 'motdepasse4', 'Ichigo', 'KurosakiIchigo', 'Ichigo.png'),
                                                                                                                                                            (1, 'membre5@example.com', 'Sports', 'Italien', 'motdepasse5', 'Saitama', 'CapedBaldy', 'Saitama.png'),
                                                                                                                                                            (1, 'membre6@example.com', 'Japanimation', 'Portugais', 'motdepasse6', 'Vegeta', 'PrinceVegeta', 'Vegeta.png'),
                                                                                                                                                            (1, 'membre7@example.com', 'Animaux et insectes', 'Portugais', 'motdepasse6', 'Sasuke', 'UchihaSasuke', 'Sasuke.png'),
                                                                                                                                                            (1, 'membre8@example.com', 'Japanimation', 'Anglais', 'motdepasse6', 'Gon', 'GonFreecss', 'Gon.png'),
                                                                                                                                                            (1, 'membre9@example.com', 'Sports', 'Français', 'motdepasse6', 'Zoro', 'RoronoaZoro', 'Zoro.png'),
                                                                                                                                                            (1, 'membre10@example.com', 'Japanimation', 'Portugais', 'motdepasse6', 'Yugi', 'YugiMuto', 'Yugi.png'),

                                                                                                                                                            (1, 'privilege1@example.com', 'Apprentissages et connaissances', 'Japonais', 'motdepassePriv1', 'LightYagami', 'Kira', 'LightYagami.png'),
                                                                                                                                                            (1, 'privilege2@example.com', 'Sports', 'Anglais', 'motdepassePriv2', 'EdwardElric', 'Fullmetal', 'EdwardElric.png'),
                                                                                                                                                            (1, 'privilege3@example.com', 'Apprentissages et connaissances', 'Espagnol', 'motdepassePriv3', 'Shinmon', 'BenimaruSan', 'Shinmon.png'),
                                                                                                                                                            (1, 'privilege4@example.com', 'Automobile et mécanique', 'Allemand', 'motdepassePriv4', 'NatsuDragneel', 'Salmander', 'NatsuDragneel.png'),
                                                                                                                                                            (1, 'privilege5@example.com', 'Arts et Lettres', 'Italien', 'motdepassePriv5', 'ErzaScarlet', 'Titania', 'ErzaScarlet.png'),
                                                                                                                                                            (1, 'privilege6@example.com', 'Japanimation', 'Portugais', 'motdepassePriv6', 'LeviAckerman', 'Rivaille', 'LeviAckerman.png'),
                                                                                                                                                            (1, 'privilege7@example.com', 'Animaux et insectes', 'Anglais', 'motdepassePriv6', 'SakuraHaruno', 'Sakura', 'SakuraHaruno.png'),
                                                                                                                                                            (1, 'privilege8@example.com', 'Japanimation', 'Portugais', 'motdepassePriv6', 'Kirua', 'HunterKirua', 'Kirua.png'),
                                                                                                                                                            (1, 'privilege9@example.com', 'Arts et Lettres', 'Anglais', 'motdepassePriv6', 'L', 'L', 'L.png'),
                                                                                                                                                            (1, 'privilege10@example.com', 'Sports', 'Français', 'motdepassePriv6', 'Kurama', 'NineTails', 'Kurama.png'),

                                                                                                                                                            (1, 'youss@gmail.com', 'Japanimation', 'Français', 'root', 'Youssef', 'YoussBack', 'Onizuka.png');

-- Insertion des associations entre utilisateurs et rôles
INSERT INTO `plateformedb`.`utilisateurs_roles` (`utilisateur_id`, `role_id`)
SELECT utilisateur_id, role_id
FROM (
         SELECT id_utilisateur AS utilisateur_id, id AS role_id
         FROM `plateformedb`.`utilisateurs` u
                  JOIN `plateformedb`.`roles` r ON r.nom = 'Membre'
         WHERE u.email LIKE 'membre%'
         UNION ALL
         SELECT id_utilisateur AS utilisateur_id, id AS role_id
         FROM `plateformedb`.`utilisateurs` u
                  JOIN `plateformedb`.`roles` r ON r.nom = 'Privilege'
         WHERE u.email LIKE 'privilege%'
         UNION ALL
         SELECT id_utilisateur AS utilisateur_id, id AS role_id
         FROM `plateformedb`.`utilisateurs` u
                  JOIN `plateformedb`.`roles` r ON r.nom = 'Admin'
         WHERE u.email = 'youss@gmail.com'
     ) AS temp;

-- Insertion de 50 forums dans la table forums_discussions
INSERT INTO `plateformedb`.`forums_discussions` (`titre_forum`, `langue`, `interets_culturels`,`etat_forum`) VALUES
-- Forums en français
('Forum de Spiritualité', 'Français', 'Religion et spiritualite',0),
('Discussion Anime Française', 'Français', 'Japanimation',0),
('Fans de K-pop', 'Français', 'K-pop',0),
('Littérature Française', 'Français', 'Arts et Lettres',0),
('Passion Sports', 'Français', 'Sports',0),
('Amis des Animaux', 'Français', 'Animaux et insectes',0),
('Mécanique en Français', 'Français', 'Automobile et mécanique',0),
('Apprendre en Français', 'Français', 'Apprentissages et connaissances',0),
('Musique en Français', 'Français', 'Musique',0),

-- Forums en anglais
('Spiritual Seekers', 'Anglais', 'Religion et spiritualite',0),
('Anime Enthusiasts', 'Anglais', 'Japanimation',0),
('K-pop Fans Club', 'Anglais', 'K-pop',0),
('Literature Lovers', 'Anglais', 'Arts et Lettres',0),
('Sports Talk', 'Anglais', 'Sports',0),
('Animal Lovers Community', 'Anglais', 'Animaux et insectes',0),
('Mechanical Enthusiasts', 'Anglais', 'Automobile et mécanique',0),
('Learning Hub', 'Anglais', 'Apprentissages et connaissances',0),
('Music Mania', 'Anglais', 'Musique',0),

-- Forums en espagnol
('Espiritualidad en Español', 'Espagnol', 'Religion et spiritualite',0),
('Anime en Español', 'Espagnol', 'Japanimation',0),
('Amantes de K-pop', 'Espagnol', 'K-pop',0),
('Literatura Española', 'Espagnol', 'Arts et Lettres',0),
('Hablando de Deportes', 'Espagnol', 'Sports',0),
('Amigos de los Animales', 'Espagnol', 'Animaux et insectes',0),
('Mecánica en Español', 'Espagnol', 'Automobile et mécanique',0),
('Aprendizaje en Español', 'Espagnol', 'Apprentissages et connaissances',0),
('Música en Español', 'Espagnol', 'Musique',0),

-- Forums en japonais
('スピリチュアルフォーラム', 'Japonais', 'Religion et spiritualite',0),
('アニメファンの集い', 'Japonais', 'Japanimation',0),
('K-pop ファンクラブ', 'Japonais', 'K-pop',0),
('文学愛好家', 'Japonais', 'Arts et Lettres',0),
('スポーツトーク', 'Japonais', 'Sports',0),
('動物愛好家のコミュニティ', 'Japonais', 'Animaux et insectes',0),
('機械工学愛好家', 'Japonais', 'Automobile et mécanique',0),
('学びの場', 'Japonais', 'Apprentissages et connaissances',0),
('音楽マニア', 'Japonais', 'Musique',0),

-- Forums en allemand
('Spiritualität im Deutsch', 'Allemand', 'Religion et spiritualite',0),
('Anime Fans auf Deutsch', 'Allemand', 'Japanimation',0),
('K-pop Fans auf Deutsch', 'Allemand', 'K-pop',0),
('Literatur auf Deutsch', 'Allemand', 'Arts et Lettres',0),
('Sportdiskussionen', 'Allemand', 'Sports',0),
('Tierliebhaber Gemeinschaft', 'Allemand', 'Animaux et insectes',0),
('Mechanik auf Deutsch', 'Allemand', 'Automobile et mécanique',0),
('Lernen auf Deutsch', 'Allemand', 'Apprentissages et connaissances',0),
('Musik auf Deutsch', 'Allemand', 'Musique',0),

-- Forums en portugais
('Espiritualidade em Português', 'Portugais', 'Religion et spiritualite',0),
('Anime em Português', 'Portugais', 'Japanimation',0),
('Fãs de K-pop em Português', 'Portugais', 'K-pop',0),
('Literatura em Português', 'Portugais', 'Arts et Lettres',0),
('Conversa sobre Esportes', 'Portugais', 'Sports',0),
('Amigos dos Animais', 'Portugais', 'Animaux et insectes',0),
('Mecânica em Português', 'Portugais', 'Automobile et mécanique',0),
('Aprendizado em Português', 'Portugais', 'Apprentissages et connaissances',0),
('Música em Português', 'Portugais', 'Musique',0),

-- Forums en italien
('Spiritualità in Italiano', 'Italien', 'Religion et spiritualite',0),
('Anime in Italiano', 'Italien', 'Japanimation',0),
('Fans di K-pop', 'Italien', 'K-pop',0),
('Letteratura in Italiano', 'Italien', 'Arts et Lettres',0),
('Discussione Sportive', 'Italien', 'Sports',0),
('Amanti degli Animali', 'Italien', 'Animaux et insectes',0),
('Meccanica in Italiano', 'Italien', 'Automobile et mécanique',0),
('Apprendimento in Italiano', 'Italien', 'Apprentissages et connaissances',0),
('Musica in Italiano', 'Italien', 'Musique',0);


-- Ajout des l'utilisateur dans les forum
INSERT INTO `plateformedb`.`forum_utilisateurs`(`id_forum`, `id_utilisateur`) VALUES
                                                                                  (1, 18),
                                                                                  (1, 20),
                                                                                  (1, 12),
                                                                                  (1, 7),
                                                                                  (1, 6),
                                                                                  (2, 19),
                                                                                  (2, 10),
                                                                                  (3, 1),
                                                                                  (4, 15),
                                                                                  (4, 16),
                                                                                  (5, 18),
                                                                                  (5, 20),
                                                                                  (5, 12),
                                                                                  (5, 7),
                                                                                  (5, 6),
                                                                                  (5, 19),
                                                                                  (5, 10),
                                                                                  (5, 1),
                                                                                  (5, 15),
                                                                                  (5, 16),
                                                                                  (6, 18),
                                                                                  (6, 20),
                                                                                  (6, 12),
                                                                                  (6, 7),
                                                                                  (6, 6),
                                                                                  (6, 19),
                                                                                  (6, 10),
                                                                                  (6, 1),
                                                                                  (6, 15),
                                                                                  (6, 16);




-- Insertion des amis pour chaque utilisateur
-- Ici, je vais ajouter des amis aléatoirement pour chaque utilisateur
-- (Par souci de simplicité, je vais juste insérer quelques amitiés aléatoires)

INSERT INTO `plateformedb`.`amis` (`demande_acceptee`, `favori`, `id_utilisateur1`, `id_utilisateur2`)
SELECT 1, 0,
       (SELECT id_utilisateur FROM `plateformedb`.`utilisateurs` ORDER BY RAND() LIMIT 1),
(SELECT id_utilisateur FROM `plateformedb`.`utilisateurs` ORDER BY RAND() LIMIT 1)
FROM dual
    LIMIT 10; -- Insérer 10 amitiés aléatoires

INSERT INTO `plateformedb`.`messages` (`dislikes`, `document`, `likes`, `timestamp_envoie`, `destinataire_id`, `destinateur_id`, `forum_id`, `texte_messages`)
SELECT
    ROUND(RAND() * 100),
    NULL,
    ROUND(RAND() * 100),
    NOW(),
    NULL,
    (SELECT id_utilisateur FROM `plateformedb`.`utilisateurs` ORDER BY RAND() LIMIT 1),
id_forum, 
CONCAT('Message aléatoire dans le forum ', titre_forum)
FROM `plateformedb`.`forums_discussions`
    LIMIT 20;


INSERT INTO `plateformedb`.`amis` (`id_utilisateur1`, `id_utilisateur2`, `demande_acceptee`,`favori`)
VALUES
    (1, 2, TRUE, TRUE),
    (1, 3, TRUE, FALSE),
    (1, 4, TRUE, TRUE),
    (1, 5, FALSE, FALSE),
    (1, 6, FALSE, FALSE),
    (1, 7, TRUE, TRUE),
    (1, 8, TRUE, FALSE),
    (1, 9, FALSE, TRUE),
    (1, 10, FALSE, FALSE),
    (1, 11, TRUE, TRUE),
    (1, 12, TRUE, FALSE),
    (1, 13, FALSE, TRUE),
    (1, 14, FALSE, FALSE),
    (1, 15, TRUE, TRUE),
    (1, 16, TRUE, FALSE),
    (1, 17, FALSE, TRUE),
    (1, 18, FALSE, FALSE),
    (1, 19, TRUE, TRUE),
    (1, 20, TRUE, FALSE),
    (1, 21, FALSE, TRUE),
    (2, 3, TRUE, TRUE),
    (2, 4, TRUE, FALSE),
    (2, 5, TRUE, TRUE),
    (2, 6, FALSE, FALSE),
    (2, 7, FALSE, FALSE),
    (2, 8, TRUE, TRUE),
    (2, 9, TRUE, FALSE),
    (2, 10, FALSE, TRUE),
    (2, 11, FALSE, FALSE),
    (2, 12, TRUE, TRUE),
    (2, 13, TRUE, FALSE),
    (2, 14, FALSE, TRUE),
    (2, 15, FALSE, FALSE),
    (2, 16, TRUE, TRUE),
    (2, 17, TRUE, FALSE),
    (2, 18, FALSE, TRUE),
    (2, 19, FALSE, FALSE),
    (2, 20, TRUE, TRUE),
    (2, 21, TRUE, FALSE),
    (3, 4, TRUE, TRUE),
    (3, 5, TRUE, FALSE),
    (3, 6, TRUE, TRUE),
    (3, 7, FALSE, FALSE),
    (3, 8, FALSE, FALSE),
    (3, 9, TRUE, TRUE),
    (3, 10, TRUE, FALSE),
    (3, 11, FALSE, TRUE),
    (3, 12, FALSE, FALSE),
    (3, 13, TRUE, TRUE),
    (3, 14, TRUE, FALSE),
    (3, 15, FALSE, TRUE),
    (3, 16, FALSE, FALSE),
    (3, 17, TRUE, TRUE),
    (3, 18, TRUE, FALSE),
    (3, 19, FALSE, TRUE),
    (3, 20, FALSE, FALSE),
    (3, 21, TRUE, TRUE),
    (4, 5, TRUE, TRUE),
    (4, 6, TRUE, FALSE),
    (4, 7, TRUE, TRUE),
    (4, 8, FALSE, FALSE),
    (4, 9, FALSE, FALSE),
    (4, 10, TRUE, TRUE),
    (4, 11, TRUE, FALSE),
    (4, 12, FALSE, TRUE),
    (4, 13, FALSE, FALSE),
    (4, 14, TRUE, TRUE),
    (4, 15, TRUE, FALSE),
    (4, 16, FALSE, TRUE),
    (4, 17, FALSE, FALSE),
    (4, 18, TRUE, TRUE),
    (4, 19, TRUE, FALSE),
    (4, 20, FALSE, TRUE),
    (4, 21, FALSE, FALSE),
    (5, 6, TRUE, TRUE),
    (5, 7, TRUE, FALSE),
    (5, 8, TRUE, TRUE),
    (5, 9, FALSE, FALSE),
    (5, 10, FALSE, FALSE),
    (5, 11, TRUE, TRUE),
    (5, 12, TRUE, FALSE),
    (5, 13, TRUE, TRUE),
    (5, 14, FALSE, FALSE),
    (5, 15, FALSE, FALSE),
    (5, 16, TRUE, TRUE),
    (5, 17, TRUE, FALSE),
    (5, 18, FALSE, TRUE),
    (5, 19, FALSE, FALSE),
    (5, 20, TRUE, TRUE),
    (5, 21, TRUE, FALSE),
    (6, 7, TRUE, TRUE),
    (6, 8, TRUE, FALSE),
    (6, 9, TRUE, TRUE),
    (6, 10, FALSE, FALSE),
    (6, 11, FALSE, FALSE),
    (6, 12, TRUE, TRUE),
    (6, 13, TRUE, FALSE),
    (6, 14, FALSE, TRUE),
    (6, 15, FALSE, FALSE),
    (6, 16, TRUE, TRUE),
    (6, 17, TRUE, FALSE),
    (6, 18, FALSE, TRUE),
    (6, 19, FALSE, FALSE),
    (6, 20, TRUE, TRUE),
    (6, 21, TRUE, FALSE),
    (7, 8, TRUE, TRUE),
    (7, 9, TRUE, FALSE),
    (7, 10, FALSE, TRUE),
    (7, 11, FALSE, FALSE),
    (7, 12, TRUE, TRUE),
    (7, 13, TRUE, FALSE),
    (7, 14, FALSE, TRUE),
    (7, 15, FALSE, FALSE),
    (7, 16, TRUE, TRUE),
    (7, 17, TRUE, FALSE),
    (7, 18, FALSE, TRUE),
    (7, 19, FALSE, FALSE),
    (7, 20, TRUE, TRUE),
    (7, 21, TRUE, FALSE),
    (8, 9, TRUE, TRUE),
    (8, 10, TRUE, FALSE),
    (8, 11, TRUE, TRUE),
    (8, 12, FALSE, FALSE),
    (8, 13, FALSE, FALSE),
    (8, 14, TRUE, TRUE),
    (8, 15, TRUE, FALSE),
    (8, 16, FALSE, TRUE),
    (8, 17, FALSE, FALSE),
    (8, 18, TRUE, TRUE),
    (8, 19, TRUE, FALSE),
    (8, 20, FALSE, TRUE),
    (8, 21, FALSE, FALSE),
    (9, 10, TRUE, TRUE),
    (9, 11, TRUE, FALSE),
    (9, 12, TRUE, TRUE),
    (9, 13, FALSE, FALSE),
    (9, 14, FALSE, FALSE),
    (9, 15, TRUE, TRUE),
    (9, 16, TRUE, FALSE),
    (9, 17, FALSE, TRUE),
    (9, 18, FALSE, FALSE),
    (9, 19, TRUE, TRUE),
    (9, 20, TRUE, FALSE),
    (9, 21, FALSE, TRUE),
    (10, 11, TRUE, TRUE),
    (10, 12, TRUE, FALSE),
    (10, 13, TRUE, TRUE),
    (10, 14, FALSE, FALSE),
    (10, 15, FALSE, FALSE),
    (10, 16, TRUE, TRUE),
    (10, 17, TRUE, FALSE),
    (10, 18, FALSE, TRUE),
    (10, 19, FALSE, FALSE),
    (10, 20, TRUE, TRUE),
    (10, 21, TRUE, FALSE),
    (11, 12, TRUE, TRUE),
    (11, 13, TRUE, FALSE),
    (11, 14, TRUE, TRUE),
    (11, 15, FALSE, FALSE),
    (11, 16, FALSE, FALSE),
    (11, 17, TRUE, TRUE),
    (11, 18, TRUE, FALSE),
    (11, 19, FALSE, TRUE),
    (11, 20, FALSE, FALSE),
    (11, 21, TRUE, TRUE),
    (12, 13, TRUE, TRUE),
    (12, 14, TRUE, FALSE),
    (12, 15, TRUE, TRUE),
    (12, 16, FALSE, FALSE),
    (12, 17, FALSE, FALSE),
    (12, 18, TRUE, TRUE),
    (12, 19, TRUE, FALSE),
    (12, 20, FALSE, TRUE),
    (12, 21, FALSE, FALSE),
    (13, 14, TRUE, TRUE),
    (13, 15, TRUE, FALSE),
    (13, 16, TRUE, TRUE),
    (13, 17, FALSE, FALSE),
    (13, 18, FALSE, FALSE),
    (13, 19, TRUE, TRUE),
    (13, 20, TRUE, FALSE),
    (13, 21, FALSE, TRUE),
    (14, 15, TRUE, TRUE),
    (14, 16, TRUE, FALSE),
    (14, 17, TRUE, TRUE),
    (14, 18, FALSE, FALSE),
    (14, 19, FALSE, FALSE),
    (14, 20, TRUE, TRUE),
    (14, 21, TRUE, FALSE),
    (15, 16, TRUE, TRUE),
    (15, 17, TRUE, FALSE),
    (15, 18, TRUE, TRUE),
    (15, 19, FALSE, FALSE),
    (15, 20, FALSE, FALSE),
    (15, 21, TRUE, TRUE),
    (16, 17, TRUE, TRUE),
    (16, 18, TRUE, FALSE),
    (16, 19, TRUE, TRUE),
    (16, 20, FALSE, FALSE),
    (16, 21, FALSE, FALSE),
    (17, 18, TRUE, TRUE),
    (17, 19, TRUE, FALSE),
    (17, 20, TRUE, TRUE),
    (17, 21, FALSE, FALSE),
    (18, 19, TRUE, TRUE),
    (18, 20, TRUE, FALSE),
    (18, 21, TRUE, TRUE),
    (19, 20, TRUE, TRUE),
    (19, 21, TRUE, FALSE),
    (20, 21, TRUE, TRUE);
