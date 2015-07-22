DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `route`;
DROP TABLE IF EXISTS `car`;

CREATE TABLE `user` (
  `id`        INT(11) NOT NULL AUTO_INCREMENT,
  `userName`  CHAR(50)         DEFAULT NULL,
  `salt`      CHAR(20)         DEFAULT NULL,
  `email`     CHAR(50)         DEFAULT NULL,
  `phone`     CHAR(50)         DEFAULT NULL,
  `token`     CHAR(50)         DEFAULT NULL,
  `enabled`   TINYINT(1)       DEFAULT NULL,
  `fbLink`    CHAR(50)         DEFAULT NULL,
  `goLink`    CHAR(50)         DEFAULT NULL,
  `twLink`    CHAR(50)         DEFAULT NULL,
  `fbId`      BIGINT(20)       DEFAULT 0,
  `goId`      BIGINT(20)       DEFAULT 0,
  `twId`      BIGINT(20)       DEFAULT 0,
  `firstName` CHAR(50)         DEFAULT NULL,
  `lastName`  CHAR(50)         DEFAULT NULL,
  `password`  CHAR(150)        DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;

CREATE TABLE `route` (
  `id`             INT(11) NOT NULL AUTO_INCREMENT,
  `userId`         INT(11)          DEFAULT NULL,
  `carId`          INT(11)          DEFAULT NULL,
  `startDate`      DATE             DEFAULT NULL,
  `startTime`      TIME             DEFAULT NULL,

  `periodic`       BIGINT(20)       DEFAULT NULL,

  `startPoint`     CHAR(255)        DEFAULT NULL,
  `endPoint`       CHAR(255)        DEFAULT NULL,

  `startLatitude`  DECIMAL(11, 8)   DEFAULT NULL,
  `startLongitude` DECIMAL(11, 8)   DEFAULT NULL,
  `endLatitude`    DECIMAL(11, 8)   DEFAULT NULL,
  `endLongitude`   DECIMAL(11, 8)   DEFAULT NULL,

  `monday`         BOOL             DEFAULT FALSE,
  `tuesday`        BOOL             DEFAULT FALSE,
  `wednesday`      BOOL             DEFAULT FALSE,
  `thursday`       BOOL             DEFAULT FALSE,
  `friday`         BOOL             DEFAULT FALSE,
  `saturday`       BOOL             DEFAULT FALSE,
  `sunday`         BOOL             DEFAULT FALSE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `car` (
  `id`          INT(11) NOT NULL AUTO_INCREMENT,
  `userId`      INT(11) NOT NULL,
  `number`      CHAR(20)         DEFAULT NULL,
  `model`       CHAR(50)         DEFAULT NULL,
  `description` VARCHAR(1500)    DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP FUNCTION IF EXISTS `Haversine`;
DELIMITER $$

CREATE FUNCTION Haversine (
  latitude1  DECIMAL(11, 8),
  latitude2  DECIMAL(11, 8),
  longitude1 DECIMAL(11, 8),
  longitude2 DECIMAL(11, 8)
) RETURNS FLOAT DETERMINISTIC
BEGIN
  RETURN ASIN(
    SQRT(
      POW(SIN((latitude2 - latitude1) / 2), 2) + COS(latitude1) * COS(latitude2) * POW(SIN((longitude2 - longitude1) / 2), 2)
    )
  );
END $$

DELIMITER ;
