CREATE TABLE `Materialart`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `ISBN` BIGINT UNSIGNED NOT NULL,
    `Titel` VARCHAR(255) NOT NULL,
    `Autor` VARCHAR(255) NOT NULL,
    `Typ` VARCHAR(255) NOT NULL,
    `Verfügbare_Exemplare` BIGINT NOT NULL,
    `Gesamte_Exemplare` BIGINT NOT NULL,
    `Klassenstufe` BIGINT NOT NULL,
    `Bild` VARCHAR(255) NOT NULL,
    `Ausleihbar` TINYINT(1) NOT NULL
);

CREATE TABLE `Material`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Materialart_id` BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (`Materialart_id`) REFERENCES `Materialart`(`id`)
);


CREATE TABLE `Lehrer`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Nachname` VARCHAR(255) NOT NULL,
    `Vorname` VARCHAR(255) NOT NULL,
    `ausgeliehenes_Material_id` BIGINT UNSIGNED,
    FOREIGN KEY (`ausgeliehenes_Material_id`) REFERENCES `Material`(`id`)
);

show tables;