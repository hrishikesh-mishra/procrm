-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.66-0ubuntu0.11.10.3-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema procrm
--

CREATE DATABASE IF NOT EXISTS procrm;
USE procrm;

--
-- Definition of table `procrm`.`accounts`
--

DROP TABLE IF EXISTS `procrm`.`accounts`;
CREATE TABLE  `procrm`.`accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `customertype` varchar(10) DEFAULT NULL,
  `webcustomerno` int(10) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `address3` varchar(100) DEFAULT NULL,
  `address4` varchar(100) DEFAULT NULL,
  `postcode` varchar(6) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `phoneno` varchar(15) DEFAULT NULL,
  `mobileno` varchar(15) DEFAULT NULL,
  `stylist` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`accounts`
--

/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
LOCK TABLES `accounts` WRITE;
INSERT INTO `procrm`.`accounts` VALUES  ('83f0e39b-3dab-30b3-c021-50fed1255d27','Hrishiikesh','2013-01-22 17:50:29','2013-01-22 17:50:29','1','1',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,122,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('c38e31fb-da1c-46a6-9239-51038896369f','test','2013-01-26 07:41:51','2013-01-26 10:05:26','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','B2C',7591,NULL,'test ',NULL,NULL,NULL,'110010','Test','ND','IN',NULL,NULL,0),
 ('f2dc022f-61c3-874a-3434-5103f40cd2a7','Alan','2013-01-26 15:23:08','2013-01-26 15:33:57','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','B2C',787,'Turing','Test address','test address2','test address3','test address4','123456','test city','test state','test country','123456789','123456789',1),
 ('5130d3ef-28eb-b931-cae8-51048f3ab034','Alan','2013-01-27 02:22:34','2013-01-27 02:22:34','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,'e82ce576-b49c-1717-3652-510412511457',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'B2C',878,'Turing','Test address','test address2','test address3','test address4','123456','test city','test state','test country','123456789','123456789',1),
 ('64d2f91d-a6a8-96b1-1c69-5104916fe7f4','Dev','2013-01-27 02:29:36','2013-01-27 02:29:36','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,'e82ce576-b49c-1717-3652-510412511457',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'B2C',987,'Man','Test address','test address2','test address3','test address4','123456','test city','test state','test country','123456789','123456789',1),
 ('354a9681-8c3d-6b6a-4049-510f7eb3efb5','elavarasi','2013-02-04 09:24:32','2013-02-04 09:25:57','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','B2C',1500,'janardhanan','1/5 Sreepuram 2nd Street,','Royapettah ',NULL,NULL,'600014','Chennai','TN','IN',NULL,NULL,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;


--
-- Definition of table `procrm`.`accounts_alan_ordermaster_1_c`
--

DROP TABLE IF EXISTS `procrm`.`accounts_alan_ordermaster_1_c`;
CREATE TABLE  `procrm`.`accounts_alan_ordermaster_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_alan_ordermaster_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_alan_ordermaster_1alan_ordermaster_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_alan_ordermaster_1_ida1` (`accounts_alan_ordermaster_1accounts_ida`),
  KEY `accounts_alan_ordermaster_1_alt` (`accounts_alan_ordermaster_1alan_ordermaster_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`accounts_alan_ordermaster_1_c`
--

/*!40000 ALTER TABLE `accounts_alan_ordermaster_1_c` DISABLE KEYS */;
LOCK TABLES `accounts_alan_ordermaster_1_c` WRITE;
INSERT INTO `procrm`.`accounts_alan_ordermaster_1_c` VALUES  ('c0fc6560-77e5-4f12-c140-50fed78bd107','2013-01-22 18:18:16',0,'83f0e39b-3dab-30b3-c021-50fed1255d27','b1493b8f-8402-694a-9fa7-50fed7168dde'),
 ('d3fb8841-fa98-a46d-94d7-51038840460d','2013-01-26 07:41:51',0,'c38e31fb-da1c-46a6-9239-51038896369f','cc7b9c46-f2c8-a341-5fbc-510388049402'),
 ('8142cd66-a0f1-9c6a-8e85-51038aca6c80','2013-01-26 07:47:26',0,'c38e31fb-da1c-46a6-9239-51038896369f','c38e31fb-da1c-46a6-9239-51038896369f'),
 ('1ab8e1b2-b787-79bd-9d7a-51038b731351','2013-01-26 07:52:36',0,'c38e31fb-da1c-46a6-9239-51038896369f','175b9337-7cc5-8dcd-790c-51038bf4df98'),
 ('caeadbdb-06d5-7247-77c1-51038b0a13e5','2013-01-26 07:53:20',0,'c38e31fb-da1c-46a6-9239-51038896369f','c946e579-86dc-89bb-a580-51038b77a171'),
 ('e6af133d-14f2-9599-5a8a-51038b85936b','2013-01-26 07:53:45',0,'c38e31fb-da1c-46a6-9239-51038896369f','e4d844ce-0afe-8142-2ef8-51038befa12c'),
 ('c5cbf715-b931-228f-da7f-51038b14da5b','2013-01-26 07:53:52',0,'c38e31fb-da1c-46a6-9239-51038896369f','c3e12b0b-4491-5f44-6fe0-51038bca47db'),
 ('c0616b3e-f5b4-b768-d32f-51038c7a621e','2013-01-26 07:57:02',0,'c38e31fb-da1c-46a6-9239-51038896369f','bd62a842-e2ad-4f2c-0575-51038c26bcb2'),
 ('b9279b2d-476a-6cca-4195-51038cf3d53d','2013-01-26 07:57:19',0,'c38e31fb-da1c-46a6-9239-51038896369f','b75bf864-e8b5-d4aa-2067-51038c582af1'),
 ('99ebda75-2d7b-0502-321e-51038c0f919a','2013-01-26 07:57:31',0,'c38e31fb-da1c-46a6-9239-51038896369f','970b783f-b1c7-0c87-69bc-51038c522bd8'),
 ('47fa16a5-6d08-0bf8-ce07-51038c5f9c49','2013-01-26 07:57:42',0,'c38e31fb-da1c-46a6-9239-51038896369f','4634fe36-abbe-3f30-8c52-51038c6b3cb7'),
 ('ae0922f1-3820-5f0f-5ce8-51038c7aab6e','2013-01-26 07:58:24',0,'c38e31fb-da1c-46a6-9239-51038896369f','ac666efa-fd3a-f913-faf4-51038caaff8a'),
 ('e8f2e6bb-d6d8-129e-abdb-51038c945cd1','2013-01-26 07:58:35',0,'c38e31fb-da1c-46a6-9239-51038896369f','e6e2c344-c068-a469-641e-51038c05b83a'),
 ('4cc41045-81d1-64fe-3947-51038c128af6','2013-01-26 07:58:59',0,'c38e31fb-da1c-46a6-9239-51038896369f','4afb8f61-5b45-c177-9d1b-51038c5d23d6'),
 ('71b254e3-ee67-06ac-2a9d-51038c075326','2013-01-26 07:59:14',0,'c38e31fb-da1c-46a6-9239-51038896369f','6ff08757-a37a-759e-3663-51038c0f66f0'),
 ('97b5ace2-6f83-80e9-3c24-51038c1eb008','2013-01-26 07:59:15',0,'c38e31fb-da1c-46a6-9239-51038896369f','955ebaec-10ce-4dfd-11b9-51038c734214'),
 ('5e3325d7-c493-6dcd-c208-51038c2368bc','2013-01-26 07:59:25',0,'c38e31fb-da1c-46a6-9239-51038896369f','5c1e7c16-a900-b7c8-ba5e-51038ce06360'),
 ('46f41a92-a24b-4d2a-7597-51038cb2b25a','2013-01-26 07:59:31',0,'c38e31fb-da1c-46a6-9239-51038896369f','45280bc5-5bbf-0aec-bf97-51038cd5f23a'),
 ('3a155814-3a45-c2ac-05b6-51038cd43993','2013-01-26 07:59:37',0,'c38e31fb-da1c-46a6-9239-51038896369f','3867f5ae-8cde-38c7-381a-51038cbc4c0f'),
 ('62348469-9715-811f-7733-51038cf03779','2013-01-26 07:59:43',0,'c38e31fb-da1c-46a6-9239-51038896369f','6037e1c8-e21d-beb9-3bbb-51038cbb950f'),
 ('b6192e62-fb4f-6374-8aaa-51038cc9f78d','2013-01-26 07:59:49',0,'c38e31fb-da1c-46a6-9239-51038896369f','b3e8bfb9-228f-b004-3da8-51038c05abd0'),
 ('b9ff3448-4679-3263-e174-51038ccdc462','2013-01-26 07:59:56',0,'c38e31fb-da1c-46a6-9239-51038896369f','b84ea4c2-2a7d-b90b-733a-51038c5b7f46'),
 ('a26e1bf1-eefb-c4f1-20e8-51038d7a9f91','2013-01-26 08:00:03',0,'c38e31fb-da1c-46a6-9239-51038896369f','a0743800-4c13-0e96-efcb-51038d77417f'),
 ('1e3e0445-a493-96a3-86b5-51038d40bcbd','2013-01-26 08:00:52',0,'c38e31fb-da1c-46a6-9239-51038896369f','f31f4e06-51c4-64d1-48af-51038d3a62a1'),
 ('dd18e117-7fb5-fd63-e7f1-51038deb9acf','2013-01-26 08:02:06',0,'c38e31fb-da1c-46a6-9239-51038896369f','db56c7f2-ffa0-1fa9-36e8-51038d8fb30c'),
 ('2a97d1e7-0b08-1959-069c-5103a341dbfd','2013-01-26 09:35:33',0,'c38e31fb-da1c-46a6-9239-51038896369f','28c3d117-89ea-0ab2-1abc-5103a35cf0ab'),
 ('3fb275c0-f771-7210-cb58-5103a3bf5772','2013-01-26 09:36:38',0,'c38e31fb-da1c-46a6-9239-51038896369f','3de83eb1-5f97-6e96-fea1-5103a38116de'),
 ('e7ca0fab-cda7-917f-da9d-5103a468c522','2013-01-26 09:38:28',0,'c38e31fb-da1c-46a6-9239-51038896369f','ca2303cc-650e-211b-bf72-5103a4ca2e90'),
 ('92d12687-0474-e12f-40b5-5103a4687e62','2013-01-26 09:39:19',0,'c38e31fb-da1c-46a6-9239-51038896369f','90ce5f5e-52c2-1fe1-ec88-5103a4a151d9'),
 ('d916311f-c9d7-72cb-e466-5103aa51b44d','2013-01-26 10:05:26',0,'c38e31fb-da1c-46a6-9239-51038896369f','d64c9749-84e5-f99a-e37a-5103aa9c56d8'),
 ('2cbdbb8c-4f22-bf09-6a8e-5103f437d10d','2013-01-26 15:23:08',0,'f2dc022f-61c3-874a-3434-5103f40cd2a7','1ebeea02-34ea-c40d-e58f-5103f413af74'),
 ('b09a9cfc-873f-fd7f-16d8-5103f71813ac','2013-01-26 15:33:57',0,'f2dc022f-61c3-874a-3434-5103f40cd2a7','ae158012-5aa0-a77c-53e7-5103f7d09940'),
 ('5593a03c-151e-6916-819c-51048f8b004e','2013-01-27 02:22:34',0,'5130d3ef-28eb-b931-cae8-51048f3ab034','530284f3-16c2-bbc8-616c-51048f644697'),
 ('69309262-28ae-1648-6ec4-510491f8bc7f','2013-01-27 02:29:36',0,'64d2f91d-a6a8-96b1-1c69-5104916fe7f4','66a6ac4a-08ad-2e6e-d539-51049155736d'),
 ('477457a6-e887-277c-033d-510f7eda55b2','2013-02-04 09:24:32',0,'354a9681-8c3d-6b6a-4049-510f7eb3efb5','3886375f-bc9f-3480-d48f-510f7e9c439e'),
 ('2506dff7-81e1-e6de-6017-510f7e1d6c84','2013-02-04 09:25:57',0,'354a9681-8c3d-6b6a-4049-510f7eb3efb5','2299775c-af4e-5a4f-157e-510f7e142e71');
UNLOCK TABLES;
/*!40000 ALTER TABLE `accounts_alan_ordermaster_1_c` ENABLE KEYS */;


--
-- Definition of table `procrm`.`accounts_audit`
--

DROP TABLE IF EXISTS `procrm`.`accounts_audit`;
CREATE TABLE  `procrm`.`accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`accounts_audit`
--

/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
LOCK TABLES `accounts_audit` WRITE;
INSERT INTO `procrm`.`accounts_audit` VALUES  ('aaf738f4-804b-ea15-8ce4-5103f79a3614','f2dc022f-61c3-874a-3434-5103f40cd2a7','2013-01-26 15:33:57','1','lastname','varchar',NULL,'Turing',NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;


--
-- Definition of table `procrm`.`accounts_bugs`
--

DROP TABLE IF EXISTS `procrm`.`accounts_bugs`;
CREATE TABLE  `procrm`.`accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`accounts_bugs`
--

/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
LOCK TABLES `accounts_bugs` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;


--
-- Definition of table `procrm`.`accounts_cases`
--

DROP TABLE IF EXISTS `procrm`.`accounts_cases`;
CREATE TABLE  `procrm`.`accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`accounts_cases`
--

/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
LOCK TABLES `accounts_cases` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;


--
-- Definition of table `procrm`.`accounts_contacts`
--

DROP TABLE IF EXISTS `procrm`.`accounts_contacts`;
CREATE TABLE  `procrm`.`accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`accounts_contacts`
--

/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
LOCK TABLES `accounts_contacts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;


--
-- Definition of table `procrm`.`accounts_opportunities`
--

DROP TABLE IF EXISTS `procrm`.`accounts_opportunities`;
CREATE TABLE  `procrm`.`accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`accounts_opportunities`
--

/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
LOCK TABLES `accounts_opportunities` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;


--
-- Definition of table `procrm`.`acl_actions`
--

DROP TABLE IF EXISTS `procrm`.`acl_actions`;
CREATE TABLE  `procrm`.`acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`acl_actions`
--

/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
LOCK TABLES `acl_actions` WRITE;
INSERT INTO `procrm`.`acl_actions` VALUES  ('88d95dee-7bea-f013-662c-50fd6d673dbe','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','Leads','module',89,0),
 ('894dd60f-a812-af4b-13dc-50fd6d0fc333','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','Leads','module',90,0),
 ('89c05fbe-eba8-7dee-d577-50fd6df95f59','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','Leads','module',90,0),
 ('8a22259c-a7d1-f3f9-32d1-50fd6db8113a','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','Leads','module',90,0),
 ('8a875e0e-4ace-8e88-ed42-50fd6d3d6500','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','Leads','module',90,0),
 ('8ae8542e-db35-41d2-d1fb-50fd6db79789','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','Leads','module',90,0),
 ('8b4a4709-5ebc-32c8-91d4-50fd6d309fe5','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','Leads','module',90,0),
 ('8bb2860a-4829-ec63-2f0c-50fd6ddf190c','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','Leads','module',90,0),
 ('95afdcf3-3b0e-f685-1a7f-50fd6d3d89b3','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','Cases','module',89,0),
 ('96433e62-4fe9-7996-6057-50fd6df223a9','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','Cases','module',90,0),
 ('96c16c8f-6f80-a467-7582-50fd6d44fe72','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','Cases','module',90,0),
 ('973390b5-3de9-a6fa-df7e-50fd6d925369','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','Cases','module',90,0),
 ('97ad3606-8b39-02d3-9ac4-50fd6dc6a5b1','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','Cases','module',90,0),
 ('98233b0f-999d-bd4c-80ac-50fd6d693480','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','Cases','module',90,0),
 ('98873077-b0d5-80fc-ea6f-50fd6d0be112','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','Cases','module',90,0),
 ('98ed41a0-b76e-318c-0ce9-50fd6d4ce0c2','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','Cases','module',90,0),
 ('a2f8e816-0d56-c317-b69d-50fd6da94a20','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','Bugs','module',89,0),
 ('a36c4721-a8fb-1fc2-39e1-50fd6d33a197','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','Bugs','module',90,0),
 ('a3b1f4d8-0e1b-455d-2b6d-50fd6d9b75c2','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','Bugs','module',90,0),
 ('a3f995ef-3304-c513-2243-50fd6dbdcbda','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','Bugs','module',90,0),
 ('a43f696b-27d6-199d-9b69-50fd6d17c5f6','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','Bugs','module',90,0),
 ('a47e44b1-fde7-fe25-b995-50fd6d992025','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','Bugs','module',90,0),
 ('a4b8d7d7-10ee-ab88-e87d-50fd6d54be09','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','Bugs','module',90,0),
 ('a4f7573e-00b3-ca8c-c7a2-50fd6d4b2ea7','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','Bugs','module',90,0),
 ('b29b5cf1-8177-cc8e-c1a2-50fd6d999970','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','Users','module',89,0),
 ('b3163ffe-1cac-c271-4be9-50fd6d506868','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','Users','module',90,0),
 ('b3ae5246-706f-d722-ff9e-50fd6d2a2a64','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','Users','module',90,0),
 ('b41a4de1-84c1-e376-8bfa-50fd6d7eed2b','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','Users','module',90,0),
 ('b47ffae1-11f1-3219-3d8a-50fd6d1b031d','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','Users','module',90,0),
 ('b4e3485b-7199-ccb4-a4ce-50fd6df8c0e4','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','Users','module',90,0),
 ('b5468280-06d9-da52-afad-50fd6d0c45eb','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','Users','module',90,0),
 ('b5ad7f28-f67b-7c23-c544-50fd6d2752e3','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','Users','module',90,0),
 ('c23ec3bd-f31b-e879-0bc9-50fd6d5b18f4','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','Project','module',89,0),
 ('c2b30d3e-3c02-7200-f2be-50fd6d5d516c','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','Project','module',90,0),
 ('c324da86-19df-feaa-7d78-50fd6de341cd','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','Project','module',90,0),
 ('c391ae02-1f90-d15e-23c1-50fd6d1fc4d7','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','Project','module',90,0),
 ('c3fa4381-b69f-a982-2051-50fd6decb8e3','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','Project','module',90,0),
 ('c45e6b42-c790-d8e0-cf1b-50fd6d91bc8b','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','Project','module',90,0),
 ('c4c37417-5048-38cf-e288-50fd6d6a2a82','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','Project','module',90,0),
 ('c52be8c0-9731-102b-42d8-50fd6df925bd','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','Project','module',90,0),
 ('ce0588bb-2ede-74f1-12be-50fd6d2ff586','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','ProjectTask','module',89,0),
 ('ce9c3580-c7d6-f118-d854-50fd6d05c321','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','ProjectTask','module',90,0),
 ('cf3f746a-0673-f36f-8d9d-50fd6d09aa11','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','ProjectTask','module',90,0),
 ('cfbab4f9-7b26-edaa-b3fb-50fd6daacc10','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','ProjectTask','module',90,0),
 ('d0259432-94da-f5b6-61bf-50fd6d5dea5a','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','ProjectTask','module',90,0),
 ('d08f0df9-ef48-1a58-d44b-50fd6dc5f4a9','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','ProjectTask','module',90,0),
 ('d0f6bc22-4db4-8b9e-d1d6-50fd6d3bd17f','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','ProjectTask','module',90,0),
 ('d15e5707-7ca7-e5b5-c13e-50fd6d9c6303','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','ProjectTask','module',90,0),
 ('de57418d-b1f8-0e4a-8c90-50fd6de95bb7','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','Campaigns','module',89,0),
 ('deec35b6-ff3a-5689-0745-50fd6db21fc0','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','Campaigns','module',90,0),
 ('df5990e1-98f9-a50a-0e80-50fd6de199af','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','Campaigns','module',90,0),
 ('dfbed203-1034-5d63-9933-50fd6d5efa7b','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','Campaigns','module',90,0),
 ('e02264cf-b3e9-7eeb-e101-50fd6da3b98d','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','Campaigns','module',90,0),
 ('e08dea1c-3595-85aa-dc31-50fd6d419038','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','Campaigns','module',90,0),
 ('e1086e62-d27f-8e0f-33b9-50fd6dded4cb','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','Campaigns','module',90,0),
 ('e1ec574b-4369-95ee-1f27-50fd6d88c591','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','Campaigns','module',90,0),
 ('ed845b93-6bb4-0fb4-71d8-50fd6dcf44f6','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','ProspectLists','module',89,0),
 ('edfcad44-28b1-e69c-c87b-50fd6dfd60e0','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','ProspectLists','module',90,0),
 ('ee602e52-b4b1-166c-c6ba-50fd6d3d40cc','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','ProspectLists','module',90,0),
 ('eec14ea2-a198-509a-a786-50fd6d3dea41','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','ProspectLists','module',90,0),
 ('ef2728bf-3f36-5c42-02b6-50fd6dff0846','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','ProspectLists','module',90,0),
 ('ef88f146-9045-6abd-3f3a-50fd6db45d87','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','ProspectLists','module',90,0),
 ('efe22bcd-f76c-99cf-8897-50fd6d82cf90','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','ProspectLists','module',90,0),
 ('f0540077-defc-9008-cfa5-50fd6d627991','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','ProspectLists','module',90,0),
 ('38cf0dca-6b5a-e179-1f3b-50fd6d9dc509','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','Prospects','module',89,0),
 ('42810399-49e2-c7ad-8a8c-50fd6d2f6ca2','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','Prospects','module',90,0),
 ('49fd078e-d0bb-a1f0-33f9-50fd6ded13ed','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','Prospects','module',90,0),
 ('51cb0872-e97a-3b39-65af-50fd6d57aec7','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','Prospects','module',90,0),
 ('5ac80286-297e-1689-eaf1-50fd6d963f4a','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','Prospects','module',90,0),
 ('61a00068-b11d-f3bf-dd8f-50fd6d890156','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','Prospects','module',90,0),
 ('684504f2-b378-b7be-6f72-50fd6df83edb','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','Prospects','module',90,0),
 ('6f170429-abd1-91e8-bb18-50fd6de176ea','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','Prospects','module',90,0),
 ('dc6e0059-ead6-1def-2bfa-50fd6d04f69a','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','EmailMarketing','module',89,0),
 ('e38908ce-7fb9-8f19-4e52-50fd6d7b397f','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','EmailMarketing','module',90,0),
 ('ea890ddc-aac9-6ac9-b3c2-50fd6d235cb3','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','EmailMarketing','module',90,0),
 ('f10506b9-afb4-15c7-c0b2-50fd6dbbc77f','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','EmailMarketing','module',90,0),
 ('f77301e5-94fd-c29a-be45-50fd6dd3e4e1','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','EmailMarketing','module',90,0),
 ('fe1c0405-bbb0-8c77-30cf-50fd6d168c23','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','EmailMarketing','module',90,0),
 ('104c0a3b-9a30-6c90-f33a-50fd6dac2c97','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','EmailMarketing','module',90,0),
 ('10b1a863-450d-ebbf-4546-50fd6dc81023','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','EmailMarketing','module',90,0),
 ('2f850d3e-d555-b9ef-fc0b-50fd6dca1514','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','Contacts','module',89,0),
 ('2ffa08b0-61c5-5444-0c59-50fd6d7a667b','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','Contacts','module',90,0),
 ('305fc45c-7195-1af2-27b7-50fd6d1c2f86','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','Contacts','module',90,0),
 ('30cdaf7d-ed9e-5080-7e8c-50fd6ded3fd3','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','Contacts','module',90,0),
 ('3135dcdb-221b-26a0-bbba-50fd6d70e218','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','Contacts','module',90,0),
 ('319ecb95-d7c3-5d40-4cb1-50fd6dbffa6d','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','Contacts','module',90,0),
 ('320a906f-6505-6ad3-88aa-50fd6daae143','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','Contacts','module',90,0),
 ('327b47d7-17de-64bb-f9be-50fd6da4e3eb','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','Contacts','module',90,0),
 ('42e989bf-6d88-a10a-b79b-50fd6d72c664','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','Accounts','module',89,0),
 ('434a4952-aee2-3e13-b610-50fd6d408179','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','Accounts','module',90,0),
 ('43932512-b09f-d0a2-33fc-50fd6d83fb28','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','Accounts','module',90,0),
 ('43fc9e36-a132-e31d-a771-50fd6d1e27c8','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','Accounts','module',90,0),
 ('446c5ab5-e069-bd8d-e08a-50fd6d9d7247','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','Accounts','module',90,0),
 ('44d69dc8-ee0e-d6e2-6601-50fd6da81458','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','Accounts','module',90,0),
 ('454b4847-7e77-a638-56fc-50fd6d3a4ce4','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','Accounts','module',90,0),
 ('45b0b365-b4e5-42c8-59f6-50fd6d92722a','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','Accounts','module',90,0),
 ('51a28a88-1671-b5ff-d3f8-50fd6d39fb90','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','Opportunities','module',89,0),
 ('5247aff0-d4e1-57fb-2763-50fd6d797509','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','Opportunities','module',90,0),
 ('52cb78fc-5c1e-86a7-b81b-50fd6db02bf9','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','Opportunities','module',90,0),
 ('533f6eda-e535-ba9a-1924-50fd6d4d33bc','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','Opportunities','module',90,0),
 ('53d89c2d-7d6f-ae2a-cb01-50fd6d24cf5d','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','Opportunities','module',90,0),
 ('5447d4cd-35fd-5f3a-da54-50fd6dfd9ad9','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','Opportunities','module',90,0),
 ('54b4f733-b1d3-58ca-599b-50fd6de493f0','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','Opportunities','module',90,0),
 ('551cdba7-a4b3-1d1b-98a7-50fd6d2159f8','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','Opportunities','module',90,0),
 ('5d47e050-1963-ca01-df4d-50fd6d800794','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','EmailTemplates','module',89,0),
 ('5df0850d-70ab-cff5-e4f2-50fd6db8c8f2','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','EmailTemplates','module',90,0),
 ('5e8a5128-9bea-3cc1-cdec-50fd6deaa407','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','EmailTemplates','module',90,0),
 ('5ef46c4d-cf2e-981f-da04-50fd6db17020','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','EmailTemplates','module',90,0),
 ('5f6037ad-4eae-a9fe-7db0-50fd6dfd49e9','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','EmailTemplates','module',90,0),
 ('5fc85050-fbaf-874b-f867-50fd6d42a2e3','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','EmailTemplates','module',90,0),
 ('604c47ea-90db-b6a5-90e5-50fd6d341441','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','EmailTemplates','module',90,0),
 ('60cc9ea8-a3bc-82bb-6f00-50fd6d5aeee4','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','EmailTemplates','module',90,0),
 ('68d033d0-a3ec-a818-012f-50fd6d23d707','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','Notes','module',89,0),
 ('69477cf3-22cb-7175-1e8a-50fd6dfb7d4f','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','Notes','module',90,0),
 ('69b1ebeb-2d73-077e-4bf2-50fd6d5829cf','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','Notes','module',90,0),
 ('6a19f573-63bb-850a-138b-50fd6d19dc71','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','Notes','module',90,0),
 ('6a818c92-e981-2ee7-dc3d-50fd6d7db81a','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','Notes','module',90,0),
 ('6aeb5de8-431f-aeb9-0757-50fd6de0a677','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','Notes','module',90,0),
 ('6b5721e3-53ac-b239-3150-50fd6d6ffa07','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','Notes','module',90,0),
 ('6bbfcc39-b640-9bbf-4582-50fd6df518e7','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','Notes','module',90,0),
 ('782dd602-5fc5-1329-fc4d-50fd6d9cb343','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','Calls','module',89,0),
 ('7898e6ac-5222-f473-b518-50fd6dd61e58','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','Calls','module',90,0),
 ('78f90b4e-b93d-b77f-5870-50fd6d49231f','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','Calls','module',90,0),
 ('79595465-1d2f-7495-60cc-50fd6dd2c6bd','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','Calls','module',90,0),
 ('79b513ca-0ce4-c918-fd63-50fd6d9b8d1c','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','Calls','module',90,0),
 ('7a273290-2695-8513-0043-50fd6d465504','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','Calls','module',90,0),
 ('7a8de4b8-fd33-0585-a637-50fd6d85bb33','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','Calls','module',90,0),
 ('7b05d4af-c756-a4c4-4728-50fd6d49fbe8','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','Calls','module',90,0),
 ('82bbb7da-0bff-8773-089f-50fd6dfc4df2','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','Emails','module',89,0),
 ('833c76c3-857d-6b68-6817-50fd6da6f502','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','Emails','module',90,0),
 ('83b39adc-67eb-e205-5c25-50fd6d6a8e7d','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','Emails','module',90,0),
 ('842ba443-2ec8-637d-0e96-50fd6da0e262','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','Emails','module',90,0),
 ('84952bfb-f55f-b92f-8dd2-50fd6d6244f4','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','Emails','module',90,0),
 ('85036f3b-a7e7-1177-5857-50fd6d294f21','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','Emails','module',90,0),
 ('856ddb1c-4544-9c01-f8cc-50fd6da1c29f','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','Emails','module',90,0),
 ('85d9aa97-5e44-c51b-ded4-50fd6d3eab30','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','Emails','module',90,0),
 ('9177d90a-d0e9-a47e-6c24-50fd6d6aac55','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','Meetings','module',89,0),
 ('91eefcb6-cc25-b9a4-3ed7-50fd6d8d9bad','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','Meetings','module',90,0),
 ('92609a12-d225-46e7-6e77-50fd6d9a04b1','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','Meetings','module',90,0),
 ('92c9d802-a472-21af-0a43-50fd6dc3a8ad','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','Meetings','module',90,0),
 ('9332f37a-fbd6-9cdd-244e-50fd6d4afe87','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','Meetings','module',90,0),
 ('939b85f8-b7c8-5ddd-ad07-50fd6d557215','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','Meetings','module',90,0),
 ('940c198b-d4ba-124b-2bfa-50fd6d43c4f3','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','Meetings','module',90,0),
 ('947f4417-9c6c-0690-f2e2-50fd6d5109c6','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','Meetings','module',90,0),
 ('9da92f8e-3f99-7040-c0c8-50fd6dccdebf','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','Tasks','module',89,0),
 ('9e07f3d0-1b82-6f16-b4a3-50fd6d8c576b','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','Tasks','module',90,0),
 ('9e49b433-b972-52d7-3457-50fd6d039e04','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','Tasks','module',90,0),
 ('9ea0ffa1-2f2f-a7e7-55a3-50fd6d00230f','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','Tasks','module',90,0),
 ('9eef59a5-5c66-546e-a486-50fd6d06d021','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','Tasks','module',90,0),
 ('9f3f963f-12ee-4918-78d5-50fd6d232147','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','Tasks','module',90,0),
 ('9f91a8bf-cde2-b256-4567-50fd6dd3f464','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','Tasks','module',90,0),
 ('9fe540e5-9f98-0f16-177a-50fd6de22112','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','Tasks','module',90,0),
 ('cb103717-c697-3963-bb4d-50fd6d36c4dc','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','Documents','module',89,0),
 ('cb872384-1022-c2c7-ccd1-50fd6d5bfc66','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','Documents','module',90,0),
 ('cbf84ba0-d81e-4238-44ad-50fd6d26dd27','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','Documents','module',90,0),
 ('cc6080ee-3cb3-5f9e-9c69-50fd6d7227f7','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','Documents','module',90,0),
 ('ccc8f785-12b2-4b2d-817a-50fd6de81a60','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','Documents','module',90,0),
 ('cd31724f-2ad2-576e-d5ca-50fd6d25b5f9','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','Documents','module',90,0),
 ('cd998a30-b774-ac3f-4a54-50fd6d06f209','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','Documents','module',90,0),
 ('ce034a56-1bfa-8dc7-949c-50fd6daae235','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','Documents','module',90,0),
 ('2e2404ac-ef48-9318-0c11-50fd6d24d8ac','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','access','EAPM','module',89,0),
 ('357502ec-7f07-65ef-ba62-50fd6dedeca7','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','view','EAPM','module',90,0),
 ('3bbd053a-23cf-9fdf-5e70-50fd6dfc5a63','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','list','EAPM','module',90,0),
 ('427108bb-cae5-5955-979d-50fd6dc6c949','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','edit','EAPM','module',90,0),
 ('491c0dd0-8177-af77-e24a-50fd6dcce85b','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','delete','EAPM','module',90,0),
 ('4fca0954-7581-20d1-6ada-50fd6d748589','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','import','EAPM','module',90,0),
 ('57480a4f-e1f3-792e-fa03-50fd6d4d8cde','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','export','EAPM','module',90,0),
 ('60110cc1-e17e-2f01-c7bd-50fd6da8b83f','2013-01-21 16:31:56','2013-01-21 16:31:56','1','','massupdate','EAPM','module',90,0),
 ('b5121c98-fb22-2390-b6a4-50fd8bc6a521','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','access','alan_OrderMaster','module',89,0),
 ('b64e6d33-5fdc-9791-3e66-50fd8b306d9f','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','view','alan_OrderMaster','module',90,0),
 ('b6cb264d-8cb4-ba52-0675-50fd8be8ecd3','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','list','alan_OrderMaster','module',90,0),
 ('b73a3158-8b91-6da8-6df5-50fd8b7242bf','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','edit','alan_OrderMaster','module',90,0),
 ('b7b4d751-3103-2802-f1cc-50fd8b63a175','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','delete','alan_OrderMaster','module',90,0),
 ('b82594f5-0252-e414-4549-50fd8b623666','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','import','alan_OrderMaster','module',90,0),
 ('b8a9c63f-d689-733c-9631-50fd8b519a61','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','export','alan_OrderMaster','module',90,0),
 ('b9278219-ab3c-5b95-bb9a-50fd8b476ba9','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','massupdate','alan_OrderMaster','module',90,0),
 ('c07e6dd7-429c-1dd4-34b1-50fd8b8faf5e','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','access','alan_OrderItem','module',89,0),
 ('c1040810-bb33-3975-78d4-50fd8bce1cf6','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','view','alan_OrderItem','module',90,0),
 ('c17f72af-6c17-aa62-e573-50fd8bebf2bd','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','list','alan_OrderItem','module',90,0),
 ('c1f97ad5-e14d-ab1e-7e8c-50fd8bdb970e','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','edit','alan_OrderItem','module',90,0),
 ('c27e64b9-8de0-e483-7065-50fd8b16c094','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','delete','alan_OrderItem','module',90,0),
 ('c2f5ea14-9fd5-4bdc-7c04-50fd8b89787c','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','import','alan_OrderItem','module',90,0),
 ('c36e037b-9f61-2aaa-e31c-50fd8b9602a6','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','export','alan_OrderItem','module',90,0),
 ('c3dfe1ea-8ea9-ff73-8659-50fd8bce8cc2','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','massupdate','alan_OrderItem','module',90,0),
 ('cb634990-ba12-be08-3744-50fd8bf9fe8a','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','access','alan_OrderAddress','module',89,0),
 ('cbe5d4ad-26ee-9def-7082-50fd8bce20d8','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','view','alan_OrderAddress','module',90,0),
 ('cc5cf89e-4432-0233-22d3-50fd8b2eabcb','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','list','alan_OrderAddress','module',90,0),
 ('ccce1b02-97b9-effe-0739-50fd8b0ddc94','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','edit','alan_OrderAddress','module',90,0),
 ('cd474cc8-4689-281c-6798-50fd8bb2c6d8','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','delete','alan_OrderAddress','module',90,0),
 ('cdc94c6f-115d-5bb0-a3b7-50fd8b573d6f','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','import','alan_OrderAddress','module',90,0),
 ('ce41444e-0b82-877d-239a-50fd8b6f7b2f','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','export','alan_OrderAddress','module',90,0),
 ('ceb909ea-e2af-d358-e81f-50fd8b001bf5','2013-01-21 18:40:34','2013-01-21 18:40:34','1','1','massupdate','alan_OrderAddress','module',90,0),
 ('44b9b05e-e618-70b3-8577-50fec5db5a46','2013-01-22 16:59:41','2013-01-22 16:59:41','1','1','access','alan_communicationlog','module',89,0),
 ('4c3a9761-71fd-9729-4884-50fec565264e','2013-01-22 16:59:41','2013-01-22 16:59:41','1','1','view','alan_communicationlog','module',90,0),
 ('4ca83be4-eec6-546b-7c4e-50fec5c5df82','2013-01-22 16:59:41','2013-01-22 16:59:41','1','1','list','alan_communicationlog','module',90,0),
 ('4d0f5ad7-2c05-22a4-88a3-50fec52ed913','2013-01-22 16:59:41','2013-01-22 16:59:41','1','1','edit','alan_communicationlog','module',90,0),
 ('4d7cb372-10f4-6846-34bd-50fec50140f7','2013-01-22 16:59:41','2013-01-22 16:59:41','1','1','delete','alan_communicationlog','module',90,0),
 ('4de67933-d43f-2d78-0527-50fec50bc743','2013-01-22 16:59:41','2013-01-22 16:59:41','1','1','import','alan_communicationlog','module',90,0),
 ('4e4b275d-dcf3-05b7-e0b7-50fec52f0e1b','2013-01-22 16:59:41','2013-01-22 16:59:41','1','1','export','alan_communicationlog','module',90,0),
 ('4ec1074b-d8de-7295-eb84-50fec5fae90c','2013-01-22 16:59:41','2013-01-22 16:59:41','1','1','massupdate','alan_communicationlog','module',90,0),
 ('6b524da9-3993-96bf-5e33-50fec5ee0922','2013-01-22 16:59:41','2013-01-22 16:59:41','1','1','access','alan_logs','module',89,0),
 ('6bd1de67-0379-f456-f43c-50fec5394b33','2013-01-22 16:59:41','2013-01-22 16:59:41','1','1','view','alan_logs','module',90,0),
 ('6c409e18-f476-1433-7c3b-50fec5e316a6','2013-01-22 16:59:41','2013-01-22 16:59:41','1','1','list','alan_logs','module',90,0),
 ('6cc35d4d-1c57-ab9f-cbea-50fec570a96b','2013-01-22 16:59:41','2013-01-22 16:59:41','1','1','edit','alan_logs','module',90,0),
 ('6d3a54c1-ecbb-3e3e-1e30-50fec59e5604','2013-01-22 16:59:41','2013-01-22 16:59:41','1','1','delete','alan_logs','module',90,0),
 ('6dde5d7e-19a3-cd27-be65-50fec58a0469','2013-01-22 16:59:41','2013-01-22 16:59:41','1','1','import','alan_logs','module',90,0),
 ('6e5bd9c2-b9ca-d5fd-67b8-50fec5b5667b','2013-01-22 16:59:41','2013-01-22 16:59:41','1','1','export','alan_logs','module',90,0),
 ('6ed1bc8b-f058-ecb4-ca6c-50fec566e99b','2013-01-22 16:59:41','2013-01-22 16:59:41','1','1','massupdate','alan_logs','module',90,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;


--
-- Definition of table `procrm`.`acl_roles`
--

DROP TABLE IF EXISTS `procrm`.`acl_roles`;
CREATE TABLE  `procrm`.`acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`acl_roles`
--

