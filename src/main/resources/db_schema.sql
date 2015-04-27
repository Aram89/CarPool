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
