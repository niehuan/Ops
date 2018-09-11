/*去掉权限资源表中带.的系统数据源资源，只在老用户数据库上执行，新用户不需要*/
UPDATE `rbac`.`resource` SET `uri` = 'dip' WHERE (`uri` = '.dip' and type_id = 3);
UPDATE `rbac`.`resource` SET `uri` = 'alert' WHERE (`uri` = '.alert' and type_id = 3);
UPDATE `rbac`.`resource` SET `uri` = 'es_cluster' WHERE (`uri` = '.es_cluster' and type_id = 3);
UPDATE `rbac`.`resource` SET `uri` = 'es_node' WHERE (`uri` = '.es_node' and type_id = 3);
UPDATE `rbac`.`resource` SET `uri` = 'es_source' WHERE (`uri` = '.es_source' and type_id = 3);