/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
LOCK TABLES `acl_roles` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;


--
-- Definition of table `procrm`.`acl_roles_actions`
--

DROP TABLE IF EXISTS `procrm`.`acl_roles_actions`;
CREATE TABLE  `procrm`.`acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`acl_roles_actions`
--

/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
LOCK TABLES `acl_roles_actions` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;


--
-- Definition of table `procrm`.`acl_roles_users`
--

DROP TABLE IF EXISTS `procrm`.`acl_roles_users`;
CREATE TABLE  `procrm`.`acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`acl_roles_users`
--

/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
LOCK TABLES `acl_roles_users` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;


--
-- Definition of table `procrm`.`address_book`
--

DROP TABLE IF EXISTS `procrm`.`address_book`;
CREATE TABLE  `procrm`.`address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`address_book`
--

/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
LOCK TABLES `address_book` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;


--
-- Definition of table `procrm`.`alan_communicationlog`
--

DROP TABLE IF EXISTS `procrm`.`alan_communicationlog`;
CREATE TABLE  `procrm`.`alan_communicationlog` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `communication_type` varchar(50) DEFAULT NULL,
  `function_name` varchar(50) DEFAULT NULL,
  `send_data` text,
  `response` text,
  `date_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `object_type` varchar(20) DEFAULT NULL,
  `object_id` varchar(20) DEFAULT NULL,
  `request_serialized_data` text,
  `response_serialized_data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`alan_communicationlog`
--

/*!40000 ALTER TABLE `alan_communicationlog` DISABLE KEYS */;
LOCK TABLES `alan_communicationlog` WRITE;
INSERT INTO `procrm`.`alan_communicationlog` VALUES  ('ec82563a-3acf-5d85-9ef4-51038adf5f0d','','2013-01-26 07:51:12','2013-01-26 07:51:12','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 7591\n            [FirstName] => test\n            [LastName] => test\n            [Address] => test \n            [Address2] => \n            [Address3] => \n            [Address4] => \n            [PostCode] => 110010\n            [City] => Test\n            [State] => ND\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 1234567890\n            [EMail] => anilpawar1202@gmail.com\n            [Stylist] => false\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => JU11017260\n            [ShipToName] => test\n            [ShipToName2] => test\n            [ShipToAddress] => test \n            [ShipToAddress2] => \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 110010\n            [ShipToCity] => Test\n            [ShipToState] => ND\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 1234567890\n            [ShipToEMail] => anilpawar1202@gmail.com\n            [BillToName] => test\n            [BillToAddress] => test \n            [BillToAddress2] => \n            [BillToCity] => Test\n            [BillToPostCode] => 110010\n            [BillToCountry] => IN\n            [SalespersonCode] => hello\n            [PaymentMethod] => COD\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => false\n            [OrderDate] => 2013-01-02\n            [OrderTime] => 13:45:45\n            [OrderValue] => 8948\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 10000\n                    [ItemType] => Item\n                    [ItemCode] => JGFCNEC0812\n                    [Description] => \n                    [Color] => testcolor\n                    [Size] => testzise\n                    [Quantity] => 1\n                    [UnitAmount] => 950.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 20000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [2] => Array\n                (\n                    [LineNo] => 30000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [3] => Array\n                (\n                    [LineNo] => 40000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [4] => Array\n                (\n                    [LineNo] => 50000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => \n            [PaymentGateWay] => \n            [PaymentRefNo] => \n        )\n\n)\n','webservice_sucess','2013-01-26 07:51:12','fail','OrderNo','JU11017260',NULL,NULL),
 ('e636aa5d-97a0-b363-9263-51038d6c877e','','2013-01-26 08:01:40','2013-01-26 08:01:40','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 7591\n            [FirstName] => test\n            [LastName] => test\n            [Address] => test \n            [Address2] => \n            [Address3] => \n            [Address4] => \n            [PostCode] => 110010\n            [City] => Test\n            [State] => ND\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 1234567890\n            [EMail] => anilpawar1202@gmail.com\n            [Stylist] => false\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => HR11017260\n            [ShipToName] => test\n            [ShipToName2] => test\n            [ShipToAddress] => test \n            [ShipToAddress2] => \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 110010\n            [ShipToCity] => Test\n            [ShipToState] => ND\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 1234567890\n            [ShipToEMail] => anilpawar1202@gmail.com\n            [BillToName] => test\n            [BillToAddress] => test \n            [BillToAddress2] => \n            [BillToCity] => Test\n            [BillToPostCode] => 110010\n            [BillToCountry] => IN\n            [SalespersonCode] => hello\n            [PaymentMethod] => COD\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => false\n            [OrderDate] => 2013-01-02\n            [OrderTime] => 13:45:45\n            [OrderValue] => 8948\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 10000\n                    [ItemType] => Item\n                    [ItemCode] => JGFCNEC0812\n                    [Description] => \n                    [Color] => testcolor\n                    [Size] => testzise\n                    [Quantity] => 1\n                    [UnitAmount] => 950.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 20000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [2] => Array\n                (\n                    [LineNo] => 30000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [3] => Array\n                (\n                    [LineNo] => 40000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [4] => Array\n                (\n                    [LineNo] => 50000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => \n            [PaymentGateWay] => \n            [PaymentRefNo] => \n        )\n\n)\n','duplicate_order','2013-01-26 08:01:40','fail','OrderNo','HR11017260',NULL,NULL),
 ('a0aba4a9-511a-8723-bab0-51038d25532a','','2013-01-26 08:01:49','2013-01-26 08:01:49','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 7591\n            [FirstName] => test\n            [LastName] => test\n            [Address] => test \n            [Address2] => \n            [Address3] => \n            [Address4] => \n            [PostCode] => 110010\n            [City] => Test\n            [State] => ND\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 1234567890\n            [EMail] => anilpawar1202@gmail.com\n            [Stylist] => false\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => HR11017260\n            [ShipToName] => test\n            [ShipToName2] => test\n            [ShipToAddress] => test \n            [ShipToAddress2] => \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 110010\n            [ShipToCity] => Test\n            [ShipToState] => ND\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 1234567890\n            [ShipToEMail] => anilpawar1202@gmail.com\n            [BillToName] => test\n            [BillToAddress] => test \n            [BillToAddress2] => \n            [BillToCity] => Test\n            [BillToPostCode] => 110010\n            [BillToCountry] => IN\n            [SalespersonCode] => hello\n            [PaymentMethod] => COD\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => false\n            [OrderDate] => 2013-01-02\n            [OrderTime] => 13:45:45\n            [OrderValue] => 8948\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 10000\n                    [ItemType] => Item\n                    [ItemCode] => JGFCNEC0812\n                    [Description] => \n                    [Color] => testcolor\n                    [Size] => testzise\n                    [Quantity] => 1\n                    [UnitAmount] => 950.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 20000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [2] => Array\n                (\n                    [LineNo] => 30000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [3] => Array\n                (\n                    [LineNo] => 40000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [4] => Array\n                (\n                    [LineNo] => 50000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => \n            [PaymentGateWay] => \n            [PaymentRefNo] => \n        )\n\n)\n','duplicate_order','2013-01-26 08:01:49','fail','OrderNo','HR11017260',NULL,NULL),
 ('56072a41-3b80-f4ca-bbc0-51038d4044a2','','2013-01-26 08:01:59','2013-01-26 08:01:59','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 7591\n            [FirstName] => test\n            [LastName] => test\n            [Address] => test \n            [Address2] => \n            [Address3] => \n            [Address4] => \n            [PostCode] => 110010\n            [City] => Test\n            [State] => ND\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 1234567890\n            [EMail] => anilpawar1202@gmail.com\n            [Stylist] => false\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => OK11017260\n            [ShipToName] => test\n            [ShipToName2] => test\n            [ShipToAddress] => test \n            [ShipToAddress2] => \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 110010\n            [ShipToCity] => Test\n            [ShipToState] => ND\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 1234567890\n            [ShipToEMail] => anilpawar1202@gmail.com\n            [BillToName] => test\n            [BillToAddress] => test \n            [BillToAddress2] => \n            [BillToCity] => Test\n            [BillToPostCode] => 110010\n            [BillToCountry] => IN\n            [SalespersonCode] => hello\n            [PaymentMethod] => COD\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => false\n            [OrderDate] => 2013-01-02\n            [OrderTime] => 13:45:45\n            [OrderValue] => 8948\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 10000\n                    [ItemType] => Item\n                    [ItemCode] => JGFCNEC0812\n                    [Description] => \n                    [Color] => testcolor\n                    [Size] => testzise\n                    [Quantity] => 1\n                    [UnitAmount] => 950.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 20000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [2] => Array\n                (\n                    [LineNo] => 30000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [3] => Array\n                (\n                    [LineNo] => 40000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [4] => Array\n                (\n                    [LineNo] => 50000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => \n            [PaymentGateWay] => \n            [PaymentRefNo] => \n        )\n\n)\n','duplicate_order','2013-01-26 08:01:59','fail','OrderNo','OK11017260',NULL,NULL),
 ('58b99118-30e6-2ac4-4762-51038dbef817','','2013-01-26 08:02:00','2013-01-26 08:02:00','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 7591\n            [FirstName] => test\n            [LastName] => test\n            [Address] => test \n            [Address2] => \n            [Address3] => \n            [Address4] => \n            [PostCode] => 110010\n            [City] => Test\n            [State] => ND\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 1234567890\n            [EMail] => anilpawar1202@gmail.com\n            [Stylist] => false\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => OK11017260\n            [ShipToName] => test\n            [ShipToName2] => test\n            [ShipToAddress] => test \n            [ShipToAddress2] => \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 110010\n            [ShipToCity] => Test\n            [ShipToState] => ND\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 1234567890\n            [ShipToEMail] => anilpawar1202@gmail.com\n            [BillToName] => test\n            [BillToAddress] => test \n            [BillToAddress2] => \n            [BillToCity] => Test\n            [BillToPostCode] => 110010\n            [BillToCountry] => IN\n            [SalespersonCode] => hello\n            [PaymentMethod] => COD\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => false\n            [OrderDate] => 2013-01-02\n            [OrderTime] => 13:45:45\n            [OrderValue] => 8948\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 10000\n                    [ItemType] => Item\n                    [ItemCode] => JGFCNEC0812\n                    [Description] => \n                    [Color] => testcolor\n                    [Size] => testzise\n                    [Quantity] => 1\n                    [UnitAmount] => 950.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 20000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [2] => Array\n                (\n                    [LineNo] => 30000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [3] => Array\n                (\n                    [LineNo] => 40000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [4] => Array\n                (\n                    [LineNo] => 50000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => \n            [PaymentGateWay] => \n            [PaymentRefNo] => \n        )\n\n)\n','duplicate_order','2013-01-26 08:02:00','fail','OrderNo','OK11017260',NULL,NULL),
 ('c8550879-93ed-e063-de37-51038ddb6bd8','','2013-01-26 08:02:35','2013-01-26 08:02:35','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 7591\n            [FirstName] => test\n            [LastName] => test\n            [Address] => test \n            [Address2] => \n            [Address3] => \n            [Address4] => \n            [PostCode] => 110010\n            [City] => Test\n            [State] => ND\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 1234567890\n            [EMail] => anilpawar1202@gmail.com\n            [Stylist] => false\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => HR11017260\n            [ShipToName] => test\n            [ShipToName2] => test\n            [ShipToAddress] => test \n            [ShipToAddress2] => \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 110010\n            [ShipToCity] => Test\n            [ShipToState] => ND\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 1234567890\n            [ShipToEMail] => anilpawar1202@gmail.com\n            [BillToName] => test\n            [BillToAddress] => test \n            [BillToAddress2] => \n            [BillToCity] => Test\n            [BillToPostCode] => 110010\n            [BillToCountry] => IN\n            [SalespersonCode] => hello\n            [PaymentMethod] => COD\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => false\n            [OrderDate] => 2013-01-02\n            [OrderTime] => 13:45:45\n            [OrderValue] => 8948\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 10000\n                    [ItemType] => Item\n                    [ItemCode] => JGFCNEC0812\n                    [Description] => \n                    [Color] => testcolor\n                    [Size] => testzise\n                    [Quantity] => 1\n                    [UnitAmount] => 950.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 20000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [2] => Array\n                (\n                    [LineNo] => 30000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [3] => Array\n                (\n                    [LineNo] => 40000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [4] => Array\n                (\n                    [LineNo] => 50000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => \n            [PaymentGateWay] => \n            [PaymentRefNo] => \n        )\n\n)\n','duplicate_order','2013-01-26 08:02:35','fail','OrderNo','HR11017260',NULL,NULL),
 ('e2a55207-77f6-8015-dd0f-51038dc9c513','','2013-01-26 08:02:39','2013-01-26 08:02:39','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 7591\n            [FirstName] => test\n            [LastName] => test\n            [Address] => test \n            [Address2] => \n            [Address3] => \n            [Address4] => \n            [PostCode] => 110010\n            [City] => Test\n            [State] => ND\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 1234567890\n            [EMail] => anilpawar1202@gmail.com\n            [Stylist] => false\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => HR11017260\n            [ShipToName] => test\n            [ShipToName2] => test\n            [ShipToAddress] => test \n            [ShipToAddress2] => \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 110010\n            [ShipToCity] => Test\n            [ShipToState] => ND\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 1234567890\n            [ShipToEMail] => anilpawar1202@gmail.com\n            [BillToName] => test\n            [BillToAddress] => test \n            [BillToAddress2] => \n            [BillToCity] => Test\n            [BillToPostCode] => 110010\n            [BillToCountry] => IN\n            [SalespersonCode] => hello\n            [PaymentMethod] => COD\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => false\n            [OrderDate] => 2013-01-02\n            [OrderTime] => 13:45:45\n            [OrderValue] => 8948\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 10000\n                    [ItemType] => Item\n                    [ItemCode] => JGFCNEC0812\n                    [Description] => \n                    [Color] => testcolor\n                    [Size] => testzise\n                    [Quantity] => 1\n                    [UnitAmount] => 950.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 20000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [2] => Array\n                (\n                    [LineNo] => 30000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [3] => Array\n                (\n                    [LineNo] => 40000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [4] => Array\n                (\n                    [LineNo] => 50000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => \n            [PaymentGateWay] => \n            [PaymentRefNo] => \n        )\n\n)\n','duplicate_order','2013-01-26 08:02:39','fail','OrderNo','HR11017260',NULL,NULL),
 ('efee812e-b8df-83e8-03cd-5103a2e5c514','','2013-01-26 09:31:59','2013-01-26 09:31:59','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 7591\n            [FirstName] => test\n            [LastName] => test\n            [Address] => test \n            [Address2] => \n            [Address3] => \n            [Address4] => \n            [PostCode] => 110010\n            [City] => Test\n            [State] => ND\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 1234567890\n            [EMail] => anilpawar1202@gmail.com\n            [Stylist] => false\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => HR11017260\n            [ShipToName] => test\n            [ShipToName2] => test\n            [ShipToAddress] => test \n            [ShipToAddress2] => \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 110010\n            [ShipToCity] => Test\n            [ShipToState] => ND\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 1234567890\n            [ShipToEMail] => anilpawar1202@gmail.com\n            [BillToName] => test\n            [BillToAddress] => test \n            [BillToAddress2] => \n            [BillToCity] => Test\n            [BillToPostCode] => 110010\n            [BillToCountry] => IN\n            [SalespersonCode] => hello\n            [PaymentMethod] => COD\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => false\n            [OrderDate] => 2013-01-02\n            [OrderTime] => 13:45:45\n            [OrderValue] => 8948\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 10000\n                    [ItemType] => Item\n                    [ItemCode] => JGFCNEC0812\n                    [Description] => \n                    [Color] => testcolor\n                    [Size] => testzise\n                    [Quantity] => 1\n                    [UnitAmount] => 950.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 20000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [2] => Array\n                (\n                    [LineNo] => 30000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [3] => Array\n                (\n                    [LineNo] => 40000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [4] => Array\n                (\n                    [LineNo] => 50000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => \n            [PaymentGateWay] => \n            [PaymentRefNo] => \n        )\n\n)\n','duplicate_order','2013-01-26 09:31:59','fail','OrderNo','HR11017260',NULL,NULL),
 ('249668a2-c986-fe44-428b-5103a3c70b77','','2013-01-26 09:34:18','2013-01-26 09:34:18','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 7591\n            [FirstName] => test\n            [LastName] => test\n            [Address] => test \n            [Address2] => \n            [Address3] => \n            [Address4] => \n            [PostCode] => 110010\n            [City] => Test\n            [State] => ND\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 1234567890\n            [EMail] => anilpawar1202@gmail.com\n            [Stylist] => false\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => HR11017260\n            [ShipToName] => test\n            [ShipToName2] => test\n            [ShipToAddress] => test \n            [ShipToAddress2] => \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 110010\n            [ShipToCity] => Test\n            [ShipToState] => ND\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 1234567890\n            [ShipToEMail] => anilpawar1202@gmail.com\n            [BillToName] => test\n            [BillToAddress] => test \n            [BillToAddress2] => \n            [BillToCity] => Test\n            [BillToPostCode] => 110010\n            [BillToCountry] => IN\n            [SalespersonCode] => hello\n            [PaymentMethod] => COD\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => false\n            [OrderDate] => 2013-01-02\n            [OrderTime] => 13:45:45\n            [OrderValue] => 8948\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 10000\n                    [ItemType] => Item\n                    [ItemCode] => JGFCNEC0812\n                    [Description] => \n                    [Color] => testcolor\n                    [Size] => testzise\n                    [Quantity] => 1\n                    [UnitAmount] => 950.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 20000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [2] => Array\n                (\n                    [LineNo] => 30000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [3] => Array\n                (\n                    [LineNo] => 40000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [4] => Array\n                (\n                    [LineNo] => 50000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => \n            [PaymentGateWay] => \n            [PaymentRefNo] => \n        )\n\n)\n','duplicate_order','2013-01-26 09:34:18','fail','OrderNo','HR11017260',NULL,NULL),
 ('440945ec-4615-f0f9-0b3c-5103a35e0bdf','','2013-01-26 09:34:49','2013-01-26 09:34:49','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 7591\n            [FirstName] => test\n            [LastName] => test\n            [Address] => test \n            [Address2] => \n            [Address3] => \n            [Address4] => \n            [PostCode] => 110010\n            [City] => Test\n            [State] => ND\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 1234567890\n            [EMail] => anilpawar1202@gmail.com\n            [Stylist] => false\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => HR11017260\n            [ShipToName] => test\n            [ShipToName2] => test\n            [ShipToAddress] => test \n            [ShipToAddress2] => \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 110010\n            [ShipToCity] => Test\n            [ShipToState] => ND\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 1234567890\n            [ShipToEMail] => anilpawar1202@gmail.com\n            [BillToName] => test\n            [BillToAddress] => test \n            [BillToAddress2] => \n            [BillToCity] => Test\n            [BillToPostCode] => 110010\n            [BillToCountry] => IN\n            [SalespersonCode] => hello\n            [PaymentMethod] => COD\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => false\n            [OrderDate] => 2013-01-02\n            [OrderTime] => 13:45:45\n            [OrderValue] => 8948\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 10000\n                    [ItemType] => Item\n                    [ItemCode] => JGFCNEC0812\n                    [Description] => \n                    [Color] => testcolor\n                    [Size] => testzise\n                    [Quantity] => 1\n                    [UnitAmount] => 950.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 20000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [2] => Array\n                (\n                    [LineNo] => 30000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [3] => Array\n                (\n                    [LineNo] => 40000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [4] => Array\n                (\n                    [LineNo] => 50000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => \n            [PaymentGateWay] => \n            [PaymentRefNo] => \n        )\n\n)\n','duplicate_order','2013-01-26 09:34:49','fail','OrderNo','HR11017260',NULL,NULL),
 ('337521da-57d9-b213-92f3-5103a392daee','','2013-01-26 09:35:36','2013-01-26 09:35:36','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 7591\n            [FirstName] => test\n            [LastName] => test\n            [Address] => test \n            [Address2] => \n            [Address3] => \n            [Address4] => \n            [PostCode] => 110010\n            [City] => Test\n            [State] => ND\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 1234567890\n            [EMail] => anilpawar1202@gmail.com\n            [Stylist] => false\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => HR11017260\n            [ShipToName] => test\n            [ShipToName2] => test\n            [ShipToAddress] => test \n            [ShipToAddress2] => \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 110010\n            [ShipToCity] => Test\n            [ShipToState] => ND\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 1234567890\n            [ShipToEMail] => anilpawar1202@gmail.com\n            [BillToName] => test\n            [BillToAddress] => test \n            [BillToAddress2] => \n            [BillToCity] => Test\n            [BillToPostCode] => 110010\n            [BillToCountry] => IN\n            [SalespersonCode] => hello\n            [PaymentMethod] => COD\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => false\n            [OrderDate] => 2013-01-02\n            [OrderTime] => 13:45:45\n            [OrderValue] => 8948\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 10000\n                    [ItemType] => Item\n                    [ItemCode] => JGFCNEC0812\n                    [Description] => \n                    [Color] => testcolor\n                    [Size] => testzise\n                    [Quantity] => 1\n                    [UnitAmount] => 950.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 20000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [2] => Array\n                (\n                    [LineNo] => 30000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [3] => Array\n                (\n                    [LineNo] => 40000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [4] => Array\n                (\n                    [LineNo] => 50000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => \n            [PaymentGateWay] => \n            [PaymentRefNo] => \n        )\n\n)\n','duplicate_order','2013-01-26 09:35:36','fail','OrderNo','HR11017260',NULL,NULL),
 ('66ef5e6c-7b95-22de-b256-5103a336ec24','','2013-01-26 09:36:38','2013-01-26 09:36:38','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 7591\n            [FirstName] => test\n            [LastName] => test\n            [Address] => test \n            [Address2] => \n            [Address3] => \n            [Address4] => \n            [PostCode] => 110010\n            [City] => Test\n            [State] => ND\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 1234567890\n            [EMail] => anilpawar1202@gmail.com\n            [Stylist] => false\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => KR11017260\n            [ShipToName] => test\n            [ShipToName2] => test\n            [ShipToAddress] => test \n            [ShipToAddress2] => \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 110010\n            [ShipToCity] => Test\n            [ShipToState] => ND\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 1234567890\n            [ShipToEMail] => anilpawar1202@gmail.com\n            [BillToName] => test\n            [BillToAddress] => test \n            [BillToAddress2] => \n            [BillToCity] => Test\n            [BillToPostCode] => 110010\n            [BillToCountry] => IN\n            [SalespersonCode] => hello\n            [PaymentMethod] => COD\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => false\n            [OrderDate] => 2013-01-02\n            [OrderTime] => 13:45:45\n            [OrderValue] => 8948\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 10000\n                    [ItemType] => Item\n                    [ItemCode] => JGFCNEC0812\n                    [Description] => \n                    [Color] => testcolor\n                    [Size] => testzise\n                    [Quantity] => 1\n                    [UnitAmount] => 950.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 20000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [2] => Array\n                (\n                    [LineNo] => 30000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [3] => Array\n                (\n                    [LineNo] => 40000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [4] => Array\n                (\n                    [LineNo] => 50000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => \n            [PaymentGateWay] => \n            [PaymentRefNo] => \n        )\n\n)\n','webservice_sucess','2013-01-26 09:36:38','fail','OrderNo','KR11017260',NULL,NULL),
 ('3f494511-5759-a35c-8fdd-5103a4cda600','','2013-01-26 09:38:28','2013-01-26 09:38:28','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 7591\n            [FirstName] => test\n            [LastName] => test\n            [Address] => test \n            [Address2] => \n            [Address3] => \n            [Address4] => \n            [PostCode] => 110010\n            [City] => Test\n            [State] => ND\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 1234567890\n            [EMail] => anilpawar1202@gmail.com\n            [Stylist] => false\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => PR11017260\n            [ShipToName] => test\n            [ShipToName2] => test\n            [ShipToAddress] => test \n            [ShipToAddress2] => \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 110010\n            [ShipToCity] => Test\n            [ShipToState] => ND\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 1234567890\n            [ShipToEMail] => anilpawar1202@gmail.com\n            [BillToName] => test\n            [BillToAddress] => test \n            [BillToAddress2] => \n            [BillToCity] => Test\n            [BillToPostCode] => 110010\n            [BillToCountry] => IN\n            [SalespersonCode] => hello\n            [PaymentMethod] => COD\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => false\n            [OrderDate] => 2013-01-02\n            [OrderTime] => 13:45:45\n            [OrderValue] => 8948\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 10000\n                    [ItemType] => Item\n                    [ItemCode] => JGFCNEC0812\n                    [Description] => \n                    [Color] => testcolor\n                    [Size] => testzise\n                    [Quantity] => 1\n                    [UnitAmount] => 950.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 20000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [2] => Array\n                (\n                    [LineNo] => 30000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [3] => Array\n                (\n                    [LineNo] => 40000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [4] => Array\n                (\n                    [LineNo] => 50000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => \n            [PaymentGateWay] => \n            [PaymentRefNo] => \n        )\n\n)\n','webservice_sucess','2013-01-26 09:38:28','fail','OrderNo','PR11017260',NULL,NULL),
 ('bd8b7fc0-fcd0-1d3c-73c8-5103a4bc7b67','','2013-01-26 09:39:19','2013-01-26 09:39:19','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 7591\n            [FirstName] => test\n            [LastName] => test\n            [Address] => test \n            [Address2] => \n            [Address3] => \n            [Address4] => \n            [PostCode] => 110010\n            [City] => Test\n            [State] => ND\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 1234567890\n            [EMail] => anilpawar1202@gmail.com\n            [Stylist] => false\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => QA11017260\n            [ShipToName] => test\n            [ShipToName2] => test\n            [ShipToAddress] => test \n            [ShipToAddress2] => \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 110010\n            [ShipToCity] => Test\n            [ShipToState] => ND\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 1234567890\n            [ShipToEMail] => anilpawar1202@gmail.com\n            [BillToName] => test\n            [BillToAddress] => test \n            [BillToAddress2] => \n            [BillToCity] => Test\n            [BillToPostCode] => 110010\n            [BillToCountry] => IN\n            [SalespersonCode] => hello\n            [PaymentMethod] => COD\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => false\n            [OrderDate] => 2013-01-02\n            [OrderTime] => 13:45:45\n            [OrderValue] => 8948\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 10000\n                    [ItemType] => Item\n                    [ItemCode] => JGFCNEC0812\n                    [Description] => \n                    [Color] => testcolor\n                    [Size] => testzise\n                    [Quantity] => 1\n                    [UnitAmount] => 950.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 20000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [2] => Array\n                (\n                    [LineNo] => 30000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [3] => Array\n                (\n                    [LineNo] => 40000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [4] => Array\n                (\n                    [LineNo] => 50000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => \n            [PaymentGateWay] => \n            [PaymentRefNo] => \n        )\n\n)\n','webservice_sucess','2013-01-26 09:39:19','fail','OrderNo','QA11017260',NULL,NULL),
 ('acd30d06-6f7d-96ff-a7de-5103aae9e4ee','','2013-01-26 10:05:26','2013-01-26 10:05:26','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 7591\n            [FirstName] => test\n            [LastName] => test\n            [Address] => test \n            [Address2] => \n            [Address3] => \n            [Address4] => \n            [PostCode] => 110010\n            [City] => Test\n            [State] => ND\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 1234567890\n            [EMail] => anilpawar1202@gmail.com\n            [Stylist] => false\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => \n            [ShipToName] => test\n            [ShipToName2] => test\n            [ShipToAddress] => test \n            [ShipToAddress2] => \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 110010\n            [ShipToCity] => Test\n            [ShipToState] => ND\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 1234567890\n            [ShipToEMail] => anilpawar1202@gmail.com\n            [BillToName] => test\n            [BillToAddress] => test \n            [BillToAddress2] => \n            [BillToCity] => Test\n            [BillToPostCode] => 110010\n            [BillToCountry] => IN\n            [SalespersonCode] => hello\n            [PaymentMethod] => COD\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => false\n            [OrderDate] => 2013-01-02\n            [OrderTime] => 13:45:45\n            [OrderValue] => 8948\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 10000\n                    [ItemType] => Item\n                    [ItemCode] => JGFCNEC0812\n                    [Description] => \n                    [Color] => testcolor\n                    [Size] => testzise\n                    [Quantity] => 1\n                    [UnitAmount] => 950.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 20000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [2] => Array\n                (\n                    [LineNo] => 30000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDNEC0629\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [3] => Array\n                (\n                    [LineNo] => 40000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n            [4] => Array\n                (\n                    [LineNo] => 50000\n                    [ItemType] => Item\n                    [ItemCode] => JBBDEAR0630\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 0.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => 0\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => \n            [PaymentGateWay] => \n            [PaymentRefNo] => \n        )\n\n)\n','webservice_sucess','2013-01-26 10:05:26','fail','OrderNo','',NULL,NULL);
INSERT INTO `procrm`.`alan_communicationlog` VALUES  ('86591e08-a83f-5aca-d93f-5103f45fca81','','2013-01-26 15:21:14','2013-01-26 15:21:14','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 787\n            [FirstName] => Alan\n            [LastName] => Turing\n            [Address] => Test address\n            [Address2] => test address2\n            [Address3] => test address3\n            [Address4] => test address4\n            [PostCode] => 123456\n            [City] => test city\n            [State] => test state\n            [Country] => test country\n            [PhoneNo] => 123456789\n            [MobileNo] => 987654321\n            [EMail] => test.cust@gmail.com\n            [Stylist] => true\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => SLND09821\n            [ShipToName] => test ship name\n            [ShipToName2] => test ship name 2\n            [ShipToAddress] => test ship ads\n            [ShipToAddress2] => test ship ads2\n            [ShipToAddress3] => test sihip ads3\n            [ShipToAddress4] => test ship ads4\n            [ShipToPostCode] => 111111\n            [ShipToCity] => test ship city\n            [ShipToState] => test ship state\n            [ShipToCountry] => test ship country\n            [ShipToPhoneNo] => 222222\n            [ShipToMobileNo] => 8888888\n            [ShipToEMail] => ship2eamil@gmail.com\n            [BillToName] => bill test name\n            [BillToAddress] => bill test ads\n            [BillToAddress2] => bill test ads2\n            [BillToCity] => bill test city\n            [BillToPostCode] => 33333\n            [BillToCountry] => bill 2 cnt\n            [SalespersonCode] => sales person\n            [PaymentMethod] => PREPAID\n            [PG_FLAG] => Yes\n            [OrderStatus] => Confirmed\n            [MobileVerified] => true\n            [OrderDate] => 2013-01-05\n            [OrderTime] => 08:45:45\n            [OrderValue] => 9876\n            [PaymentDate] => 2013-01-05\n            [PaymentTime] => 08:50:45\n            [PaymentStatus] => confirmed\n            [AuthCode] => Test Auth code\n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 331\n                    [ItemType] => Item\n                    [ItemCode] => JGFC3331\n                    [Description] => test dec 331\n                    [Color] => red\n                    [Size] => 11inc\n                    [Quantity] => 3\n                    [UnitAmount] => 565.99\n                    [DiscountAmount] => 989.0000\n                    [ParentLineNo] => 1\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 332\n                    [ItemType] => Item\n                    [ItemCode] => JGF332\n                    [Description] => test desc 332\n                    [Color] => blue\n                    [Size] => 22\n                    [Quantity] => 4\n                    [UnitAmount] => 9.0000\n                    [DiscountAmount] => 2.0000\n                    [ParentLineNo] => 1\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => 9999\n            [PaymentGateWay] => HDFC\n            [PaymentRefNo] => HDFC989898909\n        )\n\n)\n','duplicate_order','2013-01-26 15:21:14','fail','OrderNo','SLND09821',NULL,NULL),
 ('cc169f58-a6ec-2ebb-2078-5103f44536eb','','2013-01-26 15:21:33','2013-01-26 15:21:33','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 787\n            [FirstName] => Alan\n            [LastName] => Turing\n            [Address] => Test address\n            [Address2] => test address2\n            [Address3] => test address3\n            [Address4] => test address4\n            [PostCode] => 123456\n            [City] => test city\n            [State] => test state\n            [Country] => test country\n            [PhoneNo] => 123456789\n            [MobileNo] => 987654321\n            [EMail] => test.cust@gmail.com\n            [Stylist] => true\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => SLND09822\n            [ShipToName] => test ship name\n            [ShipToName2] => test ship name 2\n            [ShipToAddress] => test ship ads\n            [ShipToAddress2] => test ship ads2\n            [ShipToAddress3] => test sihip ads3\n            [ShipToAddress4] => test ship ads4\n            [ShipToPostCode] => 111111\n            [ShipToCity] => test ship city\n            [ShipToState] => test ship state\n            [ShipToCountry] => test ship country\n            [ShipToPhoneNo] => 222222\n            [ShipToMobileNo] => 8888888\n            [ShipToEMail] => ship2eamil@gmail.com\n            [BillToName] => bill test name\n            [BillToAddress] => bill test ads\n            [BillToAddress2] => bill test ads2\n            [BillToCity] => bill test city\n            [BillToPostCode] => 33333\n            [BillToCountry] => bill 2 cnt\n            [SalespersonCode] => sales person\n            [PaymentMethod] => PREPAID\n            [PG_FLAG] => Yes\n            [OrderStatus] => Confirmed\n            [MobileVerified] => true\n            [OrderDate] => 2013-01-05\n            [OrderTime] => 08:45:45\n            [OrderValue] => 9876\n            [PaymentDate] => 2013-01-05\n            [PaymentTime] => 08:50:45\n            [PaymentStatus] => confirmed\n            [AuthCode] => Test Auth code\n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 331\n                    [ItemType] => Item\n                    [ItemCode] => JGFC3331\n                    [Description] => test dec 331\n                    [Color] => red\n                    [Size] => 11inc\n                    [Quantity] => 3\n                    [UnitAmount] => 565.99\n                    [DiscountAmount] => 989.0000\n                    [ParentLineNo] => 1\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 332\n                    [ItemType] => Item\n                    [ItemCode] => JGF332\n                    [Description] => test desc 332\n                    [Color] => blue\n                    [Size] => 22\n                    [Quantity] => 4\n                    [UnitAmount] => 9.0000\n                    [DiscountAmount] => 2.0000\n                    [ParentLineNo] => 1\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => 9999\n            [PaymentGateWay] => HDFC\n            [PaymentRefNo] => HDFC989898909\n        )\n\n)\n','duplicate_order','2013-01-26 15:21:33','fail','OrderNo','SLND09822',NULL,NULL),
 ('8608a24a-d896-a59b-90ea-5103f40fa571','','2013-01-26 15:23:08','2013-01-26 15:23:08','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 787\n            [FirstName] => Alan\n            [LastName] => Turing\n            [Address] => Test address\n            [Address2] => test address2\n            [Address3] => test address3\n            [Address4] => test address4\n            [PostCode] => 123456\n            [City] => test city\n            [State] => test state\n            [Country] => test country\n            [PhoneNo] => 123456789\n            [MobileNo] => 987654321\n            [EMail] => test.cust@gmail.com\n            [Stylist] => true\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => SLND09822\n            [ShipToName] => test ship name\n            [ShipToName2] => test ship name 2\n            [ShipToAddress] => test ship ads\n            [ShipToAddress2] => test ship ads2\n            [ShipToAddress3] => test sihip ads3\n            [ShipToAddress4] => test ship ads4\n            [ShipToPostCode] => 111111\n            [ShipToCity] => test ship city\n            [ShipToState] => test ship state\n            [ShipToCountry] => test ship country\n            [ShipToPhoneNo] => 222222\n            [ShipToMobileNo] => 8888888\n            [ShipToEMail] => ship2eamil@gmail.com\n            [BillToName] => bill test name\n            [BillToAddress] => bill test ads\n            [BillToAddress2] => bill test ads2\n            [BillToCity] => bill test city\n            [BillToPostCode] => 33333\n            [BillToCountry] => bill 2 cnt\n            [SalespersonCode] => sales person\n            [PaymentMethod] => PREPAID\n            [PG_FLAG] => Yes\n            [OrderStatus] => Confirmed\n            [MobileVerified] => true\n            [OrderDate] => 2013-01-05\n            [OrderTime] => 08:45:45\n            [OrderValue] => 9876\n            [PaymentDate] => 2013-01-05\n            [PaymentTime] => 08:50:45\n            [PaymentStatus] => confirmed\n            [AuthCode] => Test Auth code\n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 331\n                    [ItemType] => Item\n                    [ItemCode] => JGFC3331\n                    [Description] => test dec 331\n                    [Color] => red\n                    [Size] => 11inc\n                    [Quantity] => 3\n                    [UnitAmount] => 565.99\n                    [DiscountAmount] => 989.0000\n                    [ParentLineNo] => 1\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 332\n                    [ItemType] => Item\n                    [ItemCode] => JGF332\n                    [Description] => test desc 332\n                    [Color] => blue\n                    [Size] => 22\n                    [Quantity] => 4\n                    [UnitAmount] => 9.0000\n                    [DiscountAmount] => 2.0000\n                    [ParentLineNo] => 1\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => 9999\n            [PaymentGateWay] => HDFC\n            [PaymentRefNo] => HDFC989898909\n        )\n\n)\n','webservice_sucess','2013-01-26 15:23:08','success','OrderNo','SLND09822',NULL,NULL),
 ('dc4f0692-b412-98f1-8bdf-5103f75e5bbf','','2013-01-26 15:33:57','2013-01-26 15:33:57','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 787\n            [FirstName] => Alan\n            [LastName] => Turing\n            [Address] => Test address\n            [Address2] => test address2\n            [Address3] => test address3\n            [Address4] => test address4\n            [PostCode] => 123456\n            [City] => test city\n            [State] => test state\n            [Country] => test country\n            [PhoneNo] => 123456789\n            [MobileNo] => 987654321\n            [EMail] => test.cust@gmail.com\n            [Stylist] => true\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => SLND09899\n            [ShipToName] => test ship name\n            [ShipToName2] => test ship name 2\n            [ShipToAddress] => test ship ads\n            [ShipToAddress2] => test ship ads2\n            [ShipToAddress3] => test sihip ads3\n            [ShipToAddress4] => test ship ads4\n            [ShipToPostCode] => 111111\n            [ShipToCity] => test ship city\n            [ShipToState] => test ship state\n            [ShipToCountry] => test ship country\n            [ShipToPhoneNo] => 222222\n            [ShipToMobileNo] => 8888888\n            [ShipToEMail] => ship2eamil@gmail.com\n            [BillToName] => bill test name\n            [BillToAddress] => bill test ads\n            [BillToAddress2] => bill test ads2\n            [BillToCity] => bill test city\n            [BillToPostCode] => 33333\n            [BillToCountry] => bill 2 cnt\n            [SalespersonCode] => sales person\n            [PaymentMethod] => PREPAID\n            [PG_FLAG] => Yes\n            [OrderStatus] => Confirmed\n            [MobileVerified] => true\n            [OrderDate] => 2013-01-05\n            [OrderTime] => 08:45:45\n            [OrderValue] => 9876\n            [PaymentDate] => 2013-01-05\n            [PaymentTime] => 08:50:45\n            [PaymentStatus] => confirmed\n            [AuthCode] => Test Auth code\n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 331\n                    [ItemType] => Item\n                    [ItemCode] => JGFC3331\n                    [Description] => test dec 331\n                    [Color] => red\n                    [Size] => 11inc\n                    [Quantity] => 3\n                    [UnitAmount] => 565.99\n                    [DiscountAmount] => 989.0000\n                    [ParentLineNo] => 1\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 332\n                    [ItemType] => Item\n                    [ItemCode] => JGF332\n                    [Description] => test desc 332\n                    [Color] => blue\n                    [Size] => 22\n                    [Quantity] => 4\n                    [UnitAmount] => 9.0000\n                    [DiscountAmount] => 2.0000\n                    [ParentLineNo] => 1\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => 9999\n            [PaymentGateWay] => HDFC\n            [PaymentRefNo] => HDFC989898909\n        )\n\n)\n','webservice_sucess','2013-01-26 15:33:57','success','OrderNo','SLND09899',NULL,NULL),
 ('854e7d3c-c1e1-500e-2f83-51048f2acae1','','2013-01-27 02:22:34','2013-01-27 02:22:34','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 878\n            [FirstName] => Alan\n            [LastName] => Turing\n            [Address] => Test address\n            [Address2] => test address2\n            [Address3] => test address3\n            [Address4] => test address4\n            [PostCode] => 123456\n            [City] => test city\n            [State] => test state\n            [Country] => test country\n            [PhoneNo] => 123456789\n            [MobileNo] => 987654321\n            [EMail] => test.cust@gmail.com\n            [Stylist] => true\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => SLND09989\n            [ShipToName] => test ship name\n            [ShipToName2] => test ship name 2\n            [ShipToAddress] => test ship ads\n            [ShipToAddress2] => test ship ads2\n            [ShipToAddress3] => test sihip ads3\n            [ShipToAddress4] => test ship ads4\n            [ShipToPostCode] => 111111\n            [ShipToCity] => test ship city\n            [ShipToState] => test ship state\n            [ShipToCountry] => test ship country\n            [ShipToPhoneNo] => 222222\n            [ShipToMobileNo] => 8888888\n            [ShipToEMail] => ship2eamil@gmail.com\n            [BillToName] => bill test name\n            [BillToAddress] => bill test ads\n            [BillToAddress2] => bill test ads2\n            [BillToCity] => bill test city\n            [BillToPostCode] => 33333\n            [BillToCountry] => bill 2 cnt\n            [SalespersonCode] => sales person\n            [PaymentMethod] => PREPAID\n            [PG_FLAG] => Yes\n            [OrderStatus] => Confirmed\n            [MobileVerified] => true\n            [OrderDate] => 2013-01-05\n            [OrderTime] => 08:45:45\n            [OrderValue] => 9876\n            [PaymentDate] => 2013-01-06\n            [PaymentTime] => 08:50:45\n            [PaymentStatus] => confirmed\n            [AuthCode] => Test Auth code\n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 331\n                    [ItemType] => Item\n                    [ItemCode] => JGFC3331\n                    [Description] => test dec 331\n                    [Color] => red\n                    [Size] => 11inc\n                    [Quantity] => 3\n                    [UnitAmount] => 565.99\n                    [DiscountAmount] => 989.0000\n                    [ParentLineNo] => 1\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 332\n                    [ItemType] => Item\n                    [ItemCode] => JGF332\n                    [Description] => test desc 332\n                    [Color] => blue\n                    [Size] => 22\n                    [Quantity] => 4\n                    [UnitAmount] => 9.0000\n                    [DiscountAmount] => 2.0000\n                    [ParentLineNo] => 1\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => 9999\n            [PaymentGateWay] => HDFC\n            [PaymentRefNo] => HDFC989898909\n        )\n\n)\n','webservice_sucess','2013-01-27 02:22:34','success','OrderNo','SLND09989',NULL,NULL),
 ('85d7b0e1-89a8-0c9c-799e-510491277a58','','2013-01-27 02:29:36','2013-01-27 02:29:36','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 987\n            [FirstName] => Dev\n            [LastName] => Man\n            [Address] => Test address\n            [Address2] => test address2\n            [Address3] => test address3\n            [Address4] => test address4\n            [PostCode] => 123456\n            [City] => test city\n            [State] => test state\n            [Country] => test country\n            [PhoneNo] => 123456789\n            [MobileNo] => 987654321\n            [EMail] => test.cust@gmail.com\n            [Stylist] => true\n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => SLND090\n            [ShipToName] => test ship name\n            [ShipToName2] => test ship name 2\n            [ShipToAddress] => test ship ads\n            [ShipToAddress2] => test ship ads2\n            [ShipToAddress3] => test sihip ads3\n            [ShipToAddress4] => test ship ads4\n            [ShipToPostCode] => 111111\n            [ShipToCity] => test ship city\n            [ShipToState] => test ship state\n            [ShipToCountry] => test ship country\n            [ShipToPhoneNo] => 222222\n            [ShipToMobileNo] => 8888888\n            [ShipToEMail] => ship2eamil@gmail.com\n            [BillToName] => bill test name\n            [BillToAddress] => bill test ads\n            [BillToAddress2] => bill test ads2\n            [BillToCity] => bill test city\n            [BillToPostCode] => 33333\n            [BillToCountry] => bill 2 cnt\n            [SalespersonCode] => sales person\n            [PaymentMethod] => PREPAID\n            [PG_FLAG] => Yes\n            [OrderStatus] => Confirmed\n            [MobileVerified] => true\n            [OrderDate] => 2013-01-05\n            [OrderTime] => 08:45:45\n            [OrderValue] => 9876\n            [PaymentDate] => 2013-01-05\n            [PaymentTime] => 08:50:45\n            [PaymentStatus] => confirmed\n            [AuthCode] => Test Auth code\n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 331\n                    [ItemType] => Item\n                    [ItemCode] => JGFC3331\n                    [Description] => test dec 331\n                    [Color] => red\n                    [Size] => 11inc\n                    [Quantity] => 3\n                    [UnitAmount] => 565.99\n                    [DiscountAmount] => 989.0000\n                    [ParentLineNo] => 1\n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 332\n                    [ItemType] => Item\n                    [ItemCode] => JGF332\n                    [Description] => test desc 332\n                    [Color] => blue\n                    [Size] => 22\n                    [Quantity] => 4\n                    [UnitAmount] => 9.0000\n                    [DiscountAmount] => 2.0000\n                    [ParentLineNo] => 1\n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => 9999\n            [PaymentGateWay] => HDFC\n            [PaymentRefNo] => HDFC989898909\n        )\n\n)\n','webservice_sucess','2013-01-27 02:29:36','success','OrderNo','SLND090',NULL,NULL),
 ('5b17217c-8dea-cf9d-a562-510f7e973138','','2013-02-04 09:24:07','2013-02-04 09:24:07',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('704cba97-9f7a-6822-aacc-510f7e3ea64e','','2013-02-04 09:24:07','2013-02-04 09:24:07',NULL,NULL,NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 1500\n            [FirstName] => elavarasi\n            [LastName] => janardhanan\n            [Address] => 1/5 Sreepuram 2nd Street,\n            [Address2] => Royapettah \n            [Address3] => \n            [Address4] => \n            [PostCode] => 600014\n            [City] => Chennai\n            [State] => TN\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 9884145205\n            [EMail] => elujes@gmail.com\n            [Stylist] => \n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => JU10000125\n            [ShipToName] => elavarasi\n            [ShipToName2] => janardhanan\n            [ShipToAddress] => 1/5 Sreepuram 2nd Street,\n            [ShipToAddress2] => Royapettah \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 600014\n            [ShipToCity] => Chennai\n            [ShipToState] => TN\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 9884145205\n            [ShipToEMail] => \n            [BillToName] => elavarasi\n            [BillToName2] => janardhanan\n            [BillToAddress] => 1/5 Sreepuram 2nd Street,\n            [BillToAddress2] => Royapettah \n            [BillToCity] => Chennai\n            [BillToPostCode] => 600014\n            [BillToCountry] => IN\n            [SalespersonCode] => \n            [PaymentMethod] => PREPAID\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => true\n            [OrderDate] => 2012-06-26\n            [OrderTime] => 12:21:11\n            [OrderValue] => 450\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [LineNo] => 20000\n            [ItemType] => Item\n            [ItemCode] => JS12EAR0018\n            [Description] => \n            [Color] => \n            [Size] => \n            [Quantity] => 1\n            [UnitAmount] => 450.0000\n            [DiscountAmount] => 0.0000\n            [ParentLineNo] => \n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => 450\n            [PaymentGateWay] => EBS\n            [PaymentRefNo] => \n        )\n\n)\n','invalid_session','2013-02-04 09:24:07','fail','OrderNo','JU10000125',NULL,NULL),
 ('749b3212-b84e-ba22-263c-510f7ea2eac4','','2013-02-04 09:24:32','2013-02-04 09:24:32','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 1500\n            [FirstName] => elavarasi\n            [LastName] => janardhanan\n            [Address] => 1/5 Sreepuram 2nd Street,\n            [Address2] => Royapettah \n            [Address3] => \n            [Address4] => \n            [PostCode] => 600014\n            [City] => Chennai\n            [State] => TN\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 9884145205\n            [EMail] => elujes@gmail.com\n            [Stylist] => \n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => JU10000125\n            [ShipToName] => elavarasi\n            [ShipToName2] => janardhanan\n            [ShipToAddress] => 1/5 Sreepuram 2nd Street,\n            [ShipToAddress2] => Royapettah \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 600014\n            [ShipToCity] => Chennai\n            [ShipToState] => TN\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 9884145205\n            [ShipToEMail] => \n            [BillToName] => elavarasi\n            [BillToName2] => janardhanan\n            [BillToAddress] => 1/5 Sreepuram 2nd Street,\n            [BillToAddress2] => Royapettah \n            [BillToCity] => Chennai\n            [BillToPostCode] => 600014\n            [BillToCountry] => IN\n            [SalespersonCode] => \n            [PaymentMethod] => PREPAID\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => true\n            [OrderDate] => 2012-06-26\n            [OrderTime] => 12:21:11\n            [OrderValue] => 450\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [LineNo] => 20000\n            [ItemType] => Item\n            [ItemCode] => JS12EAR0018\n            [Description] => \n            [Color] => \n            [Size] => \n            [Quantity] => 1\n            [UnitAmount] => 450.0000\n            [DiscountAmount] => 0.0000\n            [ParentLineNo] => \n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => 450\n            [PaymentGateWay] => EBS\n            [PaymentRefNo] => \n        )\n\n)\n','webservice_sucess','2013-02-04 09:24:32','success','OrderNo','JU10000125',NULL,NULL),
 ('47a3b164-b401-3263-e6fd-510f7ed0c410','','2013-02-04 09:25:57','2013-02-04 09:25:57','1','1',NULL,0,NULL,'Erp_CRM_New_Sale_Order','ErpCrmWebserviceSoap::CreateSalesOrder','Array\n(\n    [Customer] => Array\n        (\n            [CustomerType] => B2C\n            [WebCustomerNo] => 1500\n            [FirstName] => elavarasi\n            [LastName] => janardhanan\n            [Address] => 1/5 Sreepuram 2nd Street,\n            [Address2] => Royapettah \n            [Address3] => \n            [Address4] => \n            [PostCode] => 600014\n            [City] => Chennai\n            [State] => TN\n            [Country] => IN\n            [PhoneNo] => \n            [MobileNo] => 9884145205\n            [EMail] => elujes@gmail.com\n            [Stylist] => \n        )\n\n    [SalesHeader] => Array\n        (\n            [SalesOrderNo] => JU10000128\n            [ShipToName] => elavarasi\n            [ShipToName2] => janardhanan\n            [ShipToAddress] => 1/5 Sreepuram 2nd Street,\n            [ShipToAddress2] => Royapettah \n            [ShipToAddress3] => \n            [ShipToAddress4] => \n            [ShipToPostCode] => 600014\n            [ShipToCity] => Chennai\n            [ShipToState] => TN\n            [ShipToCountry] => IN\n            [ShipToPhoneNo] => \n            [ShipToMobileNo] => 9884145205\n            [ShipToEMail] => \n            [BillToName] => elavarasi\n            [BillToName2] => janardhanan\n            [BillToAddress] => 1/5 Sreepuram 2nd Street,\n            [BillToAddress2] => Royapettah \n            [BillToCity] => Chennai\n            [BillToPostCode] => 600014\n            [BillToCountry] => IN\n            [SalespersonCode] => \n            [PaymentMethod] => PREPAID\n            [PG_FLAG] => NO\n            [OrderStatus] => processing\n            [MobileVerified] => true\n            [OrderDate] => 2012-06-26\n            [OrderTime] => 12:21:11\n            [OrderValue] => 450\n            [PaymentDate] => \n            [PaymentTime] => \n            [PaymentStatus] => \n            [AuthCode] => \n        )\n\n    [SalesLine] => Array\n        (\n            [0] => Array\n                (\n                    [LineNo] => 200987\n                    [ItemType] => Item\n                    [ItemCode] => JS12EAR0018\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 450.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => \n                )\n\n            [1] => Array\n                (\n                    [LineNo] => 20000\n                    [ItemType] => Item\n                    [ItemCode] => JS12EAR0018\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 450.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => \n                )\n\n            [2] => Array\n                (\n                    [LineNo] => 20099\n                    [ItemType] => Item\n                    [ItemCode] => JS12EAR0018\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 450.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => \n                )\n\n            [3] => Array\n                (\n                    [LineNo] => 20001\n                    [ItemType] => Item\n                    [ItemCode] => JS12EAR0018\n                    [Description] => \n                    [Color] => \n                    [Size] => \n                    [Quantity] => 1\n                    [UnitAmount] => 450.0000\n                    [DiscountAmount] => 0.0000\n                    [ParentLineNo] => \n                )\n\n        )\n\n    [PaymentLine] => Array\n        (\n            [Amount] => 450\n            [PaymentGateWay] => EBS\n            [PaymentRefNo] => \n        )\n\n)\n','webservice_sucess','2013-02-04 09:25:57','success','OrderNo','JU10000128',NULL,NULL),
 ('7ae10944-af1a-c9f2-6f3a-5117999d25f5','','2013-02-10 12:59:33','2013-02-10 12:59:33','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,NULL,'Magen_CRM_Order_Status_Change','ErpCrmWebserviceSoap::ChangeOrderStatusByMagen','Array\n(\n    [SalesOrderNo] => SLND0998911\n    [OrderStatus] => processing\n)\n','order_no_not_exists','2013-02-10 12:59:33','fail','OrderNo','SLND0998911',NULL,NULL),
 ('b06719d2-c611-c244-cae6-511799c2f320','','2013-02-10 12:59:45','2013-02-10 12:59:45','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,NULL,'Magen_CRM_Order_Status_Change','ErpCrmWebserviceSoap::ChangeOrderStatusByMagen','Array\n(\n    [SalesOrderNo] => SLND09989\n    [OrderStatus] => \n)\n','empty_order_status','2013-02-10 12:59:45','fail','OrderNo','SLND09989',NULL,NULL),
 ('1a8fa4c4-b911-6971-f914-511799789c39','','2013-02-10 12:59:55','2013-02-10 12:59:55','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,NULL,'Magen_CRM_Order_Status_Change','ErpCrmWebserviceSoap::ChangeOrderStatusByMagen','Array\n(\n    [SalesOrderNo] => SLND09989\n    [OrderStatus] => processing\n)\n','order_status_not_changable','2013-02-10 12:59:55','fail','OrderNo','SLND09989',NULL,NULL),
 ('d7e8249e-503d-4bc6-f9b2-51179abfd9e1','','2013-02-10 13:01:05','2013-02-10 13:01:05','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,NULL,'Magen_CRM_Order_Status_Change','ErpCrmWebserviceSoap::ChangeOrderStatusByMagen','Array\n(\n    [SalesOrderNo] => SLND09989\n    [OrderStatus] => processing\n)\n','webservice_sucess','2013-02-10 13:01:05','success','OrderNo','SLND09989',NULL,NULL),
 ('e6a8ca9c-c128-69fa-0e5b-51179aa89026','','2013-02-10 13:02:56','2013-02-10 13:02:56','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,NULL,'Magen_CRM_Order_Status_Change','ErpCrmWebserviceSoap::ChangeOrderStatusByMagen','Array\n(\n    [SalesOrderNo] => SLND09989\n    [OrderStatus] => prepaid\n)\n','webservice_sucess','2013-02-10 13:02:56','success','OrderNo','SLND09989',NULL,NULL),
 ('a362e043-3051-4f39-9923-51179bb63d42','','2013-02-10 13:08:54','2013-02-10 13:08:54','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,NULL,'Unicom_CRM_Order_Status_Change','ErpCrmWebserviceSoap::ChangeOrderStatusByUnicom','Array\n(\n    [SalesOrderNo] => SLND09989\n    [OrderStatus] => prepaid\n)\n','order_status_not_changable','2013-02-10 13:08:54','fail','OrderNo','SLND09989',NULL,NULL),
 ('688c638c-9523-b376-caf4-51179ca94a72','','2013-02-10 13:10:43','2013-02-10 13:10:43','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,NULL,'Unicom_CRM_Order_Status_Change','ErpCrmWebserviceSoap::ChangeOrderStatusByUnicom','Array\n(\n    [SalesOrderNo] => SLND09989\n    [OrderStatus] => complete_confirmed-delivered\n)\n','webservice_sucess','2013-02-10 13:10:43','success','OrderNo','SLND09989',NULL,NULL),
 ('95d278bc-385d-d4dd-3a67-51179f53b220','','2013-02-10 13:22:51','2013-02-10 13:22:51','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,NULL,'Magen_CRM_Order_Status_Change','ErpCrmWebserviceSoap::ChangeOrderStatusByMagen','Array\n(\n    [SalesOrderNo] => SLND09989\n    [OrderStatus] => prepaid\n)\n','webservice_sucess','2013-02-10 13:22:51','success','OrderNo','SLND09989',NULL,NULL),
 ('216fc33c-1701-e00f-3fe7-51179ff49121','','2013-02-10 13:23:01','2013-02-10 13:23:01','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,NULL,'Unicom_CRM_Order_Status_Change','ErpCrmWebserviceSoap::ChangeOrderStatusByUnicom','Array\n(\n    [SalesOrderNo] => SLND09989\n    [OrderStatus] => complete_confirmed-delivered\n)\n','webservice_sucess','2013-02-10 13:23:01','success','OrderNo','SLND09989',NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `alan_communicationlog` ENABLE KEYS */;


--
-- Definition of table `procrm`.`alan_communicationlog_audit`
--

DROP TABLE IF EXISTS `procrm`.`alan_communicationlog_audit`;
CREATE TABLE  `procrm`.`alan_communicationlog_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_alan_communicationlog_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`alan_communicationlog_audit`
--

