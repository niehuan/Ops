CREATE TABLE IF NOT EXISTS `system_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_value` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL,
  `modify_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `system_config` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1uxdod1n487ad5ruvo11a4tjx` (`system_config`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `sensitive_word_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) NOT NULL,
  `regular_expression` varchar(255) DEFAULT NULL,
  `sensitive_rule` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*增加敏感词设置配置*/
INSERT INTO `summer`.`system_config` (`id`, `config_value`, `description`,  `system_config`)
VALUES (1, 'true', NULL,  'sensitiveWord.switch');

/*增加敏感词设置信息*/
INSERT INTO `summer`.`sensitive_word_rule` (`id`, `create_at`, `modify_at`, `name`, `regular_expression`, `sensitive_rule`)
VALUES
	(1, '2018-05-08 15:34:14', '2018-05-08 15:34:14', '字段值全脱敏', '()^.{1,}$()', '$1***$2'),
	(2, '2018-05-08 15:35:01', '2018-05-08 15:35:01', '手机号脱敏', '(\\d{3})\\d{4}(\\d{4})', '$1****$2'),
	(3, '2018-05-08 15:35:36', '2018-05-08 15:35:36', '姓名脱敏', '([\\u4e00-\\u9fa5]{1})[\\u4e00-\\u9fa5]*', '$1**'),
	(4, '2018-05-08 15:57:03', '2018-05-08 17:48:47', '固定电话脱敏', '(\\d{3}-\\d{4})\\d{3,4}', '$1****'),
	(5, '2018-05-08 16:00:40', '2018-05-08 16:00:40', '身份证号脱敏', '(\\d{4})\\d{10}(\\w{1,4})', '$1**********$2'),
	(6, '2018-05-08 16:21:29', '2018-05-08 16:21:29', '地址脱敏', '(^.{0,6}).{1,}()', '$1**********$2'),
	(7, '2018-05-08 16:22:27', '2018-05-08 16:22:27', '邮箱脱敏', '(\\w{1})[-\\w.+]*(\\w{1})(@)([A-Za-z0-9][-A-Za-z0-9]+\\.)+([A-Za-z]{2,14})', '$1***$2$3$4$5'),
	(8, '2018-05-08 16:33:32', '2018-05-08 16:33:32', '银行卡号脱敏', '([0-9]{4})[0-9]{4}[0-9]{4}[0-9]{1,7}()', '$1**********$2'),
	(9, '2018-05-08 16:33:34', '2018-05-08 16:51:13', '公司开户银行联号脱敏', '(\\d{3})\\d{4}\\d{4}(\\d{1})', '$1********$2'),
	(10, '2018-05-08 17:07:06', '2018-05-08 17:59:37', 'ip地址脱敏', '([0-9]{1,3}[.]){1}[0-9]{1,3}([.]){1}[0-9]{1,3}([.]){1}[0-9]{1,3}', '$1***$2***$3****');

-- /*删除最近一次发送时间和发送次数字段，只在老用户数据库上执行，新用户不需要*/
-- ALTER TABLE `summer`.`report`
-- DROP COLUMN `send_count`,
-- DROP COLUMN `last_time`;