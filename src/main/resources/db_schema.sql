CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` char(50) DEFAULT NULL,
  `salt` char(20) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `phone` char(50) DEFAULT NULL,
  `token` char(50) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `fb_link` char(50) DEFAULT NULL,
  `go_link` char(50) DEFAULT NULL,
  `tw_link` char(50) DEFAULT NULL,
  `fb_id` bigint(20) DEFAULT NULL,
  `go_id` bigint(20) DEFAULT NULL,
  `tw_id` bigint(20) DEFAULT NULL,
  `first_name` char(50) DEFAULT NULL,
  `last_name` char(50) DEFAULT NULL,
  `password` char(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8

CREATE TABLE `ride` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `carID` int(11) DEFAULT NULL,
  `type` char(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `startPoint` char(100) DEFAULT NULL,
  `startLatitude` decimal(11,8) DEFAULT NULL,
  `endLatitude` decimal(11,8) DEFAULT NULL,
  `startLongitude` decimal(11,8) DEFAULT NULL,
  `endLongitude` decimal(11,8) DEFAULT NULL,
  `status` char(100) DEFAULT NULL,
  `length` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8



DROP FUNCTION IF EXISTS `Haversine`;
DELIMITER $$

CREATE FUNCTION Haversine (
  latitude1 DECIMAL (11, 8),
  latitude2 DECIMAL (11, 8),
  longitude1 DECIMAL (11, 8),
  longitude2 DECIMAL (11, 8)
) RETURNS FLOAT DETERMINISTIC 
BEGIN
  RETURN ASIN(
    SQRT(
      POW(SIN((latitude2 - latitude1) / 2), 2) + COS(latitude1) * COS(latitude2) * POW(SIN((longitude2 - longitude1) / 2), 2)
    )
  ) ;
END $$

DELIMITER ;