/*!40000 ALTER TABLE `alan_communicationlog_audit` DISABLE KEYS */;
LOCK TABLES `alan_communicationlog_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `alan_communicationlog_audit` ENABLE KEYS */;


--
-- Definition of table `procrm`.`alan_logs`
--

DROP TABLE IF EXISTS `procrm`.`alan_logs`;
CREATE TABLE  `procrm`.`alan_logs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `source_file` varchar(255) DEFAULT NULL,
  `func` varchar(255) DEFAULT NULL,
  `line` int(10) DEFAULT NULL,
  `issue` text,
  `serialized_data` text,
  `issue_level` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`alan_logs`
--

/*!40000 ALTER TABLE `alan_logs` DISABLE KEYS */;
LOCK TABLES `alan_logs` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `alan_logs` ENABLE KEYS */;


--
-- Definition of table `procrm`.`alan_logs_audit`
--

DROP TABLE IF EXISTS `procrm`.`alan_logs_audit`;
CREATE TABLE  `procrm`.`alan_logs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_alan_logs_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`alan_logs_audit`
--

/*!40000 ALTER TABLE `alan_logs_audit` DISABLE KEYS */;
LOCK TABLES `alan_logs_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `alan_logs_audit` ENABLE KEYS */;


--
-- Definition of table `procrm`.`alan_orderaddress`
--

