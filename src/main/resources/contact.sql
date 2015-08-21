DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `id`         INT(11)       NOT NULL AUTO_INCREMENT,
  `userId`     INT(11)                DEFAULT NULL,
  `createDate` DATETIME               DEFAULT NULL,
  `email`      CHAR(150)              DEFAULT NULL,
  `message`    VARCHAR(1500) NOT NULL DEFAULT '',

  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 500
  DEFAULT CHARSET = utf8;


