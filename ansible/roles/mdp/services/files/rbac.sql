CREATE TABLE IF NOT EXISTS `resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `uri` varchar(255) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_jibf719yrdi2kraf2a4dalsvg` (`uri`),
  KEY `FK6l09a2h909267lstkurbk1e59` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=321 DEFAULT CHARSET=utf8;

/*去掉权限资源表中带.的系统数据源资源，只在老用户数据库上执行，新用户不需要*/
UPDATE `rbac`.`resource` SET `uri` = 'dip' WHERE (`uri` = '.dip' and type_id = 3);
UPDATE `rbac`.`resource` SET `uri` = 'alert' WHERE (`uri` = '.alert' and type_id = 3);
UPDATE `rbac`.`resource` SET `uri` = 'es_cluster' WHERE (`uri` = '.es_cluster' and type_id = 3);
UPDATE `rbac`.`resource` SET `uri` = 'es_node' WHERE (`uri` = '.es_node' and type_id = 3);
UPDATE `rbac`.`resource` SET `uri` = 'es_source' WHERE (`uri` = '.es_source' and type_id = 3);