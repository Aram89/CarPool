ALTER TABLE `user`
CHANGE COLUMN `fbLink` `fbLink` CHAR(255) NULL DEFAULT NULL ,
CHANGE COLUMN `twLink` `twLink` CHAR(255) NULL DEFAULT NULL ,
CHANGE COLUMN `goLink` `goLink` CHAR(255) NULL DEFAULT NULL ;