DROP TABLE IF EXISTS `procrm`.`alan_orderaddress`;
CREATE TABLE  `procrm`.`alan_orderaddress` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `name2` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `address2` varchar(150) DEFAULT NULL,
  `address3` varchar(150) DEFAULT NULL,
  `address4` varchar(150) DEFAULT NULL,
  `postcode` varchar(6) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `phoneno` varchar(15) DEFAULT NULL,
  `mobileno` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address_type` varchar(100) DEFAULT 'shipping',
  `orderno` varchar(50) DEFAULT NULL,
  `orderid` int(10) DEFAULT NULL,
  `webcustomerno` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`alan_orderaddress`
--

/*!40000 ALTER TABLE `alan_orderaddress` DISABLE KEYS */;
LOCK TABLES `alan_orderaddress` WRITE;
INSERT INTO `procrm`.`alan_orderaddress` VALUES  ('eb3b765c-1a09-578a-e223-51038c0951cd','test','2013-01-26 07:58:35','2013-01-26 07:58:35','1','1',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'shipping',NULL,NULL,NULL),
 ('4f0c3942-5005-7aa2-e863-51038c20907f','test','2013-01-26 07:58:59','2013-01-26 07:58:59','1','1',NULL,0,NULL,'test','test ','','','','110010',NULL,NULL,NULL,NULL,NULL,NULL,'shipping',NULL,NULL,NULL),
 ('74634a42-cc9e-9e60-e0f5-51038c3cc569','test','2013-01-26 07:59:14','2013-01-26 07:59:14','1','1',NULL,0,NULL,'test','test ','','','','110010','Test','ND','IN','','1234567890','anilpawar1202@gmail.com','shipping',NULL,NULL,NULL),
 ('9a2b49e9-6898-e8bb-2759-51038c8d5bb3','test','2013-01-26 07:59:15','2013-01-26 07:59:15','1','1',NULL,0,NULL,'test','test ','','','','110010','Test','ND','IN','','1234567890','anilpawar1202@gmail.com','shipping',NULL,NULL,NULL),
 ('60724103-bda3-de0a-9ff8-51038ce4f4c1','test','2013-01-26 07:59:25','2013-01-26 07:59:25','1','1',NULL,0,NULL,'test','test ','','','','110010','Test','ND','IN','','1234567890','anilpawar1202@gmail.com','shipping','JU11017260',NULL,NULL),
 ('3c2bee0f-e62d-c39a-afb2-51038cce1e68','test','2013-01-26 07:59:37','2013-01-26 07:59:37','1','1',NULL,0,NULL,'test','test ','','','','110010','Test','ND','IN','','1234567890','anilpawar1202@gmail.com','shipping','JU11017260',NULL,7591),
 ('b8514438-6964-9d4f-1dff-51038c3bd3d6','test','2013-01-26 07:59:49','2013-01-26 07:59:49','1','1',NULL,0,NULL,'test','test ','','','','110010','Test','ND','IN','','1234567890','anilpawar1202@gmail.com','shipping','JU11017260',NULL,7591),
 ('a4937fd6-5ada-26a3-fea5-51038d58266d','test','2013-01-26 08:00:03','2013-01-26 08:00:03','1','1',NULL,0,'1','test','test ','','','','110010','Test','ND','IN','','1234567890','anilpawar1202@gmail.com','shipping','JU11017260',NULL,7591),
 ('45530de4-5d3a-7225-d747-51038d7aab72','test','2013-01-26 08:00:52','2013-01-26 08:00:52','1','1',NULL,0,'1','test','test ','','','','110010','Test','ND','IN','','1234567890','anilpawar1202@gmail.com','shipping','JU11017260',NULL,7591),
 ('df3f383d-d1c2-5db7-be38-51038d0b4069','test','2013-01-26 08:02:06','2013-01-26 08:02:06','1','1',NULL,0,'1','test','test ','','','','110010','Test','ND','IN','','1234567890','anilpawar1202@gmail.com','shipping','JU11017260',NULL,7591),
 ('2cd315a6-a465-a5fd-234e-5103a3c3b1e6','test','2013-01-26 09:35:33','2013-01-26 09:35:33','1','1',NULL,0,'1','test','test ','','','','110010','Test','ND','IN','','1234567890','anilpawar1202@gmail.com','shipping','HR11017260',NULL,7591),
 ('4224f20b-0789-69cc-6304-5103a3c0982e','test','2013-01-26 09:36:38','2013-01-26 09:36:38','1','1',NULL,0,'1','test','test ','','','','110010','Test','ND','IN','','1234567890','anilpawar1202@gmail.com','shipping','KR11017260',NULL,7591),
 ('433a061b-f4b1-658c-7c90-5103a3b964af','test','2013-01-26 09:36:38','2013-01-26 09:36:38','1','1',NULL,0,'1','','test ','','','','110010','Test','','IN','','','','billing','KR11017260',NULL,7591),
 ('1c3a3159-5bb7-5caa-3b8d-5103a408e92a','test','2013-01-26 09:38:28','2013-01-26 09:38:28','1','1',NULL,0,'1','test','test ','','','','110010','Test','ND','IN','','1234567890','anilpawar1202@gmail.com','shipping','PR11017260',NULL,7591),
 ('1d54f978-e792-e59b-cadc-5103a4f6245b','test','2013-01-26 09:38:28','2013-01-26 09:38:28','1','1',NULL,0,'1','','test ','','','','110010','Test','','IN','','','','billing','PR11017260',NULL,7591),
 ('9522e156-ddab-bfc6-e9a1-5103a43c44c5','test','2013-01-26 09:39:19','2013-01-26 09:39:19','1','1',NULL,0,'1','test','test ','','','','110010','Test','ND','IN','','1234567890','anilpawar1202@gmail.com','shipping','QA11017260',NULL,7591),
 ('967a09fd-4e31-1397-2962-5103a4dd9a7d','test','2013-01-26 09:39:19','2013-01-26 09:39:19','1','1',NULL,0,'1','','test ','','','','110010','Test','','IN','','','','billing','QA11017260',NULL,7591),
 ('db4c0b08-25ec-1f33-9caf-5103aa0e379b','test','2013-01-26 10:05:26','2013-01-26 10:05:26','1','1',NULL,0,'1','test','test ','','','','110010','Test','ND','IN','','1234567890','anilpawar1202@gmail.com','shipping','',NULL,7591),
 ('dc5ed2f3-99db-703b-2f47-5103aa62000e','test','2013-01-26 10:05:26','2013-01-26 10:05:26','1','1',NULL,0,'1','','test ','','','','110010','Test','','IN','','','','billing','',NULL,7591),
 ('4515b1ab-b074-4a4f-2497-5103f4047c57','test ship name','2013-01-26 15:23:08','2013-01-26 15:23:08','1','1',NULL,0,'1','test ship name 2','test ship ads','test ship ads2','test sihip ads3','test ship ads4','111111','test ship city','test ship state','test ship country','222222','8888888','ship2eamil@gmail.com','shipping','SLND09822',NULL,787),
 ('4b1755a7-c60b-f319-4824-5103f4df2264','bill test name','2013-01-26 15:23:08','2013-01-26 15:23:08','1','1',NULL,0,'1','','bill test ads','bill test ads2','','','33333','bill test city','','bill 2 cnt','','','','billing','SLND09822',NULL,787),
 ('b34b9b94-6075-a035-b4f1-5103f7673ae5','test ship name','2013-01-26 15:33:57','2013-01-26 15:33:57','1','1',NULL,0,'1','test ship name 2','test ship ads','test ship ads2','test sihip ads3','test ship ads4','111111','test ship city','test ship state','test ship country','222222','8888888','ship2eamil@gmail.com','shipping','SLND09899',NULL,787),
 ('b5dc988a-6c84-5954-48c3-5103f73c3f5c','bill test name','2013-01-26 15:33:57','2013-01-26 15:33:57','1','1',NULL,0,'1','','bill test ads','bill test ads2','','','33333','bill test city','','bill 2 cnt','','','','billing','SLND09899',NULL,787),
 ('57ac6781-de81-dcab-ed45-51048f58a91c','test ship name','2013-01-27 02:22:34','2013-01-27 02:22:34','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,'e82ce576-b49c-1717-3652-510412511457','test ship name 2','test ship ads','test ship ads2','test sihip ads3','test ship ads4','111111','test ship city','test ship state','test ship country','222222','8888888','ship2eamil@gmail.com','shipping','SLND09989',NULL,878),
 ('5a7c149e-e67b-fc27-8e02-51048fd1b638','bill test name','2013-01-27 02:22:34','2013-01-27 02:22:34','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,'e82ce576-b49c-1717-3652-510412511457','','bill test ads','bill test ads2','','','33333','bill test city','','bill 2 cnt','','','','billing','SLND09989',NULL,878),
 ('6a8300de-587f-5bd2-aa25-5104918167ad','test ship name','2013-01-27 02:29:36','2013-01-27 02:29:36','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,'e82ce576-b49c-1717-3652-510412511457','test ship name 2','test ship ads','test ship ads2','test sihip ads3','test ship ads4','111111','test ship city','test ship state','test ship country','222222','8888888','ship2eamil@gmail.com','shipping','SLND090',NULL,987),
 ('6c8c6b32-4a05-0e76-a3f1-510491551e81','bill test name','2013-01-27 02:29:36','2013-01-27 02:29:36','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,'e82ce576-b49c-1717-3652-510412511457','','bill test ads','bill test ads2','','','33333','bill test city','','bill 2 cnt','','','','billing','SLND090',NULL,987),
 ('54c3cd38-b669-4213-a6cf-510f7eb37171','elavarasi','2013-02-04 09:24:32','2013-02-04 09:24:32','1','1',NULL,0,'1','janardhanan','1/5 Sreepuram 2nd Street,','Royapettah ','','','600014','Chennai','TN','IN','','9884145205','','shipping','JU10000125',NULL,1500),
 ('58995baf-e6f9-28b7-756a-510f7e016615','elavarasi','2013-02-04 09:24:32','2013-02-04 09:24:32','1','1',NULL,0,'1','janardhanan','1/5 Sreepuram 2nd Street,','Royapettah ','','','600014','Chennai','','IN','','','','billing','JU10000125',NULL,1500),
 ('276db99a-d812-18f9-176c-510f7e62dfb4','elavarasi','2013-02-04 09:25:57','2013-02-04 09:25:57','1','1',NULL,0,'1','janardhanan','1/5 Sreepuram 2nd Street,','Royapettah ','','','600014','Chennai','TN','IN','','9884145205','','shipping','JU10000128',NULL,1500),
 ('28a1e278-40c8-4e46-87f5-510f7e24f0ae','elavarasi','2013-02-04 09:25:57','2013-02-04 09:25:57','1','1',NULL,0,'1','janardhanan','1/5 Sreepuram 2nd Street,','Royapettah ','','','600014','Chennai','','IN','','','','billing','JU10000128',NULL,1500),
 ('23138539-7b1f-ffc6-d1ac-511e77b9f713','test name','2013-02-15 18:01:15','2013-02-15 18:01:15','1','1',NULL,0,NULL,NULL,'test ads lin1','test ads line 2',NULL,NULL,'111111','test city','test state','test country','9999999999',NULL,NULL,'replacement_address','SLND09989',0,878),
 ('418e6ffd-01a5-e7f8-bd69-511e786787e4','you are rto','2013-02-15 18:03:04','2013-02-15 18:03:04','1','1',NULL,0,NULL,NULL,'you are rto','you are rto',NULL,NULL,'you ar','you are rto','you are rto','you are rto','you are rto',NULL,NULL,'rto_address','SLND09989',0,878),
 ('17c7d6ca-2944-09e2-2351-511ef2a953c7','you address','2013-02-16 02:42:10','2013-02-16 02:42:10','1','1',NULL,0,NULL,NULL,'you address','you address',NULL,NULL,'you ad','you address','you address','you address','you address',NULL,NULL,'replacement_address','JU10000125',0,1500),
 ('b05b333e-3b84-cef7-f764-511ef2aba82f','rto','2013-02-16 02:44:48','2013-02-16 02:44:48','1','1',NULL,0,NULL,NULL,'rto','rto',NULL,NULL,'rto','rto','rto','rto','rto',NULL,NULL,'rto_address','JU10000125',0,1500),
 ('25248c82-6d3d-dbbf-ceed-511ef380d0d5','test name','2013-02-16 02:46:24','2013-02-16 02:46:24','1','1',NULL,0,NULL,NULL,'test name','test name',NULL,NULL,'test n','test name','test name','test name','test name',NULL,NULL,'replacement_address','JU10000125',0,1500);
UNLOCK TABLES;
/*!40000 ALTER TABLE `alan_orderaddress` ENABLE KEYS */;


--
-- Definition of table `procrm`.`alan_orderaddress_audit`
--

DROP TABLE IF EXISTS `procrm`.`alan_orderaddress_audit`;
CREATE TABLE  `procrm`.`alan_orderaddress_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_alan_orderaddress_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`alan_orderaddress_audit`
--

/*!40000 ALTER TABLE `alan_orderaddress_audit` DISABLE KEYS */;
LOCK TABLES `alan_orderaddress_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `alan_orderaddress_audit` ENABLE KEYS */;


--
-- Definition of table `procrm`.`alan_orderitem`
--

DROP TABLE IF EXISTS `procrm`.`alan_orderitem`;
CREATE TABLE  `procrm`.`alan_orderitem` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `itemno` int(10) DEFAULT NULL,
  `itemtype` varchar(30) DEFAULT NULL,
  `itemcode` varchar(30) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `unitamount` float(18,2) DEFAULT NULL,
  `discountamount` float(18,2) DEFAULT NULL,
  `parentlineno` int(10) DEFAULT NULL,
  `webcustomerno` int(10) DEFAULT NULL,
  `orderno` varchar(50) DEFAULT NULL,
  `orderid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`alan_orderitem`
--

