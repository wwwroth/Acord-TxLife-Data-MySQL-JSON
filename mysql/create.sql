-- ----------------------------
-- Table structure for oli_lu_adtype
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_adtype`;
CREATE TABLE `oli_lu_adtype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_adtype_value_unique` (`value`),
  UNIQUE KEY `oli_lu_adtype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_applicability
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_applicability`;
CREATE TABLE `oli_lu_applicability` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_applicability_value_unique` (`value`),
  UNIQUE KEY `oli_lu_applicability_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_attachmenttype
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_attachmenttype`;
CREATE TABLE `oli_lu_attachmenttype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_attachmenttype_value_unique` (`value`),
  UNIQUE KEY `oli_lu_attachmenttype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=558 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_backdate
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_backdate`;
CREATE TABLE `oli_lu_backdate` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_backdate_value_unique` (`value`),
  UNIQUE KEY `oli_lu_backdate_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_covtype
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_covtype`;
CREATE TABLE `oli_lu_covtype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_covtype_value_unique` (`value`),
  UNIQUE KEY `oli_lu_covtype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_divtype
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_divtype`;
CREATE TABLE `oli_lu_divtype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_divtype_value_unique` (`value`),
  UNIQUE KEY `oli_lu_divtype_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_emailtype
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_emailtype`;
CREATE TABLE `oli_lu_emailtype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_emailtype_value_unique` (`value`),
  UNIQUE KEY `oli_lu_emailtype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_employmenttype
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_employmenttype`;
CREATE TABLE `oli_lu_employmenttype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_employmenttype_value_unique` (`value`),
  UNIQUE KEY `oli_lu_employmenttype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=918 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_gender
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_gender`;
CREATE TABLE `oli_lu_gender` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_gender_value_unique` (`value`),
  UNIQUE KEY `oli_lu_gender_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_govtidtc
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_govtidtc`;
CREATE TABLE `oli_lu_govtidtc` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_govtidtc_value_unique` (`value`),
  UNIQUE KEY `oli_lu_govtidtc_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_holdpurpose
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_holdpurpose`;
CREATE TABLE `oli_lu_holdpurpose` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_holdpurpose_value_unique` (`value`),
  UNIQUE KEY `oli_lu_holdpurpose_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_marstat
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_marstat`;
CREATE TABLE `oli_lu_marstat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_marstat_value_unique` (`value`),
  UNIQUE KEY `oli_lu_marstat_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_measunits
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_measunits`;
CREATE TABLE `oli_lu_measunits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_measunits_value_unique` (`value`),
  UNIQUE KEY `oli_lu_measunits_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_nation
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_nation`;
CREATE TABLE `oli_lu_nation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_nation_value_unique` (`value`),
  UNIQUE KEY `oli_lu_nation_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_opttype
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_opttype`;
CREATE TABLE `oli_lu_opttype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_opttype_value_unique` (`value`),
  UNIQUE KEY `oli_lu_opttype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_orgform
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_orgform`;
CREATE TABLE `oli_lu_orgform` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_orgform_value_unique` (`value`),
  UNIQUE KEY `oli_lu_orgform_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_partfreq
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_partfreq`;
CREATE TABLE `oli_lu_partfreq` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_partfreq_value_unique` (`value`),
  UNIQUE KEY `oli_lu_partfreq_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_paymethod
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_paymethod`;
CREATE TABLE `oli_lu_paymethod` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_paymethod_value_unique` (`value`),
  UNIQUE KEY `oli_lu_paymethod_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_paymode
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_paymode`;
CREATE TABLE `oli_lu_paymode` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_paymode_value_unique` (`value`),
  UNIQUE KEY `oli_lu_paymode_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_phonetype
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_phonetype`;
CREATE TABLE `oli_lu_phonetype` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_phonetype_value_unique` (`value`),
  UNIQUE KEY `oli_lu_phonetype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_poldelmethod
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_poldelmethod`;
CREATE TABLE `oli_lu_poldelmethod` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_poldelmethod_value_unique` (`value`),
  UNIQUE KEY `oli_lu_poldelmethod_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_polissue
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_polissue`;
CREATE TABLE `oli_lu_polissue` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_polissue_value_unique` (`value`),
  UNIQUE KEY `oli_lu_polissue_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_polstat
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_polstat`;
CREATE TABLE `oli_lu_polstat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_polstat_value_unique` (`value`),
  UNIQUE KEY `oli_lu_polstat_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_prefcomm
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_prefcomm`;
CREATE TABLE `oli_lu_prefcomm` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_prefcomm_value_unique` (`value`),
  UNIQUE KEY `oli_lu_prefcomm_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_reldesc
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_reldesc`;
CREATE TABLE `oli_lu_reldesc` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_reldesc_value_unique` (`value`),
  UNIQUE KEY `oli_lu_reldesc_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_smokerstat
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_smokerstat`;
CREATE TABLE `oli_lu_smokerstat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_smokerstat_value_unique` (`value`),
  UNIQUE KEY `oli_lu_smokerstat_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_state
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_state`;
CREATE TABLE `oli_lu_state` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_state_value_unique` (`value`),
  UNIQUE KEY `oli_lu_state_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oli_lu_unwriteclass
-- ----------------------------
DROP TABLE IF EXISTS `oli_lu_unwriteclass`;
CREATE TABLE `oli_lu_unwriteclass` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oli_lu_unwriteclass_value_unique` (`value`),
  UNIQUE KEY `oli_lu_unwriteclass_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
