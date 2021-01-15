-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2021 at 08:09 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `churchcrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendars`
--

CREATE TABLE `calendars` (
  `calendar_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `accesstoken` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foregroundColor` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundColor` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calendars`
--

INSERT INTO `calendars` (`calendar_id`, `name`, `accesstoken`, `foregroundColor`, `backgroundColor`) VALUES
(1, 'Public Calendar', NULL, 'FFFFFF', '00AA00'),
(2, 'Private Calendar', NULL, 'FFFFFF', '0000AA');

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

CREATE TABLE `calendar_events` (
  `calendar_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calendar_events`
--

INSERT INTO `calendar_events` (`calendar_id`, `event_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `canvassdata_can`
--

CREATE TABLE `canvassdata_can` (
  `can_ID` mediumint(9) UNSIGNED NOT NULL,
  `can_famID` mediumint(9) NOT NULL DEFAULT 0,
  `can_Canvasser` mediumint(9) NOT NULL DEFAULT 0,
  `can_FYID` mediumint(9) DEFAULT NULL,
  `can_date` date DEFAULT NULL,
  `can_Positive` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_Critical` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_Insightful` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_Financial` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_Suggestion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_NotInterested` tinyint(1) NOT NULL DEFAULT 0,
  `can_WhyNotInterested` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `church_location_person`
--

CREATE TABLE `church_location_person` (
  `location_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `person_location_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `church_location_role`
--

CREATE TABLE `church_location_role` (
  `location_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `role_order` int(11) NOT NULL,
  `role_title` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config_cfg`
--

CREATE TABLE `config_cfg` (
  `cfg_id` int(11) NOT NULL DEFAULT 0,
  `cfg_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `config_cfg`
--

INSERT INTO `config_cfg` (`cfg_id`, `cfg_name`, `cfg_value`) VALUES
(23, 'sDefaultCountry', 'Kenya'),
(28, 'bSMTPAuth', ''),
(30, 'sSMTPPass', 'secret'),
(48, 'bHideFriendDate', ''),
(49, 'bHideFamilyNewsletter', ''),
(50, 'bHideWeddingDate', ''),
(51, 'bHideLatLon', ''),
(52, 'bUseDonationEnvelopes', ''),
(53, 'sHeader', 'Karen Community Church'),
(58, 'bUseScannedChecks', ''),
(64, 'sDistanceUnit', 'kilometers'),
(65, 'sTimeZone', 'Africa/Nairobi'),
(67, 'bForceUppercaseZip', ''),
(72, 'bEnableNonDeductible', ''),
(80, 'bEnableSelfRegistration', ''),
(102, 'sDateFormatLong', 'd/m/Y'),
(103, 'sDateFormatNoYear', 'd/m'),
(999, 'bRegistered', ''),
(1003, 'sChurchName', 'Karen Community Church'),
(1027, 'sPledgeSummary2', 'as of'),
(1028, 'sDirectoryDisclaimer1', 'Every effort was made to insure the accuracy of this directory.  If there are any errors or omissions, please contact the church office.This directory is for the use of the people of'),
(1035, 'bEnableGravatarPhotos', ''),
(1036, 'bEnableExternalBackupTarget', ''),
(1037, 'sExternalBackupType', 'WebDAV'),
(1046, 'sLastIntegrityCheckTimeStamp', '20210114-150822'),
(1047, 'sChurchCountry', 'Kenya'),
(2010, 'bAllowEmptyLastName', ''),
(2013, 'sChurchWebSite', 'https://www.karencommunitychurch.org/'),
(2017, 'bEnableExternalCalendarAPI', '1'),
(2045, 'bPHPMailerAutoTLS', ''),
(2046, 'sPHPMailerSMTPSecure', ''),
(2050, 'bEnabledMenuLinks', ''),
(2060, 'IncludeDataInNewPersonNotifications', ''),
(2061, 'bSearchIncludeFamilyCustomProperties', ''),
(2062, 'bBackupExtraneousImages', ''),
(2064, 'sLastSoftwareUpdateCheckTimeStamp', '20210115-100210'),
(2065, 'bAllowPrereleaseUpgrade', ''),
(2069, 'bRequire2FA', ''),
(2071, 'bSendUserDeletedEmail', ''),
(2073, 'bEnabledDashboardV2', '1'),
(20142, 'bHSTSEnable', '');

-- --------------------------------------------------------

--
-- Table structure for table `deposit_dep`
--

CREATE TABLE `deposit_dep` (
  `dep_ID` mediumint(9) UNSIGNED NOT NULL,
  `dep_Date` date DEFAULT NULL,
  `dep_Comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dep_EnteredBy` mediumint(9) UNSIGNED DEFAULT NULL,
  `dep_Closed` tinyint(1) NOT NULL DEFAULT 0,
  `dep_Type` enum('Bank','CreditCard','BankDraft','eGive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Bank'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci PACK_KEYS=0;

--
-- Dumping data for table `deposit_dep`
--

INSERT INTO `deposit_dep` (`dep_ID`, `dep_Date`, `dep_Comment`, `dep_EnteredBy`, `dep_Closed`, `dep_Type`) VALUES
(1, '2021-01-12', 'Churches are businesses', NULL, 0, 'Bank');

-- --------------------------------------------------------

--
-- Table structure for table `donateditem_di`
--

CREATE TABLE `donateditem_di` (
  `di_ID` mediumint(9) UNSIGNED NOT NULL,
  `di_item` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `di_FR_ID` mediumint(9) UNSIGNED NOT NULL,
  `di_donor_ID` mediumint(9) NOT NULL DEFAULT 0,
  `di_buyer_ID` mediumint(9) NOT NULL DEFAULT 0,
  `di_multibuy` smallint(1) NOT NULL DEFAULT 0,
  `di_title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `di_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `di_sellprice` decimal(8,2) DEFAULT NULL,
  `di_estprice` decimal(8,2) DEFAULT NULL,
  `di_minimum` decimal(8,2) DEFAULT NULL,
  `di_materialvalue` decimal(8,2) DEFAULT NULL,
  `di_EnteredBy` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `di_EnteredDate` date NOT NULL,
  `di_picture` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donateditem_di`
--

INSERT INTO `donateditem_di` (`di_ID`, `di_item`, `di_FR_ID`, `di_donor_ID`, `di_buyer_ID`, `di_multibuy`, `di_title`, `di_description`, `di_sellprice`, `di_estprice`, `di_minimum`, `di_materialvalue`, `di_EnteredBy`, `di_EnteredDate`, `di_picture`) VALUES
(1, 'Test_Item', 1, 0, 0, 0, 'Test_Fundraiser', '', '0.00', '0.00', '0.00', '0.00', 1, '2021-01-12', '');

-- --------------------------------------------------------

--
-- Table structure for table `donationfund_fun`
--

CREATE TABLE `donationfund_fun` (
  `fun_ID` tinyint(3) NOT NULL,
  `fun_Active` enum('true','false') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'true',
  `fun_Name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fun_Description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donationfund_fun`
--

INSERT INTO `donationfund_fun` (`fun_ID`, `fun_Active`, `fun_Name`, `fun_Description`) VALUES
(1, 'true', 'Pledges', 'Pledge income for the operating budget');

-- --------------------------------------------------------

--
-- Table structure for table `egive_egv`
--

CREATE TABLE `egive_egv` (
  `egv_egiveID` varchar(16) CHARACTER SET utf8 NOT NULL,
  `egv_famID` int(11) NOT NULL,
  `egv_DateEntered` datetime NOT NULL,
  `egv_DateLastEdited` datetime NOT NULL,
  `egv_EnteredBy` smallint(6) NOT NULL DEFAULT 0,
  `egv_EditedBy` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_message_pending_emp`
--

CREATE TABLE `email_message_pending_emp` (
  `emp_usr_id` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `emp_to_send` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `emp_subject` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `emp_message` text COLLATE utf8_unicode_ci NOT NULL,
  `emp_attach_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_attach` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_recipient_pending_erp`
--

CREATE TABLE `email_recipient_pending_erp` (
  `erp_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `erp_usr_id` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `erp_num_attempt` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `erp_failed_time` datetime DEFAULT NULL,
  `erp_email_address` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eventcountnames_evctnm`
--

CREATE TABLE `eventcountnames_evctnm` (
  `evctnm_countid` int(5) NOT NULL,
  `evctnm_eventtypeid` smallint(5) NOT NULL DEFAULT 0,
  `evctnm_countname` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `evctnm_notes` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eventcountnames_evctnm`
--

INSERT INTO `eventcountnames_evctnm` (`evctnm_countid`, `evctnm_eventtypeid`, `evctnm_countname`, `evctnm_notes`) VALUES
(1, 1, 'Total', ''),
(2, 1, 'Members', ''),
(3, 1, 'Visitors', ''),
(4, 2, 'Total', ''),
(5, 2, 'Members', ''),
(6, 2, 'Visitors', ''),
(7, 3, '1', ''),
(8, 3, 'Total', '');

-- --------------------------------------------------------

--
-- Table structure for table `eventcounts_evtcnt`
--

CREATE TABLE `eventcounts_evtcnt` (
  `evtcnt_eventid` int(5) NOT NULL DEFAULT 0,
  `evtcnt_countid` int(5) NOT NULL DEFAULT 0,
  `evtcnt_countname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evtcnt_countcount` int(6) DEFAULT NULL,
  `evtcnt_notes` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eventcounts_evtcnt`
--

INSERT INTO `eventcounts_evtcnt` (`evtcnt_eventid`, `evtcnt_countid`, `evtcnt_countname`, `evtcnt_countcount`, `evtcnt_notes`) VALUES
(1, 7, '1', 69, 'yeet'),
(1, 8, 'Total', 420, 'yeet');

-- --------------------------------------------------------

--
-- Table structure for table `events_event`
--

CREATE TABLE `events_event` (
  `event_id` int(11) NOT NULL,
  `event_type` int(11) NOT NULL DEFAULT 0,
  `event_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `event_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_start` datetime NOT NULL,
  `event_end` datetime NOT NULL,
  `inactive` int(1) NOT NULL DEFAULT 0,
  `event_typename` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `location_id` int(11) DEFAULT NULL,
  `primary_contact_person_id` int(11) DEFAULT NULL,
  `secondary_contact_person_id` int(11) DEFAULT NULL,
  `event_url` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events_event`
--

INSERT INTO `events_event` (`event_id`, `event_type`, `event_title`, `event_desc`, `event_text`, `event_start`, `event_end`, `inactive`, `event_typename`, `location_id`, `primary_contact_person_id`, `secondary_contact_person_id`, `event_url`) VALUES
(1, 3, '2019-11-30-Annual Events', 'testing annual event. think birthday', '', '2019-11-30 07:00:00', '2019-11-30 08:00:00', 0, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_attend`
--

CREATE TABLE `event_attend` (
  `attend_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT 0,
  `person_id` int(11) NOT NULL DEFAULT 0,
  `checkin_date` datetime DEFAULT NULL,
  `checkin_id` int(11) DEFAULT NULL,
  `checkout_date` datetime DEFAULT NULL,
  `checkout_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_audience`
--

CREATE TABLE `event_audience` (
  `event_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_types`
--

CREATE TABLE `event_types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type_defstarttime` time NOT NULL DEFAULT '00:00:00',
  `type_defrecurtype` enum('none','weekly','monthly','yearly') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `type_defrecurDOW` enum('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Sunday',
  `type_defrecurDOM` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `type_defrecurDOY` date NOT NULL DEFAULT '2000-01-01',
  `type_active` int(1) NOT NULL DEFAULT 1,
  `type_grpid` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event_types`
--

INSERT INTO `event_types` (`type_id`, `type_name`, `type_defstarttime`, `type_defrecurtype`, `type_defrecurDOW`, `type_defrecurDOM`, `type_defrecurDOY`, `type_active`, `type_grpid`) VALUES
(1, 'Church Service', '10:30:00', 'weekly', 'Sunday', '', '2016-01-01', 1, NULL),
(2, 'Sunday School', '09:30:00', 'weekly', 'Sunday', '', '2016-01-01', 1, NULL),
(3, 'Annual Events', '07:00:00', 'yearly', 'Sunday', '0', '0000-00-00', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `family_custom`
--

CREATE TABLE `family_custom` (
  `fam_ID` mediumint(9) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `family_custom`
--

INSERT INTO `family_custom` (`fam_ID`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `family_custom_master`
--

CREATE TABLE `family_custom_master` (
  `fam_custom_Order` smallint(6) NOT NULL DEFAULT 0,
  `fam_custom_Field` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fam_custom_Name` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fam_custom_Special` mediumint(8) UNSIGNED DEFAULT NULL,
  `fam_custom_FieldSec` tinyint(4) NOT NULL DEFAULT 1,
  `type_ID` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `family_fam`
--

CREATE TABLE `family_fam` (
  `fam_ID` mediumint(9) UNSIGNED NOT NULL,
  `fam_Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_Address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_Address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_City` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_Zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_Country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_HomePhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_WorkPhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_CellPhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_WeddingDate` date DEFAULT NULL,
  `fam_DateEntered` datetime NOT NULL,
  `fam_DateLastEdited` datetime DEFAULT NULL,
  `fam_EnteredBy` smallint(5) NOT NULL DEFAULT 0,
  `fam_EditedBy` smallint(5) UNSIGNED DEFAULT 0,
  `fam_scanCheck` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_scanCredit` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_SendNewsLetter` enum('FALSE','TRUE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'FALSE',
  `fam_DateDeactivated` date DEFAULT NULL,
  `fam_OkToCanvass` enum('FALSE','TRUE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'FALSE',
  `fam_Canvasser` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `fam_Latitude` double DEFAULT NULL,
  `fam_Longitude` double DEFAULT NULL,
  `fam_Envelope` mediumint(9) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `family_fam`
--

INSERT INTO `family_fam` (`fam_ID`, `fam_Name`, `fam_Address1`, `fam_Address2`, `fam_City`, `fam_State`, `fam_Zip`, `fam_Country`, `fam_HomePhone`, `fam_WorkPhone`, `fam_CellPhone`, `fam_Email`, `fam_WeddingDate`, `fam_DateEntered`, `fam_DateLastEdited`, `fam_EnteredBy`, `fam_EditedBy`, `fam_scanCheck`, `fam_scanCredit`, `fam_SendNewsLetter`, `fam_DateDeactivated`, `fam_OkToCanvass`, `fam_Canvasser`, `fam_Latitude`, `fam_Longitude`, `fam_Envelope`) VALUES
(1, 'Name', '', '', '', '', '', 'Afghanistan (‫افغانستان‬‎)', '(254) 123-4567', '', '', 'test@server.com', NULL, '2021-01-07 12:26:48', NULL, 1, 0, NULL, NULL, 'FALSE', NULL, 'FALSE', 0, NULL, NULL, 0),
(2, 'Otungulo', '1234-55655', '', 'Nairobi', '', '69420', 'Kenya', '(254) 123-4567', '', '', 'secondary@mailclient.com', '2021-01-08', '2021-01-08 12:58:35', NULL, 1, 0, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 69, 420, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fundraiser_fr`
--

CREATE TABLE `fundraiser_fr` (
  `fr_ID` mediumint(9) UNSIGNED NOT NULL,
  `fr_date` date DEFAULT NULL,
  `fr_title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `fr_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fr_EnteredBy` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `fr_EnteredDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fundraiser_fr`
--

INSERT INTO `fundraiser_fr` (`fr_ID`, `fr_date`, `fr_title`, `fr_description`, `fr_EnteredBy`, `fr_EnteredDate`) VALUES
(1, '2021-01-12', 'Test_Fundraiser', 'Gimme moneys', 1, '2021-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `groupprop_master`
--

CREATE TABLE `groupprop_master` (
  `grp_ID` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `prop_ID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `prop_Field` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `prop_Name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prop_Description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_ID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `prop_Special` mediumint(9) UNSIGNED DEFAULT NULL,
  `prop_PersonDisplay` enum('false','true') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Group-specific properties order, name, description, type';

-- --------------------------------------------------------

--
-- Table structure for table `group_grp`
--

CREATE TABLE `group_grp` (
  `grp_ID` mediumint(8) UNSIGNED NOT NULL,
  `grp_Type` tinyint(4) NOT NULL DEFAULT 0,
  `grp_RoleListID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `grp_DefaultRole` mediumint(9) NOT NULL DEFAULT 0,
  `grp_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `grp_Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `grp_hasSpecialProps` tinyint(1) NOT NULL DEFAULT 0,
  `grp_active` tinyint(1) NOT NULL DEFAULT 1,
  `grp_include_email_export` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_grp`
--

INSERT INTO `group_grp` (`grp_ID`, `grp_Type`, `grp_RoleListID`, `grp_DefaultRole`, `grp_Name`, `grp_Description`, `grp_hasSpecialProps`, `grp_active`, `grp_include_email_export`) VALUES
(1, 1, 13, 1, 'Test', 'test group', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `istlookup_lu`
--

CREATE TABLE `istlookup_lu` (
  `lu_fam_ID` mediumint(9) NOT NULL DEFAULT 0,
  `lu_LookupDateTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `lu_DeliveryLine1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_DeliveryLine2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_City` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_ZipAddon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_Zip` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_Addon` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_LOTNumber` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_DPCCheckdigit` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_RecordType` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_LastLine` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_CarrierRoute` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_ReturnCodes` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_ErrorCodes` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_ErrorDesc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='US Address Verification Lookups From Intelligent Search Tech';

-- --------------------------------------------------------

--
-- Table structure for table `kioskassginment_kasm`
--

CREATE TABLE `kioskassginment_kasm` (
  `kasm_ID` mediumint(9) UNSIGNED NOT NULL,
  `kasm_kdevId` mediumint(9) DEFAULT NULL,
  `kasm_AssignmentType` mediumint(9) DEFAULT NULL,
  `kasm_EventId` mediumint(9) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kioskdevice_kdev`
--

CREATE TABLE `kioskdevice_kdev` (
  `kdev_ID` mediumint(9) UNSIGNED NOT NULL,
  `kdev_GUIDHash` char(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kdev_Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kdev_deviceType` mediumint(9) NOT NULL DEFAULT 0,
  `kdev_lastHeartbeat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kdev_Accepted` tinyint(1) DEFAULT NULL,
  `kdev_PendingCommands` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `list_lst`
--

CREATE TABLE `list_lst` (
  `lst_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `lst_OptionID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `lst_OptionSequence` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lst_OptionName` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `list_lst`
--

INSERT INTO `list_lst` (`lst_ID`, `lst_OptionID`, `lst_OptionSequence`, `lst_OptionName`) VALUES
(1, 1, 1, 'Member'),
(1, 2, 2, 'Regular Attender'),
(1, 3, 3, 'Guest'),
(1, 5, 4, 'Non-Attender'),
(1, 4, 5, 'Non-Attender (staff)'),
(2, 1, 1, 'Head of Household'),
(2, 2, 2, 'Spouse'),
(2, 3, 3, 'Child'),
(2, 4, 4, 'Other Relative'),
(2, 5, 5, 'Non Relative'),
(3, 1, 1, 'Ministry'),
(3, 2, 2, 'Team'),
(3, 3, 3, 'Bible Study'),
(3, 4, 4, 'Sunday School Class'),
(4, 1, 1, 'True / False'),
(4, 2, 2, 'Date'),
(4, 3, 3, 'Text Field (50 char)'),
(4, 4, 4, 'Text Field (100 char)'),
(4, 5, 5, 'Text Field (Long)'),
(4, 6, 6, 'Year'),
(4, 7, 7, 'Season'),
(4, 8, 8, 'Number'),
(4, 9, 9, 'Person from Group'),
(4, 10, 10, 'Money'),
(4, 11, 11, 'Phone Number'),
(4, 12, 12, 'Custom Drop-Down List'),
(5, 1, 1, 'bAll'),
(5, 2, 2, 'bAdmin'),
(5, 3, 3, 'bAddRecords'),
(5, 4, 4, 'bEditRecords'),
(5, 5, 5, 'bDeleteRecords'),
(5, 7, 7, 'bManageGroups'),
(5, 8, 8, 'bFinance'),
(5, 9, 9, 'bNotes'),
(5, 11, 11, 'bCanvasser'),
(10, 1, 1, 'Teacher'),
(10, 2, 2, 'Student'),
(11, 1, 1, 'Member'),
(12, 1, 1, 'Teacher'),
(12, 2, 2, 'Student'),
(13, 1, 1, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `location_typeId` int(11) NOT NULL,
  `location_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `location_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `location_city` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `location_state` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `location_zip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `location_country` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `location_phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_timzezone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_links`
--

CREATE TABLE `menu_links` (
  `linkId` mediumint(8) UNSIGNED NOT NULL,
  `linkName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkUri` text COLLATE utf8_unicode_ci NOT NULL,
  `linkOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_links`
--

INSERT INTO `menu_links` (`linkId`, `linkName`, `linkUri`, `linkOrder`) VALUES
(1, 'Test', 'http://www.google.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `multibuy_mb`
--

CREATE TABLE `multibuy_mb` (
  `mb_ID` mediumint(9) UNSIGNED NOT NULL,
  `mb_per_ID` mediumint(9) NOT NULL DEFAULT 0,
  `mb_item_ID` mediumint(9) NOT NULL DEFAULT 0,
  `mb_count` decimal(8,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note_nte`
--

CREATE TABLE `note_nte` (
  `nte_ID` mediumint(8) UNSIGNED NOT NULL,
  `nte_per_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `nte_fam_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `nte_Private` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `nte_Text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `nte_DateEntered` datetime NOT NULL,
  `nte_DateLastEdited` datetime DEFAULT NULL,
  `nte_EnteredBy` mediumint(8) NOT NULL DEFAULT 0,
  `nte_EditedBy` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `nte_Type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `note_nte`
--

INSERT INTO `note_nte` (`nte_ID`, `nte_per_ID`, `nte_fam_ID`, `nte_Private`, `nte_Text`, `nte_DateEntered`, `nte_DateLastEdited`, `nte_EnteredBy`, `nte_EditedBy`, `nte_Type`) VALUES
(1, 1, 0, 0, 'system user changed password', '2021-01-07 12:09:34', NULL, 1, 0, 'user'),
(2, 2, 0, 0, 'Created', '2021-01-07 12:26:48', NULL, 1, 0, 'create'),
(3, 3, 0, 0, 'Created via Family', '2021-01-08 12:58:35', NULL, 1, 0, 'create'),
(4, 4, 0, 0, 'Created via Family', '2021-01-08 12:58:36', NULL, 1, 0, 'create'),
(5, 0, 2, 0, 'Created', '2021-01-08 12:58:35', NULL, 1, 0, 'create');

-- --------------------------------------------------------

--
-- Table structure for table `paddlenum_pn`
--

CREATE TABLE `paddlenum_pn` (
  `pn_ID` mediumint(9) UNSIGNED NOT NULL,
  `pn_fr_ID` mediumint(9) UNSIGNED DEFAULT NULL,
  `pn_Num` mediumint(9) UNSIGNED DEFAULT NULL,
  `pn_per_ID` mediumint(9) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `permission_id` int(11) NOT NULL,
  `permission_name` varchar(50) NOT NULL,
  `permission_desc` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`permission_id`, `permission_name`, `permission_desc`) VALUES
(1, 'addPeople', 'Add People'),
(3, 'updatePeople', 'Update People'),
(4, 'deletePeopleRecords', 'Delete People Records'),
(5, 'curdProperties', 'Manage Properties '),
(6, 'crudClassifications', 'Manage Classifications'),
(7, 'crudGroups', 'Manage Groups'),
(8, 'crudRoles', 'Manage Roles'),
(9, 'crudDonations', 'Manage Donations'),
(10, 'curdFinance', 'Manage Finance'),
(11, 'curdNotes', 'Manage Notes'),
(12, 'canvasser', 'Canvasser volunteer'),
(13, 'editSelf', 'Edit own family only'),
(14, 'emailMailto', 'Allow to see Mailto Links'),
(15, 'createDirectory', 'Create Directories'),
(16, 'exportCSV', 'Export CSV files'),
(17, 'usAddressVerification', 'Use IST Address Verification'),
(18, 'crudEvent', 'Manage Events');

-- --------------------------------------------------------

--
-- Table structure for table `person2group2role_p2g2r`
--

CREATE TABLE `person2group2role_p2g2r` (
  `p2g2r_per_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `p2g2r_grp_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `p2g2r_rle_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person2volunteeropp_p2vo`
--

CREATE TABLE `person2volunteeropp_p2vo` (
  `p2vo_ID` mediumint(9) NOT NULL,
  `p2vo_per_ID` mediumint(9) DEFAULT NULL,
  `p2vo_vol_ID` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_custom`
--

CREATE TABLE `person_custom` (
  `per_ID` mediumint(9) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `person_custom`
--

INSERT INTO `person_custom` (`per_ID`) VALUES
(2),
(3),
(4);

-- --------------------------------------------------------

--
-- Table structure for table `person_custom_master`
--

CREATE TABLE `person_custom_master` (
  `custom_Order` smallint(6) NOT NULL DEFAULT 0,
  `custom_Field` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_Name` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_Special` mediumint(8) UNSIGNED DEFAULT NULL,
  `custom_FieldSec` tinyint(4) NOT NULL,
  `type_ID` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_per`
--

CREATE TABLE `person_per` (
  `per_ID` mediumint(9) UNSIGNED NOT NULL,
  `per_Title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_FirstName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_MiddleName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_LastName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Suffix` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Address1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Address2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_City` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_HomePhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_WorkPhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_CellPhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_WorkEmail` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_BirthMonth` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `per_BirthDay` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `per_BirthYear` year(4) DEFAULT NULL,
  `per_MembershipDate` date DEFAULT NULL,
  `per_Gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `per_fmr_ID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `per_cls_ID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `per_fam_ID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `per_Envelope` smallint(5) UNSIGNED DEFAULT NULL,
  `per_DateLastEdited` datetime DEFAULT NULL,
  `per_DateEntered` datetime NOT NULL,
  `per_EnteredBy` smallint(5) NOT NULL DEFAULT 0,
  `per_EditedBy` smallint(5) UNSIGNED DEFAULT 0,
  `per_FriendDate` date DEFAULT NULL,
  `per_Flags` mediumint(9) NOT NULL DEFAULT 0,
  `per_FacebookID` bigint(20) UNSIGNED DEFAULT NULL,
  `per_Twitter` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_LinkedIn` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `person_per`
--

INSERT INTO `person_per` (`per_ID`, `per_Title`, `per_FirstName`, `per_MiddleName`, `per_LastName`, `per_Suffix`, `per_Address1`, `per_Address2`, `per_City`, `per_State`, `per_Zip`, `per_Country`, `per_HomePhone`, `per_WorkPhone`, `per_CellPhone`, `per_Email`, `per_WorkEmail`, `per_BirthMonth`, `per_BirthDay`, `per_BirthYear`, `per_MembershipDate`, `per_Gender`, `per_fmr_ID`, `per_cls_ID`, `per_fam_ID`, `per_Envelope`, `per_DateLastEdited`, `per_DateEntered`, `per_EnteredBy`, `per_EditedBy`, `per_FriendDate`, `per_Flags`, `per_FacebookID`, `per_Twitter`, `per_LinkedIn`) VALUES
(1, NULL, 'Church', NULL, 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0000, NULL, 0, 0, 0, 0, NULL, NULL, '2004-08-25 18:00:00', 1, 0, NULL, 0, NULL, NULL, NULL),
(2, '', 'A', 'User', 'Name', 'Jr', '', '', '', '', '', 'Afghanistan (‫افغانستان‬‎)', '(254) 123-4567', '', '', 'test@server.com', '', 6, 15, 1993, NULL, 1, 3, 3, 1, 0, NULL, '2021-01-07 12:26:48', 1, 0, '2021-01-07', 0, 0, '', ''),
(3, NULL, 'A', 'Family', 'Member', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 18, 1997, NULL, 2, 3, 0, 2, NULL, NULL, '2021-01-08 12:58:35', 1, 0, NULL, 0, NULL, NULL, NULL),
(4, NULL, 'Another', 'Family', 'Member', 'Sr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 6, 1985, NULL, 1, 1, 0, 2, NULL, NULL, '2021-01-08 12:58:36', 1, 0, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `person_permission`
--

CREATE TABLE `person_permission` (
  `per_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person_roles`
--

CREATE TABLE `person_roles` (
  `per_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pledge_plg`
--

CREATE TABLE `pledge_plg` (
  `plg_plgID` mediumint(9) NOT NULL,
  `plg_FamID` mediumint(9) DEFAULT NULL,
  `plg_FYID` mediumint(9) DEFAULT NULL,
  `plg_date` date DEFAULT NULL,
  `plg_amount` decimal(8,2) DEFAULT NULL,
  `plg_schedule` enum('Weekly','Monthly','Quarterly','Once','Other') COLLATE utf8_unicode_ci DEFAULT NULL,
  `plg_method` enum('CREDITCARD','CHECK','CASH','BANKDRAFT','EGIVE') COLLATE utf8_unicode_ci DEFAULT NULL,
  `plg_comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `plg_DateLastEdited` date NOT NULL DEFAULT '2016-01-01',
  `plg_EditedBy` mediumint(9) NOT NULL DEFAULT 0,
  `plg_PledgeOrPayment` enum('Pledge','Payment') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pledge',
  `plg_fundID` tinyint(3) UNSIGNED DEFAULT NULL,
  `plg_depID` mediumint(9) UNSIGNED DEFAULT NULL,
  `plg_CheckNo` bigint(16) UNSIGNED DEFAULT NULL,
  `plg_Problem` tinyint(1) DEFAULT NULL,
  `plg_scanString` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `plg_aut_ID` mediumint(9) NOT NULL DEFAULT 0,
  `plg_aut_Cleared` tinyint(1) NOT NULL DEFAULT 0,
  `plg_aut_ResultID` mediumint(9) NOT NULL DEFAULT 0,
  `plg_NonDeductible` decimal(8,2) NOT NULL,
  `plg_GroupKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `propertytype_prt`
--

CREATE TABLE `propertytype_prt` (
  `prt_ID` mediumint(9) NOT NULL,
  `prt_Class` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `prt_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `prt_Description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `propertytype_prt`
--

INSERT INTO `propertytype_prt` (`prt_ID`, `prt_Class`, `prt_Name`, `prt_Description`) VALUES
(1, 'p', 'General', 'General Person Properties'),
(2, 'f', 'General', 'General Family Properties'),
(3, 'g', 'General', 'General Group Properties');

-- --------------------------------------------------------

--
-- Table structure for table `property_pro`
--

CREATE TABLE `property_pro` (
  `pro_ID` mediumint(8) UNSIGNED NOT NULL,
  `pro_Class` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pro_prt_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `pro_Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `pro_Description` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_Prompt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_pro`
--

INSERT INTO `property_pro` (`pro_ID`, `pro_Class`, `pro_prt_ID`, `pro_Name`, `pro_Description`, `pro_Prompt`) VALUES
(1, 'p', 1, 'Disabled', 'has a disability.', 'What is the nature of the disability?'),
(2, 'f', 2, 'Single Parent', 'is a single-parent household.', ''),
(3, 'g', 3, 'Youth', 'is youth-oriented.', '');

-- --------------------------------------------------------

--
-- Table structure for table `queryparameteroptions_qpo`
--

CREATE TABLE `queryparameteroptions_qpo` (
  `qpo_ID` smallint(5) UNSIGNED NOT NULL,
  `qpo_qrp_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `qpo_Display` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `qpo_Value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `queryparameteroptions_qpo`
--

INSERT INTO `queryparameteroptions_qpo` (`qpo_ID`, `qpo_qrp_ID`, `qpo_Display`, `qpo_Value`) VALUES
(1, 4, 'Male', '1'),
(2, 4, 'Female', '2'),
(3, 6, 'Male', '1'),
(4, 6, 'Female', '2'),
(5, 15, 'Name', 'CONCAT(COALESCE(`per_FirstName`,\'\'),COALESCE(`per_MiddleName`,\'\'),COALESCE(`per_LastName`,\'\'))'),
(6, 15, 'Zip Code', 'fam_Zip'),
(7, 15, 'State', 'fam_State'),
(8, 15, 'City', 'fam_City'),
(9, 15, 'Home Phone', 'per_HomePhone'),
(10, 27, '2012/2013', '17'),
(11, 27, '2013/2014', '18'),
(12, 27, '2014/2015', '19'),
(13, 27, '2015/2016', '20'),
(14, 28, '2012/2013', '17'),
(15, 28, '2013/2014', '18'),
(16, 28, '2014/2015', '19'),
(17, 28, '2015/2016', '20'),
(18, 30, '2012/2013', '17'),
(19, 30, '2013/2014', '18'),
(20, 30, '2014/2015', '19'),
(21, 30, '2015/2016', '20'),
(22, 31, '2012/2013', '17'),
(23, 31, '2013/2014', '18'),
(24, 31, '2014/2015', '19'),
(25, 31, '2015/2016', '20'),
(26, 15, 'Email', 'per_Email'),
(27, 15, 'WorkEmail', 'per_WorkEmail'),
(28, 32, '2012/2013', '17'),
(29, 32, '2013/2014', '18'),
(30, 32, '2014/2015', '19'),
(31, 32, '2015/2016', '20'),
(32, 33, 'Member', '1'),
(33, 33, 'Regular Attender', '2'),
(34, 33, 'Guest', '3'),
(35, 33, 'Non-Attender', '4'),
(36, 33, 'Non-Attender (staff)', '5');

-- --------------------------------------------------------

--
-- Table structure for table `queryparameters_qrp`
--

CREATE TABLE `queryparameters_qrp` (
  `qrp_ID` mediumint(8) UNSIGNED NOT NULL,
  `qrp_qry_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `qrp_Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `qrp_OptionSQL` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `qrp_Name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qrp_Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `qrp_Alias` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qrp_Default` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qrp_Required` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `qrp_InputBoxSize` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `qrp_Validation` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `qrp_NumericMax` int(11) DEFAULT NULL,
  `qrp_NumericMin` int(11) DEFAULT NULL,
  `qrp_AlphaMinLength` int(11) DEFAULT NULL,
  `qrp_AlphaMaxLength` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `queryparameters_qrp`
--

INSERT INTO `queryparameters_qrp` (`qrp_ID`, `qrp_qry_ID`, `qrp_Type`, `qrp_OptionSQL`, `qrp_Name`, `qrp_Description`, `qrp_Alias`, `qrp_Default`, `qrp_Required`, `qrp_InputBoxSize`, `qrp_Validation`, `qrp_NumericMax`, `qrp_NumericMin`, `qrp_AlphaMinLength`, `qrp_AlphaMaxLength`) VALUES
(1, 4, 0, NULL, 'Minimum Age', 'The minimum age for which you want records returned.', 'min', '0', 0, 5, 'n', 120, 0, NULL, NULL),
(2, 4, 0, NULL, 'Maximum Age', 'The maximum age for which you want records returned.', 'max', '120', 1, 5, 'n', 120, 0, NULL, NULL),
(4, 6, 1, '', 'Gender', 'The desired gender to search the database for.', 'gender', '1', 1, 0, '', 0, 0, 0, 0),
(5, 7, 2, 'SELECT lst_OptionID as Value, lst_OptionName as Display FROM list_lst WHERE lst_ID=2 ORDER BY lst_OptionSequence', 'Family Role', 'Select the desired family role.', 'role', '1', 0, 0, '', 0, 0, 0, 0),
(6, 7, 1, '', 'Gender', 'The gender for which you would like records returned.', 'gender', '1', 1, 0, '', 0, 0, 0, 0),
(8, 9, 2, 'SELECT pro_ID AS Value, pro_Name as Display \r\nFROM property_pro\r\nWHERE pro_Class= \'p\' \r\nORDER BY pro_Name ', 'Property', 'The property for which you would like person records returned.', 'PropertyID', '0', 1, 0, '', 0, 0, 0, 0),
(9, 10, 2, 'SELECT distinct don_date as Value, don_date as Display FROM donations_don ORDER BY don_date ASC', 'Beginning Date', 'Please select the beginning date to calculate total contributions for each member (i.e. YYYY-MM-DD). NOTE: You can only choose dates that conatain donations.', 'startdate', '1', 1, 0, '0', 0, 0, 0, 0),
(10, 10, 2, 'SELECT distinct don_date as Value, don_date as Display FROM donations_don\r\nORDER BY don_date DESC', 'Ending Date', 'Please enter the last date to calculate total contributions for each member (i.e. YYYY-MM-DD).', 'enddate', '1', 1, 0, '', 0, 0, 0, 0),
(14, 15, 0, '', 'Search', 'Enter any part of the following: Name, City, State, Zip, Home Phone, Email, or Work Email.', 'searchstring', '', 1, 0, '', 0, 0, 0, 0),
(15, 15, 1, '', 'Field', 'Select field to search for.', 'searchwhat', '1', 1, 0, '', 0, 0, 0, 0),
(16, 11, 2, 'SELECT distinct don_date as Value, don_date as Display FROM donations_don ORDER BY don_date ASC', 'Beginning Date', 'Please select the beginning date to calculate total contributions for each member (i.e. YYYY-MM-DD). NOTE: You can only choose dates that conatain donations.', 'startdate', '1', 1, 0, '0', 0, 0, 0, 0),
(17, 11, 2, 'SELECT distinct don_date as Value, don_date as Display FROM donations_don\r\nORDER BY don_date DESC', 'Ending Date', 'Please enter the last date to calculate total contributions for each member (i.e. YYYY-MM-DD).', 'enddate', '1', 1, 0, '', 0, 0, 0, 0),
(18, 18, 0, '', 'Month', 'The birthday month for which you would like records returned.', 'birthmonth', '1', 1, 0, '', 12, 1, 1, 2),
(19, 19, 2, 'SELECT grp_ID AS Value, grp_Name AS Display FROM group_grp ORDER BY grp_Type', 'Class', 'The sunday school class for which you would like records returned.', 'group', '1', 1, 0, '', 12, 1, 1, 2),
(20, 20, 2, 'SELECT grp_ID AS Value, grp_Name AS Display FROM group_grp ORDER BY grp_Type', 'Class', 'The sunday school class for which you would like records returned.', 'group', '1', 1, 0, '', 12, 1, 1, 2),
(21, 21, 2, 'SELECT grp_ID AS Value, grp_Name AS Display FROM group_grp ORDER BY grp_Type', 'Registered students', 'Group of registered students', 'group', '1', 1, 0, '', 12, 1, 1, 2),
(22, 22, 0, '', 'Month', 'The membership anniversary month for which you would like records returned.', 'membermonth', '1', 1, 0, '', 12, 1, 1, 2),
(25, 25, 2, 'SELECT vol_ID AS Value, vol_Name AS Display FROM volunteeropportunity_vol ORDER BY vol_Name', 'Volunteer opportunities', 'Choose a volunteer opportunity', 'volopp', '1', 1, 0, '', 12, 1, 1, 2),
(26, 26, 0, '', 'Months', 'Number of months since becoming a friend', 'friendmonths', '1', 1, 0, '', 24, 1, 1, 2),
(27, 28, 1, '', 'First Fiscal Year', 'First fiscal year for comparison', 'fyid1', '9', 1, 0, '', 12, 9, 0, 0),
(28, 28, 1, '', 'Second Fiscal Year', 'Second fiscal year for comparison', 'fyid2', '9', 1, 0, '', 12, 9, 0, 0),
(30, 30, 1, '', 'First Fiscal Year', 'Pledged this year', 'fyid1', '9', 1, 0, '', 12, 9, 0, 0),
(31, 30, 1, '', 'Second Fiscal Year', 'but not this year', 'fyid2', '9', 1, 0, '', 12, 9, 0, 0),
(32, 32, 1, '', 'Fiscal Year', 'Fiscal Year.', 'fyid', '9', 1, 0, '', 12, 9, 0, 0),
(33, 18, 1, '', 'Classification', 'Member, Regular Attender, etc.', 'percls', '1', 1, 0, '', 12, 1, 1, 2),
(100, 100, 2, 'SELECT vol_ID AS Value, vol_Name AS Display FROM volunteeropportunity_vol ORDER BY vol_Name', 'Volunteer opportunities', 'First volunteer opportunity choice', 'volopp1', '1', 1, 0, '', 12, 1, 1, 2),
(101, 100, 2, 'SELECT vol_ID AS Value, vol_Name AS Display FROM volunteeropportunity_vol ORDER BY vol_Name', 'Volunteer opportunities', 'Second volunteer opportunity choice', 'volopp2', '1', 1, 0, '', 12, 1, 1, 2),
(200, 200, 2, 'SELECT custom_field as Value, custom_Name as Display FROM person_custom_master', 'Custom field', 'Choose customer person field', 'custom', '1', 0, 0, '', 0, 0, 0, 0),
(201, 200, 0, '', 'Field value', 'Match custom field to this value', 'value', '1', 0, 0, '', 0, 0, 0, 0),
(202, 201, 3, 'SELECT event_id as Value, event_title as Display FROM events_event ORDER BY event_start DESC', 'Event', 'Select the desired event', 'event', '', 1, 0, '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `query_qry`
--

CREATE TABLE `query_qry` (
  `qry_ID` mediumint(8) UNSIGNED NOT NULL,
  `qry_SQL` text COLLATE utf8_unicode_ci NOT NULL,
  `qry_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `qry_Description` text COLLATE utf8_unicode_ci NOT NULL,
  `qry_Count` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `query_qry`
--

INSERT INTO `query_qry` (`qry_ID`, `qry_SQL`, `qry_Name`, `qry_Description`, `qry_Count`) VALUES
(3, 'SELECT CONCAT(\'<a href=v2/family/\',fam_ID,\'>\',fam_Name,\'</a>\') AS \'Family Name\', COUNT(*) AS \'No.\'\nFROM person_per\nINNER JOIN family_fam\nON fam_ID = per_fam_ID\nGROUP BY per_fam_ID\nORDER BY \'No.\' DESC', 'Family Member Count', 'Returns each family and the total number of people assigned to them.', 0),
(4, 'SELECT per_ID as AddToCart,CONCAT(\'<a\r\nhref=PersonView.php?PersonID=\',per_ID,\'>\',per_FirstName,\'\r\n\',per_LastName,\'</a>\') AS Name,\r\nCONCAT(per_BirthMonth,\'/\',per_BirthDay,\'/\',per_BirthYear) AS \'Birth Date\',\r\nDATE_FORMAT(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(CONCAT(per_BirthYear,\'-\',per_BirthMonth,\'-\',per_BirthDay))),\'%Y\')+0 AS  \'Age\'\r\nFROM person_per\r\nWHERE\r\nDATE_ADD(CONCAT(per_BirthYear,\'-\',per_BirthMonth,\'-\',per_BirthDay),INTERVAL\r\n~min~ YEAR) <= CURDATE()\r\nAND\r\nDATE_ADD(CONCAT(per_BirthYear,\'-\',per_BirthMonth,\'-\',per_BirthDay),INTERVAL\r\n(~max~ + 1) YEAR) >= CURDATE()', 'Person by Age', 'Returns any person records with ages between two given ages.', 1),
(6, 'SELECT COUNT(per_ID) AS Total FROM person_per WHERE per_Gender = ~gender~', 'Total By Gender', 'Total of records matching a given gender.', 0),
(7, 'SELECT per_ID as AddToCart, CONCAT(per_FirstName,\' \',per_LastName) AS Name FROM person_per WHERE per_fmr_ID = ~role~ AND per_Gender = ~gender~', 'Person by Role and Gender', 'Selects person records with the family role and gender specified.', 1),
(9, 'SELECT \r\nper_ID as AddToCart, \r\nCONCAT(per_FirstName,\' \',per_LastName) AS Name, \r\nCONCAT(r2p_Value,\' \') AS Value\r\nFROM person_per,record2property_r2p\r\nWHERE per_ID = r2p_record_ID\r\nAND r2p_pro_ID = ~PropertyID~\r\nORDER BY per_LastName', 'Person by Property', 'Returns person records which are assigned the given property.', 1),
(15, 'SELECT per_ID as AddToCart, CONCAT(\'<a href=PersonView.php?PersonID=\',per_ID,\'>\',COALESCE(`per_FirstName`,\'\'),\' \',COALESCE(`per_MiddleName`,\'\'),\' \',COALESCE(`per_LastName`,\'\'),\'</a>\') AS Name, fam_City as City, fam_State as State, fam_Zip as ZIP, per_HomePhone as HomePhone, per_Email as Email, per_WorkEmail as WorkEmail FROM person_per RIGHT JOIN family_fam ON family_fam.fam_id = person_per.per_fam_id WHERE ~searchwhat~ LIKE \'%~searchstring~%\'', 'Advanced Search', 'Search by any part of Name, City, State, Zip, Home Phone, Email, or Work Email.', 1),
(18, 'SELECT per_ID as AddToCart, per_BirthDay as Day, CONCAT(per_FirstName,\' \',per_LastName) AS Name FROM person_per WHERE per_cls_ID=~percls~ AND per_BirthMonth=~birthmonth~ ORDER BY per_BirthDay', 'Birthdays', 'People with birthdays in a particular month', 0),
(21, 'SELECT per_ID as AddToCart, CONCAT(\'<a href=PersonView.php?PersonID=\',per_ID,\'>\',per_FirstName,\' \',per_LastName,\'</a>\') AS Name FROM person_per LEFT JOIN person2group2role_p2g2r ON per_id = p2g2r_per_ID WHERE p2g2r_grp_ID=~group~ ORDER BY per_LastName', 'Registered students', 'Find Registered students', 1),
(22, 'SELECT per_ID as AddToCart, DAYOFMONTH(per_MembershipDate) as Day, per_MembershipDate AS DATE, CONCAT(per_FirstName,\' \',per_LastName) AS Name FROM person_per WHERE per_cls_ID=1 AND MONTH(per_MembershipDate)=~membermonth~ ORDER BY per_MembershipDate', 'Membership anniversaries', 'Members who joined in a particular month', 0),
(23, 'SELECT usr_per_ID as AddToCart, CONCAT(a.per_FirstName,\' \',a.per_LastName) AS Name FROM user_usr LEFT JOIN person_per a ON per_ID=usr_per_ID ORDER BY per_LastName', 'Select database users', 'People who are registered as database users', 0),
(24, 'SELECT per_ID as AddToCart, CONCAT(\'<a href=PersonView.php?PersonID=\',per_ID,\'>\',per_FirstName,\' \',per_LastName,\'</a>\') AS Name FROM person_per WHERE per_cls_id =1', 'Select all members', 'People who are members', 0),
(25, 'SELECT per_ID as AddToCart, CONCAT(\'<a href=PersonView.php?PersonID=\',per_ID,\'>\',per_FirstName,\' \',per_LastName,\'</a>\') AS Name FROM person_per LEFT JOIN person2volunteeropp_p2vo ON per_id = p2vo_per_ID WHERE p2vo_vol_ID = ~volopp~ ORDER BY per_LastName', 'Volunteers', 'Find volunteers for a particular opportunity', 1),
(26, 'SELECT per_ID as AddToCart, CONCAT(per_FirstName,\' \',per_LastName) AS Name FROM person_per WHERE DATE_SUB(NOW(),INTERVAL ~friendmonths~ MONTH)<per_FriendDate ORDER BY per_MembershipDate', 'Recent friends', 'Friends who signed up in previous months', 0),
(27, 'SELECT per_ID as AddToCart, CONCAT(per_FirstName,\' \',per_LastName) AS Name FROM person_per inner join family_fam on per_fam_ID=fam_ID where per_fmr_ID<>3 AND fam_OkToCanvass=\"TRUE\" ORDER BY fam_Zip', 'Families to Canvass', 'People in families that are ok to canvass.', 0),
(28, 'SELECT fam_Name, a.plg_amount as PlgFY1, b.plg_amount as PlgFY2 from family_fam left join pledge_plg a on a.plg_famID = fam_ID and a.plg_FYID=~fyid1~ and a.plg_PledgeOrPayment=\'Pledge\' left join pledge_plg b on b.plg_famID = fam_ID and b.plg_FYID=~fyid2~ and b.plg_PledgeOrPayment=\'Pledge\' order by fam_Name', 'Pledge comparison', 'Compare pledges between two fiscal years', 1),
(30, 'SELECT per_ID as AddToCart, CONCAT(per_FirstName,\' \',per_LastName) AS Name, fam_address1, fam_city, fam_state, fam_zip FROM person_per join family_fam on per_fam_id=fam_id where per_fmr_id<>3 and per_fam_id in (select fam_id from family_fam inner join pledge_plg a on a.plg_famID=fam_ID and a.plg_FYID=~fyid1~ and a.plg_amount>0) and per_fam_id not in (select fam_id from family_fam inner join pledge_plg b on b.plg_famID=fam_ID and b.plg_FYID=~fyid2~ and b.plg_amount>0)', 'Missing pledges', 'Find people who pledged one year but not another', 1),
(32, 'SELECT fam_Name, fam_Envelope, b.fun_Name as Fund_Name, a.plg_amount as Pledge from family_fam left join pledge_plg a on a.plg_famID = fam_ID and a.plg_FYID=~fyid~ and a.plg_PledgeOrPayment=\'Pledge\' and a.plg_amount>0 join donationfund_fun b on b.fun_ID = a.plg_fundID order by fam_Name, a.plg_fundID', 'Family Pledge by Fiscal Year', 'Pledge summary by family name for each fund for the selected fiscal year', 1),
(100, 'SELECT a.per_ID as AddToCart, CONCAT(\'<a href=PersonView.php?PersonID=\',a.per_ID,\'>\',a.per_FirstName,\' \',a.per_LastName,\'</a>\') AS Name FROM person_per AS a LEFT JOIN person2volunteeropp_p2vo p2v1 ON (a.per_id = p2v1.p2vo_per_ID AND p2v1.p2vo_vol_ID = ~volopp1~) LEFT JOIN person2volunteeropp_p2vo p2v2 ON (a.per_id = p2v2.p2vo_per_ID AND p2v2.p2vo_vol_ID = ~volopp2~) WHERE p2v1.p2vo_per_ID=p2v2.p2vo_per_ID ORDER BY per_LastName', 'Volunteers', 'Find volunteers for who match two specific opportunity codes', 1),
(200, 'SELECT a.per_ID as AddToCart, CONCAT(\'<a href=PersonView.php?PersonID=\',a.per_ID,\'>\',a.per_FirstName,\' \',a.per_LastName,\'</a>\') AS Name FROM person_per AS a LEFT JOIN person_custom pc ON a.per_id = pc.per_ID WHERE pc.~custom~=\'~value~\' ORDER BY per_LastName', 'CustomSearch', 'Find people with a custom field value', 1),
(201, 'SELECT per_ID as AddToCart, CONCAT(\'<a href=PersonView.php?PersonID=\',per_ID,\'>\',per_FirstName,\',per_LastName,\'</a>\') AS Name, per_LastName AS Lastname FROM person_per LEFT OUTER JOIN (SELECT event_attend.attend_id, event_attend.person_id FROM event_attend WHERE event_attend.event_id IN (~event~)) a ON person_per.per_ID = a.person_id WHERE a.attend_id is NULL ORDER BY person_per.per_LastName, person_per.per_FirstName', 'Missing people', 'Find people who didn\'t attend an event', 1);

-- --------------------------------------------------------

--
-- Table structure for table `record2property_r2p`
--

CREATE TABLE `record2property_r2p` (
  `r2p_pro_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `r2p_record_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `r2p_Value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `result_res`
--

CREATE TABLE `result_res` (
  `res_ID` mediumint(9) NOT NULL,
  `res_echotype1` text COLLATE utf8_unicode_ci NOT NULL,
  `res_echotype2` text COLLATE utf8_unicode_ci NOT NULL,
  `res_echotype3` text COLLATE utf8_unicode_ci NOT NULL,
  `res_authorization` text COLLATE utf8_unicode_ci NOT NULL,
  `res_order_number` text COLLATE utf8_unicode_ci NOT NULL,
  `res_reference` text COLLATE utf8_unicode_ci NOT NULL,
  `res_status` text COLLATE utf8_unicode_ci NOT NULL,
  `res_avs_result` text COLLATE utf8_unicode_ci NOT NULL,
  `res_security_result` text COLLATE utf8_unicode_ci NOT NULL,
  `res_mac` text COLLATE utf8_unicode_ci NOT NULL,
  `res_decline_code` text COLLATE utf8_unicode_ci NOT NULL,
  `res_tran_date` text COLLATE utf8_unicode_ci NOT NULL,
  `res_merchant_name` text COLLATE utf8_unicode_ci NOT NULL,
  `res_version` text COLLATE utf8_unicode_ci NOT NULL,
  `res_EchoServer` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `role_desc` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `role_desc`) VALUES
(1, 'Welcome Committee', NULL),
(2, 'Clergy', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `token` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `reference_id` int(9) NOT NULL,
  `valid_until_date` datetime DEFAULT NULL,
  `remainingUses` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userconfig_ucfg`
--

CREATE TABLE `userconfig_ucfg` (
  `ucfg_per_id` mediumint(9) UNSIGNED NOT NULL,
  `ucfg_id` int(11) NOT NULL DEFAULT 0,
  `ucfg_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ucfg_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ucfg_type` enum('text','number','date','boolean','textarea') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `ucfg_tooltip` text COLLATE utf8_unicode_ci NOT NULL,
  `ucfg_permission` enum('FALSE','TRUE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'FALSE',
  `ucfg_cat` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userconfig_ucfg`
--

INSERT INTO `userconfig_ucfg` (`ucfg_per_id`, `ucfg_id`, `ucfg_name`, `ucfg_value`, `ucfg_type`, `ucfg_tooltip`, `ucfg_permission`, `ucfg_cat`) VALUES
(0, 0, 'bEmailMailto', '1', 'boolean', 'User permission to send email via mailto: links', 'TRUE', ''),
(0, 1, 'sMailtoDelimiter', ',', 'text', 'Delimiter to separate emails in mailto: links', 'TRUE', ''),
(0, 5, 'bCreateDirectory', '0', 'boolean', 'User permission to create directories', 'FALSE', 'SECURITY'),
(0, 6, 'bExportCSV', '0', 'boolean', 'User permission to export CSV files', 'FALSE', 'SECURITY'),
(0, 7, 'bUSAddressVerification', '0', 'boolean', 'User permission to use IST Address Verification', 'FALSE', ''),
(0, 10, 'bAddEvent', '0', 'boolean', 'Allow user to add new event', 'FALSE', 'SECURITY'),
(1, 0, 'bEmailMailto', '1', 'boolean', 'User permission to send email via mailto: links', 'TRUE', ''),
(1, 1, 'sMailtoDelimiter', ',', 'text', 'user permission to send email via mailto: links', 'TRUE', ''),
(1, 5, 'bCreateDirectory', '1', 'boolean', 'User permission to create directories', 'TRUE', ''),
(1, 6, 'bExportCSV', '1', 'boolean', 'User permission to export CSV files', 'TRUE', ''),
(1, 7, 'bUSAddressVerification', '1', 'boolean', 'User permission to use IST Address Verification', 'TRUE', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_usr`
--

CREATE TABLE `user_usr` (
  `usr_per_ID` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `usr_Password` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usr_NeedPasswordChange` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `usr_LastLogin` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `usr_LoginCount` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `usr_FailedLogins` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `usr_AddRecords` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_EditRecords` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_DeleteRecords` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_MenuOptions` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_ManageGroups` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_Finance` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_Notes` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_Admin` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_SearchLimit` tinyint(4) DEFAULT 10,
  `usr_Style` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'Style.css',
  `usr_showPledges` tinyint(1) NOT NULL DEFAULT 0,
  `usr_showPayments` tinyint(1) NOT NULL DEFAULT 0,
  `usr_showSince` date NOT NULL DEFAULT '2016-01-01',
  `usr_defaultFY` mediumint(9) NOT NULL DEFAULT 10,
  `usr_currentDeposit` mediumint(9) NOT NULL DEFAULT 0,
  `usr_UserName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_apiKey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_EditSelf` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_CalStart` date DEFAULT NULL,
  `usr_CalEnd` date DEFAULT NULL,
  `usr_CalNoSchool1` date DEFAULT NULL,
  `usr_CalNoSchool2` date DEFAULT NULL,
  `usr_CalNoSchool3` date DEFAULT NULL,
  `usr_CalNoSchool4` date DEFAULT NULL,
  `usr_CalNoSchool5` date DEFAULT NULL,
  `usr_CalNoSchool6` date DEFAULT NULL,
  `usr_CalNoSchool7` date DEFAULT NULL,
  `usr_CalNoSchool8` date DEFAULT NULL,
  `usr_SearchFamily` tinyint(3) DEFAULT NULL,
  `usr_Canvasser` tinyint(1) NOT NULL DEFAULT 0,
  `usr_TwoFactorAuthSecret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_TwoFactorAuthLastKeyTimestamp` int(11) DEFAULT NULL,
  `usr_TwoFactorAuthRecoveryCodes` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_usr`
--

INSERT INTO `user_usr` (`usr_per_ID`, `usr_Password`, `usr_NeedPasswordChange`, `usr_LastLogin`, `usr_LoginCount`, `usr_FailedLogins`, `usr_AddRecords`, `usr_EditRecords`, `usr_DeleteRecords`, `usr_MenuOptions`, `usr_ManageGroups`, `usr_Finance`, `usr_Notes`, `usr_Admin`, `usr_SearchLimit`, `usr_Style`, `usr_showPledges`, `usr_showPayments`, `usr_showSince`, `usr_defaultFY`, `usr_currentDeposit`, `usr_UserName`, `usr_apiKey`, `usr_EditSelf`, `usr_CalStart`, `usr_CalEnd`, `usr_CalNoSchool1`, `usr_CalNoSchool2`, `usr_CalNoSchool3`, `usr_CalNoSchool4`, `usr_CalNoSchool5`, `usr_CalNoSchool6`, `usr_CalNoSchool7`, `usr_CalNoSchool8`, `usr_SearchFamily`, `usr_Canvasser`, `usr_TwoFactorAuthSecret`, `usr_TwoFactorAuthLastKeyTimestamp`, `usr_TwoFactorAuthRecoveryCodes`) VALUES
(1, '5b11618c2e44027877d0cd0921ed166b9f176f50587fc91e7534dd2946db77d6', 0, '2021-01-15 10:02:03', 15, 0, 0, 0, 0, 0, 0, 0, 0, 1, 10, 'skin-red', 0, 0, '2016-01-01', 10, 1, 'Admin', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `version_ver`
--

CREATE TABLE `version_ver` (
  `ver_ID` mediumint(9) UNSIGNED NOT NULL,
  `ver_version` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ver_update_start` datetime DEFAULT NULL,
  `ver_update_end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `version_ver`
--

INSERT INTO `version_ver` (`ver_ID`, `ver_version`, `ver_update_start`, `ver_update_end`) VALUES
(1, '4.2.0', '2021-01-07 18:06:57', '2021-01-07 18:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `volunteeropportunity_vol`
--

CREATE TABLE `volunteeropportunity_vol` (
  `vol_ID` int(3) NOT NULL,
  `vol_Order` int(3) NOT NULL DEFAULT 0,
  `vol_Active` enum('true','false') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'true',
  `vol_Name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vol_Description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `whycame_why`
--

CREATE TABLE `whycame_why` (
  `why_ID` mediumint(9) NOT NULL,
  `why_per_ID` mediumint(9) NOT NULL DEFAULT 0,
  `why_join` text COLLATE utf8_unicode_ci NOT NULL,
  `why_come` text COLLATE utf8_unicode_ci NOT NULL,
  `why_suggest` text COLLATE utf8_unicode_ci NOT NULL,
  `why_hearOfUs` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`calendar_id`),
  ADD UNIQUE KEY `accesstoken` (`accesstoken`);

--
-- Indexes for table `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD PRIMARY KEY (`calendar_id`,`event_id`);

--
-- Indexes for table `canvassdata_can`
--
ALTER TABLE `canvassdata_can`
  ADD PRIMARY KEY (`can_ID`);

--
-- Indexes for table `church_location_person`
--
ALTER TABLE `church_location_person`
  ADD PRIMARY KEY (`location_id`,`person_id`);

--
-- Indexes for table `church_location_role`
--
ALTER TABLE `church_location_role`
  ADD PRIMARY KEY (`location_id`,`role_id`);

--
-- Indexes for table `config_cfg`
--
ALTER TABLE `config_cfg`
  ADD PRIMARY KEY (`cfg_id`),
  ADD UNIQUE KEY `cfg_name` (`cfg_name`);

--
-- Indexes for table `deposit_dep`
--
ALTER TABLE `deposit_dep`
  ADD PRIMARY KEY (`dep_ID`);

--
-- Indexes for table `donateditem_di`
--
ALTER TABLE `donateditem_di`
  ADD PRIMARY KEY (`di_ID`);

--
-- Indexes for table `donationfund_fun`
--
ALTER TABLE `donationfund_fun`
  ADD PRIMARY KEY (`fun_ID`);

--
-- Indexes for table `eventcountnames_evctnm`
--
ALTER TABLE `eventcountnames_evctnm`
  ADD UNIQUE KEY `evctnm_countid` (`evctnm_countid`),
  ADD UNIQUE KEY `evctnm_eventtypeid` (`evctnm_eventtypeid`,`evctnm_countname`);

--
-- Indexes for table `eventcounts_evtcnt`
--
ALTER TABLE `eventcounts_evtcnt`
  ADD PRIMARY KEY (`evtcnt_eventid`,`evtcnt_countid`);

--
-- Indexes for table `events_event`
--
ALTER TABLE `events_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_attend`
--
ALTER TABLE `event_attend`
  ADD PRIMARY KEY (`attend_id`),
  ADD UNIQUE KEY `event_id` (`event_id`,`person_id`);

--
-- Indexes for table `event_audience`
--
ALTER TABLE `event_audience`
  ADD PRIMARY KEY (`event_id`,`group_id`);

--
-- Indexes for table `event_types`
--
ALTER TABLE `event_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `family_custom`
--
ALTER TABLE `family_custom`
  ADD PRIMARY KEY (`fam_ID`);

--
-- Indexes for table `family_fam`
--
ALTER TABLE `family_fam`
  ADD PRIMARY KEY (`fam_ID`);

--
-- Indexes for table `fundraiser_fr`
--
ALTER TABLE `fundraiser_fr`
  ADD PRIMARY KEY (`fr_ID`),
  ADD UNIQUE KEY `fr_ID` (`fr_ID`);

--
-- Indexes for table `group_grp`
--
ALTER TABLE `group_grp`
  ADD PRIMARY KEY (`grp_ID`);

--
-- Indexes for table `istlookup_lu`
--
ALTER TABLE `istlookup_lu`
  ADD PRIMARY KEY (`lu_fam_ID`);

--
-- Indexes for table `kioskassginment_kasm`
--
ALTER TABLE `kioskassginment_kasm`
  ADD PRIMARY KEY (`kasm_ID`),
  ADD UNIQUE KEY `kasm_ID` (`kasm_ID`);

--
-- Indexes for table `kioskdevice_kdev`
--
ALTER TABLE `kioskdevice_kdev`
  ADD PRIMARY KEY (`kdev_ID`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `menu_links`
--
ALTER TABLE `menu_links`
  ADD PRIMARY KEY (`linkId`);

--
-- Indexes for table `multibuy_mb`
--
ALTER TABLE `multibuy_mb`
  ADD PRIMARY KEY (`mb_ID`);

--
-- Indexes for table `note_nte`
--
ALTER TABLE `note_nte`
  ADD PRIMARY KEY (`nte_ID`);

--
-- Indexes for table `paddlenum_pn`
--
ALTER TABLE `paddlenum_pn`
  ADD PRIMARY KEY (`pn_ID`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD UNIQUE KEY `permission_name` (`permission_name`);

--
-- Indexes for table `person2group2role_p2g2r`
--
ALTER TABLE `person2group2role_p2g2r`
  ADD PRIMARY KEY (`p2g2r_per_ID`,`p2g2r_grp_ID`),
  ADD KEY `p2g2r_per_ID` (`p2g2r_per_ID`,`p2g2r_grp_ID`,`p2g2r_rle_ID`);

--
-- Indexes for table `person2volunteeropp_p2vo`
--
ALTER TABLE `person2volunteeropp_p2vo`
  ADD PRIMARY KEY (`p2vo_ID`);

--
-- Indexes for table `person_custom`
--
ALTER TABLE `person_custom`
  ADD PRIMARY KEY (`per_ID`);

--
-- Indexes for table `person_custom_master`
--
ALTER TABLE `person_custom_master`
  ADD PRIMARY KEY (`custom_Field`);

--
-- Indexes for table `person_per`
--
ALTER TABLE `person_per`
  ADD PRIMARY KEY (`per_ID`);

--
-- Indexes for table `person_permission`
--
ALTER TABLE `person_permission`
  ADD PRIMARY KEY (`per_id`,`permission_id`);

--
-- Indexes for table `person_roles`
--
ALTER TABLE `person_roles`
  ADD PRIMARY KEY (`per_id`,`role_id`);

--
-- Indexes for table `pledge_plg`
--
ALTER TABLE `pledge_plg`
  ADD PRIMARY KEY (`plg_plgID`);

--
-- Indexes for table `propertytype_prt`
--
ALTER TABLE `propertytype_prt`
  ADD PRIMARY KEY (`prt_ID`);

--
-- Indexes for table `property_pro`
--
ALTER TABLE `property_pro`
  ADD PRIMARY KEY (`pro_ID`);

--
-- Indexes for table `queryparameteroptions_qpo`
--
ALTER TABLE `queryparameteroptions_qpo`
  ADD PRIMARY KEY (`qpo_ID`);

--
-- Indexes for table `queryparameters_qrp`
--
ALTER TABLE `queryparameters_qrp`
  ADD PRIMARY KEY (`qrp_ID`),
  ADD KEY `qrp_qry_ID` (`qrp_qry_ID`);

--
-- Indexes for table `query_qry`
--
ALTER TABLE `query_qry`
  ADD PRIMARY KEY (`qry_ID`);

--
-- Indexes for table `result_res`
--
ALTER TABLE `result_res`
  ADD PRIMARY KEY (`res_ID`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`token`);

--
-- Indexes for table `userconfig_ucfg`
--
ALTER TABLE `userconfig_ucfg`
  ADD PRIMARY KEY (`ucfg_per_id`,`ucfg_id`);

--
-- Indexes for table `user_usr`
--
ALTER TABLE `user_usr`
  ADD PRIMARY KEY (`usr_per_ID`),
  ADD UNIQUE KEY `usr_UserName` (`usr_UserName`),
  ADD UNIQUE KEY `usr_apiKey` (`usr_apiKey`);

--
-- Indexes for table `version_ver`
--
ALTER TABLE `version_ver`
  ADD PRIMARY KEY (`ver_ID`),
  ADD UNIQUE KEY `ver_version` (`ver_version`);

--
-- Indexes for table `volunteeropportunity_vol`
--
ALTER TABLE `volunteeropportunity_vol`
  ADD PRIMARY KEY (`vol_ID`);

--
-- Indexes for table `whycame_why`
--
ALTER TABLE `whycame_why`
  ADD PRIMARY KEY (`why_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendars`
--
ALTER TABLE `calendars`
  MODIFY `calendar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `canvassdata_can`
--
ALTER TABLE `canvassdata_can`
  MODIFY `can_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposit_dep`
--
ALTER TABLE `deposit_dep`
  MODIFY `dep_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donateditem_di`
--
ALTER TABLE `donateditem_di`
  MODIFY `di_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donationfund_fun`
--
ALTER TABLE `donationfund_fun`
  MODIFY `fun_ID` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eventcountnames_evctnm`
--
ALTER TABLE `eventcountnames_evctnm`
  MODIFY `evctnm_countid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `events_event`
--
ALTER TABLE `events_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_attend`
--
ALTER TABLE `event_attend`
  MODIFY `attend_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_types`
--
ALTER TABLE `event_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `family_fam`
--
ALTER TABLE `family_fam`
  MODIFY `fam_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fundraiser_fr`
--
ALTER TABLE `fundraiser_fr`
  MODIFY `fr_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_grp`
--
ALTER TABLE `group_grp`
  MODIFY `grp_ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kioskassginment_kasm`
--
ALTER TABLE `kioskassginment_kasm`
  MODIFY `kasm_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kioskdevice_kdev`
--
ALTER TABLE `kioskdevice_kdev`
  MODIFY `kdev_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_links`
--
ALTER TABLE `menu_links`
  MODIFY `linkId` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `multibuy_mb`
--
ALTER TABLE `multibuy_mb`
  MODIFY `mb_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `note_nte`
--
ALTER TABLE `note_nte`
  MODIFY `nte_ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paddlenum_pn`
--
ALTER TABLE `paddlenum_pn`
  MODIFY `pn_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `person2volunteeropp_p2vo`
--
ALTER TABLE `person2volunteeropp_p2vo`
  MODIFY `p2vo_ID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_per`
--
ALTER TABLE `person_per`
  MODIFY `per_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pledge_plg`
--
ALTER TABLE `pledge_plg`
  MODIFY `plg_plgID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `propertytype_prt`
--
ALTER TABLE `propertytype_prt`
  MODIFY `prt_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property_pro`
--
ALTER TABLE `property_pro`
  MODIFY `pro_ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `queryparameteroptions_qpo`
--
ALTER TABLE `queryparameteroptions_qpo`
  MODIFY `qpo_ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `queryparameters_qrp`
--
ALTER TABLE `queryparameters_qrp`
  MODIFY `qrp_ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `query_qry`
--
ALTER TABLE `query_qry`
  MODIFY `qry_ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `result_res`
--
ALTER TABLE `result_res`
  MODIFY `res_ID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `version_ver`
--
ALTER TABLE `version_ver`
  MODIFY `ver_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volunteeropportunity_vol`
--
ALTER TABLE `volunteeropportunity_vol`
  MODIFY `vol_ID` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `whycame_why`
--
ALTER TABLE `whycame_why`
  MODIFY `why_ID` mediumint(9) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
