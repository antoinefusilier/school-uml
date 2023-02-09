-- delimiter |

-- DROP PROCEDURE initEventTables IF EXIST;

-- CREATE PROCEDURE initEventTables (

-- )
DROP TABLE PRE_event IF EXISTS
DROP TABLE PRE_event2 IF EXISTS

CREATE TABLE IF NOT EXISTS PRE_event 
    (
        id VARCHAR(64) PRIMARY KEY NOT NULL COMMENT 'Identifiant unique du concert',
        tags_group_id VARCHAR(64) NOT NULL DEFAULT 'tgi0001' COMMENT 'Identifiant d\'un groupe de tag rélié au concert' ,
        cover_image_id VARCHAR(64) NOT NULL DEFAULT 'c2i0001' COMMENT 'Identifiant de l\'image de couverture reliée',
        -- Public
        name VARCHAR(256) NOT NULL DEFAULT 'Nom de concert ...' COMMENT 'Nom du concert pour un maximun 256 caractères',
        description TEXT(10000) NOT NULL DEFAULT 'Description du concert ... ' COMMENT 'Description du concert TEXT de 10000 caractères maximun',
        date_start DATETIME NOT NULL COMMENT 'Date et heure du début du concert',
        date_end DATETIME NOT NULL COMMENT'Date et heure de fin du concert',

        social_page_url VARCHAR(256) NULL DEFAULT 'http://localhost:3008/redirect/social_network_page/eventid/tgi0001' COMMENT 'URL de redirection la page du concert ou de l\'édition assiciée',

        create_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date de création en base du concert',
        user_create_id VARCHAR(64) NOT NULL COMMENT 'Identifiant de l\'utilisateur qui à créer ce concert en base',
        last_update_date DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date de mise à jour en base du concert',
        delete_update_date DATETIME NULL COMMENT 'Lors de sauvegarde, il est possible d\'annuler une mise à jour de la ligne et renvoyée les information de la dernière sauvegarde, cela sera la date et l\'heure de cette execution'
    )

CREATE TABLE IF NOT EXISTS PRE_event_scene 
    (
        id VARCHAR(64) PRIMARY KEY NOT NULL COMMENT 'Identifiant de la scène réservée pour le concert',
        event_id VARCHAR(64) NOT NULL DEFAULT 'tgi0001' COMMENT 'Identifiant du concert associé à la scène'
    )
CREATE TABLE IF NOT EXISTS PRE_event_stock
    (
        id VARCHAR(64) PRIMARY KEY NOT NULL COMMENT 'Identifiant de la scène réservée pour le concert',
        event_id VARCHAR(64) NOT NULL DEFAULT 'tgi0001' COMMENT 'Identifiant du concert associé à la scène'
    )


INSERT INTO PRE_event 
    (id,name,description, date_start, date_end) 
    VALUE
    ('test001','Le concert de BobMarley', 'La super description du concert de BobMarley...', '2023-04-04 14:30:00','2023-04-04 17:30:00');