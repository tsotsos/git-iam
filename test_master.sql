DROP TABLE IF EXISTS `accounts_contacts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `accounts_contacts` (
`id` varchar(36) NOT NULL,
`contact_id` varchar(36) default NULL,
`account_id` varchar(36) default NULL,
`date_modified` datetime default NULL,
`deleted` tinyint(1) NOT NULL default '0',
PRIMARY KEY  (`id`),
KEY `idx_account_contact` (`account_id`,`contact_id`),
KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;