/*!40000 ALTER TABLE `alan_orderitem` DISABLE KEYS */;
LOCK TABLES `alan_orderitem` WRITE;
INSERT INTO `procrm`.`alan_orderitem` VALUES  ('5aa6151f-bb59-0ecb-8fb9-5103a3878a6b','itemnna','2013-01-26 09:36:38','2013-01-26 09:36:38','1','1','',0,'1',10000,'Item','JGFCNEC0812','testcolor','testzise',1,950.00,0.00,0,7591,'KR11017260',NULL),
 ('5ca13d2e-0f4b-03ff-9639-5103a308e58d','itemnna','2013-01-26 09:36:38','2013-01-26 09:36:38','1','1','',0,'1',20000,'Item','JBBDNEC0629','','',1,0.00,0.00,0,7591,'KR11017260',NULL),
 ('5e8aafd8-049a-b089-9a51-5103a3a189e8','itemnna','2013-01-26 09:36:38','2013-01-26 09:36:38','1','1','',0,'1',30000,'Item','JBBDNEC0629','','',1,0.00,0.00,0,7591,'KR11017260',NULL),
 ('60797c00-2d87-3df0-dd87-5103a3ac6ec4','itemnna','2013-01-26 09:36:38','2013-01-26 09:36:38','1','1','',0,'1',40000,'Item','JBBDEAR0630','','',1,0.00,0.00,0,7591,'KR11017260',NULL),
 ('627ca677-20ff-ff8e-c31e-5103a36ae706','itemnna','2013-01-26 09:36:38','2013-01-26 09:36:38','1','1','',0,'1',50000,'Item','JBBDEAR0630','','',1,0.00,0.00,0,7591,'KR11017260',NULL),
 ('273dca9b-d03d-6de7-b36a-5103a4be04f4','itemnna','2013-01-26 09:38:28','2013-01-26 09:38:28','1','1','',0,'1',10000,'Item','JGFCNEC0812','testcolor','testzise',1,950.00,0.00,0,7591,'PR11017260',NULL),
 ('2b9d945d-0636-a0aa-dc8d-5103a4452cb5','itemnna','2013-01-26 09:38:28','2013-01-26 09:38:28','1','1','',0,'1',20000,'Item','JBBDNEC0629','','',1,0.00,0.00,0,7591,'PR11017260',NULL),
 ('2fe799bb-33f2-84ae-49af-5103a4b16bda','itemnna','2013-01-26 09:38:28','2013-01-26 09:38:28','1','1','',0,'1',30000,'Item','JBBDNEC0629','','',1,0.00,0.00,0,7591,'PR11017260',NULL),
 ('347f699d-cc7a-8de1-5772-5103a4bb28bc','itemnna','2013-01-26 09:38:28','2013-01-26 09:38:28','1','1','',0,'1',40000,'Item','JBBDEAR0630','','',1,0.00,0.00,0,7591,'PR11017260',NULL),
 ('38d87ebe-241c-0d16-5838-5103a42dd132','itemnna','2013-01-26 09:38:28','2013-01-26 09:38:28','1','1','',0,'1',50000,'Item','JBBDEAR0630','','',1,0.00,0.00,0,7591,'PR11017260',NULL),
 ('a13a2416-8fb8-6f79-3581-5103a4b863de','','2013-01-26 09:39:19','2013-01-26 09:39:19','1','1','',0,'1',10000,'Item','JGFCNEC0812','testcolor','testzise',1,950.00,0.00,0,7591,'QA11017260',NULL),
 ('a62a8f52-b2e1-5f27-8f24-5103a4af1420','','2013-01-26 09:39:19','2013-01-26 09:39:19','1','1','',0,'1',20000,'Item','JBBDNEC0629','','',1,0.00,0.00,0,7591,'QA11017260',NULL),
 ('abd1a89d-e878-7a3c-df26-5103a41cb959','','2013-01-26 09:39:19','2013-01-26 09:39:19','1','1','',0,'1',30000,'Item','JBBDNEC0629','','',1,0.00,0.00,0,7591,'QA11017260',NULL),
 ('b0da45f2-99c4-83fc-7c8d-5103a40f3f97','','2013-01-26 09:39:19','2013-01-26 09:39:19','1','1','',0,'1',40000,'Item','JBBDEAR0630','','',1,0.00,0.00,0,7591,'QA11017260',NULL),
 ('b5d4ad12-44bd-805b-04c4-5103a43fa537','','2013-01-26 09:39:19','2013-01-26 09:39:19','1','1','',0,'1',50000,'Item','JBBDEAR0630','','',1,0.00,0.00,0,7591,'QA11017260',NULL),
 ('e735b1c4-0f29-43d9-b438-5103aa32c9cd','','2013-01-26 10:05:26','2013-01-26 10:05:26','1','1','',0,'1',10000,'Item','JGFCNEC0812','testcolor','testzise',1,950.00,0.00,0,7591,'',NULL),
 ('eb92ea8f-9bd2-3a29-120f-5103aa9b3daf','','2013-01-26 10:05:26','2013-01-26 10:05:26','1','1','',0,'1',20000,'Item','JBBDNEC0629','','',1,0.00,0.00,0,7591,'',NULL),
 ('efd1d6d0-13b6-1590-a33a-5103aab653ff','','2013-01-26 10:05:26','2013-01-26 10:05:26','1','1','',0,'1',30000,'Item','JBBDNEC0629','','',1,0.00,0.00,0,7591,'',NULL),
 ('576002ab-43ef-41a5-e070-5103aa5e4e36','','2013-01-26 10:05:26','2013-01-26 10:05:26','1','1','',0,'1',40000,'Item','JBBDEAR0630','','',1,0.00,0.00,0,7591,'',NULL),
 ('4aaf079b-097d-bb12-9163-5103aa102f5b','','2013-01-26 10:05:26','2013-01-26 10:05:26','1','1','',0,'1',50000,'Item','JBBDEAR0630','','',1,0.00,0.00,0,7591,'',NULL),
 ('6bfbcdcd-0f27-1d2b-22bc-5103f4f0b441','','2013-01-26 15:23:08','2013-01-26 15:23:08','1','1','test dec 331',0,'1',331,'Item','JGFC3331','red','11inc',3,565.99,989.00,1,787,'SLND09822',NULL),
 ('7bcb2e11-a2c0-7235-8359-5103f4abd3a9','','2013-01-26 15:23:08','2013-01-26 15:23:08','1','1','test desc 332',0,'1',332,'Item','JGF332','blue','22',4,9.00,2.00,1,787,'SLND09822',NULL),
 ('ca769d48-0b3d-c8e5-1f44-5103f7aa26ed','','2013-01-26 15:33:57','2013-01-26 15:33:57','1','1','test dec 331',0,'1',331,'Item','JGFC3331','red','11inc',3,565.99,989.00,1,787,'SLND09899',NULL),
 ('d43a2b27-edae-1867-c296-5103f7cab3f3','','2013-01-26 15:33:57','2013-01-26 15:33:57','1','1','test desc 332',0,'1',332,'Item','JGF332','blue','22',4,9.00,2.00,1,787,'SLND09899',NULL),
 ('66c206dd-669f-91b6-6ae5-51048f61884e','','2013-01-27 02:22:34','2013-01-27 02:22:34','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457','test dec 331',0,'e82ce576-b49c-1717-3652-510412511457',331,'Item','JGFC3331','red','11inc',3,565.99,989.00,1,878,'SLND09989',NULL),
 ('6c48c31d-e514-6430-4084-51048ff55412','','2013-01-27 02:22:34','2013-01-27 02:22:34','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457','test desc 332',0,'e82ce576-b49c-1717-3652-510412511457',332,'Item','JGF332','blue','22',4,9.00,2.00,1,878,'SLND09989',NULL),
 ('7b27dfb2-a9cb-ab2f-8e6c-5104916807a2','','2013-01-27 02:29:36','2013-01-27 02:29:36','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457','test dec 331',0,'e82ce576-b49c-1717-3652-510412511457',331,'Item','JGFC3331','red','11inc',3,565.99,989.00,1,987,'SLND090',NULL),
 ('8022912a-8757-2a71-c216-5104915260dd','','2013-01-27 02:29:36','2013-01-27 02:29:36','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457','test desc 332',0,'e82ce576-b49c-1717-3652-510412511457',332,'Item','JGF332','blue','22',4,9.00,2.00,1,987,'SLND090',NULL),
 ('6ad4dcf6-ded1-d13d-e2fb-510f7e78b6fc','','2013-02-04 09:24:32','2013-02-04 09:24:32','1','1','',0,'1',20000,'Item','JS12EAR0018','','',1,450.00,0.00,0,1500,'JU10000125',NULL),
 ('323e541d-3013-8975-77f0-510f7e5427d4','','2013-02-04 09:25:57','2013-02-04 09:25:57','1','1','',0,'1',200987,'Item','JS12EAR0018','','',1,450.00,0.00,0,1500,'JU10000128',NULL),
 ('36967a95-5b0d-491b-8f8b-510f7e62f51f','','2013-02-04 09:25:57','2013-02-04 09:25:57','1','1','',0,'1',20000,'Item','JS12EAR0018','','',1,450.00,0.00,0,1500,'JU10000128',NULL),
 ('3bbcc8fc-56ad-2377-bb64-510f7e1df9bc','','2013-02-04 09:25:57','2013-02-04 09:25:57','1','1','',0,'1',20099,'Item','JS12EAR0018','','',1,450.00,0.00,0,1500,'JU10000128',NULL),
 ('40f7b5bd-5650-5929-1486-510f7e8f06c2','','2013-02-04 09:25:57','2013-02-04 09:25:57','1','1','',0,'1',20001,'Item','JS12EAR0018','','',1,450.00,0.00,0,1500,'JU10000128',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `alan_orderitem` ENABLE KEYS */;


--
-- Definition of table `procrm`.`alan_orderitem_audit`
--

DROP TABLE IF EXISTS `procrm`.`alan_orderitem_audit`;
CREATE TABLE  `procrm`.`alan_orderitem_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_alan_orderitem_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`alan_orderitem_audit`
--

/*!40000 ALTER TABLE `alan_orderitem_audit` DISABLE KEYS */;
LOCK TABLES `alan_orderitem_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `alan_orderitem_audit` ENABLE KEYS */;


--
-- Definition of table `procrm`.`alan_ordermaster`
--

DROP TABLE IF EXISTS `procrm`.`alan_ordermaster`;
CREATE TABLE  `procrm`.`alan_ordermaster` (
  `id` char(36) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `paymentmethod` varchar(30) DEFAULT NULL,
  `pg_flag` varchar(20) DEFAULT NULL,
  `mobileverified` tinyint(1) DEFAULT '0',
  `orderdate` datetime DEFAULT NULL,
  `ordervalue` float(18,2) DEFAULT NULL,
  `paymentdate` datetime DEFAULT NULL,
  `paymentstatus` varchar(30) DEFAULT NULL,
  `authcode` varchar(255) DEFAULT NULL,
  `paymentline_amount` float(18,2) DEFAULT NULL,
  `paymentline_paymentgateway` varchar(50) DEFAULT NULL,
  `paymentline_paymentrefno` varchar(50) DEFAULT NULL,
  `webcustomerno` int(255) DEFAULT NULL,
  `salespersoncode` varchar(50) DEFAULT NULL,
  `orderid` int(10) DEFAULT NULL,
  `orderstatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alan_ordermaster_name_uniqu_index` (`name`),
  KEY `order_paymentmethod_index` (`paymentmethod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`alan_ordermaster`
--

/*!40000 ALTER TABLE `alan_ordermaster` DISABLE KEYS */;
LOCK TABLES `alan_ordermaster` WRITE;
INSERT INTO `procrm`.`alan_ordermaster` VALUES  ('28c3d117-89ea-0ab2-1abc-5103a35cf0ab','HR11017260','2013-01-26 09:35:33','2013-01-26 09:35:33','1','1',NULL,0,'1','COD','NO',0,'2013-01-02 13:45:45',8948.00,NULL,'','',0.00,'','',7591,'hello',NULL,'processing'),
 ('3de83eb1-5f97-6e96-fea1-5103a38116de','KR11017260','2013-01-26 09:36:38','2013-01-26 09:36:38','1','1',NULL,0,'1','COD','NO',0,'2013-01-02 13:45:45',8948.00,NULL,'','',0.00,'','',7591,'hello',NULL,'processing'),
 ('ca2303cc-650e-211b-bf72-5103a4ca2e90','PR11017260','2013-01-26 09:38:28','2013-01-26 09:38:28','1','1',NULL,0,'1','COD','NO',0,'2013-01-02 13:45:45',8948.00,NULL,'','',0.00,'','',7591,'hello',NULL,'processing'),
 ('90ce5f5e-52c2-1fe1-ec88-5103a4a151d9','QA11017260','2013-01-26 09:39:19','2013-01-26 09:39:19','1','1',NULL,0,'1','COD','NO',0,'2013-01-02 13:45:45',8948.00,NULL,'','',0.00,'','',7591,'hello',NULL,'processing'),
 ('d64c9749-84e5-f99a-e37a-5103aa9c56d8','','2013-01-26 10:05:26','2013-01-26 10:05:26','1','1',NULL,0,'1','COD','NO',0,'2013-01-02 13:45:45',8948.00,NULL,'','',0.00,'','',7591,'hello',NULL,'processing'),
 ('1ebeea02-34ea-c40d-e58f-5103f413af74','SLND09822','2013-01-26 15:23:08','2013-01-26 15:23:08','1','1',NULL,0,'1','PREPAID','Yes',1,'2013-01-05 08:45:45',9876.00,'2013-01-05 08:50:45','confirmed','Test Auth code',9999.00,'HDFC','HDFC989898909',787,'sales person',NULL,'Confirmed'),
 ('ae158012-5aa0-a77c-53e7-5103f7d09940','SLND09899','2013-01-26 15:33:57','2013-01-26 15:33:57','1','1',NULL,0,'1','PREPAID','Yes',1,'2013-01-05 08:45:45',9876.00,'2013-01-05 08:50:45','confirmed','Test Auth code',9999.00,'HDFC','HDFC989898909',787,'sales person',NULL,'Confirmed'),
 ('530284f3-16c2-bbc8-616c-51048f644697','SLND09989','2013-01-27 02:22:34','2013-02-15 18:04:10','1','e82ce576-b49c-1717-3652-510412511457',NULL,0,'e82ce576-b49c-1717-3652-510412511457','PREPAID','Yes',1,'2013-01-05 08:45:00',9876.00,'2013-01-06 08:50:00','confirmed','Test Auth code',9999.00,'HDFC','HDFC989898909',878,'sales person',NULL,'canceled'),
 ('66a6ac4a-08ad-2e6e-d539-51049155736d','SLND090','2013-01-27 02:29:36','2013-01-27 02:29:36','e82ce576-b49c-1717-3652-510412511457','e82ce576-b49c-1717-3652-510412511457',NULL,0,'e82ce576-b49c-1717-3652-510412511457','PREPAID','Yes',1,'2013-01-05 08:45:45',9876.00,'2013-01-05 08:50:45','confirmed','Test Auth code',9999.00,'HDFC','HDFC989898909',987,'sales person',NULL,'Confirmed'),
 ('3886375f-bc9f-3480-d48f-510f7e9c439e','JU10000125','2013-02-04 09:24:32','2013-02-16 02:56:36','1','1',NULL,0,'1','PREPAID','NO',1,'2012-06-26 12:21:00',450.00,NULL,NULL,NULL,450.00,'EBS',NULL,1500,NULL,NULL,'canceled'),
 ('2299775c-af4e-5a4f-157e-510f7e142e71','JU10000128','2013-02-04 09:25:57','2013-02-15 17:58:34','1','1',NULL,0,'1','PREPAID','NO',1,'2012-06-26 12:21:00',450.00,NULL,NULL,NULL,450.00,'EBS',NULL,1500,NULL,NULL,'canceled');
UNLOCK TABLES;
/*!40000 ALTER TABLE `alan_ordermaster` ENABLE KEYS */;


--
-- Definition of table `procrm`.`alan_ordermaster_alan_orderaddress_c`
--

DROP TABLE IF EXISTS `procrm`.`alan_ordermaster_alan_orderaddress_c`;
CREATE TABLE  `procrm`.`alan_ordermaster_alan_orderaddress_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `alan_ordermaster_alan_orderaddressalan_ordermaster_ida` varchar(36) DEFAULT NULL,
  `alan_ordermaster_alan_orderaddressalan_orderaddress_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alan_ordermaster_alan_orderaddress_ida1` (`alan_ordermaster_alan_orderaddressalan_ordermaster_ida`),
  KEY `alan_ordermaster_alan_orderaddress_alt` (`alan_ordermaster_alan_orderaddressalan_orderaddress_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`alan_ordermaster_alan_orderaddress_c`
--

/*!40000 ALTER TABLE `alan_ordermaster_alan_orderaddress_c` DISABLE KEYS */;
LOCK TABLES `alan_ordermaster_alan_orderaddress_c` WRITE;
INSERT INTO `procrm`.`alan_ordermaster_alan_orderaddress_c` VALUES  ('47458bd2-9a77-0f6a-6daf-5103a34c9ff3','2013-01-26 09:36:38',0,'3de83eb1-5f97-6e96-fea1-5103a38116de','4224f20b-0789-69cc-6304-5103a3c0982e'),
 ('57f26dd1-4950-e63e-b830-5103a391acfc','2013-01-26 09:36:38',0,'3de83eb1-5f97-6e96-fea1-5103a38116de','433a061b-f4b1-658c-7c90-5103a3b964af'),
 ('216e0620-2610-6ffa-9e20-5103a4c8add5','2013-01-26 09:38:28',0,'ca2303cc-650e-211b-bf72-5103a4ca2e90','1c3a3159-5bb7-5caa-3b8d-5103a408e92a'),
 ('2530bb63-b2ab-7aa0-a892-5103a4483919','2013-01-26 09:38:28',0,'ca2303cc-650e-211b-bf72-5103a4ca2e90','1d54f978-e792-e59b-cadc-5103a4f6245b'),
 ('9aa2f4bb-bc7c-f273-eca8-5103a42184bc','2013-01-26 09:39:19',0,'90ce5f5e-52c2-1fe1-ec88-5103a4a151d9','9522e156-ddab-bfc6-e9a1-5103a43c44c5'),
 ('9ef8c5a7-d344-670c-ece0-5103a420ac19','2013-01-26 09:39:19',0,'90ce5f5e-52c2-1fe1-ec88-5103a4a151d9','967a09fd-4e31-1397-2962-5103a4dd9a7d'),
 ('e05b48bc-97d3-7499-179f-5103aaa1e2ed','2013-01-26 10:05:26',0,'d64c9749-84e5-f99a-e37a-5103aa9c56d8','db4c0b08-25ec-1f33-9caf-5103aa0e379b'),
 ('e4f6e075-7e92-40e2-6cf0-5103aa43bc00','2013-01-26 10:05:26',0,'d64c9749-84e5-f99a-e37a-5103aa9c56d8','dc5ed2f3-99db-703b-2f47-5103aa62000e'),
 ('4f498df4-92d5-8c2b-7e81-5103f450462b','2013-01-26 15:23:08',0,'1ebeea02-34ea-c40d-e58f-5103f413af74','4515b1ab-b074-4a4f-2497-5103f4047c57'),
 ('57bd20d1-76b5-7251-dd60-5103f4775748','2013-01-26 15:23:08',0,'1ebeea02-34ea-c40d-e58f-5103f413af74','4b1755a7-c60b-f319-4824-5103f4df2264'),
 ('c0efd885-e1a5-4937-635f-5103f7ae29d4','2013-01-26 15:33:57',0,'ae158012-5aa0-a77c-53e7-5103f7d09940','b34b9b94-6075-a035-b4f1-5103f7673ae5'),
 ('c71a2f3d-ce48-3c00-db46-5103f7e55de5','2013-01-26 15:33:57',0,'ae158012-5aa0-a77c-53e7-5103f7d09940','b5dc988a-6c84-5954-48c3-5103f73c3f5c'),
 ('5f13de1e-0102-a01b-be01-51048f4129b7','2013-01-27 02:22:34',0,'530284f3-16c2-bbc8-616c-51048f644697','57ac6781-de81-dcab-ed45-51048f58a91c'),
 ('65f1333b-9f87-f1ff-dda0-51048f974b83','2013-01-27 02:22:34',0,'530284f3-16c2-bbc8-616c-51048f644697','5a7c149e-e67b-fc27-8e02-51048fd1b638'),
 ('73c88acb-f59c-6cd8-b765-5104911704be','2013-01-27 02:29:36',0,'66a6ac4a-08ad-2e6e-d539-51049155736d','6a8300de-587f-5bd2-aa25-5104918167ad'),
 ('7a509764-c6d6-0ba6-613d-510491b4f51e','2013-01-27 02:29:36',0,'66a6ac4a-08ad-2e6e-d539-51049155736d','6c8c6b32-4a05-0e76-a3f1-510491551e81'),
 ('5d74154a-d38c-2b2a-fbd0-510f7eeea9a7','2013-02-04 09:24:32',0,'3886375f-bc9f-3480-d48f-510f7e9c439e','54c3cd38-b669-4213-a6cf-510f7eb37171'),
 ('651ed870-4934-e117-fec6-510f7e3e75d7','2013-02-04 09:24:32',0,'3886375f-bc9f-3480-d48f-510f7e9c439e','58995baf-e6f9-28b7-756a-510f7e016615'),
 ('2c72afe6-65bf-e3ac-b5b0-510f7eccc6a2','2013-02-04 09:25:57',0,'2299775c-af4e-5a4f-157e-510f7e142e71','276db99a-d812-18f9-176c-510f7e62dfb4'),
 ('300351d7-71dd-e804-ac97-510f7ef2fa03','2013-02-04 09:25:57',0,'2299775c-af4e-5a4f-157e-510f7e142e71','28a1e278-40c8-4e46-87f5-510f7e24f0ae'),
 ('23e1b32f-c67e-cc6b-0a97-511e77363748','2013-02-15 18:01:15',0,'530284f3-16c2-bbc8-616c-51048f644697','23138539-7b1f-ffc6-d1ac-511e77b9f713'),
 ('4228a9d2-f93d-8c54-39ad-511e7831f20b','2013-02-15 18:03:04',0,'530284f3-16c2-bbc8-616c-51048f644697','418e6ffd-01a5-e7f8-bd69-511e786787e4'),
 ('186ba2bf-7d84-d40e-1a65-511ef22d1c3c','2013-02-16 02:42:10',0,'3886375f-bc9f-3480-d48f-510f7e9c439e','17c7d6ca-2944-09e2-2351-511ef2a953c7'),
 ('b1212f44-7276-17b4-4296-511ef26b8197','2013-02-16 02:44:48',0,'3886375f-bc9f-3480-d48f-510f7e9c439e','b05b333e-3b84-cef7-f764-511ef2aba82f'),
 ('25d7eeab-948a-a9b4-793c-511ef362efe2','2013-02-16 02:46:24',0,'3886375f-bc9f-3480-d48f-510f7e9c439e','25248c82-6d3d-dbbf-ceed-511ef380d0d5');
UNLOCK TABLES;
/*!40000 ALTER TABLE `alan_ordermaster_alan_orderaddress_c` ENABLE KEYS */;


--
-- Definition of table `procrm`.`alan_ordermaster_alan_orderitem_c`
--

DROP TABLE IF EXISTS `procrm`.`alan_ordermaster_alan_orderitem_c`;
CREATE TABLE  `procrm`.`alan_ordermaster_alan_orderitem_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `alan_ordermaster_alan_orderitemalan_ordermaster_ida` varchar(36) DEFAULT NULL,
  `alan_ordermaster_alan_orderitemalan_orderitem_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alan_ordermaster_alan_orderitem_ida1` (`alan_ordermaster_alan_orderitemalan_ordermaster_ida`),
  KEY `alan_ordermaster_alan_orderitem_alt` (`alan_ordermaster_alan_orderitemalan_orderitem_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`alan_ordermaster_alan_orderitem_c`
--

/*!40000 ALTER TABLE `alan_ordermaster_alan_orderitem_c` DISABLE KEYS */;
LOCK TABLES `alan_ordermaster_alan_orderitem_c` WRITE;
INSERT INTO `procrm`.`alan_ordermaster_alan_orderitem_c` VALUES  ('2ad39c28-99a8-a7de-3cef-5103a43ef335','2013-01-26 09:38:28',0,'ca2303cc-650e-211b-bf72-5103a4ca2e90','273dca9b-d03d-6de7-b36a-5103a4be04f4'),
 ('2f201d7b-9075-c053-2338-5103a4c58e47','2013-01-26 09:38:28',0,'ca2303cc-650e-211b-bf72-5103a4ca2e90','2b9d945d-0636-a0aa-dc8d-5103a4452cb5'),
 ('33b6754b-5322-2327-fee0-5103a486cf60','2013-01-26 09:38:28',0,'ca2303cc-650e-211b-bf72-5103a4ca2e90','2fe799bb-33f2-84ae-49af-5103a4b16bda'),
 ('380d8df5-111b-dc41-2ceb-5103a4bbdece','2013-01-26 09:38:28',0,'ca2303cc-650e-211b-bf72-5103a4ca2e90','347f699d-cc7a-8de1-5772-5103a4bb28bc'),
 ('3ca58459-2a15-6ace-192e-5103a4010524','2013-01-26 09:38:28',0,'ca2303cc-650e-211b-bf72-5103a4ca2e90','38d87ebe-241c-0d16-5838-5103a42dd132'),
 ('a54f2eb0-41f8-d6fd-42a3-5103a4914214','2013-01-26 09:39:19',0,'90ce5f5e-52c2-1fe1-ec88-5103a4a151d9','a13a2416-8fb8-6f79-3581-5103a4b863de'),
 ('aae42458-d183-6a87-e2a0-5103a438c98e','2013-01-26 09:39:19',0,'90ce5f5e-52c2-1fe1-ec88-5103a4a151d9','a62a8f52-b2e1-5f27-8f24-5103a4af1420'),
 ('afff1bb6-89f5-1b9a-6fac-5103a497bf73','2013-01-26 09:39:19',0,'90ce5f5e-52c2-1fe1-ec88-5103a4a151d9','abd1a89d-e878-7a3c-df26-5103a41cb959'),
 ('b4f8d55e-bed0-5920-e36f-5103a4e5d33e','2013-01-26 09:39:19',0,'90ce5f5e-52c2-1fe1-ec88-5103a4a151d9','b0da45f2-99c4-83fc-7c8d-5103a40f3f97'),
 ('ba86179b-792a-8d08-6eaf-5103a4bf18e4','2013-01-26 09:39:19',0,'90ce5f5e-52c2-1fe1-ec88-5103a4a151d9','b5d4ad12-44bd-805b-04c4-5103a43fa537'),
 ('eacd5b95-d246-f665-e9e9-5103aa128158','2013-01-26 10:05:26',0,'d64c9749-84e5-f99a-e37a-5103aa9c56d8','e735b1c4-0f29-43d9-b438-5103aa32c9cd'),
 ('ef11085b-4cbe-e35f-c958-5103aa6f7b0f','2013-01-26 10:05:26',0,'d64c9749-84e5-f99a-e37a-5103aa9c56d8','eb92ea8f-9bd2-3a29-120f-5103aa9b3daf'),
 ('f3b5bcbb-c89a-8a6c-50af-5103aabdaad0','2013-01-26 10:05:26',0,'d64c9749-84e5-f99a-e37a-5103aa9c56d8','efd1d6d0-13b6-1590-a33a-5103aab653ff'),
 ('3e8602f5-dcf3-9761-fdb2-5103aa9d9844','2013-01-26 10:05:26',0,'d64c9749-84e5-f99a-e37a-5103aa9c56d8','576002ab-43ef-41a5-e070-5103aa5e4e36'),
 ('834f0ecd-404a-4805-ff5f-5103aa1d07ad','2013-01-26 10:05:26',0,'d64c9749-84e5-f99a-e37a-5103aa9c56d8','4aaf079b-097d-bb12-9163-5103aa102f5b'),
 ('7a4e57dd-ba4f-c2fb-6811-5103f455e680','2013-01-26 15:23:08',0,'1ebeea02-34ea-c40d-e58f-5103f413af74','6bfbcdcd-0f27-1d2b-22bc-5103f4f0b441'),
 ('8131ad44-33a7-bec6-a0cc-5103f464806a','2013-01-26 15:23:08',0,'1ebeea02-34ea-c40d-e58f-5103f413af74','7bcb2e11-a2c0-7235-8359-5103f4abd3a9'),
 ('d2d128b9-7524-40bc-c557-5103f78227e0','2013-01-26 15:33:57',0,'ae158012-5aa0-a77c-53e7-5103f7d09940','ca769d48-0b3d-c8e5-1f44-5103f7aa26ed'),
 ('d97ed2b1-0e4d-a579-81ee-5103f756d096','2013-01-26 15:33:57',0,'ae158012-5aa0-a77c-53e7-5103f7d09940','d43a2b27-edae-1867-c296-5103f7cab3f3'),
 ('6b02303f-fcbf-e77b-6939-51048f7c61f8','2013-01-27 02:22:34',0,'530284f3-16c2-bbc8-616c-51048f644697','66c206dd-669f-91b6-6ae5-51048f61884e'),
 ('70a9bdc5-8907-51d8-a1e1-51048fc0981e','2013-01-27 02:22:34',0,'530284f3-16c2-bbc8-616c-51048f644697','6c48c31d-e514-6430-4084-51048ff55412'),
 ('7f3c78ad-e62a-10f4-704e-510491dd94ee','2013-01-27 02:29:36',0,'66a6ac4a-08ad-2e6e-d539-51049155736d','7b27dfb2-a9cb-ab2f-8e6c-5104916807a2'),
 ('84242fea-e4c6-34ac-15db-510491e74418','2013-01-27 02:29:36',0,'66a6ac4a-08ad-2e6e-d539-51049155736d','8022912a-8757-2a71-c216-5104915260dd'),
 ('709f3f0b-cb17-e18e-a7bb-510f7e4d5a9b','2013-02-04 09:24:32',0,'3886375f-bc9f-3480-d48f-510f7e9c439e','6ad4dcf6-ded1-d13d-e2fb-510f7e78b6fc'),
 ('35d285bf-4113-eb08-c634-510f7e158f5d','2013-02-04 09:25:57',0,'2299775c-af4e-5a4f-157e-510f7e142e71','323e541d-3013-8975-77f0-510f7e5427d4'),
 ('3aac816b-be98-e6ec-7faf-510f7e2a978a','2013-02-04 09:25:57',0,'2299775c-af4e-5a4f-157e-510f7e142e71','36967a95-5b0d-491b-8f8b-510f7e62f51f'),
 ('4035984a-65b3-fa9b-d60e-510f7e279a41','2013-02-04 09:25:57',0,'2299775c-af4e-5a4f-157e-510f7e142e71','3bbcc8fc-56ad-2377-bb64-510f7e1df9bc'),
 ('44a0b7e5-808e-e2ac-4b15-510f7e4cecac','2013-02-04 09:25:57',0,'2299775c-af4e-5a4f-157e-510f7e142e71','40f7b5bd-5650-5929-1486-510f7e8f06c2');
UNLOCK TABLES;
/*!40000 ALTER TABLE `alan_ordermaster_alan_orderitem_c` ENABLE KEYS */;


--
-- Definition of table `procrm`.`alan_ordermaster_audit`
--

DROP TABLE IF EXISTS `procrm`.`alan_ordermaster_audit`;
CREATE TABLE  `procrm`.`alan_ordermaster_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_alan_ordermaster_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`alan_ordermaster_audit`
--

/*!40000 ALTER TABLE `alan_ordermaster_audit` DISABLE KEYS */;
LOCK TABLES `alan_ordermaster_audit` WRITE;
INSERT INTO `procrm`.`alan_ordermaster_audit` VALUES  ('2756b615-72c2-13ce-8316-511e77995af8','2299775c-af4e-5a4f-157e-510f7e142e71','2013-02-15 17:58:34','1','orderdate','datetimecombo','2012-06-26 12:21:11','2012-06-26 12:21:00',NULL,NULL),
 ('278a3f1a-0688-280f-195e-511e7730d3c7','2299775c-af4e-5a4f-157e-510f7e142e71','2013-02-15 17:58:34','1','orderstatus','varchar','processing','canceled',NULL,NULL),
 ('1e49cc90-8df1-1fd6-69bf-511e77f622f3','530284f3-16c2-bbc8-616c-51048f644697','2013-02-15 18:01:15','1','orderdate','datetimecombo','2013-01-05 08:45:45','2013-01-05 08:45:00',NULL,NULL),
 ('1e6a33d6-8b3a-2842-f8f8-511e77bf0a25','530284f3-16c2-bbc8-616c-51048f644697','2013-02-15 18:01:15','1','paymentdate','datetimecombo','2013-01-06 08:50:45','2013-01-06 08:50:00',NULL,NULL),
 ('1e846819-5978-e13f-84c1-511e77110573','530284f3-16c2-bbc8-616c-51048f644697','2013-02-15 18:01:15','1','orderstatus','varchar','complete_confirmed-delivered','replacement',NULL,NULL),
 ('3f81f808-c870-4735-0581-511e78a13342','530284f3-16c2-bbc8-616c-51048f644697','2013-02-15 18:03:04','1','orderstatus','varchar','replacement','rto',NULL,NULL),
 ('54d1a882-9a15-b32c-1924-511e7817d0fb','530284f3-16c2-bbc8-616c-51048f644697','2013-02-15 18:04:10','1','orderstatus','varchar','rto','canceled',NULL,NULL),
 ('159180f0-5bb7-e993-a449-511ef21d870c','3886375f-bc9f-3480-d48f-510f7e9c439e','2013-02-16 02:42:10','1','orderdate','datetimecombo','2012-06-26 12:21:11','2012-06-26 12:21:00',NULL,NULL),
 ('15b378ee-db91-434d-320c-511ef2bb8ae2','3886375f-bc9f-3480-d48f-510f7e9c439e','2013-02-16 02:42:10','1','orderstatus','varchar','processing','replacement',NULL,NULL),
 ('ae586616-9ce0-a923-753d-511ef2dbbf9b','3886375f-bc9f-3480-d48f-510f7e9c439e','2013-02-16 02:44:48','1','orderstatus','varchar','replacement','rto',NULL,NULL),
 ('22aee25e-a3ad-fd2e-6268-511ef378bd60','3886375f-bc9f-3480-d48f-510f7e9c439e','2013-02-16 02:46:24','1','orderstatus','varchar','rto','replacement',NULL,NULL),
 ('c63dc7b7-cda5-f953-c0c1-511ef5ca63fd','3886375f-bc9f-3480-d48f-510f7e9c439e','2013-02-16 02:56:36','1','orderstatus','varchar','replacement','canceled',NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `alan_ordermaster_audit` ENABLE KEYS */;


--
-- Definition of table `procrm`.`bugs`
--

DROP TABLE IF EXISTS `procrm`.`bugs`;
CREATE TABLE  `procrm`.`bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`bugs`
--

/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
LOCK TABLES `bugs` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;


--
-- Definition of table `procrm`.`bugs_audit`
--

DROP TABLE IF EXISTS `procrm`.`bugs_audit`;
CREATE TABLE  `procrm`.`bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`bugs_audit`
--

/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
LOCK TABLES `bugs_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;


--
-- Definition of table `procrm`.`calls`
--

DROP TABLE IF EXISTS `procrm`.`calls`;
CREATE TABLE  `procrm`.`calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`calls`
--

/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
LOCK TABLES `calls` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;


--
-- Definition of table `procrm`.`calls_contacts`
--

DROP TABLE IF EXISTS `procrm`.`calls_contacts`;
CREATE TABLE  `procrm`.`calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`calls_contacts`
--

/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
LOCK TABLES `calls_contacts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;


--
-- Definition of table `procrm`.`calls_leads`
--

DROP TABLE IF EXISTS `procrm`.`calls_leads`;
CREATE TABLE  `procrm`.`calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`calls_leads`
--

/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
LOCK TABLES `calls_leads` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;


--
-- Definition of table `procrm`.`calls_users`
--

DROP TABLE IF EXISTS `procrm`.`calls_users`;
CREATE TABLE  `procrm`.`calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`calls_users`
--

/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
LOCK TABLES `calls_users` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;


--
-- Definition of table `procrm`.`campaign_log`
--

DROP TABLE IF EXISTS `procrm`.`campaign_log`;
CREATE TABLE  `procrm`.`campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`campaign_log`
--

/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
LOCK TABLES `campaign_log` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;


--
-- Definition of table `procrm`.`campaign_trkrs`
--

DROP TABLE IF EXISTS `procrm`.`campaign_trkrs`;
CREATE TABLE  `procrm`.`campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`campaign_trkrs`
--

/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
LOCK TABLES `campaign_trkrs` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;


--
-- Definition of table `procrm`.`campaigns`
--

DROP TABLE IF EXISTS `procrm`.`campaigns`;
CREATE TABLE  `procrm`.`campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`campaigns`
--

/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
LOCK TABLES `campaigns` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;


--
-- Definition of table `procrm`.`campaigns_audit`
--

DROP TABLE IF EXISTS `procrm`.`campaigns_audit`;
CREATE TABLE  `procrm`.`campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`campaigns_audit`
--

/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
LOCK TABLES `campaigns_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;


--
-- Definition of table `procrm`.`cases`
--

DROP TABLE IF EXISTS `procrm`.`cases`;
CREATE TABLE  `procrm`.`cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`cases`
--

/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
LOCK TABLES `cases` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;


--
-- Definition of table `procrm`.`cases_audit`
--

DROP TABLE IF EXISTS `procrm`.`cases_audit`;
CREATE TABLE  `procrm`.`cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`cases_audit`
--

/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
LOCK TABLES `cases_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;


--
-- Definition of table `procrm`.`cases_bugs`
--

DROP TABLE IF EXISTS `procrm`.`cases_bugs`;
CREATE TABLE  `procrm`.`cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`cases_bugs`
--

/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
LOCK TABLES `cases_bugs` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;


--
-- Definition of table `procrm`.`config`
--

DROP TABLE IF EXISTS `procrm`.`config`;
CREATE TABLE  `procrm`.`config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`config`
--

/*!40000 ALTER TABLE `config` DISABLE KEYS */;
LOCK TABLES `config` WRITE;
INSERT INTO `procrm`.`config` VALUES  ('notify','fromaddress','do_not_reply@example.com'),
 ('notify','fromname','SugarCRM'),
 ('notify','send_by_default','1'),
 ('notify','on','1'),
 ('notify','send_from_assigning_user','0'),
 ('info','sugar_version','6.5.9'),
 ('MySettings','tab','YToyMTp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiTGVhZHMiO3M6NToiTGVhZHMiO3M6ODoiQ2FsZW5kYXIiO3M6ODoiQ2FsZW5kYXIiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo2OiJFbWFpbHMiO3M6NjoiRW1haWxzIjtzOjk6IkNhbXBhaWducyI7czo5OiJDYW1wYWlnbnMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6ODoiTWVldGluZ3MiO3M6ODoiTWVldGluZ3MiO3M6NToiVGFza3MiO3M6NToiVGFza3MiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6NToiQ2FzZXMiO3M6NToiQ2FzZXMiO3M6OToiUHJvc3BlY3RzIjtzOjk6IlByb3NwZWN0cyI7czoxMzoiUHJvc3BlY3RMaXN0cyI7czoxMzoiUHJvc3BlY3RMaXN0cyI7czoxNjoiYWxhbl9PcmRlck1hc3RlciI7czoxNjoiYWxhbl9PcmRlck1hc3RlciI7czoyMToiYWxhbl9jb21tdW5pY2F0aW9ubG9nIjtzOjIxOiJhbGFuX2NvbW11bmljYXRpb25sb2ciO3M6MTQ6ImFsYW5fT3JkZXJJdGVtIjtzOjE0OiJhbGFuX09yZGVySXRlbSI7czoxNzoiYWxhbl9PcmRlckFkZHJlc3MiO3M6MTc6ImFsYW5fT3JkZXJBZGRyZXNzIjtzOjk6ImFsYW5fbG9ncyI7czo5OiJhbGFuX2xvZ3MiO30='),
 ('portal','on','0'),
 ('tracker','Tracker','1'),
 ('system','skypeout_on','1'),
 ('sugarfeed','enabled','0'),
 ('sugarfeed','module_UserFeed','1'),
 ('sugarfeed','module_Opportunities','1'),
 ('sugarfeed','module_Contacts','1'),
 ('sugarfeed','module_Cases','1'),
 ('sugarfeed','module_Leads','1'),
 ('Update','CheckUpdates','automatic'),
 ('system','name','ProCRM'),
 ('license','last_connection_fail','2013-01-21 16:32:27'),
 ('license','last_validation','success'),
 ('license','vk_end_date','2013-01-21 16:32:27'),
 ('license','validation_key','YToxOntzOjg6InZlcmlmaWVkIjtiOjA7fQ=='),
 ('license','latest_versions','YToxOntpOjA7YToyOntzOjc6InZlcnNpb24iO3M6NToiNi41LjUiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjE2MjoiVGhlIGxhdGVzdCB2ZXJzaW9uIG9mIFN1Z2FyQ1JNIGlzIDYuNS41LiAgUGxlYXNlIHZpc2l0IDxhIGhyZWY9Imh0dHA6Ly9zdXBwb3J0LnN1Z2FyY3JtLmNvbSIgdGFyZ2V0PSJfbmV3Ij5zdXBwb3J0LnN1Z2FyY3JtLmNvbTwvYT4gdG8gYWNxdWlyZSB0aGUgbGF0ZXN0IHZlcnNpb24uIjt9fQ=='),
 ('Update','last_check_date','1360744739'),
 ('system','adminwizard','1'),
 ('notify','allow_default_outbound','0'),
 ('proxy','on','0'),
 ('proxy','host',''),
 ('proxy','port',''),
 ('proxy','auth','0'),
 ('proxy','username',''),
 ('proxy','password',''),
 ('license','msg_admin',''),
 ('license','msg_all','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `config` ENABLE KEYS */;


--
-- Definition of table `procrm`.`contacts`
--

DROP TABLE IF EXISTS `procrm`.`contacts`;
CREATE TABLE  `procrm`.`contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`contacts`
--

/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
LOCK TABLES `contacts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;


--
-- Definition of table `procrm`.`contacts_audit`
--

DROP TABLE IF EXISTS `procrm`.`contacts_audit`;
CREATE TABLE  `procrm`.`contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`contacts_audit`
--

/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
LOCK TABLES `contacts_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;


--
-- Definition of table `procrm`.`contacts_bugs`
--

DROP TABLE IF EXISTS `procrm`.`contacts_bugs`;
CREATE TABLE  `procrm`.`contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`contacts_bugs`
--

/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
LOCK TABLES `contacts_bugs` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;


--
-- Definition of table `procrm`.`contacts_cases`
--

DROP TABLE IF EXISTS `procrm`.`contacts_cases`;
CREATE TABLE  `procrm`.`contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`contacts_cases`
--

/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
LOCK TABLES `contacts_cases` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;


--
-- Definition of table `procrm`.`contacts_users`
--

DROP TABLE IF EXISTS `procrm`.`contacts_users`;
CREATE TABLE  `procrm`.`contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`contacts_users`
--

/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
LOCK TABLES `contacts_users` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;


--
-- Definition of table `procrm`.`currencies`
--

DROP TABLE IF EXISTS `procrm`.`currencies`;
CREATE TABLE  `procrm`.`currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`currencies`
--

/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
LOCK TABLES `currencies` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;


--
-- Definition of table `procrm`.`custom_fields`
--

DROP TABLE IF EXISTS `procrm`.`custom_fields`;
CREATE TABLE  `procrm`.`custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`custom_fields`
--

/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
LOCK TABLES `custom_fields` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;


--
-- Definition of table `procrm`.`document_revisions`
--

DROP TABLE IF EXISTS `procrm`.`document_revisions`;
CREATE TABLE  `procrm`.`document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`document_revisions`
--

/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
LOCK TABLES `document_revisions` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;


--
-- Definition of table `procrm`.`documents`
--

DROP TABLE IF EXISTS `procrm`.`documents`;
CREATE TABLE  `procrm`.`documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`documents`
--

/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
LOCK TABLES `documents` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;


--
-- Definition of table `procrm`.`documents_accounts`
--

DROP TABLE IF EXISTS `procrm`.`documents_accounts`;
CREATE TABLE  `procrm`.`documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`documents_accounts`
--

/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
LOCK TABLES `documents_accounts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;


--
-- Definition of table `procrm`.`documents_bugs`
--

DROP TABLE IF EXISTS `procrm`.`documents_bugs`;
CREATE TABLE  `procrm`.`documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`documents_bugs`
--

/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
LOCK TABLES `documents_bugs` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;


--
-- Definition of table `procrm`.`documents_cases`
--

DROP TABLE IF EXISTS `procrm`.`documents_cases`;
CREATE TABLE  `procrm`.`documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`documents_cases`
--

/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
LOCK TABLES `documents_cases` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;


--
-- Definition of table `procrm`.`documents_contacts`
--

DROP TABLE IF EXISTS `procrm`.`documents_contacts`;
CREATE TABLE  `procrm`.`documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`documents_contacts`
--

/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
LOCK TABLES `documents_contacts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;


--
-- Definition of table `procrm`.`documents_opportunities`
--

DROP TABLE IF EXISTS `procrm`.`documents_opportunities`;
CREATE TABLE  `procrm`.`documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`documents_opportunities`
--

/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
LOCK TABLES `documents_opportunities` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;


--
-- Definition of table `procrm`.`eapm`
--

DROP TABLE IF EXISTS `procrm`.`eapm`;
CREATE TABLE  `procrm`.`eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`eapm`
--

/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
LOCK TABLES `eapm` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;


--
-- Definition of table `procrm`.`email_addr_bean_rel`
--

DROP TABLE IF EXISTS `procrm`.`email_addr_bean_rel`;
CREATE TABLE  `procrm`.`email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`email_addr_bean_rel`
--

/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
LOCK TABLES `email_addr_bean_rel` WRITE;
INSERT INTO `procrm`.`email_addr_bean_rel` VALUES  ('9f339416-41bf-e6e8-7d6d-50fd6e92bdff','9f4da538-245c-e139-9759-50fd6eafaac6','1','Users',1,0,'2013-01-21 16:35:02','2013-01-21 16:35:02',0),
 ('c615c1a4-cb0c-ecd8-3320-51038840efba','c800c175-ac2c-4df1-caac-510388ac517a','c38e31fb-da1c-46a6-9239-51038896369f','Accounts',1,0,'2013-01-26 07:41:51','2013-01-26 07:41:51',0),
 ('13ce1709-7055-6b9b-4205-5103f43c218e','17b86a7f-4507-fbdd-4877-5103f43920df','f2dc022f-61c3-874a-3434-5103f40cd2a7','Accounts',1,0,'2013-01-26 15:23:08','2013-01-26 15:23:08',0),
 ('a1d9e2d9-c83f-faa6-e9cf-510412674fca','a1fabd1a-33c9-fe20-b3ea-510412970905','a04fade0-0256-909d-ed22-510412e139d0','Users',1,0,'2013-01-26 17:28:29','2013-01-26 17:28:29',0),
 ('e8ffe497-e7ed-a46d-3b6e-51041229e553','a1fabd1a-33c9-fe20-b3ea-510412970905','e82ce576-b49c-1717-3652-510412511457','Users',1,0,'2013-01-26 17:29:25','2013-01-26 17:29:25',0),
 ('5201dce1-f0bd-d498-0923-51048f9def8a','17b86a7f-4507-fbdd-4877-5103f43920df','5130d3ef-28eb-b931-cae8-51048f3ab034','Accounts',1,0,'2013-01-27 02:22:34','2013-01-27 02:22:34',0),
 ('65a9a007-75ee-53cb-24cd-5104911c7dfb','17b86a7f-4507-fbdd-4877-5103f43920df','64d2f91d-a6a8-96b1-1c69-5104916fe7f4','Accounts',1,0,'2013-01-27 02:29:36','2013-01-27 02:29:36',0),
 ('36ae4939-fd71-19bd-a242-510f7e9d255e','36cd33bb-e9e9-3642-e4fa-510f7eac30b4','354a9681-8c3d-6b6a-4049-510f7eb3efb5','Accounts',1,0,'2013-02-04 09:24:32','2013-02-04 09:24:32',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;


--
-- Definition of table `procrm`.`email_addresses`
--

DROP TABLE IF EXISTS `procrm`.`email_addresses`;
CREATE TABLE  `procrm`.`email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`email_addresses`
--

/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
LOCK TABLES `email_addresses` WRITE;
INSERT INTO `procrm`.`email_addresses` VALUES  ('9f4da538-245c-e139-9759-50fd6eafaac6','sd.hrishi@gmail.com','SD.HRISHI@GMAIL.COM',0,0,'2013-01-21 16:35:02','2013-01-21 16:35:02',0),
 ('c800c175-ac2c-4df1-caac-510388ac517a','anilpawar1202@gmail.com','ANILPAWAR1202@GMAIL.COM',0,0,'2013-01-26 07:41:51','2013-01-26 07:41:51',0),
 ('17b86a7f-4507-fbdd-4877-5103f43920df','test.cust@gmail.com','TEST.CUST@GMAIL.COM',0,0,'2013-01-26 15:23:08','2013-01-26 15:23:08',0),
 ('a1fabd1a-33c9-fe20-b3ea-510412970905','sprt.email@gmail.com','SPRT.EMAIL@GMAIL.COM',0,0,'2013-01-26 17:28:29','2013-01-26 17:28:29',0),
 ('36cd33bb-e9e9-3642-e4fa-510f7eac30b4','elujes@gmail.com','ELUJES@GMAIL.COM',0,0,'2013-02-04 09:24:32','2013-02-04 09:24:32',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;


--
-- Definition of table `procrm`.`email_cache`
--

DROP TABLE IF EXISTS `procrm`.`email_cache`;
CREATE TABLE  `procrm`.`email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`email_cache`
--

/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
LOCK TABLES `email_cache` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;


--
-- Definition of table `procrm`.`email_marketing`
--

DROP TABLE IF EXISTS `procrm`.`email_marketing`;
CREATE TABLE  `procrm`.`email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`email_marketing`
--

/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
LOCK TABLES `email_marketing` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;


--
-- Definition of table `procrm`.`email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `procrm`.`email_marketing_prospect_lists`;
CREATE TABLE  `procrm`.`email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`email_marketing_prospect_lists`
--

/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
LOCK TABLES `email_marketing_prospect_lists` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;


--
-- Definition of table `procrm`.`email_templates`
--

DROP TABLE IF EXISTS `procrm`.`email_templates`;
CREATE TABLE  `procrm`.`email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`email_templates`
--

/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
LOCK TABLES `email_templates` WRITE;
INSERT INTO `procrm`.`email_templates` VALUES  ('8a18c9c1-774e-2c67-b80b-50fd6d24848d','2013-01-21 16:31:56','2013-01-21 16:31:56','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),
 ('8b7ec606-456f-e3b7-ced8-50fd6df5bb6d','2013-01-21 16:31:56','2013-01-21 16:31:56','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;


--
-- Definition of table `procrm`.`emailman`
--

DROP TABLE IF EXISTS `procrm`.`emailman`;
CREATE TABLE  `procrm`.`emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`emailman`
--

/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
LOCK TABLES `emailman` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;


--
-- Definition of table `procrm`.`emails`
--

DROP TABLE IF EXISTS `procrm`.`emails`;
CREATE TABLE  `procrm`.`emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`emails`
--

/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
LOCK TABLES `emails` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;


--
-- Definition of table `procrm`.`emails_beans`
--

DROP TABLE IF EXISTS `procrm`.`emails_beans`;
CREATE TABLE  `procrm`.`emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`emails_beans`
--

/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
LOCK TABLES `emails_beans` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;


--
-- Definition of table `procrm`.`emails_email_addr_rel`
--

DROP TABLE IF EXISTS `procrm`.`emails_email_addr_rel`;
CREATE TABLE  `procrm`.`emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`emails_email_addr_rel`
--

/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
LOCK TABLES `emails_email_addr_rel` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;


--
-- Definition of table `procrm`.`emails_text`
--

DROP TABLE IF EXISTS `procrm`.`emails_text`;
CREATE TABLE  `procrm`.`emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`emails_text`
--

/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
LOCK TABLES `emails_text` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;


--
-- Definition of table `procrm`.`fields_meta_data`
--

DROP TABLE IF EXISTS `procrm`.`fields_meta_data`;
CREATE TABLE  `procrm`.`fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`fields_meta_data`
--

/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
LOCK TABLES `fields_meta_data` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;


--
-- Definition of table `procrm`.`folders`
--

DROP TABLE IF EXISTS `procrm`.`folders`;
CREATE TABLE  `procrm`.`folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`folders`
--

/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
LOCK TABLES `folders` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;


--
-- Definition of table `procrm`.`folders_rel`
--

DROP TABLE IF EXISTS `procrm`.`folders_rel`;
CREATE TABLE  `procrm`.`folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`folders_rel`
--

/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
LOCK TABLES `folders_rel` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;


--
-- Definition of table `procrm`.`folders_subscriptions`
--

DROP TABLE IF EXISTS `procrm`.`folders_subscriptions`;
CREATE TABLE  `procrm`.`folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`folders_subscriptions`
--

/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
LOCK TABLES `folders_subscriptions` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;


--
-- Definition of table `procrm`.`import_maps`
--

DROP TABLE IF EXISTS `procrm`.`import_maps`;
CREATE TABLE  `procrm`.`import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`import_maps`
--

/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
LOCK TABLES `import_maps` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;


--
-- Definition of table `procrm`.`inbound_email`
--

DROP TABLE IF EXISTS `procrm`.`inbound_email`;
CREATE TABLE  `procrm`.`inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`inbound_email`
--

/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
LOCK TABLES `inbound_email` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;


--
-- Definition of table `procrm`.`inbound_email_autoreply`
--

DROP TABLE IF EXISTS `procrm`.`inbound_email_autoreply`;
CREATE TABLE  `procrm`.`inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`inbound_email_autoreply`
--

/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
LOCK TABLES `inbound_email_autoreply` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;


--
-- Definition of table `procrm`.`inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `procrm`.`inbound_email_cache_ts`;
CREATE TABLE  `procrm`.`inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`inbound_email_cache_ts`
--

/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
LOCK TABLES `inbound_email_cache_ts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;


--
-- Definition of table `procrm`.`job_queue`
--

DROP TABLE IF EXISTS `procrm`.`job_queue`;
CREATE TABLE  `procrm`.`job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`job_queue`
--

/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
LOCK TABLES `job_queue` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;


--
-- Definition of table `procrm`.`leads`
--

DROP TABLE IF EXISTS `procrm`.`leads`;
CREATE TABLE  `procrm`.`leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`leads`
--

/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
LOCK TABLES `leads` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;


--
-- Definition of table `procrm`.`leads_audit`
--

DROP TABLE IF EXISTS `procrm`.`leads_audit`;
CREATE TABLE  `procrm`.`leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`leads_audit`
--

/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
LOCK TABLES `leads_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;


--
-- Definition of table `procrm`.`linked_documents`
--

DROP TABLE IF EXISTS `procrm`.`linked_documents`;
CREATE TABLE  `procrm`.`linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`linked_documents`
--

/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
LOCK TABLES `linked_documents` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;


--
-- Definition of table `procrm`.`meetings`
--

DROP TABLE IF EXISTS `procrm`.`meetings`;
CREATE TABLE  `procrm`.`meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`meetings`
--

/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
LOCK TABLES `meetings` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;


--
-- Definition of table `procrm`.`meetings_contacts`
--

DROP TABLE IF EXISTS `procrm`.`meetings_contacts`;
CREATE TABLE  `procrm`.`meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`meetings_contacts`
--

/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
LOCK TABLES `meetings_contacts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;


--
-- Definition of table `procrm`.`meetings_leads`
--

DROP TABLE IF EXISTS `procrm`.`meetings_leads`;
CREATE TABLE  `procrm`.`meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`meetings_leads`
--

/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
LOCK TABLES `meetings_leads` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;


--
-- Definition of table `procrm`.`meetings_users`
--

DROP TABLE IF EXISTS `procrm`.`meetings_users`;
CREATE TABLE  `procrm`.`meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`meetings_users`
--

/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
LOCK TABLES `meetings_users` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;


--
-- Definition of table `procrm`.`notes`
--

DROP TABLE IF EXISTS `procrm`.`notes`;
CREATE TABLE  `procrm`.`notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`notes`
--

/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
LOCK TABLES `notes` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;


--
-- Definition of table `procrm`.`oauth_consumer`
--

DROP TABLE IF EXISTS `procrm`.`oauth_consumer`;
CREATE TABLE  `procrm`.`oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`oauth_consumer`
--

/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
LOCK TABLES `oauth_consumer` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;


--
-- Definition of table `procrm`.`oauth_nonce`
--

DROP TABLE IF EXISTS `procrm`.`oauth_nonce`;
CREATE TABLE  `procrm`.`oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`oauth_nonce`
--

/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
LOCK TABLES `oauth_nonce` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;


--
-- Definition of table `procrm`.`oauth_tokens`
--

DROP TABLE IF EXISTS `procrm`.`oauth_tokens`;
CREATE TABLE  `procrm`.`oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`oauth_tokens`
--

/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
LOCK TABLES `oauth_tokens` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;


--
-- Definition of table `procrm`.`opportunities`
--

DROP TABLE IF EXISTS `procrm`.`opportunities`;
CREATE TABLE  `procrm`.`opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`opportunities`
--

/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
LOCK TABLES `opportunities` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;


--
-- Definition of table `procrm`.`opportunities_audit`
--

DROP TABLE IF EXISTS `procrm`.`opportunities_audit`;
CREATE TABLE  `procrm`.`opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`opportunities_audit`
--

/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
LOCK TABLES `opportunities_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;


--
-- Definition of table `procrm`.`opportunities_contacts`
--

DROP TABLE IF EXISTS `procrm`.`opportunities_contacts`;
CREATE TABLE  `procrm`.`opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`opportunities_contacts`
--

/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
LOCK TABLES `opportunities_contacts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;


--
-- Definition of table `procrm`.`outbound_email`
--

DROP TABLE IF EXISTS `procrm`.`outbound_email`;
CREATE TABLE  `procrm`.`outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `oe_user_id_idx` (`id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`outbound_email`
--

/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
LOCK TABLES `outbound_email` WRITE;
INSERT INTO `procrm`.`outbound_email` VALUES  ('ce12b01e-a70d-25a4-f36e-50fd6dd5b03c','system','system','1','SMTP','other','',25,'','',1,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;


--
-- Definition of table `procrm`.`project`
--

DROP TABLE IF EXISTS `procrm`.`project`;
CREATE TABLE  `procrm`.`project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`project`
--

/*!40000 ALTER TABLE `project` DISABLE KEYS */;
LOCK TABLES `project` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;


--
-- Definition of table `procrm`.`project_task`
--

DROP TABLE IF EXISTS `procrm`.`project_task`;
CREATE TABLE  `procrm`.`project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`project_task`
--

/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
LOCK TABLES `project_task` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;


--
-- Definition of table `procrm`.`project_task_audit`
--

DROP TABLE IF EXISTS `procrm`.`project_task_audit`;
CREATE TABLE  `procrm`.`project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`project_task_audit`
--

/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
LOCK TABLES `project_task_audit` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;


--
-- Definition of table `procrm`.`projects_accounts`
--

DROP TABLE IF EXISTS `procrm`.`projects_accounts`;
CREATE TABLE  `procrm`.`projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`projects_accounts`
--

/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
LOCK TABLES `projects_accounts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;


--
-- Definition of table `procrm`.`projects_bugs`
--

DROP TABLE IF EXISTS `procrm`.`projects_bugs`;
CREATE TABLE  `procrm`.`projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`projects_bugs`
--

/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
LOCK TABLES `projects_bugs` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;


--
-- Definition of table `procrm`.`projects_cases`
--

DROP TABLE IF EXISTS `procrm`.`projects_cases`;
CREATE TABLE  `procrm`.`projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`projects_cases`
--

/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
LOCK TABLES `projects_cases` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;


--
-- Definition of table `procrm`.`projects_contacts`
--

DROP TABLE IF EXISTS `procrm`.`projects_contacts`;
CREATE TABLE  `procrm`.`projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`projects_contacts`
--

/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
LOCK TABLES `projects_contacts` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;


--
-- Definition of table `procrm`.`projects_opportunities`
--

DROP TABLE IF EXISTS `procrm`.`projects_opportunities`;
CREATE TABLE  `procrm`.`projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`projects_opportunities`
--

/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
LOCK TABLES `projects_opportunities` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;


--
-- Definition of table `procrm`.`projects_products`
--

DROP TABLE IF EXISTS `procrm`.`projects_products`;
CREATE TABLE  `procrm`.`projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`projects_products`
--

/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
LOCK TABLES `projects_products` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;


--
-- Definition of table `procrm`.`prospect_list_campaigns`
--

DROP TABLE IF EXISTS `procrm`.`prospect_list_campaigns`;
CREATE TABLE  `procrm`.`prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`prospect_list_campaigns`
--

/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
LOCK TABLES `prospect_list_campaigns` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;


--
-- Definition of table `procrm`.`prospect_lists`
--

DROP TABLE IF EXISTS `procrm`.`prospect_lists`;
CREATE TABLE  `procrm`.`prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`prospect_lists`
--

/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
LOCK TABLES `prospect_lists` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;


--
-- Definition of table `procrm`.`prospect_lists_prospects`
--

DROP TABLE IF EXISTS `procrm`.`prospect_lists_prospects`;
CREATE TABLE  `procrm`.`prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`prospect_lists_prospects`
--

/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
LOCK TABLES `prospect_lists_prospects` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;


--
-- Definition of table `procrm`.`prospects`
--

DROP TABLE IF EXISTS `procrm`.`prospects`;
CREATE TABLE  `procrm`.`prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`prospects`
--

/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
LOCK TABLES `prospects` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;


--
-- Definition of table `procrm`.`relationships`
--

DROP TABLE IF EXISTS `procrm`.`relationships`;
CREATE TABLE  `procrm`.`relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`relationships`
--

/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
LOCK TABLES `relationships` WRITE;
INSERT INTO `procrm`.`relationships` VALUES  ('77c948ad-dff0-cdc6-9d8c-5119a61dd41c','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('77efad33-a492-41ef-75f7-5119a67a5d57','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('7810e914-f94e-33db-f13a-5119a65896c8','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('7832f683-c5ac-e62c-6509-5119a6829222','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),
 ('7853d221-107c-b28b-28e0-5119a6441762','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
 ('787a706f-e2e2-8d3d-4d69-5119a674f54d','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('78adae2d-bece-caf5-cd7e-5119a6dfffc4','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
 ('78e0ca19-c4b0-2a59-4a8f-5119a6682e92','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
 ('79150fbd-9126-972a-4647-5119a64c8f0b','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
 ('79364518-8fa9-1a56-6346-5119a6e18f2a','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
 ('7969f061-30f4-8852-f5dd-5119a6c05458','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
 ('799b50e2-8670-1565-5b03-5119a68b03e1','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('7c00b7be-77c7-f5f7-fd00-5119a6862cea','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('7c33b661-0b70-0a16-7796-5119a68597dc','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('7c5a42e0-4529-1d26-49b3-5119a68b9484','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('7c869395-ad1a-f31b-41f2-5119a6a91a1d','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
 ('7cac146e-40cc-7936-0750-5119a65ce18f','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
 ('7cd1b41d-08dc-0454-e741-5119a6b2c0d3','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
 ('7cf8be63-abf0-0088-a6f7-5119a6389ba2','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
 ('7d1e77a1-f7bd-3209-19d8-5119a60ba153','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
 ('80141a93-e29d-0e45-e697-5119a643b007','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('805424fe-1a2c-e5ee-cb37-5119a6b1c372','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('80827657-70d0-bdf0-e3f9-5119a61aa163','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('80abb1e6-8116-07ef-763f-5119a6cdeae6','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
 ('80d7a585-046f-7c2f-fab2-5119a6e4f7b4','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
 ('810211ea-908f-fdc6-784c-5119a686035f','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
 ('81322d90-6ff1-89c0-2982-5119a64a9508','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
 ('816bbcdc-8819-46e5-897a-5119a6e3b2d5','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
 ('81980e74-4fbe-aaa0-8f16-5119a69508a3','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('81cf957f-6421-011e-4f56-5119a67a5d87','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('82e29a4f-ac73-7c74-5216-5119a6842ea2','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('8336aef8-9efd-99a9-84eb-5119a6f5e875','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),
 ('83780d18-6c0f-8035-5058-5119a64b3362','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
 ('85149d2c-16b3-1b72-3195-5119a6ce9036','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('854fddc2-0069-9c05-aa3f-5119a63c6958','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('85866fbc-817c-f8ca-3160-5119a67bd3bd','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('85be80b7-bb9e-3183-fd76-5119a630efb7','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('85f4df9b-56b4-8026-1677-5119a6cca561','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('88d074a6-64d3-6c34-108e-5119a6157baa','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
 ('890c23fb-61e5-f86e-e0d8-5119a6bc376f','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
 ('89437ae2-2d1c-81eb-7a52-5119a6643cd7','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
 ('897b6014-09c9-064b-2a54-5119a61d5ae0','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
 ('89b28648-14e5-3aa9-ac59-5119a61164ac','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
 ('89eb7cc7-37ba-c193-395b-5119a6bd5a86','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('8a246585-990d-5dcf-99a1-5119a6fc933e','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('8a609e25-a20e-0f24-af90-5119a666b115','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('8aa9aafe-995e-1bf8-8d63-5119a69aafb1','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('8e1fbaee-419c-feac-6722-5119a6f385e5','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
 ('8e5c418c-7819-fc67-a5d0-5119a6f1b4be','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
 ('8e956c43-331c-539c-95c2-5119a68efd41','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
 ('8ece2e96-2a1e-bfb9-a30f-5119a67b2250','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
 ('8f072375-aebc-f521-4c73-5119a64190b3','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
 ('8f3f51fa-12f2-641d-5019-5119a69030a2','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('8f78d7f0-2616-1580-589d-5119a60beadd','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('8fb2a46a-c30b-bec3-ab68-5119a6c32850','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('95035d4d-f5a1-30c9-b2a9-5119a61b830a','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('953bb125-7edc-f43d-95ac-5119a6867cb7','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('9572924d-22ec-b555-fd46-5119a6eb59ef','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('95a9f21d-1910-10b1-a764-5119a649544c','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('95e6f29d-03be-44a3-be03-5119a61371ce','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('9620a984-388b-503e-7cb6-5119a605c996','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('9658afe2-dbe8-0313-7996-5119a6a46df8','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('9692ed7a-25d6-10b7-4c7e-5119a64eea26','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('96cd7665-fd06-3275-aeae-5119a63152bd','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('970602c9-45cc-c908-3ac0-5119a637fb7d','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('97429996-24d2-6fc0-dcf9-5119a6f4b152','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('97799ef0-f14b-98c0-ef94-5119a6320884','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('97baf74a-10da-aec4-5023-5119a68eb50c','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('9a9db03c-a5cf-21fc-f63a-5119a65d3680','prospectlists_assigned_user','Users','users','id','prospectlists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('9f4674d6-21da-58b6-b451-5119a6e076c7','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('9f800023-1c41-cab2-dc2e-5119a64e6a36','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('9fb792d1-d468-8b02-a38e-5119a6485a06','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('9ff0aca5-91ec-4ffe-4875-5119a6d7563d','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),
 ('a01f03dc-fb38-bb1e-9467-5119a656efb8','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
 ('a0466571-552a-9b03-5d6d-5119a6d7105e','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
 ('a07af9b1-9a74-b81c-6015-5119a6edef3d','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
 ('a0aded79-6fd6-6c95-1dad-5119a64f2c7e','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
 ('a0e2be9a-41b2-e623-2250-5119a6bfdc89','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
 ('a1296313-0d36-851b-ad0f-5119a6147b79','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
 ('a15ddad0-1291-2120-7036-5119a6db4e5f','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('a2a5434e-5be5-7101-081c-5119a6cdc1e0','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('a3c6f686-c666-19ec-775c-5119a6d03383','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('a8ee0f3d-999b-d0c8-69fd-5119a6c9d108','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),
 ('a913e6be-d252-1bb4-1ff4-5119a6fea9ba','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('a94090d2-c7c8-0cdf-c629-5119a6b707b4','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('a9afc667-97d7-facb-6c2e-5119a610cbf8','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','schedulersjobs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ad3d60bd-71ec-5df5-079e-5119a6e6d626','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ad74f479-e480-4696-b650-5119a6c3420e','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('adab4506-a273-2c31-249f-5119a6b67234','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ade017b3-92d2-3cd5-6ff9-5119a6994920','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),
 ('ae1610c2-c0d6-2d5d-8e06-5119a611edcd','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
 ('ae42814c-db88-0179-6b13-5119a6200668','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ae77c62f-3ef6-c8f3-669f-5119a6f9f093','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ae9ab769-c2dd-4640-1d5a-5119a6d07364','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('aebcad1d-71c6-abfa-2974-5119a6f48119','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('aedf11de-2df7-06ba-eb4b-5119a65ff5ec','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),
 ('af139d06-5376-4b3e-41ba-5119a64ae4fd','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b2ab8b67-b8ae-db06-a15d-5119a686af89','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b2d5a5a5-c06b-0f89-4036-5119a65ca1fa','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b2fcb8ed-8c86-f837-23a0-5119a6464c5e','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b3320570-2084-a644-ae97-5119a61db3e6','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),
 ('b366e09a-09b0-4338-1779-5119a657a915','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
 ('b39b1062-05d8-0552-e15a-5119a69ff503','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b3d03675-8138-6952-bcf6-5119a62071c1','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b405a731-475a-b6bf-a18b-5119a681c26b','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
 ('b441f6f7-fc0e-bde4-552d-5119a69d2406','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
 ('b4630bec-a582-0984-047d-5119a68f4086','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
 ('b48181c2-8a6d-87de-b37e-5119a61e718b','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
 ('b49e78bb-82c2-523a-7274-5119a66a5b7e','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
 ('b4bc53a5-4c6e-53df-496e-5119a6cca284','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b4e4cbab-1cf8-07cc-c378-5119a6ff04a0','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b7d09136-b8d7-1c95-d015-5119a6346510','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b8098327-9d60-70c6-7e3c-5119a6e99274','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b831d9fc-4f4b-6317-359e-5119a6b6f705','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b859ebfc-5699-c8e3-a7c8-5119a6e5cc8a','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
 ('b8832794-0361-588f-a354-5119a66e38de','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
 ('b8ae68b5-a7eb-a9e0-58f4-5119a6c80bb1','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
 ('b8d683b7-a240-57a4-2ca5-5119a6c02634','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
 ('b90f0513-b1de-1e92-89a2-5119a64918c6','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
 ('b945366b-9936-0fe4-28e4-5119a62dec76','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b97af1a0-5c53-11c0-62f1-5119a6c2c0fc','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('b9b2a105-a5d9-f261-12b7-5119a61ae1a5','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('bbc9a569-7469-8608-834a-5119a65a32f5','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('beb5a213-b001-10f5-4a80-5119a6659a31','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('beee4e86-1196-e60f-2ca3-5119a66ca232','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('bf242c0a-281a-daaa-0e8d-5119a6d37e28','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c2c5a6bf-8ca6-b7f7-27ea-5119a6b40478','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c2fdce37-b4d5-9298-189d-5119a615573d','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c3321639-0b8f-87fe-7589-5119a637b0f8','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c367cacb-08e2-a7bb-78dd-5119a6e46ef6','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),
 ('c3e3a5b1-808f-9a72-99d1-5119a6579d10','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c41e2972-c6db-ee82-824b-5119a61d73e0','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c4520d7c-d7ea-ac7b-a00a-5119a6795fda','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c47e6623-21b3-7737-510f-5119a69bdbb7','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c4adfc84-5598-4bdb-5250-5119a6dd4ab3','emails_meetings_rel','Emails','emails','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c8b6e49c-1283-ada0-efb6-5119a6d0e691','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c8e332bb-b292-72de-e6d4-5119a65e230a','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c900d8ee-2530-fefc-0a2c-5119a660197a','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('c91d4254-8729-39d0-a02a-5119a6ddaa84','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),
 ('cbbb1c8e-6646-705f-66d9-5119a6e85193','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('cbf4b348-e825-12a0-75d5-5119a6ce42a1','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('cc3ab121-9c3e-7f11-1a87-5119a6caface','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('cc75c92f-1550-07e9-13e6-5119a6b50e01','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('d4b0ed2d-ac6e-14ea-68c7-5119a6ee4447','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('d4d36fb9-1e7e-c06b-ca0c-5119a6c7cc40','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('d4f291db-1b63-7744-9b23-5119a6b3af42','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('d5103d2c-ea1a-d20c-85d7-5119a61b3cb2','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('d5e587af-fd03-9c0a-c448-5119a6bab1e0','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('da0c4b5b-b6bb-cff0-a165-5119a68ab7cc','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),
 ('da467e59-61da-151e-9d19-5119a6377966','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),
 ('db8d50c9-a81f-544f-36ff-5119a6400325','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('e3aa9f51-b369-bcbb-6ef7-5119a600742d','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('e3d59509-0722-3d0c-4e5a-5119a61d4ded','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('e40bffa5-4ac8-c6a8-1497-5119a6c71f10','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('e89290e2-d70f-cc3e-8e79-5119a65d4443','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('e8b6d7a6-f140-ed3b-7b4e-5119a65e1c0c','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('e8ec359d-a6b8-b9e6-6be1-5119a6cd34c4','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ea86292a-7872-efc7-c55b-5119a6e88a4e','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauthkeys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('eab874aa-6a5a-95a8-c1dc-5119a6ac3637','oauthkeys_created_by','Users','users','id','OAuthKeys','oauthkeys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('eadc556a-2141-39f1-51fb-5119a6bf47d0','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauthkeys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ebc98f5b-8b2e-22c3-9938-5119a6bee22d','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ebff7580-9739-e622-6514-5119a642698e','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ee3e847e-a7a3-54e1-25ab-5119a67e65d9','alan_ordermaster_modified_user','Users','users','id','alan_OrderMaster','alan_ordermaster','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ee6a333a-6502-c7fa-99fc-5119a613d069','alan_ordermaster_created_by','Users','users','id','alan_OrderMaster','alan_ordermaster','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('ee9b4ef4-2df3-842b-a3a6-5119a6d14b7c','alan_ordermaster_assigned_user','Users','users','id','alan_OrderMaster','alan_ordermaster','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('f099409c-42a2-5b55-7326-5119a682ae79','alan_communicationlog_modified_user','Users','users','id','alan_communicationlog','alan_communicationlog','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('f0d20797-76ac-695b-69bb-5119a60ed0ad','alan_communicationlog_created_by','Users','users','id','alan_communicationlog','alan_communicationlog','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('f0fb9f30-40d4-c4e8-4f2c-5119a67fd256','alan_communicationlog_assigned_user','Users','users','id','alan_communicationlog','alan_communicationlog','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('f35b398d-b79d-2a89-820f-5119a6784492','alan_orderitem_modified_user','Users','users','id','alan_OrderItem','alan_orderitem','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('f38e0afb-0790-14dc-c265-5119a6e10ab7','alan_orderitem_created_by','Users','users','id','alan_OrderItem','alan_orderitem','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('f3c39da6-d807-08ea-eac3-5119a62d7851','alan_orderitem_assigned_user','Users','users','id','alan_OrderItem','alan_orderitem','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('273f043e-6da9-6a82-d07b-5119a6ac9a2b','alan_orderaddress_modified_user','Users','users','id','alan_OrderAddress','alan_orderaddress','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('2a910f40-202f-82ad-74d6-5119a61e16c0','alan_orderaddress_created_by','Users','users','id','alan_OrderAddress','alan_orderaddress','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('2d1b01b0-e8ab-6991-6576-5119a6a1d0bd','alan_orderaddress_assigned_user','Users','users','id','alan_OrderAddress','alan_orderaddress','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('4f3c0b20-7734-7075-13f9-5119a6481a5c','alan_logs_modified_user','Users','users','id','alan_logs','alan_logs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('52b103f4-c60a-9ab3-2383-5119a6b9e01d','alan_logs_created_by','Users','users','id','alan_logs','alan_logs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('56050a14-16fb-fd4b-a6d1-5119a6e78afd','alan_logs_assigned_user','Users','users','id','alan_logs','alan_logs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
 ('e7ee04d6-d000-944c-dc72-5119a6746043','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),
 ('eecb0443-84fa-1397-a243-5119a65fffc9','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),
 ('f47f0453-29f4-9749-0310-5119a6e90238','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),
 ('f9000450-aae7-d230-4fe0-5119a6b1219f','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),
 ('fcf40a25-7379-f525-5d7e-5119a677f57e','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),
 ('100de0bd-9e83-faa5-44e8-5119a6afdc62','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),
 ('104ae806-95b2-1982-5105-5119a681e1a3','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),
 ('1089fdf7-2362-cb0c-13a4-5119a6204917','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),
 ('10c9a20d-4e93-169c-25f3-5119a6e426f1','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),
 ('110aeebf-9016-08b9-0bde-5119a65620a7','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),
 ('115084f6-b39b-d10a-b910-5119a6ed614e','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),
 ('118b782c-2162-262d-1d8c-5119a6fcbe04','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),
 ('11c6b230-90b3-a544-0d80-5119a6567fa4','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),
 ('120320a5-8b02-b85f-b9c3-5119a62ac0bd','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),
 ('123e4532-e33a-b4da-9453-5119a69050de','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),
 ('127c1092-972e-c476-0b3e-5119a67ca09b','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),
 ('12bbbc4e-3cd7-29b6-81f0-5119a6c2120c','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),
 ('12f91604-b500-a625-a3e1-5119a6269c02','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),
 ('1333dbbb-3309-2b13-5f05-5119a6b05772','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),
 ('1370643b-798d-5ecc-a250-5119a6f23e7d','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),
 ('13abff20-64a1-bc4b-fac4-5119a6a648e0','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),
 ('13efa59b-d5f3-34c5-2594-5119a69e1bd9','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),
 ('142e1100-3e69-907b-8290-5119a643b09d','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),
 ('146c10df-0d7b-903f-1815-5119a6bf1f71','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),
 ('14a9fff6-1881-962d-30c7-5119a6c0abdf','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),
 ('14ec93dd-007a-a021-2b75-5119a693eb3f','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),
 ('152eb4ca-4d20-bc6d-a529-5119a641c6cd','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),
 ('1575023b-2737-a2c3-2ae1-5119a6737472','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),
 ('15b0925f-6011-6cba-091d-5119a6a35e31','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),
 ('15ec93a9-d732-84db-fa72-5119a68cc82c','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),
 ('16290e47-10b0-ed01-6e93-5119a606a2b6','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),
 ('166cb3f3-c986-1dc1-8fd7-5119a660fb15','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),
 ('16adf9cb-e522-169d-cdde-5119a693f39f','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),
 ('16f8b381-554e-020a-7db3-5119a66db75b','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),
 ('17412371-bf93-378a-b7aa-5119a6d0f608','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),
 ('1780643a-bdae-00ea-8e8f-5119a6609b5e','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),
 ('17bf3873-e4a7-6150-e2ef-5119a66850a4','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),
 ('17fe97ac-c375-2102-0d05-5119a6b29623','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),
 ('183fdc4a-f3ef-4d96-b653-5119a6bdde7f','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),
 ('188b40b6-1d00-ddf0-abdb-5119a629e4b4','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),
 ('18cf18c8-e809-099f-265d-5119a60fee06','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),
 ('1910b3bc-bcc2-bfd0-ee6b-5119a6a9f557','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),
 ('194f11f9-445c-1d42-0734-5119a60f47bc','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),
 ('198d9f90-50af-527b-79b1-5119a60911bf','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),
 ('19cf7bd2-051d-6231-ad43-5119a61dacc6','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),
 ('1a0f3258-009b-46d3-5518-5119a65c213a','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),
 ('1a4e7587-ab33-94bb-0163-5119a68116b6','alan_ordermaster_alan_orderaddress','alan_OrderMaster','alan_ordermaster','id','alan_OrderAddress','alan_orderaddress','id','alan_ordermaster_alan_orderaddress_c','alan_ordermaster_alan_orderaddressalan_ordermaster_ida','alan_ordermaster_alan_orderaddressalan_orderaddress_idb','many-to-many',NULL,NULL,0,0),
 ('1a8f88ad-3cc0-0aec-a892-5119a6e896b4','alan_ordermaster_alan_orderitem','alan_OrderMaster','alan_ordermaster','id','alan_OrderItem','alan_orderitem','id','alan_ordermaster_alan_orderitem_c','alan_ordermaster_alan_orderitemalan_ordermaster_ida','alan_ordermaster_alan_orderitemalan_orderitem_idb','many-to-many',NULL,NULL,0,0),
 ('1ad0dc3d-001c-6f8b-5030-5119a6078472','accounts_alan_ordermaster_1','Accounts','accounts','id','alan_OrderMaster','alan_ordermaster','id','accounts_alan_ordermaster_1_c','accounts_alan_ordermaster_1accounts_ida','accounts_alan_ordermaster_1alan_ordermaster_idb','many-to-many',NULL,NULL,0,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;


--
-- Definition of table `procrm`.`releases`
--

DROP TABLE IF EXISTS `procrm`.`releases`;
CREATE TABLE  `procrm`.`releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`releases`
--

/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
LOCK TABLES `releases` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;


--
-- Definition of table `procrm`.`roles`
--

DROP TABLE IF EXISTS `procrm`.`roles`;
CREATE TABLE  `procrm`.`roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`roles`
--

/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
LOCK TABLES `roles` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


--
-- Definition of table `procrm`.`roles_modules`
--

DROP TABLE IF EXISTS `procrm`.`roles_modules`;
CREATE TABLE  `procrm`.`roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`roles_modules`
--

/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
LOCK TABLES `roles_modules` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;


--
-- Definition of table `procrm`.`roles_users`
--

DROP TABLE IF EXISTS `procrm`.`roles_users`;
CREATE TABLE  `procrm`.`roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`roles_users`
--

/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
LOCK TABLES `roles_users` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;


--
-- Definition of table `procrm`.`saved_search`
--

DROP TABLE IF EXISTS `procrm`.`saved_search`;
CREATE TABLE  `procrm`.`saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`saved_search`
--

/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
LOCK TABLES `saved_search` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;


--
-- Definition of table `procrm`.`schedulers`
--

DROP TABLE IF EXISTS `procrm`.`schedulers`;
CREATE TABLE  `procrm`.`schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`schedulers`
--

/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
LOCK TABLES `schedulers` WRITE;
INSERT INTO `procrm`.`schedulers` VALUES  ('6f8c1b1f-da9c-0f47-911e-50fd6d39ab62',0,'2013-01-21 16:31:56','2013-01-21 16:31:56','1','1','Prune Tracker Tables','function::trimTracker','2005-01-01 17:15:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1),
 ('6ffb2ec5-c979-0187-1554-50fd6dbad79d',0,'2013-01-21 16:31:56','2013-01-21 16:31:56','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxes','2005-01-01 12:00:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),
 ('703fb5d5-834e-dfb1-6e3e-50fd6de74dc8',0,'2013-01-21 16:31:56','2013-01-21 16:31:56','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2005-01-01 10:30:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),
 ('707f6d98-8f2f-4db7-382c-50fd6d490237',0,'2013-01-21 16:31:56','2013-01-21 16:31:56','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2005-01-01 19:00:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),
 ('70bb8c73-7fc4-0e66-e0a2-50fd6d473831',0,'2013-01-21 16:31:56','2013-01-21 16:31:56','1','1','Prune Database on 1st of Month','function::pruneDatabase','2005-01-01 12:30:01','2020-12-31 23:59:59','0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),
 ('70f96083-cb0e-5ab7-55d0-50fd6da31a3c',0,'2013-01-21 16:31:56','2013-01-21 16:31:56','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2008-01-01 07:15:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),
 ('7139e1cb-5891-70c3-b4e8-50fd6d424af8',0,'2013-01-21 16:31:56','2013-01-21 16:31:56','1','1','Clean Jobs Queue','function::cleanJobQueue','2012-01-01 18:15:01','2030-12-31 23:59:59','0::5::*::*::*',NULL,NULL,NULL,'Active',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;


--
-- Definition of table `procrm`.`sugarfeed`
--

DROP TABLE IF EXISTS `procrm`.`sugarfeed`;
CREATE TABLE  `procrm`.`sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`sugarfeed`
--

/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
LOCK TABLES `sugarfeed` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;


--
-- Definition of table `procrm`.`tasks`
--

DROP TABLE IF EXISTS `procrm`.`tasks`;
CREATE TABLE  `procrm`.`tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`tasks`
--

/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
LOCK TABLES `tasks` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;


--
-- Definition of table `procrm`.`tracker`
--

DROP TABLE IF EXISTS `procrm`.`tracker`;
CREATE TABLE  `procrm`.`tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=MyISAM AUTO_INCREMENT=348 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`tracker`
--

/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
LOCK TABLES `tracker` WRITE;
INSERT INTO `procrm`.`tracker` VALUES  (98,'87ddd84a-5b6e-d66d-6247-510349a4afe2','1','alan_OrderMaster','b1493b8f-8402-694a-9fa7-50fed7168dde','JU11017260','2013-01-26 03:10:09','detailview','vn232jlm5dpugtivghu98bplp5',1,0),
 (105,'f35176a6-24c7-ac69-9549-51038d195871','1','alan_OrderMaster','970b783f-b1c7-0c87-69bc-51038c522bd8','JU11017260','2013-01-26 08:01:11','detailview','h4iuuaobem5fpuv221fct6s0m3',1,0),
 (97,'53330a9e-a51d-54a9-bcec-5103497b7fd2','1','Accounts','83f0e39b-3dab-30b3-c021-50fed1255d27','Hrishiikesh','2013-01-26 03:10:06','detailview','vn232jlm5dpugtivghu98bplp5',1,0),
 (100,'c8239f4f-8be0-c2b1-c25c-51038976a5f8','1','alan_OrderMaster','cc7b9c46-f2c8-a341-5fbc-510388049402','JU11017260','2013-01-26 07:44:00','detailview','h4iuuaobem5fpuv221fct6s0m3',1,0),
 (103,'36e177f6-8fad-e0bf-8f19-51038de1f999','1','alan_OrderMaster','175b9337-7cc5-8dcd-790c-51038bf4df98','JU11017260','2013-01-26 08:01:04','detailview','h4iuuaobem5fpuv221fct6s0m3',1,0),
 (111,'edd9ce27-d813-eae6-026b-5103a41d0681','1','alan_OrderMaster','ca2303cc-650e-211b-bf72-5103a4ca2e90','PR11017260','2013-01-26 09:38:46','detailview','h4iuuaobem5fpuv221fct6s0m3',1,0),
 (141,'9c7d0497-b343-9638-8e25-5103d7f13adf','1','alan_OrderMaster','28c3d117-89ea-0ab2-1abc-5103a35cf0ab','HR11017260','2013-01-26 13:19:09','detailview','748nl6r3ql489lvluaep6l2lf7',1,0),
 (147,'188ef34e-135a-4437-1719-5103d8c99b70','1','Accounts','c38e31fb-da1c-46a6-9239-51038896369f','test','2013-01-26 13:20:35','detailview','748nl6r3ql489lvluaep6l2lf7',1,0),
 (148,'7498e0ea-a085-9a6f-8456-5103d86c7cc0','1','alan_OrderMaster','3de83eb1-5f97-6e96-fea1-5103a38116de','KR11017260','2013-01-26 13:20:39','detailview','748nl6r3ql489lvluaep6l2lf7',1,0),
 (145,'3571a9d6-da25-c746-92d5-5103d725322b','1','alan_OrderMaster','90ce5f5e-52c2-1fe1-ec88-5103a4a151d9','QA11017260','2013-01-26 13:19:21','detailview','748nl6r3ql489lvluaep6l2lf7',1,0),
 (137,'2f335d98-d90a-c457-31b5-5103c55ff474','1','alan_communicationlog','acd30d06-6f7d-96ff-a7de-5103aae9e4ee',NULL,'2013-01-26 12:02:57','editview','748nl6r3ql489lvluaep6l2lf7',1,0),
 (124,'5fd1f381-b110-b595-7f53-5103a84e50af','1','alan_OrderMaster','4634fe36-abbe-3f30-8c52-51038c6b3cb7','JU11017260','2013-01-26 09:56:41','detailview','h4iuuaobem5fpuv221fct6s0m3',1,0),
 (151,'e8698eb5-0f30-7685-e687-5103f153c1da','1','alan_communicationlog','bd8b7fc0-fcd0-1d3c-73c8-5103a4bc7b67',NULL,'2013-01-26 15:08:10','detailview','748nl6r3ql489lvluaep6l2lf7',1,0),
 (150,'7d29b98e-866f-7b7f-fcba-5103f1442204','1','alan_communicationlog','ec82563a-3acf-5d85-9ef4-51038adf5f0d',NULL,'2013-01-26 15:08:07','detailview','748nl6r3ql489lvluaep6l2lf7',1,0),
 (152,'d65c122a-f14a-c295-a924-5103f1358307','1','alan_communicationlog','3f494511-5759-a35c-8fdd-5103a4cda600',NULL,'2013-01-26 15:08:11','detailview','748nl6r3ql489lvluaep6l2lf7',1,0),
 (153,'92dc35aa-2b21-60ac-dd71-5103f1ce8530','1','alan_communicationlog','66ef5e6c-7b95-22de-b256-5103a336ec24',NULL,'2013-01-26 15:08:12','detailview','748nl6r3ql489lvluaep6l2lf7',1,0),
 (154,'621a05c1-6de5-0d1a-0e62-5103f1535ea4','1','alan_communicationlog','337521da-57d9-b213-92f3-5103a392daee',NULL,'2013-01-26 15:09:05','detailview','748nl6r3ql489lvluaep6l2lf7',1,0),
 (178,'7f370e58-e0a1-6c67-5d74-510412d9e41e','1','Users','a04fade0-0256-909d-ed22-510412e139d0','ERP Webservice','2013-01-26 17:28:29','detailview','748nl6r3ql489lvluaep6l2lf7',1,0),
 (173,'ab8107b3-4f7e-38d8-3a61-5103faf83fc2','1','alan_OrderMaster','1ebeea02-34ea-c40d-e58f-5103f413af74','SLND09822','2013-01-26 15:47:40','detailview','748nl6r3ql489lvluaep6l2lf7',1,0),
 (171,'a8f302cc-d627-85a0-b4bb-5103f8052ab9','1','alan_OrderMaster','ae158012-5aa0-a77c-53e7-5103f7d09940','SLND09899','2013-01-26 15:38:26','detailview','748nl6r3ql489lvluaep6l2lf7',1,0),
 (177,'2ba34d90-a7f1-9367-1d01-510408ce9e7e','1','Accounts','f2dc022f-61c3-874a-3434-5103f40cd2a7','Alan','2013-01-26 16:48:11','detailview','748nl6r3ql489lvluaep6l2lf7',1,0),
 (210,'c0355fcf-04c7-1759-817e-51179a5a48fc','1','alan_communicationlog','1a8fa4c4-b911-6971-f914-511799789c39',NULL,'2013-02-10 13:03:29','detailview','v1f75f8f9an7lb0rtcgfoeccf3',1,0),
 (191,'254328b6-a6da-c6b6-d078-51048e62254c','1','Users','e82ce576-b49c-1717-3652-510412511457','Erp Webservice','2013-01-27 02:20:34','detailview','6c69r7061r3a87v15q35f442k1',1,0),
 (192,'5e2c005c-e671-f00c-9a34-51048fa9b685','e82ce576-b49c-1717-3652-510412511457','alan_OrderMaster','530284f3-16c2-bbc8-616c-51048f644697','SLND09989','2013-01-27 02:22:57','detailview','ia2l5rom15v9gafjlfo4rob8l6',1,0),
 (193,'4d75ae05-dcc0-af5e-147f-510491ce56b1','e82ce576-b49c-1717-3652-510412511457','Accounts','64d2f91d-a6a8-96b1-1c69-5104916fe7f4','Dev','2013-01-27 02:29:53','detailview','ia2l5rom15v9gafjlfo4rob8l6',1,0),
 (339,'3884fabd-cc0b-e4a9-11c5-511ef22dfc05','1','alan_OrderMaster','66a6ac4a-08ad-2e6e-d539-51049155736d','SLND090','2013-02-16 02:45:53','detailview','4ud1cgk6fvkjjialhb9iu2if41',1,0),
 (195,'b965408f-34ff-8f6a-83a6-5104928dcd17','e82ce576-b49c-1717-3652-510412511457','alan_OrderMaster','66a6ac4a-08ad-2e6e-d539-51049155736d','SLND090','2013-01-27 02:35:46','detailview','ia2l5rom15v9gafjlfo4rob8l6',1,0),
 (198,'4df25b9e-2e87-e704-8475-510497a6243d','1','Accounts','64d2f91d-a6a8-96b1-1c69-5104916fe7f4','Dev','2013-01-27 02:58:46','detailview','q970u8qha4d3m08kfl2cm7trl3',1,0),
 (331,'94605316-54bd-0e2f-57be-511ef1e100df','1','alan_OrderMaster','2299775c-af4e-5a4f-157e-510f7e142e71','JU10000128','2013-02-16 02:41:35','detailview','4ud1cgk6fvkjjialhb9iu2if41',1,0),
 (347,'213b2cd7-7328-082d-9679-511ef551470f','1','alan_OrderMaster','3886375f-bc9f-3480-d48f-510f7e9c439e','JU10000125','2013-02-16 02:58:45','detailview','4ud1cgk6fvkjjialhb9iu2if41',1,0),
 (330,'79de79a1-49f1-5ec3-9f29-511ef1af825d','1','alan_OrderMaster','530284f3-16c2-bbc8-616c-51048f644697','SLND09989','2013-02-16 02:40:28','detailview','4ud1cgk6fvkjjialhb9iu2if41',1,0),
 (209,'83628332-14b8-4460-33ab-51179a5ce251','1','alan_communicationlog','dc4f0692-b412-98f1-8bdf-5103f75e5bbf',NULL,'2013-02-10 13:03:08','detailview','v1f75f8f9an7lb0rtcgfoeccf3',1,0),
 (213,'70e4b3d1-fbe2-543b-cc1e-51179c218e1f','1','Accounts','5130d3ef-28eb-b931-cae8-51048f3ab034','Alan','2013-02-10 13:10:56','detailview','v1f75f8f9an7lb0rtcgfoeccf3',1,0),
 (299,'95a9caa9-ac46-ae1c-d03f-511a96a3d385','1','Accounts','354a9681-8c3d-6b6a-4049-510f7eb3efb5','elavarasi','2013-02-12 19:20:32','detailview','d4d2tqtfk84c3btfkqrecdf7s4',1,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;


--
-- Definition of table `procrm`.`upgrade_history`
--

DROP TABLE IF EXISTS `procrm`.`upgrade_history`;
CREATE TABLE  `procrm`.`upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`upgrade_history`
--

/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
LOCK TABLES `upgrade_history` WRITE;
INSERT INTO `procrm`.`upgrade_history` VALUES  ('441e826d-5d5d-0f84-6404-5102a2a8c587','upload/upgrades/module/ProCRM2013_01_25_205006.zip','62cb7ca9c49d6444aff0f4b2077b9844','module','installed','1359127206','ProCRM','','ProCRM','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NDoiYWxhbiI7czo2OiJhdXRob3IiO3M6MTE6IkFsYW4gVHVyaW5nIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6NjoiUHJvQ1JNIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxMy0wMS0yNSAxNToyMDowNiI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjEzNTkxMjcyMDY7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo5OntzOjI6ImlkIjtzOjY6IlByb0NSTSI7czo1OiJiZWFucyI7YTo1OntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoxNjoiYWxhbl9PcmRlck1hc3RlciI7czo1OiJjbGFzcyI7czoxNjoiYWxhbl9PcmRlck1hc3RlciI7czo0OiJwYXRoIjtzOjQ1OiJtb2R1bGVzL2FsYW5fT3JkZXJNYXN0ZXIvYWxhbl9PcmRlck1hc3Rlci5waHAiO3M6MzoidGFiIjtiOjE7fWk6MTthOjQ6e3M6NjoibW9kdWxlIjtzOjIxOiJhbGFuX2NvbW11bmljYXRpb25sb2ciO3M6NToiY2xhc3MiO3M6MjE6ImFsYW5fY29tbXVuaWNhdGlvbmxvZyI7czo0OiJwYXRoIjtzOjU1OiJtb2R1bGVzL2FsYW5fY29tbXVuaWNhdGlvbmxvZy9hbGFuX2NvbW11bmljYXRpb25sb2cucGhwIjtzOjM6InRhYiI7YjoxO31pOjI7YTo0OntzOjY6Im1vZHVsZSI7czoxNDoiYWxhbl9PcmRlckl0ZW0iO3M6NToiY2xhc3MiO3M6MTQ6ImFsYW5fT3JkZXJJdGVtIjtzOjQ6InBhdGgiO3M6NDE6Im1vZHVsZXMvYWxhbl9PcmRlckl0ZW0vYWxhbl9PcmRlckl0ZW0ucGhwIjtzOjM6InRhYiI7YjoxO31pOjM7YTo0OntzOjY6Im1vZHVsZSI7czoxNzoiYWxhbl9PcmRlckFkZHJlc3MiO3M6NToiY2xhc3MiO3M6MTc6ImFsYW5fT3JkZXJBZGRyZXNzIjtzOjQ6InBhdGgiO3M6NDc6Im1vZHVsZXMvYWxhbl9PcmRlckFkZHJlc3MvYWxhbl9PcmRlckFkZHJlc3MucGhwIjtzOjM6InRhYiI7YjoxO31pOjQ7YTo0OntzOjY6Im1vZHVsZSI7czo5OiJhbGFuX2xvZ3MiO3M6NToiY2xhc3MiO3M6OToiYWxhbl9sb2dzIjtzOjQ6InBhdGgiO3M6MzE6Im1vZHVsZXMvYWxhbl9sb2dzL2FsYW5fbG9ncy5waHAiO3M6MzoidGFiIjtiOjE7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjI6e2k6MDthOjI6e3M6NDoiZnJvbSI7czoxMDE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGF5b3V0ZGVmcy9hbGFuX29yZGVybWFzdGVyX2FsYW5fb3JkZXJpdGVtX2FsYW5fT3JkZXJNYXN0ZXIucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNjoiYWxhbl9PcmRlck1hc3RlciI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czoxMDQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGF5b3V0ZGVmcy9hbGFuX29yZGVybWFzdGVyX2FsYW5fb3JkZXJhZGRyZXNzX2FsYW5fT3JkZXJNYXN0ZXIucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNjoiYWxhbl9PcmRlck1hc3RlciI7fX1zOjEzOiJyZWxhdGlvbnNoaXBzIjthOjI6e2k6MDthOjE6e3M6OToibWV0YV9kYXRhIjtzOjk1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3JlbGF0aW9uc2hpcHMvYWxhbl9vcmRlcm1hc3Rlcl9hbGFuX29yZGVyaXRlbU1ldGFEYXRhLnBocCI7fWk6MTthOjE6e3M6OToibWV0YV9kYXRhIjtzOjk4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3JlbGF0aW9uc2hpcHMvYWxhbl9vcmRlcm1hc3Rlcl9hbGFuX29yZGVyYWRkcmVzc01ldGFEYXRhLnBocCI7fX1zOjk6ImltYWdlX2RpciI7czoxNjoiPGJhc2VwYXRoPi9pY29ucyI7czo0OiJjb3B5IjthOjU6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo0ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9hbGFuX09yZGVyTWFzdGVyIjtzOjI6InRvIjtzOjI0OiJtb2R1bGVzL2FsYW5fT3JkZXJNYXN0ZXIiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6NTM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYWxhbl9jb21tdW5pY2F0aW9ubG9nIjtzOjI6InRvIjtzOjI5OiJtb2R1bGVzL2FsYW5fY29tbXVuaWNhdGlvbmxvZyI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czo0NjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9hbGFuX09yZGVySXRlbSI7czoyOiJ0byI7czoyMjoibW9kdWxlcy9hbGFuX09yZGVySXRlbSI7fWk6MzthOjI6e3M6NDoiZnJvbSI7czo0OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9hbGFuX09yZGVyQWRkcmVzcyI7czoyOiJ0byI7czoyNToibW9kdWxlcy9hbGFuX09yZGVyQWRkcmVzcyI7fWk6NDthOjI6e3M6NDoiZnJvbSI7czo0MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9hbGFuX2xvZ3MiO3M6MjoidG8iO3M6MTc6Im1vZHVsZXMvYWxhbl9sb2dzIjt9fXM6ODoibGFuZ3VhZ2UiO2E6NTp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjY1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2FsYW5fT3JkZXJJdGVtLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTQ6ImFsYW5fT3JkZXJJdGVtIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjY3OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2FsYW5fT3JkZXJNYXN0ZXIucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNjoiYWxhbl9PcmRlck1hc3RlciI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MjthOjM6e3M6NDoiZnJvbSI7czo2ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9hbGFuX09yZGVyQWRkcmVzcy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE3OiJhbGFuX09yZGVyQWRkcmVzcyI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MzthOjM6e3M6NDoiZnJvbSI7czo2NzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9hbGFuX09yZGVyTWFzdGVyLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTY6ImFsYW5fT3JkZXJNYXN0ZXIiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjQ7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO319czo3OiJ2YXJkZWZzIjthOjQ6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo5NjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2FsYW5fb3JkZXJtYXN0ZXJfYWxhbl9vcmRlcml0ZW1fYWxhbl9PcmRlckl0ZW0ucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNDoiYWxhbl9PcmRlckl0ZW0iO31pOjE7YToyOntzOjQ6ImZyb20iO3M6OTg6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9hbGFuX29yZGVybWFzdGVyX2FsYW5fb3JkZXJpdGVtX2FsYW5fT3JkZXJNYXN0ZXIucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNjoiYWxhbl9PcmRlck1hc3RlciI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czoxMDI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9hbGFuX29yZGVybWFzdGVyX2FsYW5fb3JkZXJhZGRyZXNzX2FsYW5fT3JkZXJBZGRyZXNzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTc6ImFsYW5fT3JkZXJBZGRyZXNzIjt9aTozO2E6Mjp7czo0OiJmcm9tIjtzOjEwMToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2FsYW5fb3JkZXJtYXN0ZXJfYWxhbl9vcmRlcmFkZHJlc3NfYWxhbl9PcmRlck1hc3Rlci5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE2OiJhbGFuX09yZGVyTWFzdGVyIjt9fXM6MTI6ImxheW91dGZpZWxkcyI7YToyOntpOjA7YToxOntzOjE3OiJhZGRpdGlvbmFsX2ZpZWxkcyI7YTowOnt9fWk6MTthOjE6e3M6MTc6ImFkZGl0aW9uYWxfZmllbGRzIjthOjA6e319fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==','2013-01-25 15:20:06',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;


--
-- Definition of table `procrm`.`user_preferences`
--

DROP TABLE IF EXISTS `procrm`.`user_preferences`;
CREATE TABLE  `procrm`.`user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`user_preferences`
--

/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
LOCK TABLES `user_preferences` WRITE;
INSERT INTO `procrm`.`user_preferences` VALUES  ('6ed9fb3d-21f2-0991-2bd2-50fd6ddbf832','global',0,'2013-01-21 16:31:56','2013-02-04 09:26:17','1','YTozMjp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjZlYTUwMjMxLTllODAtODJmMi1kNGZjLTUwZmQ2ZDdlOWUxZSI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6ODoidGltZXpvbmUiO3M6MTI6IkFzaWEvS29sa2F0YSI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOi0xO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjU6ImRhdGVmIjtzOjU6ImQtbS1ZIjtzOjU6InRpbWVmIjtzOjU6Img6aSBBIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjM6IkFsbCI7czo5OiJBY2NvdW50c1EiO2E6MTA6e3M6NjoibW9kdWxlIjtzOjg6IkFjY291bnRzIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6MTA6Im5hbWVfYmFzaWMiO3M6MDoiIjtzOjE0OiJsYXN0bmFtZV9iYXNpYyI7czowOiIiO3M6MTE6ImVtYWlsX2Jhc2ljIjtzOjA6IiI7czoxNDoibW9iaWxlbm9fYmFzaWMiO3M6MDoiIjtzOjEzOiJwaG9uZW5vX2Jhc2ljIjtzOjA6IiI7czo2OiJidXR0b24iO3M6NjoiU2VhcmNoIjt9czoxMDoiRW1wbG95ZWVzUSI7YTozOntzOjY6Im1vZHVsZSI7czo5OiJFbXBsb3llZXMiO3M6NjoiYWN0aW9uIjtzOjU6ImluZGV4IjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO31zOjE3OiJhbGFuX09yZGVyTWFzdGVyUSI7YTo4OntzOjY6Im1vZHVsZSI7czoxNjoiYWxhbl9PcmRlck1hc3RlciI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7czo1OiJxdWVyeSI7czo0OiJ0cnVlIjtzOjEwOiJuYW1lX2Jhc2ljIjtzOjEwOiJKVTEwMDAwMTI4IjtzOjE1OiJvcmRlcmRhdGVfYmFzaWMiO3M6MDoiIjtzOjE5OiJwYXltZW50bWV0aG9kX2Jhc2ljIjtzOjA6IiI7czoxNjoib3JkZXJ2YWx1ZV9iYXNpYyI7czowOiIiO31zOjIyOiJhbGFuX2NvbW11bmljYXRpb25sb2dRIjthOjE0OntzOjY6Im1vZHVsZSI7czoyMToiYWxhbl9jb21tdW5pY2F0aW9ubG9nIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6MzE6ImRhdGVfZW50ZXJlZF9iYXNpY19yYW5nZV9jaG9pY2UiO3M6MToiPSI7czoyNDoicmFuZ2VfZGF0ZV9lbnRlcmVkX2Jhc2ljIjtzOjA6IiI7czozMDoic3RhcnRfcmFuZ2VfZGF0ZV9lbnRlcmVkX2Jhc2ljIjtzOjA6IiI7czoyODoiZW5kX3JhbmdlX2RhdGVfZW50ZXJlZF9iYXNpYyI7czowOiIiO3M6MjQ6ImNvbW11bmljYXRpb25fdHlwZV9iYXNpYyI7czowOiIiO3M6MTk6ImZ1bmN0aW9uX25hbWVfYmFzaWMiO3M6MDoiIjtzOjEyOiJzdGF0dXNfYmFzaWMiO3M6MDoiIjtzOjE1OiJvYmplY3RfaWRfYmFzaWMiO3M6MDoiIjtzOjE3OiJvYmplY3RfdHlwZV9iYXNpYyI7czowOiIiO3M6NjoiYnV0dG9uIjtzOjY6IlNlYXJjaCI7fXM6MTA6ImFsYW5fbG9nc1EiO2E6OTp7czo2OiJtb2R1bGUiO3M6OToiYWxhbl9sb2dzIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6MzE6ImRhdGVfZW50ZXJlZF9iYXNpY19yYW5nZV9jaG9pY2UiO3M6MToiPSI7czoyNDoicmFuZ2VfZGF0ZV9lbnRlcmVkX2Jhc2ljIjtzOjEwOiIyMDEzLTAxLTA0IjtzOjMwOiJzdGFydF9yYW5nZV9kYXRlX2VudGVyZWRfYmFzaWMiO3M6MDoiIjtzOjI4OiJlbmRfcmFuZ2VfZGF0ZV9lbnRlcmVkX2Jhc2ljIjtzOjA6IiI7czo2OiJidXR0b24iO3M6NjoiU2VhcmNoIjt9fQ=='),
 ('9faecac9-0c26-c17b-e1ae-50fd6ee389c9','ETag',0,'2013-01-21 16:35:02','2013-01-25 15:20:06','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Njt9'),
 ('48e21286-61df-095a-a9b4-50fd6e226efc','Home',0,'2013-01-21 16:35:02','2013-01-22 05:16:49','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6IjU3NWQ0MTM5LTI0YTYtZGVmMy0yMTE4LTUwZmUyMDVkMmQ4NCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czozMDoiTEJMX0RBU0hMRVRfRElTQ09WRVJfU1VHQVJfUFJPIjtzOjM6InVybCI7czo0MToiaHR0cDovL3d3dy5zdWdhcmNybS5jb20vY3JtL3Byb2R1Y3QvZ29wcm8iO3M6NjoiaGVpZ2h0IjtpOjMxNTt9fXM6MzY6IjU3NjMxMDA3LWI5ZjktY2Y4YS1kN2RiLTUwZmUyMDM1ZDM3NSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjU3NjY4MWI3LTcwNjgtNmNlYi0zOTQyLTUwZmUyMGUwMDQ4YSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czoyMjoiTEJMX0RBU0hMRVRfU1VHQVJfTkVXUyI7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L25ld3MiO3M6NjoiaGVpZ2h0IjtpOjMxNTt9fXM6MzY6IjViNzM5M2ViLTM0NmItNDBhOC0zYjRmLTUwZmUyMGQ5NmNjYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjVmNDE0YjMwLTIwZDYtYzY1Ny0xMGQ5LTUwZmUyMDc2MTU4YiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjY0NGM1YTNlLWI0ZWUtNzFmYy1iOTAxLTUwZmUyMGE2NjVhOSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNmI0YzI0NjAtNTk2ZC05ZjQ2LTU2ZjUtNTBmZTIwOTVmMzNjIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNzM1ZGMxODEtNmRlYi1jZjRlLTlkNTQtNTBmZTIwMzlkMGE2IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjA6e319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MDp7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIyIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
 ('b53f6611-b965-8ec8-c865-50fd89730a0a','Accounts2_ACCOUNT',0,'2013-01-21 18:31:16','2013-01-27 02:08:43','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('d9783343-c791-db39-2128-50fd8ab05891','Contacts2_CONTACT',0,'2013-01-21 18:34:46','2013-01-21 18:34:46','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('5b344bbe-2cab-94a1-ebe3-50fd8a811bae','Opportunities2_OPPORTUNITY',0,'2013-01-21 18:34:48','2013-01-21 18:34:48','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('645b0857-f257-bb58-92a2-50fd8a6a1f49','Leads2_LEAD',0,'2013-01-21 18:34:49','2013-01-21 18:34:49','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('56056f25-c2a0-34a9-c78a-50fd8bc24f40','alan_OrderMaster2_ALAN_ORDERMASTER',0,'2013-01-21 18:40:54','2013-01-27 02:41:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('49806f4d-8479-d20d-8eaa-50fd6eab7449','Home2_CALL',0,'2013-01-21 16:35:02','2013-01-21 16:35:02','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('4a1f5175-528f-c297-dbe7-50fd6e6334c3','Home2_MEETING',0,'2013-01-21 16:35:02','2013-01-21 16:35:02','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('4a8e5069-e4cb-04d2-54cf-50fd6ef84579','Home2_OPPORTUNITY',0,'2013-01-21 16:35:02','2013-01-21 16:35:02','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('4af3398e-9265-ebe5-049b-50fd6e3de87b','Home2_ACCOUNT',0,'2013-01-21 16:35:02','2013-01-21 16:35:02','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('4b4dfc74-2b57-9566-599f-50fd6e93a5d4','Home2_LEAD',0,'2013-01-21 16:35:02','2013-01-21 16:35:02','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('4bad753f-1466-abb7-a453-50fd6e3e6db8','Home2_SUGARFEED',0,'2013-01-21 16:35:02','2013-01-21 16:35:02','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('ee491ad0-8190-5f3b-9192-50fe2889bed1','alan_OrderItem2_ALAN_ORDERITEM',0,'2013-01-22 05:50:03','2013-01-22 05:50:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('f0b8a242-7f4c-d3f3-81c6-50fe28834c7d','alan_OrderAddress2_ALAN_ORDERADDRESS',0,'2013-01-22 05:50:05','2013-01-22 05:50:05','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('1cece2af-f689-ec35-0647-50ff74c9ca9f','alan_OrderMaster',0,'2013-01-23 05:26:10','2013-01-26 15:24:44','1','YToyOntzOjE0OiJzdWJwYW5lbExheW91dCI7YToyOntpOjA7czozNDoiYWxhbl9vcmRlcm1hc3Rlcl9hbGFuX29yZGVyYWRkcmVzcyI7aToxO3M6MzE6ImFsYW5fb3JkZXJtYXN0ZXJfYWxhbl9vcmRlcml0ZW0iO31zOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),
 ('ca4f1525-6ded-367e-d12f-50ff77b75dbe','Employees2_EMPLOYEE',0,'2013-01-23 05:41:12','2013-01-23 05:41:12','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('7e620729-b161-f8e3-2785-5103c50e14c0','alan_communicationlog2_ALAN_COMMUNICATIONLOG',0,'2013-01-26 12:02:27','2013-01-26 16:01:22','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('dc0bc083-72dc-bd95-fb36-5103fce8b2ee','alan_logs2_ALAN_LOGS',0,'2013-01-26 15:53:37','2013-01-26 15:53:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('2e57e0cb-7837-8ef5-99b2-51041224bfc7','Users2_USER',0,'2013-01-26 17:27:43','2013-01-26 17:27:43','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('a290594d-84eb-dd04-4491-5104128da956','global',0,'2013-01-26 17:28:29','2013-01-26 17:28:55','a04fade0-0256-909d-ed22-510412e139d0','YTozMjp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6LTE7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjg6InRpbWV6b25lIjtzOjEyOiJBc2lhL0tvbGthdGEiO3M6MjoidXQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkLW0tWSI7czo1OiJ0aW1lZiI7czo1OiJoOmkgQSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImEyNDQ3OWJjLTAyYjYtZjRlOS0xZTBiLTUxMDQxMmJjOGQ0OCI7fQ=='),
 ('e9656375-ff7e-e6fc-6545-51041230cfc2','global',0,'2013-01-26 17:29:25','2013-01-27 02:22:54','e82ce576-b49c-1717-3652-510412511457','YTozODp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOi0xO3M6ODoidGltZXpvbmUiO3M6MTI6IkFzaWEvS29sa2F0YSI7czoyOiJ1dCI7czoxOiIxIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6ImQtbS1ZIjtzOjU6InRpbWVmIjtzOjU6Img6aSBBIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiZTkzMDhiY2ItOWM0NS03YzY4LThiZjYtNTEwNDEyNzQ1YzMxIjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6MzoiQWxsIjtzOjE3OiJhbGFuX09yZGVyTWFzdGVyUSI7YTo5OntzOjY6Im1vZHVsZSI7czoxNjoiYWxhbl9PcmRlck1hc3RlciI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7czo1OiJxdWVyeSI7czo0OiJ0cnVlIjtzOjEwOiJuYW1lX2Jhc2ljIjtzOjk6IlNMTkQwOTk4OSI7czoxNToib3JkZXJkYXRlX2Jhc2ljIjtzOjA6IiI7czoxOToicGF5bWVudG1ldGhvZF9iYXNpYyI7czowOiIiO3M6MTY6Im9yZGVydmFsdWVfYmFzaWMiO3M6MDoiIjtzOjY6ImJ1dHRvbiI7czo2OiJTZWFyY2giO319'),
 ('bd6b9b2d-07a5-38b0-31c7-51048cdc250e','ETag',0,'2013-01-27 02:10:53','2013-01-27 02:21:01','e82ce576-b49c-1717-3652-510412511457','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6NDt9'),
 ('2994f40d-88ef-7886-7f94-51048fc45fec','Home',0,'2013-01-27 02:21:01','2013-01-27 02:21:23','e82ce576-b49c-1717-3652-510412511457','YToyOntzOjg6ImRhc2hsZXRzIjthOjE6e3M6MzY6ImQxNmFhMjcyLWQ5NWQtNjZiMC00NmE0LTUxMDQ4ZmViZGQ0MSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fX1zOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTowOnt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjE6e2k6MDtzOjM2OiJkMTZhYTI3Mi1kOTVkLTY2YjAtNDZhNC01MTA0OGZlYmRkNDEiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMiI7czoxNDoicGFnZVRpdGxlTGFiZWwiO3M6MjA6IkxCTF9IT01FX1BBR0VfMV9OQU1FIjt9fX0='),
 ('bd75726a-d58b-602f-59c4-51048fc1611a','alan_OrderMaster2_ALAN_ORDERMASTER',0,'2013-01-27 02:21:26','2013-01-27 02:21:26','e82ce576-b49c-1717-3652-510412511457','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('e1b5e7a6-93cb-6a1b-82b1-51048f26cd57','Accounts2_ACCOUNT',0,'2013-01-27 02:21:37','2013-01-27 02:21:37','e82ce576-b49c-1717-3652-510412511457','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('2a1e5206-5ce0-cffe-4464-51048f3cc59d','Home2_CALL',0,'2013-01-27 02:21:01','2013-01-27 02:21:01','e82ce576-b49c-1717-3652-510412511457','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('2a6bf8cd-21cb-29b1-73f7-51048f64f0ac','Home2_MEETING',0,'2013-01-27 02:21:01','2013-01-27 02:21:01','e82ce576-b49c-1717-3652-510412511457','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('2aab831d-8a3c-9a97-2196-51048fb4ce0a','Home2_OPPORTUNITY',0,'2013-01-27 02:21:01','2013-01-27 02:21:01','e82ce576-b49c-1717-3652-510412511457','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('2ae6369c-9045-d95b-77fe-51048f074075','Home2_ACCOUNT',0,'2013-01-27 02:21:01','2013-01-27 02:21:01','e82ce576-b49c-1717-3652-510412511457','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
 ('2b218cdb-d76e-2188-e763-51048f5cfa91','Home2_LEAD',0,'2013-01-27 02:21:01','2013-01-27 02:21:01','e82ce576-b49c-1717-3652-510412511457','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
UNLOCK TABLES;
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;


--
-- Definition of table `procrm`.`users`
--

DROP TABLE IF EXISTS `procrm`.`users`;
CREATE TABLE  `procrm`.`users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
LOCK TABLES `users` WRITE;
INSERT INTO `procrm`.`users` VALUES  ('1','admin','$6$8k2RpzC0$x/mGFAb1cwa0DKr0aZHY4NwjX5Efd4Ruk3.0GPDJWBKC5emFJrg3oU50DEBXR/0/UfT2j/o1ZMoqdyIs3oROy/',0,NULL,NULL,1,'Hrishikesh','Mishra',1,0,1,NULL,'2013-01-21 16:31:56','2013-01-21 16:35:02','1','','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0),
 ('a04fade0-0256-909d-ed22-510412e139d0','erp',NULL,0,NULL,NULL,1,'ERP','Webservice',0,0,1,NULL,'2013-01-26 17:28:29','2013-01-26 17:28:55','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Inactive',NULL,NULL,NULL,NULL,NULL,1,0,1,'Terminated',NULL,NULL,'',0),
 ('e82ce576-b49c-1717-3652-510412511457','erp','$6$lssIDWxT$WFtabqlHMRKPpbYH.8JqMfkRs9yrfmn6bWPOullHOviCSvP4A8jlJz8bhKJ2m3PjGg1gpDT/MvfjrZbyB4HB71',0,'2013-01-27 02:20:00',NULL,1,'Erp','Webservice',0,0,1,NULL,'2013-01-26 17:29:25','2013-01-27 02:21:01','e82ce576-b49c-1717-3652-510412511457','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


--
-- Definition of table `procrm`.`users_feeds`
--

DROP TABLE IF EXISTS `procrm`.`users_feeds`;
CREATE TABLE  `procrm`.`users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`users_feeds`
--

/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
LOCK TABLES `users_feeds` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;


--
-- Definition of table `procrm`.`users_last_import`
--

DROP TABLE IF EXISTS `procrm`.`users_last_import`;
CREATE TABLE  `procrm`.`users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`users_last_import`
--

/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
LOCK TABLES `users_last_import` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;


--
-- Definition of table `procrm`.`users_password_link`
--

DROP TABLE IF EXISTS `procrm`.`users_password_link`;
CREATE TABLE  `procrm`.`users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`users_password_link`
--

/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
LOCK TABLES `users_password_link` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;


--
-- Definition of table `procrm`.`users_signatures`
--

DROP TABLE IF EXISTS `procrm`.`users_signatures`;
CREATE TABLE  `procrm`.`users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`users_signatures`
--

/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
LOCK TABLES `users_signatures` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;


--
-- Definition of table `procrm`.`vcals`
--

DROP TABLE IF EXISTS `procrm`.`vcals`;
CREATE TABLE  `procrm`.`vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`vcals`
--

/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
LOCK TABLES `vcals` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;


--
-- Definition of table `procrm`.`versions`
--

DROP TABLE IF EXISTS `procrm`.`versions`;
CREATE TABLE  `procrm`.`versions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_version` varchar(255) DEFAULT NULL,
  `db_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_version` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procrm`.`versions`
--

/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
LOCK TABLES `versions` WRITE;
INSERT INTO `procrm`.`versions` VALUES  ('7f4d07d7-df63-ea9c-1ddb-50fd6dd80008',0,'2013-01-21 16:31:56','2013-01-21 16:31:56','1','1','Chart Data Cache','3.5.1','3.5.1'),
 ('7f98298a-5e95-3aab-dc05-50fd6d194750',0,'2013-01-21 16:31:56','2013-01-21 16:31:56','1','1','htaccess','3.5.1','3.5.1'),
 ('1b22f523-b286-22bb-cedc-5119a6114471',0,'2013-02-12 02:16:47','2013-02-12 02:16:47','1','1','Rebuild Relationships','4.0.0','4.0.0'),
 ('27d22abc-c02f-a669-e825-5119a6bdeaa2',0,'2013-02-12 02:16:47','2013-02-12 02:16:47','1','1','Rebuild Extensions','4.0.0','4.0.0');
UNLOCK TABLES;
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
