-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 07:10 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zamzamresturant`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesslog`
--

CREATE TABLE `accesslog` (
  `sl_no` bigint(20) NOT NULL,
  `action_page` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_done` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_account_name`
--

CREATE TABLE `acc_account_name` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acc_account_name`
--

INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES
(1, 'Employee Salary', 0),
(3, 'Example', 1),
(4, 'Loan Expense', 0),
(5, 'Loan Income', 1);

-- --------------------------------------------------------

--
-- Table structure for table `acc_coa`
--

CREATE TABLE `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHeadName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_coa`
--

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES
('401', 'Computer', 'Expence', 1, 1, 1, 0, 'E', 1, 1, '1.00', '178', '2023-04-12 23:38:18', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `acc_customer_income`
--

CREATE TABLE `acc_customer_income` (
  `ID` int(11) NOT NULL,
  `Customer_Id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `Amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_glsummarybalance`
--

CREATE TABLE `acc_glsummarybalance` (
  `ID` int(11) NOT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `FYear` int(11) DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_income_expence`
--

CREATE TABLE `acc_income_expence` (
  `ID` int(11) NOT NULL,
  `VNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Student_Id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `Paymode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Perpose` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci NOT NULL,
  `StoreID` int(11) NOT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `IsApprove` tinyint(4) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_temp`
--

CREATE TABLE `acc_temp` (
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Debit` decimal(18,2) NOT NULL,
  `Credit` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL,
  `VNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `StoreID` int(11) NOT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acn_account_transaction`
--

CREATE TABLE `acn_account_transaction` (
  `account_tran_id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `transaction_description` varchar(255) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `tran_date` date NOT NULL,
  `payment_id` int(11) NOT NULL,
  `create_by_id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `add_ons`
--

CREATE TABLE `add_ons` (
  `add_on_id` int(11) NOT NULL,
  `add_on_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

CREATE TABLE `award` (
  `award_id` int(11) NOT NULL,
  `award_name` varchar(50) NOT NULL,
  `aw_description` varchar(200) NOT NULL,
  `awr_gift_item` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `awarded_by` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_summary`
--

CREATE TABLE `bank_summary` (
  `bank_id` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deposite_id` varchar(250) DEFAULT NULL,
  `date` varchar(250) DEFAULT NULL,
  `ac_type` varchar(50) DEFAULT NULL,
  `dr` float DEFAULT NULL,
  `cr` float DEFAULT NULL,
  `ammount` float DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` bigint(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `total_amount` float NOT NULL,
  `discount` float NOT NULL,
  `service_charge` float NOT NULL,
  `shipping_type` int(11) DEFAULT NULL COMMENT '1=home,2=pickup,3=none',
  `delivarydate` datetime DEFAULT NULL,
  `VAT` float NOT NULL,
  `bill_amount` float NOT NULL,
  `bill_date` date NOT NULL,
  `bill_time` time NOT NULL,
  `create_at` datetime DEFAULT '1970-01-01 01:01:01',
  `bill_status` tinyint(1) NOT NULL COMMENT '0=unpaid, 1=paid',
  `payment_method_id` tinyint(4) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_card_payment`
--

CREATE TABLE `bill_card_payment` (
  `row_id` bigint(20) NOT NULL,
  `bill_id` bigint(20) NOT NULL,
  `multipay_id` int(11) DEFAULT NULL,
  `card_no` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `terminal_name` int(11) NOT NULL,
  `bank_name` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_basic_info`
--

CREATE TABLE `candidate_basic_info` (
  `can_id` varchar(20) NOT NULL,
  `first_name` varchar(11) CHARACTER SET latin1 NOT NULL,
  `last_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(20) CHARACTER SET latin1 NOT NULL,
  `alter_phone` varchar(20) CHARACTER SET latin1 NOT NULL,
  `present_address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `parmanent_address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `picture` text DEFAULT NULL,
  `ssn` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_education_info`
--

CREATE TABLE `candidate_education_info` (
  `can_edu_id` int(11) NOT NULL,
  `can_id` varchar(30) NOT NULL,
  `degree_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `university_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cgp` varchar(30) CHARACTER SET latin1 NOT NULL,
  `comments` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `sequencee` varchar(255) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_interview`
--

CREATE TABLE `candidate_interview` (
  `can_int_id` int(11) NOT NULL,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `job_adv_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `interviewer_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `written_total_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `mcq_total_marks` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_marks` varchar(30) NOT NULL,
  `recommandation` varchar(50) CHARACTER SET latin1 NOT NULL,
  `selection` varchar(50) CHARACTER SET latin1 NOT NULL,
  `details` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_selection`
--

CREATE TABLE `candidate_selection` (
  `can_sel_id` int(11) NOT NULL,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `pos_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `selection_terms` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_shortlist`
--

CREATE TABLE `candidate_shortlist` (
  `can_short_id` int(11) NOT NULL,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `job_adv_id` int(11) NOT NULL,
  `date_of_shortlist` varchar(50) CHARACTER SET latin1 NOT NULL,
  `interview_date` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_workexperience`
--

CREATE TABLE `candidate_workexperience` (
  `can_workexp_id` int(11) NOT NULL,
  `can_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `company_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `duties` varchar(30) CHARACTER SET latin1 NOT NULL,
  `supervisor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `sequencee` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `check_addones`
--

CREATE TABLE `check_addones` (
  `id` int(11) NOT NULL,
  `order_menuid` int(11) NOT NULL,
  `sub_order_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1=insert, 0=notinserted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `common_setting`
--

CREATE TABLE `common_setting` (
  `id` int(11) NOT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `phone_optional` varchar(30) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `logo_footer` varchar(255) DEFAULT NULL,
  `ismembership` int(11) NOT NULL DEFAULT 0 COMMENT '1=enable,0=disable',
  `powerbytxt` text DEFAULT NULL,
  `web_onoff` int(11) DEFAULT 1 COMMENT '1=enable,0=disable',
  `backgroundcolorweb` varchar(30) DEFAULT NULL,
  `webheaderfontcolor` varchar(20) DEFAULT NULL,
  `backgroundcolorqr` varchar(30) DEFAULT NULL,
  `qrheaderfontcolor` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `common_setting`
--

INSERT INTO `common_setting` (`id`, `address`, `email`, `phone`, `phone_optional`, `logo`, `logo_footer`, `ismembership`, `powerbytxt`, `web_onoff`, `backgroundcolorweb`, `webheaderfontcolor`, `backgroundcolorqr`, `qrheaderfontcolor`) VALUES
(1, '<p>Mukhtar Bari Gate, Chowmuhani Road,</p>\r\n<p>Daganbhuiyan, Bangladesh</p>', 'zamzamrestaurant@gmail.com', '01770-702446', '01770-702446', 'assets/img/2023-02-17/2.jpg', 'assets/img/2023-02-17/21.jpg', 0, '© 2023 ZamZam Resturant All Right Reserved. Developed by SoftwareFarm BD.\r\n', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currencyid` int(11) NOT NULL,
  `currencyname` varchar(50) NOT NULL,
  `curr_icon` varchar(50) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 1 COMMENT '1=left.2=right',
  `curr_rate` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currencyid`, `currencyname`, `curr_icon`, `position`, `curr_rate`) VALUES
(1, 'BDT', 'Tk.', 2, '83.00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `customer_id` int(11) NOT NULL,
  `cuntomer_no` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `membership_type` int(11) DEFAULT NULL COMMENT '1=bronze,2=silver,3=gold,4=platinum,5vip',
  `customer_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_token` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favorite_delivery_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crdate` date DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`customer_id`, `cuntomer_no`, `membership_type`, `customer_name`, `customer_email`, `password`, `customer_token`, `customer_address`, `customer_phone`, `customer_picture`, `favorite_delivery_address`, `crdate`, `is_active`) VALUES
(56, 'cus-0002', 0, 'Zam Zam Speical Guest', 'test@gmail.com', NULL, NULL, 'Dagonbhuiyan', '0', NULL, 'Dagonbhuiyan', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_membership_map`
--

CREATE TABLE `customer_membership_map` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `membership_id` int(11) NOT NULL,
  `active_date` date NOT NULL,
  `active_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` bigint(20) NOT NULL,
  `saleinvoice` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `marge_order_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `cutomertype` int(11) NOT NULL,
  `isthirdparty` int(11) NOT NULL DEFAULT 0 COMMENT '0=normal,1>all Third Party',
  `thirdpartyinvoiceid` int(11) DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  `kitchen` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `cookedtime` time NOT NULL DEFAULT '00:15:00',
  `table_no` int(11) DEFAULT NULL,
  `tokenno` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `customerpaid` decimal(10,2) DEFAULT 0.00,
  `customer_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `anyreason` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=Pending, 2=Processing, 3=Ready, 4=Served,5=Cancel',
  `nofification` int(11) NOT NULL DEFAULT 0 COMMENT '0=unseen,1=seen',
  `orderacceptreject` int(11) DEFAULT NULL,
  `splitpay_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no split,1=split',
  `isupdate` int(11) DEFAULT NULL,
  `shipping_date` datetime DEFAULT '1790-01-01 01:01:01',
  `tokenprint` int(11) NOT NULL DEFAULT 0 COMMENT '1=print done,0=not done',
  `invoiceprint` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_type`
--

CREATE TABLE `customer_type` (
  `customer_type_id` int(11) NOT NULL,
  `customer_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_type`
--

INSERT INTO `customer_type` (`customer_type_id`, `customer_type`, `ordering`) VALUES
(1, 'General Customer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_table`
--

CREATE TABLE `custom_table` (
  `custom_id` int(11) NOT NULL,
  `custom_field` varchar(100) NOT NULL,
  `custom_data_type` int(11) NOT NULL,
  `custom_data` text NOT NULL,
  `employee_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `department_name`, `parent_id`) VALUES
(8, 'ACCOUNTING', 0),
(9, 'Human Resource', 0),
(10, 'Delivery department', 0),
(11, 'Garage and Parking', 0),
(12, 'Manager', 0),
(13, 'Restaurant', 0),
(14, 'Waiter', 13),
(15, 'Senior Accountant', 8),
(16, 'Kitchen Manager', 12),
(17, 'Chef', 13),
(18, 'Sales Manager', 12);

-- --------------------------------------------------------

--
-- Table structure for table `duty_type`
--

CREATE TABLE `duty_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `duty_type`
--

INSERT INTO `duty_type` (`id`, `type_name`) VALUES
(1, 'Full Time'),
(2, 'Part Time'),
(3, 'Contructual'),
(4, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `email_config_id` int(11) NOT NULL,
  `smtp_host` varchar(200) DEFAULT NULL,
  `smtp_port` varchar(200) DEFAULT NULL,
  `smtp_password` varchar(200) DEFAULT NULL,
  `protocol` text NOT NULL,
  `mailpath` text NOT NULL,
  `mailtype` text NOT NULL,
  `sender` text NOT NULL,
  `api_key` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_benifit`
--

CREATE TABLE `employee_benifit` (
  `id` int(11) NOT NULL,
  `bnf_cl_code` varchar(100) NOT NULL,
  `bnf_cl_code_des` varchar(250) NOT NULL,
  `bnff_acural_date` date NOT NULL,
  `bnf_status` tinyint(4) NOT NULL,
  `employee_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_history`
--

CREATE TABLE `employee_history` (
  `emp_his_id` int(11) NOT NULL,
  `employee_id` varchar(30) DEFAULT NULL,
  `pos_id` varchar(30) DEFAULT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `alter_phone` varchar(30) DEFAULT NULL,
  `present_address` varchar(100) DEFAULT NULL,
  `parmanent_address` varchar(100) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `degree_name` varchar(30) DEFAULT NULL,
  `university_name` varchar(50) DEFAULT NULL,
  `cgp` varchar(30) DEFAULT NULL,
  `passing_year` varchar(30) DEFAULT NULL,
  `company_name` varchar(30) DEFAULT NULL,
  `working_period` varchar(30) DEFAULT NULL,
  `duties` varchar(30) DEFAULT NULL,
  `supervisor` varchar(30) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `is_admin` int(2) NOT NULL DEFAULT 0,
  `dept_id` int(11) DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  `maiden_name` varchar(50) DEFAULT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  `citizenship` int(11) NOT NULL,
  `duty_type` int(11) NOT NULL,
  `hire_date` date NOT NULL,
  `original_hire_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `termination_reason` text NOT NULL,
  `voluntary_termination` int(11) NOT NULL,
  `rehire_date` date NOT NULL,
  `rate_type` int(11) NOT NULL,
  `rate` float NOT NULL,
  `pay_frequency` int(11) NOT NULL,
  `pay_frequency_txt` varchar(50) NOT NULL,
  `hourly_rate2` float NOT NULL,
  `hourly_rate3` float NOT NULL,
  `home_department` varchar(100) NOT NULL,
  `department_text` varchar(100) NOT NULL,
  `class_code` varchar(50) DEFAULT NULL,
  `class_code_desc` varchar(100) DEFAULT NULL,
  `class_acc_date` date DEFAULT NULL,
  `class_status` tinyint(4) DEFAULT NULL,
  `is_super_visor` int(11) DEFAULT NULL,
  `super_visor_id` varchar(30) NOT NULL,
  `supervisor_report` text NOT NULL,
  `dob` date NOT NULL,
  `gender` int(11) NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `marital_status` int(11) NOT NULL,
  `ethnic_group` varchar(100) NOT NULL,
  `eeo_class_gp` varchar(100) NOT NULL,
  `ssn` varchar(50) DEFAULT NULL,
  `work_in_state` int(11) NOT NULL,
  `live_in_state` int(11) NOT NULL,
  `home_email` varchar(50) NOT NULL,
  `business_email` varchar(50) NOT NULL,
  `home_phone` varchar(30) NOT NULL,
  `business_phone` varchar(30) NOT NULL,
  `cell_phone` varchar(30) NOT NULL,
  `emerg_contct` varchar(30) NOT NULL,
  `emrg_h_phone` varchar(30) NOT NULL,
  `emrg_w_phone` varchar(30) NOT NULL,
  `emgr_contct_relation` varchar(50) NOT NULL,
  `alt_em_contct` varchar(30) NOT NULL,
  `alt_emg_h_phone` varchar(30) NOT NULL,
  `alt_emg_w_phone` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_history`
--

INSERT INTO `employee_history` (`emp_his_id`, `employee_id`, `pos_id`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `alter_phone`, `present_address`, `parmanent_address`, `picture`, `degree_name`, `university_name`, `cgp`, `passing_year`, `company_name`, `working_period`, `duties`, `supervisor`, `signature`, `is_admin`, `dept_id`, `division_id`, `maiden_name`, `state`, `city`, `zip`, `citizenship`, `duty_type`, `hire_date`, `original_hire_date`, `termination_date`, `termination_reason`, `voluntary_termination`, `rehire_date`, `rate_type`, `rate`, `pay_frequency`, `pay_frequency_txt`, `hourly_rate2`, `hourly_rate3`, `home_department`, `department_text`, `class_code`, `class_code_desc`, `class_acc_date`, `class_status`, `is_super_visor`, `super_visor_id`, `supervisor_report`, `dob`, `gender`, `country`, `marital_status`, `ethnic_group`, `eeo_class_gp`, `ssn`, `work_in_state`, `live_in_state`, `home_email`, `business_email`, `home_phone`, `business_phone`, `cell_phone`, `emerg_contct`, `emrg_h_phone`, `emrg_w_phone`, `emgr_contct_relation`, `alt_em_contct`, `alt_emg_h_phone`, `alt_emg_w_phone`) VALUES
(182, '3654', '6', 'Parvez', NULL, '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '', '', 0, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00', '', 0, '0000-00-00', 0, 0, 0, '', 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '', '', '0000-00-00', 0, NULL, 0, '', '', NULL, 0, 0, '', '', '', '', '', '', '', '', '', '', '', NULL),
(183, '9368', '6', 'test', NULL, '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '', '', 0, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00', '', 0, '0000-00-00', 0, 0, 0, '', 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, '', '', '0000-00-00', 0, NULL, 0, '', '', NULL, 0, 0, '', '', '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_performance`
--

CREATE TABLE `employee_performance` (
  `emp_per_id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `note` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `note_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `number_of_star` varchar(50) CHARACTER SET latin1 NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_payment`
--

CREATE TABLE `employee_salary_payment` (
  `emp_sal_pay_id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_setup`
--

CREATE TABLE `employee_salary_setup` (
  `e_s_s_id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gross_salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_salary_setup`
--

INSERT INTO `employee_salary_setup` (`e_s_s_id`, `employee_id`, `sal_type`, `salary_type_id`, `amount`, `create_date`, `update_date`, `update_id`, `gross_salary`) VALUES
(1, '3654', '0', '0', '0', '2023-04-14', NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_sal_pay_type`
--

CREATE TABLE `employee_sal_pay_type` (
  `emp_sal_pay_type_id` int(11) UNSIGNED NOT NULL,
  `payment_period` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_attendance`
--

CREATE TABLE `emp_attendance` (
  `att_id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sign_in` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `sign_out` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `staytime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_attendance`
--

INSERT INTO `emp_attendance` (`att_id`, `employee_id`, `date`, `sign_in`, `sign_out`, `staytime`) VALUES
(1, '3654', '2023-03-19', '12:02:37 am', '11:29:06 pm', '23:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `date`, `type`, `voucher_no`, `amount`) VALUES
(2, '2023-04-12', 'Computer', '20230412113838', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `expense_item`
--

CREATE TABLE `expense_item` (
  `id` int(11) NOT NULL,
  `expense_item_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expense_item`
--

INSERT INTO `expense_item` (`id`, `expense_item_name`) VALUES
(2, 'Computer');

-- --------------------------------------------------------

--
-- Table structure for table `foodvariable`
--

CREATE TABLE `foodvariable` (
  `availableID` int(11) NOT NULL,
  `foodid` int(11) NOT NULL,
  `availtime` varchar(50) NOT NULL,
  `availday` varchar(30) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `gender_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender_name`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `grand_loan`
--

CREATE TABLE `grand_loan` (
  `loan_id` int(11) NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `permission_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `loan_details` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `interest_rate` varchar(30) CHARACTER SET latin1 NOT NULL,
  `installment` varchar(30) CHARACTER SET latin1 NOT NULL,
  `installment_period` varchar(30) CHARACTER SET latin1 NOT NULL,
  `repayment_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `date_of_approve` varchar(30) CHARACTER SET latin1 NOT NULL,
  `repayment_start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `created_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `loan_status` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `ingredient_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `uom_id` int(11) NOT NULL,
  `stock_qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `min_stock` decimal(10,2) NOT NULL DEFAULT 1.00,
  `status` int(3) NOT NULL DEFAULT 0 COMMENT '0=kitchenitems,1=otheritems',
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `CategoryID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `CategoryImage` varchar(255) DEFAULT NULL,
  `Position` int(11) DEFAULT NULL,
  `CategoryIsActive` int(11) DEFAULT NULL,
  `offerstartdate` date DEFAULT '0000-00-00',
  `offerendate` date NOT NULL DEFAULT '0000-00-00',
  `isoffer` int(11) DEFAULT 0,
  `parentid` int(11) DEFAULT 0,
  `UserIDInserted` int(11) NOT NULL DEFAULT 0,
  `UserIDUpdated` int(11) NOT NULL DEFAULT 0,
  `UserIDLocked` int(11) NOT NULL DEFAULT 0,
  `DateInserted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateLocked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`CategoryID`, `Name`, `CategoryImage`, `Position`, `CategoryIsActive`, `offerstartdate`, `offerendate`, `isoffer`, `parentid`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `DateInserted`, `DateUpdated`, `DateLocked`) VALUES
(1, 'DESSERT', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 0, 178, 178, 178, '2023-02-16 22:57:48', '2023-02-16 22:57:48', '2023-02-16 22:57:48'),
(2, 'BENGALI', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 0, 178, 178, 178, '2023-02-16 22:58:48', '2023-02-16 22:58:48', '2023-02-16 22:58:48'),
(3, 'Rice', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 2, 178, 178, 178, '2023-02-16 22:59:02', '2023-02-16 22:59:02', '2023-02-16 22:59:02'),
(4, 'Curry', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 2, 178, 178, 178, '2023-02-16 22:59:11', '2023-02-16 22:59:11', '2023-02-16 22:59:11'),
(5, 'INDIAN', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 0, 178, 178, 178, '2023-02-16 23:00:24', '2023-02-16 23:00:24', '2023-02-16 23:00:24'),
(6, 'Naan & Parata', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 5, 178, 178, 178, '2023-02-16 23:00:45', '2023-02-16 23:00:45', '2023-02-16 23:00:45'),
(7, 'BBQ Kabab & Tandori', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 5, 178, 178, 178, '2023-02-16 23:01:13', '2023-02-16 23:01:13', '2023-02-16 23:01:13'),
(8, 'Yummy Biriyani', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 5, 178, 178, 178, '2023-02-16 23:01:40', '2023-02-16 23:01:40', '2023-02-16 23:01:40'),
(9, 'Korai', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 5, 178, 178, 178, '2023-02-16 23:01:49', '2023-02-16 23:01:49', '2023-02-16 23:01:49'),
(10, 'THAI-CHINESE', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 0, 178, 178, 178, '2023-02-16 23:02:15', '2023-02-16 23:02:15', '2023-02-16 23:02:15'),
(11, 'Appetizer', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 10, 178, 178, 178, '2023-02-16 23:02:35', '2023-02-16 23:02:35', '2023-02-16 23:02:35'),
(12, 'Soup', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 10, 178, 178, 178, '2023-02-16 23:02:43', '2023-02-16 23:02:43', '2023-02-16 23:02:43'),
(13, 'Salad', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 10, 178, 178, 178, '2023-02-16 23:02:50', '2023-02-16 23:02:50', '2023-02-16 23:02:50'),
(14, 'Rice.', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 10, 178, 178, 178, '2023-02-16 23:03:48', '2023-02-16 23:03:48', '2023-02-16 23:03:48'),
(15, 'Chow Mein & Noddles', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 10, 178, 178, 178, '2023-02-16 23:04:16', '2023-02-16 23:04:16', '2023-02-16 23:04:16'),
(16, 'Chicken', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 10, 178, 178, 178, '2023-02-16 23:04:33', '2023-02-16 23:04:33', '2023-02-16 23:04:33'),
(17, 'Beef', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 10, 178, 178, 178, '2023-02-16 23:04:45', '2023-02-16 23:04:45', '2023-02-16 23:04:45'),
(18, 'Fish & Sea Food', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 10, 178, 178, 178, '2023-02-16 23:05:00', '2023-02-16 23:05:00', '2023-02-16 23:05:00'),
(19, 'Vegetable', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 10, 178, 178, 178, '2023-02-16 23:05:13', '2023-02-16 23:05:13', '2023-02-16 23:05:13'),
(20, 'BEVERAGE', '', NULL, 1, '0000-00-00', '0000-00-00', 0, 0, 178, 178, 178, '2023-02-16 23:05:54', '2023-02-16 23:06:12', '2023-02-16 23:05:54'),
(21, 'Coffee', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 20, 178, 178, 178, '2023-02-16 23:06:58', '2023-02-16 23:06:58', '2023-02-16 23:06:58'),
(22, 'Hot Tea', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 20, 178, 178, 178, '2023-02-16 23:07:10', '2023-02-16 23:07:10', '2023-02-16 23:07:10'),
(23, 'Cold Coffee', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 20, 178, 178, 178, '2023-02-16 23:07:23', '2023-02-16 23:07:23', '2023-02-16 23:07:23'),
(24, 'Mocktails', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 20, 178, 178, 178, '2023-02-16 23:07:54', '2023-02-16 23:07:54', '2023-02-16 23:07:54'),
(25, 'FRESH JUICE', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 0, 178, 178, 178, '2023-02-16 23:08:58', '2023-02-16 23:08:58', '2023-02-16 23:08:58'),
(26, 'Seasonal Fruits Juice', '', NULL, 1, '0000-00-00', '0000-00-00', 0, 25, 178, 178, 178, '2023-02-16 23:09:24', '2023-02-16 23:09:47', '2023-02-16 23:09:24'),
(27, 'Fresh Lime', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 25, 178, 178, 178, '2023-02-16 23:10:19', '2023-02-16 23:10:19', '2023-02-16 23:10:19'),
(28, 'Milk Shake', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 25, 178, 178, 178, '2023-02-16 23:10:30', '2023-02-16 23:10:30', '2023-02-16 23:10:30'),
(29, 'Lassi', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 25, 178, 178, 178, '2023-02-16 23:10:41', '2023-02-16 23:10:41', '2023-02-16 23:10:41'),
(30, 'Drinks', NULL, NULL, 1, '0000-00-00', '0000-00-00', 0, 25, 178, 178, 178, '2023-02-16 23:10:50', '2023-02-16 23:10:50', '2023-02-16 23:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `item_foods`
--

CREATE TABLE `item_foods` (
  `ProductsID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductImage` varchar(200) DEFAULT NULL,
  `bigthumb` varchar(255) NOT NULL,
  `medium_thumb` varchar(255) NOT NULL,
  `small_thumb` varchar(255) NOT NULL,
  `component` text DEFAULT NULL,
  `descrip` text DEFAULT NULL,
  `itemnotes` varchar(255) DEFAULT NULL,
  `menutype` varchar(25) DEFAULT NULL,
  `productvat` decimal(10,3) DEFAULT 0.000,
  `special` int(11) NOT NULL DEFAULT 0,
  `OffersRate` int(11) NOT NULL DEFAULT 0 COMMENT '1=offer rate',
  `offerIsavailable` int(11) NOT NULL DEFAULT 0 COMMENT '1=offer available,0=No Offer',
  `offerstartdate` date DEFAULT '0000-00-00',
  `offerendate` date DEFAULT '0000-00-00',
  `Position` int(11) DEFAULT NULL,
  `kitchenid` int(11) NOT NULL,
  `isgroup` int(11) DEFAULT NULL,
  `is_customqty` int(11) DEFAULT 0,
  `cookedtime` time NOT NULL DEFAULT '00:00:00',
  `ProductsIsActive` int(11) DEFAULT NULL,
  `UserIDInserted` int(11) NOT NULL DEFAULT 0,
  `UserIDUpdated` int(11) NOT NULL DEFAULT 0,
  `UserIDLocked` int(11) NOT NULL DEFAULT 0,
  `DateInserted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DateLocked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tax0` text DEFAULT NULL,
  `tax1` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_foods`
--

INSERT INTO `item_foods` (`ProductsID`, `CategoryID`, `ProductName`, `ProductImage`, `bigthumb`, `medium_thumb`, `small_thumb`, `component`, `descrip`, `itemnotes`, `menutype`, `productvat`, `special`, `OffersRate`, `offerIsavailable`, `offerstartdate`, `offerendate`, `Position`, `kitchenid`, `isgroup`, `is_customqty`, `cookedtime`, `ProductsIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `DateInserted`, `DateUpdated`, `DateLocked`, `tax0`, `tax1`) VALUES
(1, 1, 'Fruits Cocktails', 'application/modules/itemmanage/assets/images/Mulled-Apple-Cider-Cocktail-683x1024.jpg', 'application/modules/itemmanage/assets/images/big/Mulled-Apple-Cider-Cocktail-683x1024.jpg', 'application/modules/itemmanage/assets/images/medium/Mulled-Apple-Cider-Cocktail-683x1024.jpg', 'application/modules/itemmanage/assets/images/small/Mulled-Apple-Cider-Cocktail-683x1024.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-16 23:21:26', '2023-02-16 23:21:26', '2023-02-16 23:21:26', NULL, NULL),
(2, 1, 'Yougurt Bowl', 'application/modules/itemmanage/assets/images/Yogurt-Bowl-6-560x560.jpg', 'application/modules/itemmanage/assets/images/big/Yogurt-Bowl-6-560x560.jpg', 'application/modules/itemmanage/assets/images/medium/Yogurt-Bowl-6-560x560.jpg', 'application/modules/itemmanage/assets/images/small/Yogurt-Bowl-6-560x560.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-17 19:47:48', '2023-02-17 19:47:48', '2023-02-17 19:47:48', NULL, NULL),
(3, 1, 'Ice-Cream', 'application/modules/itemmanage/assets/images/R.jpeg', 'application/modules/itemmanage/assets/images/big/R.jpeg', 'application/modules/itemmanage/assets/images/medium/R.jpeg', 'application/modules/itemmanage/assets/images/small/R.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-17 19:49:25', '2023-02-17 19:49:25', '2023-02-17 19:49:25', NULL, NULL),
(4, 1, 'Ice-Cream', 'application/modules/itemmanage/assets/images/R1.jpeg', 'application/modules/itemmanage/assets/images/big/R1.jpeg', 'application/modules/itemmanage/assets/images/medium/R1.jpeg', 'application/modules/itemmanage/assets/images/small/R1.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-17 19:50:04', '2023-02-17 19:50:04', '2023-02-17 19:50:04', NULL, NULL),
(5, 1, 'Misti Doi/Firni', 'application/modules/itemmanage/assets/images/OIP.jpeg', 'application/modules/itemmanage/assets/images/big/OIP.jpeg', 'application/modules/itemmanage/assets/images/medium/OIP.jpeg', 'application/modules/itemmanage/assets/images/small/OIP.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-17 19:51:28', '2023-02-17 19:51:28', '2023-02-17 19:51:28', NULL, NULL),
(6, 4, 'Beef Bhuna', 'application/modules/itemmanage/assets/images/Beef-Bhuna-2.jpg', 'application/modules/itemmanage/assets/images/big/Beef-Bhuna-2.jpg', 'application/modules/itemmanage/assets/images/medium/Beef-Bhuna-2.jpg', 'application/modules/itemmanage/assets/images/small/Beef-Bhuna-2.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-17 19:53:09', '2023-02-17 19:53:09', '2023-02-17 19:53:09', NULL, NULL),
(7, 4, 'Mutton Curry', 'application/modules/itemmanage/assets/images/OIP_(1).jpeg', 'application/modules/itemmanage/assets/images/big/OIP_(1).jpeg', 'application/modules/itemmanage/assets/images/medium/OIP_(1).jpeg', 'application/modules/itemmanage/assets/images/small/OIP_(1).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-17 19:54:22', '2023-02-17 19:54:22', '2023-02-17 19:54:22', NULL, NULL),
(8, 4, 'Chicken Jhal Fry', 'application/modules/itemmanage/assets/images/R_(1).jpeg', 'application/modules/itemmanage/assets/images/big/R_(1).jpeg', 'application/modules/itemmanage/assets/images/medium/R_(1).jpeg', 'application/modules/itemmanage/assets/images/small/R_(1).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-17 19:55:37', '2023-02-17 19:55:37', '2023-02-17 19:55:37', NULL, NULL),
(9, 4, 'Rui Fish Dopaija', 'application/modules/itemmanage/assets/images/hqdefault.jpg', 'application/modules/itemmanage/assets/images/big/hqdefault.jpg', 'application/modules/itemmanage/assets/images/medium/hqdefault.jpg', 'application/modules/itemmanage/assets/images/small/hqdefault.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-17 23:19:37', '2023-02-17 23:19:37', '2023-02-17 23:19:37', NULL, NULL),
(10, 4, 'Rupchada Fry', 'application/modules/itemmanage/assets/images/R_(2).jpeg', 'application/modules/itemmanage/assets/images/big/R_(2).jpeg', 'application/modules/itemmanage/assets/images/medium/R_(2).jpeg', 'application/modules/itemmanage/assets/images/small/R_(2).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-17 23:20:27', '2023-02-17 23:20:27', '2023-02-17 23:20:27', NULL, NULL),
(11, 4, 'Mix Sabji', 'application/modules/itemmanage/assets/images/R_(3).jpeg', 'application/modules/itemmanage/assets/images/big/R_(3).jpeg', 'application/modules/itemmanage/assets/images/medium/R_(3).jpeg', 'application/modules/itemmanage/assets/images/small/R_(3).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-17 23:21:49', '2023-02-17 23:21:49', '2023-02-17 23:21:49', NULL, NULL),
(12, 4, 'Plain Daal', 'application/modules/itemmanage/assets/images/OIP_(2).jpeg', 'application/modules/itemmanage/assets/images/big/OIP_(2).jpeg', 'application/modules/itemmanage/assets/images/medium/OIP_(2).jpeg', 'application/modules/itemmanage/assets/images/small/OIP_(2).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-17 23:22:46', '2023-02-17 23:22:46', '2023-02-17 23:22:46', NULL, NULL),
(13, 3, 'Plain Rice', 'application/modules/itemmanage/assets/images/R_(4).jpeg', 'application/modules/itemmanage/assets/images/big/R_(4).jpeg', 'application/modules/itemmanage/assets/images/medium/R_(4).jpeg', 'application/modules/itemmanage/assets/images/small/R_(4).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-17 23:24:08', '2023-02-17 23:24:08', '2023-02-17 23:24:08', NULL, NULL),
(14, 3, 'Special Khichuri', 'application/modules/itemmanage/assets/images/R_(5).jpeg', 'application/modules/itemmanage/assets/images/big/R_(5).jpeg', 'application/modules/itemmanage/assets/images/medium/R_(5).jpeg', 'application/modules/itemmanage/assets/images/small/R_(5).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-17 23:24:57', '2023-02-17 23:24:57', '2023-02-17 23:24:57', NULL, NULL),
(15, 9, 'Tandori Chicken Korai', 'application/modules/itemmanage/assets/images/download.jpeg', 'application/modules/itemmanage/assets/images/big/download.jpeg', 'application/modules/itemmanage/assets/images/medium/download.jpeg', 'application/modules/itemmanage/assets/images/small/download.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 22:43:23', '2023-02-18 22:43:23', '2023-02-18 22:43:23', NULL, NULL),
(16, 9, 'Chiken Korai', 'application/modules/itemmanage/assets/images/images.jpeg', 'application/modules/itemmanage/assets/images/big/images.jpeg', 'application/modules/itemmanage/assets/images/medium/images.jpeg', 'application/modules/itemmanage/assets/images/small/images.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 22:45:07', '2023-02-18 22:45:07', '2023-02-18 22:45:07', NULL, NULL),
(17, 9, 'Chicken Korai Local', 'application/modules/itemmanage/assets/images/images1.jpeg', 'application/modules/itemmanage/assets/images/big/images1.jpeg', 'application/modules/itemmanage/assets/images/medium/images1.jpeg', 'application/modules/itemmanage/assets/images/small/images1.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 22:47:53', '2023-02-18 22:47:53', '2023-02-18 22:47:53', NULL, NULL),
(18, 9, 'Chicken Korai Locals', 'application/modules/itemmanage/assets/images/images2.jpeg', 'application/modules/itemmanage/assets/images/big/images2.jpeg', 'application/modules/itemmanage/assets/images/medium/images2.jpeg', 'application/modules/itemmanage/assets/images/small/images2.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 22:48:14', '2023-02-18 22:48:14', '2023-02-18 22:48:14', NULL, NULL),
(19, 9, 'Duck Masala', 'application/modules/itemmanage/assets/images/maxresdefault.jpg', 'application/modules/itemmanage/assets/images/big/maxresdefault.jpg', 'application/modules/itemmanage/assets/images/medium/maxresdefault.jpg', 'application/modules/itemmanage/assets/images/small/maxresdefault.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 22:50:20', '2023-02-18 22:50:20', '2023-02-18 22:50:20', NULL, NULL),
(20, 9, 'Duck Masala.', 'application/modules/itemmanage/assets/images/maxresdefault1.jpg', 'application/modules/itemmanage/assets/images/big/maxresdefault1.jpg', 'application/modules/itemmanage/assets/images/medium/maxresdefault1.jpg', 'application/modules/itemmanage/assets/images/small/maxresdefault1.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 22:50:47', '2023-02-18 22:50:47', '2023-02-18 22:50:47', NULL, NULL),
(21, 9, 'Special Korai', 'application/modules/itemmanage/assets/images/chickenkorai.jpg', 'application/modules/itemmanage/assets/images/big/chickenkorai.jpg', 'application/modules/itemmanage/assets/images/medium/chickenkorai.jpg', 'application/modules/itemmanage/assets/images/small/chickenkorai.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 22:52:25', '2023-02-18 22:52:25', '2023-02-18 22:52:25', NULL, NULL),
(22, 17, 'Beef Sizzling', 'application/modules/itemmanage/assets/images/Sizzling-Beef-Recipe.jpg', 'application/modules/itemmanage/assets/images/big/Sizzling-Beef-Recipe.jpg', 'application/modules/itemmanage/assets/images/medium/Sizzling-Beef-Recipe.jpg', 'application/modules/itemmanage/assets/images/small/Sizzling-Beef-Recipe.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 22:57:56', '2023-02-18 22:57:56', '2023-02-18 22:57:56', NULL, NULL),
(23, 9, 'Beef Chili Onion', 'application/modules/itemmanage/assets/images/maxresdefault_(1).jpg', 'application/modules/itemmanage/assets/images/big/maxresdefault_(1).jpg', 'application/modules/itemmanage/assets/images/medium/maxresdefault_(1).jpg', 'application/modules/itemmanage/assets/images/small/maxresdefault_(1).jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 22:58:39', '2023-02-18 22:58:39', '2023-02-18 22:58:39', NULL, NULL),
(24, 18, 'Prawn Masala', 'application/modules/itemmanage/assets/images/Prawns-Masala-min.jpg', 'application/modules/itemmanage/assets/images/big/Prawns-Masala-min.jpg', 'application/modules/itemmanage/assets/images/medium/Prawns-Masala-min.jpg', 'application/modules/itemmanage/assets/images/small/Prawns-Masala-min.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:00:51', '2023-02-18 23:00:51', '2023-02-18 23:00:51', NULL, NULL),
(25, 18, 'Deep Fried Pomfret', 'application/modules/itemmanage/assets/images/download_(1).jpeg', 'application/modules/itemmanage/assets/images/big/download_(1).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(1).jpeg', 'application/modules/itemmanage/assets/images/small/download_(1).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:02:36', '2023-02-18 23:02:36', '2023-02-18 23:02:36', NULL, NULL),
(26, 18, 'Steamed Whole Redsnapper', 'application/modules/itemmanage/assets/images/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec254.jpg', 'application/modules/itemmanage/assets/images/big/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec254.jpg', 'application/modules/itemmanage/assets/images/medium/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec254.jpg', 'application/modules/itemmanage/assets/images/small/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec254.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:03:59', '2023-02-18 23:03:59', '2023-02-18 23:03:59', NULL, NULL),
(27, 19, 'Chicken Chinese Vegetable', 'application/modules/itemmanage/assets/images/hunan-chicken-2-500x500.jpg', 'application/modules/itemmanage/assets/images/big/hunan-chicken-2-500x500.jpg', 'application/modules/itemmanage/assets/images/medium/hunan-chicken-2-500x500.jpg', 'application/modules/itemmanage/assets/images/small/hunan-chicken-2-500x500.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:04:54', '2023-02-18 23:04:54', '2023-02-18 23:04:54', NULL, NULL),
(28, 19, 'Chinese Vegetable', 'application/modules/itemmanage/assets/images/Broccoli-baby-corn-stir-fry.jpg', 'application/modules/itemmanage/assets/images/big/Broccoli-baby-corn-stir-fry.jpg', 'application/modules/itemmanage/assets/images/medium/Broccoli-baby-corn-stir-fry.jpg', 'application/modules/itemmanage/assets/images/small/Broccoli-baby-corn-stir-fry.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:05:40', '2023-02-18 23:05:40', '2023-02-18 23:05:40', NULL, NULL),
(29, 19, 'Thai Mix Vegetable', 'application/modules/itemmanage/assets/images/download_(2).jpeg', 'application/modules/itemmanage/assets/images/big/download_(2).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(2).jpeg', 'application/modules/itemmanage/assets/images/small/download_(2).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:06:23', '2023-02-18 23:06:23', '2023-02-18 23:06:23', NULL, NULL),
(30, 6, 'Plain Naan', 'application/modules/itemmanage/assets/images/download_(3).jpeg', 'application/modules/itemmanage/assets/images/big/download_(3).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(3).jpeg', 'application/modules/itemmanage/assets/images/small/download_(3).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:07:08', '2023-02-18 23:07:08', '2023-02-18 23:07:08', NULL, NULL),
(31, 6, 'Butter Naan', 'application/modules/itemmanage/assets/images/maxresdefault2.jpg', 'application/modules/itemmanage/assets/images/big/maxresdefault2.jpg', 'application/modules/itemmanage/assets/images/medium/maxresdefault2.jpg', 'application/modules/itemmanage/assets/images/small/maxresdefault2.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:08:02', '2023-02-18 23:08:02', '2023-02-18 23:08:02', NULL, NULL),
(32, 6, 'Garlic Naan', 'application/modules/itemmanage/assets/images/Garlic-Naan-Recipe-IMAGE-27.jpg', 'application/modules/itemmanage/assets/images/big/Garlic-Naan-Recipe-IMAGE-27.jpg', 'application/modules/itemmanage/assets/images/medium/Garlic-Naan-Recipe-IMAGE-27.jpg', 'application/modules/itemmanage/assets/images/small/Garlic-Naan-Recipe-IMAGE-27.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:08:43', '2023-02-18 23:08:43', '2023-02-18 23:08:43', NULL, NULL),
(33, 6, 'Kashmiri  Naan', 'application/modules/itemmanage/assets/images/panfriedkashmirinaan.jpg', 'application/modules/itemmanage/assets/images/big/panfriedkashmirinaan.jpg', 'application/modules/itemmanage/assets/images/medium/panfriedkashmirinaan.jpg', 'application/modules/itemmanage/assets/images/small/panfriedkashmirinaan.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:09:27', '2023-02-18 23:09:27', '2023-02-18 23:09:27', NULL, NULL),
(34, 6, 'Plain Parata', 'application/modules/itemmanage/assets/images/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2541.jpg', 'application/modules/itemmanage/assets/images/big/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2541.jpg', 'application/modules/itemmanage/assets/images/medium/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2541.jpg', 'application/modules/itemmanage/assets/images/small/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2541.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:10:35', '2023-02-18 23:10:35', '2023-02-18 23:10:35', NULL, NULL),
(35, 6, 'Shahi Parata', 'application/modules/itemmanage/assets/images/download_(4).jpeg', 'application/modules/itemmanage/assets/images/big/download_(4).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(4).jpeg', 'application/modules/itemmanage/assets/images/small/download_(4).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:11:11', '2023-02-18 23:11:11', '2023-02-18 23:11:11', NULL, NULL),
(36, 7, 'Tandori/BBQ Chicken', 'application/modules/itemmanage/assets/images/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2542.jpg', 'application/modules/itemmanage/assets/images/big/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2542.jpg', 'application/modules/itemmanage/assets/images/medium/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2542.jpg', 'application/modules/itemmanage/assets/images/small/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2542.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:12:47', '2023-02-18 23:12:47', '2023-02-18 23:12:47', NULL, NULL),
(37, 7, 'Beef Shik Kaba', 'application/modules/itemmanage/assets/images/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2543.jpg', 'application/modules/itemmanage/assets/images/big/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2543.jpg', 'application/modules/itemmanage/assets/images/medium/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2543.jpg', 'application/modules/itemmanage/assets/images/small/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2543.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:13:39', '2023-02-18 23:13:39', '2023-02-18 23:13:39', NULL, NULL),
(38, 7, 'BBQ Fish Surma', 'application/modules/itemmanage/assets/images/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2544.jpg', 'application/modules/itemmanage/assets/images/big/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2544.jpg', 'application/modules/itemmanage/assets/images/medium/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2544.jpg', 'application/modules/itemmanage/assets/images/small/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2544.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:15:07', '2023-02-18 23:15:07', '2023-02-18 23:15:07', NULL, NULL),
(39, 7, 'Chicken Boti Kabab', 'application/modules/itemmanage/assets/images/Chicken-Boti-Kabab-24.jpg', 'application/modules/itemmanage/assets/images/big/Chicken-Boti-Kabab-24.jpg', 'application/modules/itemmanage/assets/images/medium/Chicken-Boti-Kabab-24.jpg', 'application/modules/itemmanage/assets/images/small/Chicken-Boti-Kabab-24.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:15:47', '2023-02-18 23:15:47', '2023-02-18 23:15:47', NULL, NULL),
(40, 7, 'BBQ Fish Koral', 'application/modules/itemmanage/assets/images/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2545.jpg', 'application/modules/itemmanage/assets/images/big/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2545.jpg', 'application/modules/itemmanage/assets/images/medium/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2545.jpg', 'application/modules/itemmanage/assets/images/small/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2545.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:16:37', '2023-02-18 23:16:37', '2023-02-18 23:16:37', NULL, NULL),
(41, 8, 'Hyderabadi Biriyani', 'application/modules/itemmanage/assets/images/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2546.jpg', 'application/modules/itemmanage/assets/images/big/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2546.jpg', 'application/modules/itemmanage/assets/images/medium/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2546.jpg', 'application/modules/itemmanage/assets/images/small/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2546.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:18:34', '2023-02-18 23:18:34', '2023-02-18 23:18:34', NULL, NULL),
(42, 8, 'Beef Biriyani', 'application/modules/itemmanage/assets/images/download_(1)1.jpeg', 'application/modules/itemmanage/assets/images/big/download_(1)1.jpeg', 'application/modules/itemmanage/assets/images/medium/download_(1)1.jpeg', 'application/modules/itemmanage/assets/images/small/download_(1)1.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:20:38', '2023-02-18 23:20:38', '2023-02-18 23:20:38', NULL, NULL),
(43, 8, 'Pakistani Mugul Biriyani', 'application/modules/itemmanage/assets/images/download_(5).jpeg', 'application/modules/itemmanage/assets/images/big/download_(5).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(5).jpeg', 'application/modules/itemmanage/assets/images/small/download_(5).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:21:13', '2023-02-18 23:21:13', '2023-02-18 23:21:13', NULL, NULL),
(44, 9, 'Chicken Korai', 'application/modules/itemmanage/assets/images/images3.jpeg', 'application/modules/itemmanage/assets/images/big/images3.jpeg', 'application/modules/itemmanage/assets/images/medium/images3.jpeg', 'application/modules/itemmanage/assets/images/small/images3.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-18 23:23:27', '2023-02-18 23:23:27', '2023-02-18 23:23:27', NULL, NULL),
(45, 12, 'Zam Zam Special Soup', 'application/modules/itemmanage/assets/images/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2547.jpg', 'application/modules/itemmanage/assets/images/big/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2547.jpg', 'application/modules/itemmanage/assets/images/medium/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2547.jpg', 'application/modules/itemmanage/assets/images/small/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2547.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-19 23:44:36', '2023-02-19 23:44:36', '2023-02-19 23:44:36', NULL, NULL),
(46, 12, 'Thai Soup Thick', 'application/modules/itemmanage/assets/images/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2548.jpg', 'application/modules/itemmanage/assets/images/big/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2548.jpg', 'application/modules/itemmanage/assets/images/medium/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2548.jpg', 'application/modules/itemmanage/assets/images/small/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2548.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-19 23:45:13', '2023-02-19 23:45:13', '2023-02-19 23:45:13', NULL, NULL),
(47, 12, 'Thai Soup Clear', 'application/modules/itemmanage/assets/images/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2549.jpg', 'application/modules/itemmanage/assets/images/big/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2549.jpg', 'application/modules/itemmanage/assets/images/medium/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2549.jpg', 'application/modules/itemmanage/assets/images/small/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec2549.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-19 23:45:42', '2023-02-19 23:45:42', '2023-02-19 23:45:42', NULL, NULL),
(48, 12, 'Chiken Corn Soup', 'application/modules/itemmanage/assets/images/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec25410.jpg', 'application/modules/itemmanage/assets/images/big/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec25410.jpg', 'application/modules/itemmanage/assets/images/medium/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec25410.jpg', 'application/modules/itemmanage/assets/images/small/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec25410.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-19 23:46:38', '2023-02-19 23:46:38', '2023-02-19 23:46:38', NULL, NULL),
(49, 12, 'Cream Of Mashroom Soup', 'application/modules/itemmanage/assets/images/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec25411.jpg', 'application/modules/itemmanage/assets/images/big/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec25411.jpg', 'application/modules/itemmanage/assets/images/medium/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec25411.jpg', 'application/modules/itemmanage/assets/images/small/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec25411.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-19 23:47:03', '2023-02-19 23:47:03', '2023-02-19 23:47:03', NULL, NULL),
(50, 13, 'Cashew Nut Salad', 'application/modules/itemmanage/assets/images/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec25412.jpg', 'application/modules/itemmanage/assets/images/big/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec25412.jpg', 'application/modules/itemmanage/assets/images/medium/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec25412.jpg', 'application/modules/itemmanage/assets/images/small/200904-xl-grilled-whole-red-snapper-c39b2a5ed1664aa7b49e3586804ec25412.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-19 23:47:58', '2023-02-19 23:47:58', '2023-02-19 23:47:58', NULL, NULL),
(51, 13, 'Bengali Mix Salad', 'application/modules/itemmanage/assets/images/download_(1)2.jpeg', 'application/modules/itemmanage/assets/images/big/download_(1)2.jpeg', 'application/modules/itemmanage/assets/images/medium/download_(1)2.jpeg', 'application/modules/itemmanage/assets/images/small/download_(1)2.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-19 23:48:45', '2023-02-19 23:48:45', '2023-02-19 23:48:45', NULL, NULL),
(52, 13, 'Special Garden Salad', 'application/modules/itemmanage/assets/images/download_(6).jpeg', 'application/modules/itemmanage/assets/images/big/download_(6).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(6).jpeg', 'application/modules/itemmanage/assets/images/small/download_(6).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-19 23:49:27', '2023-02-19 23:49:27', '2023-02-19 23:49:27', NULL, NULL),
(53, 14, 'Special Fried Rice', 'application/modules/itemmanage/assets/images/download_(7).jpeg', 'application/modules/itemmanage/assets/images/big/download_(7).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(7).jpeg', 'application/modules/itemmanage/assets/images/small/download_(7).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-19 23:50:29', '2023-02-19 23:50:29', '2023-02-19 23:50:29', NULL, NULL),
(54, 14, 'Mix Fried Rice', 'application/modules/itemmanage/assets/images/download_(8).jpeg', 'application/modules/itemmanage/assets/images/big/download_(8).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(8).jpeg', 'application/modules/itemmanage/assets/images/small/download_(8).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-19 23:51:01', '2023-02-19 23:51:01', '2023-02-19 23:51:01', NULL, NULL),
(55, 14, 'Chiken Fried Rice', 'application/modules/itemmanage/assets/images/download_(9).jpeg', 'application/modules/itemmanage/assets/images/big/download_(9).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(9).jpeg', 'application/modules/itemmanage/assets/images/small/download_(9).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-19 23:51:24', '2023-02-19 23:51:24', '2023-02-19 23:51:24', NULL, NULL),
(56, 14, 'Steam Rice', 'application/modules/itemmanage/assets/images/download_(10).jpeg', 'application/modules/itemmanage/assets/images/big/download_(10).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(10).jpeg', 'application/modules/itemmanage/assets/images/small/download_(10).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-19 23:51:57', '2023-02-19 23:51:57', '2023-02-19 23:51:57', NULL, NULL),
(57, 15, 'Special Chow Mein', 'application/modules/itemmanage/assets/images/download_(11).jpeg', 'application/modules/itemmanage/assets/images/big/download_(11).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(11).jpeg', 'application/modules/itemmanage/assets/images/small/download_(11).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-19 23:53:20', '2023-02-19 23:57:56', '2023-02-19 23:53:20', NULL, NULL),
(58, 15, 'Mix Chow Mein', 'application/modules/itemmanage/assets/images/download_(11)1.jpeg', 'application/modules/itemmanage/assets/images/big/download_(11)1.jpeg', 'application/modules/itemmanage/assets/images/medium/download_(11)1.jpeg', 'application/modules/itemmanage/assets/images/small/download_(11)1.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-19 23:58:43', '2023-02-19 23:58:43', '2023-02-19 23:58:43', NULL, NULL),
(59, 15, 'Mix Noddles', 'application/modules/itemmanage/assets/images/download_(11)2.jpeg', 'application/modules/itemmanage/assets/images/big/download_(11)2.jpeg', 'application/modules/itemmanage/assets/images/medium/download_(11)2.jpeg', 'application/modules/itemmanage/assets/images/small/download_(11)2.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-19 23:59:02', '2023-02-19 23:59:02', '2023-02-19 23:59:02', NULL, NULL),
(60, 16, 'Thai Fried Chiken', 'application/modules/itemmanage/assets/images/download_(12).jpeg', 'application/modules/itemmanage/assets/images/big/download_(12).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(12).jpeg', 'application/modules/itemmanage/assets/images/small/download_(12).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-20 00:00:08', '2023-02-20 00:00:08', '2023-02-20 00:00:08', NULL, NULL),
(61, 16, 'Crispy Fried Chiken', 'application/modules/itemmanage/assets/images/download_(13).jpeg', 'application/modules/itemmanage/assets/images/big/download_(13).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(13).jpeg', 'application/modules/itemmanage/assets/images/small/download_(13).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-20 00:00:42', '2023-02-20 00:00:42', '2023-02-20 00:00:42', NULL, NULL),
(62, 16, 'Chiken Chili onion', 'application/modules/itemmanage/assets/images/download_(14).jpeg', 'application/modules/itemmanage/assets/images/big/download_(14).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(14).jpeg', 'application/modules/itemmanage/assets/images/small/download_(14).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-20 00:01:14', '2023-02-20 00:01:57', '2023-02-20 00:01:14', NULL, NULL),
(63, 16, 'Chiken Masala', 'application/modules/itemmanage/assets/images/download_(15).jpeg', 'application/modules/itemmanage/assets/images/big/download_(15).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(15).jpeg', 'application/modules/itemmanage/assets/images/small/download_(15).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-20 00:02:57', '2023-02-20 00:02:57', '2023-02-20 00:02:57', NULL, NULL),
(64, 16, 'Chiken Sizzling', 'application/modules/itemmanage/assets/images/download_(16).jpeg', 'application/modules/itemmanage/assets/images/big/download_(16).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(16).jpeg', 'application/modules/itemmanage/assets/images/small/download_(16).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-20 00:03:39', '2023-02-20 00:03:39', '2023-02-20 00:03:39', NULL, NULL),
(65, 11, 'Wonton', 'application/modules/itemmanage/assets/images/download_(17).jpeg', 'application/modules/itemmanage/assets/images/big/download_(17).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(17).jpeg', 'application/modules/itemmanage/assets/images/small/download_(17).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-20 00:04:30', '2023-02-20 00:04:30', '2023-02-20 00:04:30', NULL, NULL),
(66, 11, 'Franch Fry', 'application/modules/itemmanage/assets/images/download_(18).jpeg', 'application/modules/itemmanage/assets/images/big/download_(18).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(18).jpeg', 'application/modules/itemmanage/assets/images/small/download_(18).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-20 00:05:03', '2023-02-20 00:05:03', '2023-02-20 00:05:03', NULL, NULL),
(67, 11, 'Spicy Chiken Wings', 'application/modules/itemmanage/assets/images/download_(19).jpeg', 'application/modules/itemmanage/assets/images/big/download_(19).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(19).jpeg', 'application/modules/itemmanage/assets/images/small/download_(19).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-20 00:05:42', '2023-02-20 00:05:42', '2023-02-20 00:05:42', NULL, NULL),
(68, 11, 'Onion Rings', 'application/modules/itemmanage/assets/images/download_(20).jpeg', 'application/modules/itemmanage/assets/images/big/download_(20).jpeg', 'application/modules/itemmanage/assets/images/medium/download_(20).jpeg', 'application/modules/itemmanage/assets/images/small/download_(20).jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-20 00:06:09', '2023-02-20 00:06:09', '2023-02-20 00:06:09', NULL, NULL),
(69, 21, 'Espresso', 'application/modules/itemmanage/assets/images/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food.jpg', 'application/modules/itemmanage/assets/images/big/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food.jpg', 'application/modules/itemmanage/assets/images/medium/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food.jpg', 'application/modules/itemmanage/assets/images/small/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:42:52', '2023-02-26 22:42:52', '2023-02-26 22:42:52', NULL, NULL),
(70, 21, 'Cappuccino', 'application/modules/itemmanage/assets/images/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food1.jpg', 'application/modules/itemmanage/assets/images/big/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food1.jpg', 'application/modules/itemmanage/assets/images/medium/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food1.jpg', 'application/modules/itemmanage/assets/images/small/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food1.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:43:39', '2023-02-26 22:43:39', '2023-02-26 22:43:39', NULL, NULL),
(71, 21, 'Americano', 'application/modules/itemmanage/assets/images/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food2.jpg', 'application/modules/itemmanage/assets/images/big/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food2.jpg', 'application/modules/itemmanage/assets/images/medium/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food2.jpg', 'application/modules/itemmanage/assets/images/small/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food2.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:44:06', '2023-02-26 22:44:06', '2023-02-26 22:44:06', NULL, NULL),
(72, 21, 'Latte', 'application/modules/itemmanage/assets/images/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food3.jpg', 'application/modules/itemmanage/assets/images/big/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food3.jpg', 'application/modules/itemmanage/assets/images/medium/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food3.jpg', 'application/modules/itemmanage/assets/images/small/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food3.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:44:25', '2023-02-26 22:44:25', '2023-02-26 22:44:25', NULL, NULL),
(73, 21, 'Hot Chocolate', 'application/modules/itemmanage/assets/images/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food4.jpg', 'application/modules/itemmanage/assets/images/big/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food4.jpg', 'application/modules/itemmanage/assets/images/medium/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food4.jpg', 'application/modules/itemmanage/assets/images/small/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food4.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:44:44', '2023-02-26 22:44:44', '2023-02-26 22:44:44', NULL, NULL),
(74, 22, 'Special Tea', 'application/modules/itemmanage/assets/images/close-up-of-a-cup-of-tea.jpg', 'application/modules/itemmanage/assets/images/big/close-up-of-a-cup-of-tea.jpg', 'application/modules/itemmanage/assets/images/medium/close-up-of-a-cup-of-tea.jpg', 'application/modules/itemmanage/assets/images/small/close-up-of-a-cup-of-tea.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:45:39', '2023-02-26 22:45:39', '2023-02-26 22:45:39', NULL, NULL),
(75, 22, 'Black Tea', 'application/modules/itemmanage/assets/images/close-up-of-a-cup-of-tea1.jpg', 'application/modules/itemmanage/assets/images/big/close-up-of-a-cup-of-tea1.jpg', 'application/modules/itemmanage/assets/images/medium/close-up-of-a-cup-of-tea1.jpg', 'application/modules/itemmanage/assets/images/small/close-up-of-a-cup-of-tea1.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:45:57', '2023-02-26 22:45:57', '2023-02-26 22:45:57', NULL, NULL),
(76, 22, 'Green Tea', 'application/modules/itemmanage/assets/images/close-up-of-a-cup-of-tea2.jpg', 'application/modules/itemmanage/assets/images/big/close-up-of-a-cup-of-tea2.jpg', 'application/modules/itemmanage/assets/images/medium/close-up-of-a-cup-of-tea2.jpg', 'application/modules/itemmanage/assets/images/small/close-up-of-a-cup-of-tea2.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:46:13', '2023-02-26 22:46:13', '2023-02-26 22:46:13', NULL, NULL),
(77, 22, 'Honey Milk Tea', 'application/modules/itemmanage/assets/images/close-up-of-a-cup-of-tea3.jpg', 'application/modules/itemmanage/assets/images/big/close-up-of-a-cup-of-tea3.jpg', 'application/modules/itemmanage/assets/images/medium/close-up-of-a-cup-of-tea3.jpg', 'application/modules/itemmanage/assets/images/small/close-up-of-a-cup-of-tea3.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:46:33', '2023-02-26 22:46:33', '2023-02-26 22:46:33', NULL, NULL),
(78, 22, 'Mint Tea', 'application/modules/itemmanage/assets/images/close-up-of-a-cup-of-tea4.jpg', 'application/modules/itemmanage/assets/images/big/close-up-of-a-cup-of-tea4.jpg', 'application/modules/itemmanage/assets/images/medium/close-up-of-a-cup-of-tea4.jpg', 'application/modules/itemmanage/assets/images/small/close-up-of-a-cup-of-tea4.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:46:53', '2023-02-26 22:46:53', '2023-02-26 22:46:53', NULL, NULL),
(79, 23, 'Regular Cold Coffee', 'application/modules/itemmanage/assets/images/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food5.jpg', 'application/modules/itemmanage/assets/images/big/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food5.jpg', 'application/modules/itemmanage/assets/images/medium/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food5.jpg', 'application/modules/itemmanage/assets/images/small/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food5.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:47:23', '2023-02-26 22:47:23', '2023-02-26 22:47:23', NULL, NULL),
(80, 23, 'Ice Eskimu Coffee', 'application/modules/itemmanage/assets/images/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food6.jpg', 'application/modules/itemmanage/assets/images/big/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food6.jpg', 'application/modules/itemmanage/assets/images/medium/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food6.jpg', 'application/modules/itemmanage/assets/images/small/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food6.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:47:49', '2023-02-26 22:47:49', '2023-02-26 22:47:49', NULL, NULL),
(81, 23, 'Ice Mocca', 'application/modules/itemmanage/assets/images/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food7.jpg', 'application/modules/itemmanage/assets/images/big/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food7.jpg', 'application/modules/itemmanage/assets/images/medium/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food7.jpg', 'application/modules/itemmanage/assets/images/small/HD-wallpaper-coffee-art-cup-cofee-marshmallows-drinks-food7.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:48:11', '2023-02-26 22:48:11', '2023-02-26 22:48:11', NULL, NULL),
(82, 24, 'Virgin Mojito', 'application/modules/itemmanage/assets/images/download1.jpeg', 'application/modules/itemmanage/assets/images/big/download1.jpeg', 'application/modules/itemmanage/assets/images/medium/download1.jpeg', 'application/modules/itemmanage/assets/images/small/download1.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:49:14', '2023-02-26 22:49:14', '2023-02-26 22:49:14', NULL, NULL),
(83, 24, 'Cindrella', 'application/modules/itemmanage/assets/images/download2.jpeg', 'application/modules/itemmanage/assets/images/big/download2.jpeg', 'application/modules/itemmanage/assets/images/medium/download2.jpeg', 'application/modules/itemmanage/assets/images/small/download2.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:49:32', '2023-02-26 22:49:32', '2023-02-26 22:49:32', NULL, NULL),
(84, 24, 'Blue Ocean', 'application/modules/itemmanage/assets/images/download3.jpeg', 'application/modules/itemmanage/assets/images/big/download3.jpeg', 'application/modules/itemmanage/assets/images/medium/download3.jpeg', 'application/modules/itemmanage/assets/images/small/download3.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:49:53', '2023-02-26 22:49:53', '2023-02-26 22:49:53', NULL, NULL),
(85, 24, 'Blue Monday', 'application/modules/itemmanage/assets/images/download4.jpeg', 'application/modules/itemmanage/assets/images/big/download4.jpeg', 'application/modules/itemmanage/assets/images/medium/download4.jpeg', 'application/modules/itemmanage/assets/images/small/download4.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:50:10', '2023-02-26 22:50:10', '2023-02-26 22:50:10', NULL, NULL),
(86, 24, 'Peace Deeper', 'application/modules/itemmanage/assets/images/download5.jpeg', 'application/modules/itemmanage/assets/images/big/download5.jpeg', 'application/modules/itemmanage/assets/images/medium/download5.jpeg', 'application/modules/itemmanage/assets/images/small/download5.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:50:37', '2023-02-26 22:50:37', '2023-02-26 22:50:37', NULL, NULL),
(87, 26, 'Orange Juice', 'application/modules/itemmanage/assets/images/istockphoto-155376375-612x612.jpg', 'application/modules/itemmanage/assets/images/big/istockphoto-155376375-612x612.jpg', 'application/modules/itemmanage/assets/images/medium/istockphoto-155376375-612x612.jpg', 'application/modules/itemmanage/assets/images/small/istockphoto-155376375-612x612.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:51:56', '2023-02-26 22:51:56', '2023-02-26 22:51:56', NULL, NULL),
(88, 26, 'Mango Juice', 'application/modules/itemmanage/assets/images/istockphoto-155376375-612x6121.jpg', 'application/modules/itemmanage/assets/images/big/istockphoto-155376375-612x6121.jpg', 'application/modules/itemmanage/assets/images/medium/istockphoto-155376375-612x6121.jpg', 'application/modules/itemmanage/assets/images/small/istockphoto-155376375-612x6121.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:52:19', '2023-02-26 22:52:19', '2023-02-26 22:52:19', NULL, NULL),
(89, 26, 'Watermelon Juice', 'application/modules/itemmanage/assets/images/istockphoto-155376375-612x6122.jpg', 'application/modules/itemmanage/assets/images/big/istockphoto-155376375-612x6122.jpg', 'application/modules/itemmanage/assets/images/medium/istockphoto-155376375-612x6122.jpg', 'application/modules/itemmanage/assets/images/small/istockphoto-155376375-612x6122.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:52:43', '2023-02-26 22:52:43', '2023-02-26 22:52:43', NULL, NULL);
INSERT INTO `item_foods` (`ProductsID`, `CategoryID`, `ProductName`, `ProductImage`, `bigthumb`, `medium_thumb`, `small_thumb`, `component`, `descrip`, `itemnotes`, `menutype`, `productvat`, `special`, `OffersRate`, `offerIsavailable`, `offerstartdate`, `offerendate`, `Position`, `kitchenid`, `isgroup`, `is_customqty`, `cookedtime`, `ProductsIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `DateInserted`, `DateUpdated`, `DateLocked`, `tax0`, `tax1`) VALUES
(90, 26, 'Papaya Juice', 'application/modules/itemmanage/assets/images/istockphoto-155376375-612x6123.jpg', 'application/modules/itemmanage/assets/images/big/istockphoto-155376375-612x6123.jpg', 'application/modules/itemmanage/assets/images/medium/istockphoto-155376375-612x6123.jpg', 'application/modules/itemmanage/assets/images/small/istockphoto-155376375-612x6123.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:53:07', '2023-02-26 22:53:07', '2023-02-26 22:53:07', NULL, NULL),
(91, 26, 'Pineapple Juice', 'application/modules/itemmanage/assets/images/istockphoto-155376375-612x6124.jpg', 'application/modules/itemmanage/assets/images/big/istockphoto-155376375-612x6124.jpg', 'application/modules/itemmanage/assets/images/medium/istockphoto-155376375-612x6124.jpg', 'application/modules/itemmanage/assets/images/small/istockphoto-155376375-612x6124.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:53:36', '2023-02-26 22:53:36', '2023-02-26 22:53:36', NULL, NULL),
(92, 26, 'Apple Juice', 'application/modules/itemmanage/assets/images/istockphoto-155376375-612x6125.jpg', 'application/modules/itemmanage/assets/images/big/istockphoto-155376375-612x6125.jpg', 'application/modules/itemmanage/assets/images/medium/istockphoto-155376375-612x6125.jpg', 'application/modules/itemmanage/assets/images/small/istockphoto-155376375-612x6125.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:54:01', '2023-02-26 22:54:01', '2023-02-26 22:54:01', NULL, NULL),
(93, 27, 'Lemonade', 'application/modules/itemmanage/assets/images/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats_com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e', 'application/modules/itemmanage/assets/images/big/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats_com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e4834a0.jpg', 'application/modules/itemmanage/assets/images/medium/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats_com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e4834a0.jpg', 'application/modules/itemmanage/assets/images/small/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats_com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e4834a0.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:54:50', '2023-02-26 22:54:50', '2023-02-26 22:54:50', NULL, NULL),
(94, 27, 'Classic Lemonade', 'application/modules/itemmanage/assets/images/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats_com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e', 'application/modules/itemmanage/assets/images/big/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats_com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e4834a01.jpg', 'application/modules/itemmanage/assets/images/medium/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats_com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e4834a01.jpg', 'application/modules/itemmanage/assets/images/small/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats_com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e4834a01.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:55:20', '2023-02-26 22:55:20', '2023-02-26 22:55:20', NULL, NULL),
(95, 27, 'Mint Lemonade', 'application/modules/itemmanage/assets/images/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats_com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e', 'application/modules/itemmanage/assets/images/big/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats_com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e4834a02.jpg', 'application/modules/itemmanage/assets/images/medium/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats_com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e4834a02.jpg', 'application/modules/itemmanage/assets/images/small/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats_com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e4834a02.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:55:47', '2023-02-26 22:55:47', '2023-02-26 22:55:47', NULL, NULL),
(96, 27, 'Candy Lemonade', 'application/modules/itemmanage/assets/images/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats_com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e', 'application/modules/itemmanage/assets/images/big/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats_com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e4834a03.jpg', 'application/modules/itemmanage/assets/images/medium/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats_com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e4834a03.jpg', 'application/modules/itemmanage/assets/images/small/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats_com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e4834a03.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:56:07', '2023-02-26 22:56:07', '2023-02-26 22:56:07', NULL, NULL),
(97, 28, 'Vanilla Milk Shake', 'application/modules/itemmanage/assets/images/Milkshake-Recipe-Card.jpg', 'application/modules/itemmanage/assets/images/big/Milkshake-Recipe-Card.jpg', 'application/modules/itemmanage/assets/images/medium/Milkshake-Recipe-Card.jpg', 'application/modules/itemmanage/assets/images/small/Milkshake-Recipe-Card.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:56:57', '2023-02-26 22:56:57', '2023-02-26 22:56:57', NULL, NULL),
(98, 28, 'Chocolate Milk Shake', 'application/modules/itemmanage/assets/images/Milkshake-Recipe-Card1.jpg', 'application/modules/itemmanage/assets/images/big/Milkshake-Recipe-Card1.jpg', 'application/modules/itemmanage/assets/images/medium/Milkshake-Recipe-Card1.jpg', 'application/modules/itemmanage/assets/images/small/Milkshake-Recipe-Card1.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:57:28', '2023-02-26 22:57:28', '2023-02-26 22:57:28', NULL, NULL),
(99, 28, 'Mango Milk Shake', 'application/modules/itemmanage/assets/images/Milkshake-Recipe-Card2.jpg', 'application/modules/itemmanage/assets/images/big/Milkshake-Recipe-Card2.jpg', 'application/modules/itemmanage/assets/images/medium/Milkshake-Recipe-Card2.jpg', 'application/modules/itemmanage/assets/images/small/Milkshake-Recipe-Card2.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:57:43', '2023-02-26 22:57:43', '2023-02-26 22:57:43', NULL, NULL),
(100, 28, 'Strawberry Milk Shake', 'application/modules/itemmanage/assets/images/Milkshake-Recipe-Card3.jpg', 'application/modules/itemmanage/assets/images/big/Milkshake-Recipe-Card3.jpg', 'application/modules/itemmanage/assets/images/medium/Milkshake-Recipe-Card3.jpg', 'application/modules/itemmanage/assets/images/small/Milkshake-Recipe-Card3.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:58:04', '2023-02-26 22:58:04', '2023-02-26 22:58:04', NULL, NULL),
(101, 28, 'Oreao Milk Shake', 'application/modules/itemmanage/assets/images/Milkshake-Recipe-Card4.jpg', 'application/modules/itemmanage/assets/images/big/Milkshake-Recipe-Card4.jpg', 'application/modules/itemmanage/assets/images/medium/Milkshake-Recipe-Card4.jpg', 'application/modules/itemmanage/assets/images/small/Milkshake-Recipe-Card4.jpg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:58:25', '2023-02-26 22:58:25', '2023-02-26 22:58:25', NULL, NULL),
(102, 29, 'Sweet Lassi', '', '', '', '', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:59:22', '2023-02-26 22:59:22', '2023-02-26 22:59:22', NULL, NULL),
(103, 29, 'Salt Lassi', '', '', '', '', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 22:59:46', '2023-02-26 22:59:46', '2023-02-26 22:59:46', NULL, NULL),
(104, 29, 'Kashmiri Lassi', '', '', '', '', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 23:00:06', '2023-02-26 23:00:06', '2023-02-26 23:00:06', NULL, NULL),
(105, 29, 'Papaya Lassi', '', '', '', '', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 23:00:22', '2023-02-26 23:00:22', '2023-02-26 23:00:22', NULL, NULL),
(106, 29, 'Mango Lassi', '', '', '', '', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 23:00:36', '2023-02-26 23:00:36', '2023-02-26 23:00:36', NULL, NULL),
(107, 30, 'Mineral Water', 'application/modules/itemmanage/assets/images/download_(1)3.jpeg', 'application/modules/itemmanage/assets/images/big/download_(1)3.jpeg', 'application/modules/itemmanage/assets/images/medium/download_(1)3.jpeg', 'application/modules/itemmanage/assets/images/small/download_(1)3.jpeg', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 23:02:59', '2023-02-26 23:02:59', '2023-02-26 23:02:59', NULL, NULL),
(108, 30, 'Soft Drinks Glass', '', '', '', '', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 1, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-02-26 23:03:31', '2023-02-26 23:03:31', '2023-02-26 23:03:31', NULL, NULL),
(109, 1, 'testfood', '', '', '', '', '', '', '', '', '0.000', 0, 0, 0, '0000-00-00', '0000-00-00', NULL, 11, NULL, NULL, '00:00:00', 1, 178, 178, 178, '2023-03-15 22:19:07', '2023-03-15 22:19:07', '2023-03-15 22:19:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_advertisement`
--

CREATE TABLE `job_advertisement` (
  `job_adv_id` int(10) UNSIGNED NOT NULL,
  `pos_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `adv_circular_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `circular_dadeline` varchar(30) CHARACTER SET latin1 NOT NULL,
  `adv_file` tinytext CHARACTER SET latin1 NOT NULL,
  `adv_details` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `phrase` varchar(100) NOT NULL,
  `english` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`) VALUES
(2, 'login', 'Login'),
(3, 'email', 'Email Address'),
(4, 'password', 'Password'),
(5, 'reset', 'Reset'),
(6, 'dashboard', 'Dashboard'),
(7, 'home', 'Home'),
(8, 'profile', 'Profile'),
(9, 'profile_setting', 'Profile Setting'),
(10, 'firstname', 'First Name'),
(11, 'lastname', 'Last Name'),
(12, 'about', 'About'),
(13, 'preview', 'Preview'),
(14, 'image', 'Image'),
(15, 'save', 'Save'),
(16, 'upload_successfully', 'Upload Successfully!'),
(17, 'user_added_successfully', 'User Added Successfully!'),
(18, 'please_try_again', 'Please Try Again...'),
(19, 'inbox_message', 'Inbox Messages'),
(20, 'sent_message', 'Sent Message'),
(21, 'message_details', 'Message Details'),
(22, 'new_message', 'New Message'),
(23, 'receiver_name', 'Receiver Name'),
(24, 'sender_name', 'Sender Name'),
(25, 'subject', 'Subject'),
(26, 'message', 'Message'),
(27, 'message_sent', 'Message Sent!'),
(28, 'ip_address', 'IP Address'),
(29, 'last_login', 'Last Login'),
(30, 'last_logout', 'Last Logout'),
(31, 'status', 'Status'),
(32, 'delete_successfully', 'Delete Successfully!'),
(33, 'send', 'Send'),
(34, 'date', 'Date'),
(35, 'action', 'Action'),
(36, 'sl_no', 'SL No.'),
(37, 'are_you_sure', 'Are You Sure ? '),
(38, 'application_setting', 'Application Setting'),
(39, 'application_title', 'Application Title'),
(40, 'address', 'Address'),
(41, 'phone', 'Phone'),
(42, 'favicon', 'Favicon'),
(43, 'logo', 'Logo'),
(44, 'language', 'Language'),
(45, 'left_to_right', 'Left To Right'),
(46, 'right_to_left', 'Right To Left'),
(47, 'footer_text', 'Footer Text'),
(48, 'site_align', 'Application Alignment'),
(49, 'welcome_back', 'Welcome Back!'),
(50, 'please_contact_with_admin', 'Please Contact With Admin'),
(51, 'incorrect_email_or_password', 'Incorrect Email/Password'),
(52, 'select_option', 'Select Option'),
(53, 'ftp_setting', 'Data Synchronize [FTP Setting]'),
(54, 'hostname', 'Host Name'),
(55, 'username', 'User Name'),
(56, 'ftp_port', 'FTP Port'),
(57, 'ftp_debug', 'FTP Debug'),
(58, 'project_root', 'Project Root'),
(59, 'update_successfully', 'Update Successfully'),
(60, 'save_successfully', 'Save Successfully!'),
(61, 'delete_successfully', 'Delete Successfully!'),
(62, 'internet_connection', 'Internet Connection'),
(63, 'ok', 'Okay'),
(64, 'not_available', 'Not Available'),
(65, 'available', 'Available'),
(66, 'outgoing_file', 'Outgoing File'),
(67, 'incoming_file', 'Incoming File'),
(68, 'data_synchronize', 'Data Synchronize'),
(69, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file! please check configuration'),
(70, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings'),
(71, 'download_successfully', 'Download Successfully'),
(72, 'unable_to_download_file_please_check_configuration', 'Unable to download file! please check configuration'),
(73, 'data_import_first', 'Data Import First'),
(74, 'data_import_successfully', 'Data Import Successfully!'),
(75, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to Import Data! Please Check Configuration / SQL File.'),
(76, 'download_data_from_server', 'Download Data from Server'),
(77, 'data_import_to_database', 'Data Import To Database'),
(79, 'data_upload_to_server', 'Data Upload to Server'),
(80, 'please_wait', 'Please Wait'),
(81, 'ooops_something_went_wrong', ' Ops Something Went Wrong...'),
(82, 'module_permission_list', 'Module Permission List'),
(83, 'user_permission', 'User Permission'),
(84, 'add_module_permission', 'Add Module Permission'),
(85, 'module_permission_added_successfully', 'Module Permission Added Successfully!'),
(86, 'update_module_permission', 'Update Module Permission'),
(87, 'download', 'Download'),
(88, 'module_name', 'Module Name'),
(89, 'create', 'Create'),
(90, 'read', 'Read'),
(91, 'update', 'Update'),
(92, 'delete', 'Delete'),
(93, 'module_list', 'Module List'),
(94, 'add_module', 'Add Module'),
(95, 'directory', 'Module Directory'),
(96, 'description', 'Description'),
(97, 'image_upload_successfully', 'Image Upload Successfully!'),
(98, 'module_added_successfully', 'Module Added Successfully'),
(99, 'inactive', 'Inactive'),
(100, 'active', 'Active'),
(101, 'user_list', 'User List'),
(102, 'see_all_message', 'See All Messages'),
(103, 'setting', 'Setting'),
(104, 'logout', 'Logout'),
(105, 'admin', 'Admin'),
(106, 'add_user', 'Add User'),
(107, 'user', 'User'),
(108, 'module', 'Module'),
(109, 'new', 'New'),
(110, 'inbox', 'Inbox'),
(111, 'sent', 'Sent'),
(112, 'synchronize', 'Synchronize'),
(113, 'data_synchronizer', 'Data Synchronizer'),
(114, 'module_permission', 'Module Permission'),
(115, 'backup_now', 'Backup Now!'),
(116, 'restore_now', 'Restore Now!'),
(117, 'backup_and_restore', 'Backup and Restore'),
(118, 'captcha', 'Captcha Word'),
(119, 'database_backup', 'Database Backup'),
(120, 'restore_successfully', 'Restore Successfully'),
(121, 'backup_successfully', 'Backup Successfully'),
(122, 'filename', 'File Name'),
(123, 'file_information', 'File Information'),
(124, 'size', 'Size'),
(125, 'backup_date', 'Backup Date'),
(126, 'overwrite', 'Overwrite'),
(127, 'invalid_file', 'Invalid File!'),
(128, 'invalid_module', 'Invalid Module'),
(129, 'remove_successfully', 'Remove Successfully!'),
(130, 'install', 'Install'),
(131, 'uninstall', 'Uninstall'),
(132, 'tables_are_not_available_in_database', 'Tables are not available in database.sql'),
(133, 'no_tables_are_registered_in_config', 'No tables are registered in config.php'),
(134, 'enquiry', 'Enquiry'),
(135, 'read_unread', 'Read/Unread'),
(136, 'enquiry_information', 'Enquiry Information'),
(137, 'user_agent', 'User Agent'),
(138, 'checked_by', 'Checked By'),
(139, 'new_enquiry', 'New Enquiry'),
(140, 'crud', 'Crud'),
(141, 'view', 'View'),
(142, 'name', 'Name'),
(143, 'add', 'Add'),
(144, 'ph', 'Phone'),
(145, 'cid', 'SL No'),
(146, 'view_atn', 'Attendance View'),
(147, 'mang', 'Employee Management'),
(148, 'designation', 'Designation'),
(149, 'test', 'Test'),
(150, 'sl', 'SL'),
(151, 'bdtask', 'BDTASK'),
(152, 'practice', 'Practice'),
(153, 'branch_name', 'Branch Name'),
(154, 'chairman_name', 'Chairman'),
(155, 'b_photo', 'Photo'),
(156, 'b_address', 'Address'),
(157, 'position', 'Designation'),
(158, 'advertisement', 'Advertisement'),
(159, 'position_name', 'Position'),
(160, 'position_details', 'Details'),
(161, 'circularprocess', 'Recruitment'),
(162, 'pos_id', 'Position'),
(163, 'adv_circular_date', 'Publish Date'),
(164, 'circular_dadeline', 'Deadline'),
(165, 'adv_file', 'Documents'),
(166, 'adv_details', 'Details'),
(167, 'attendance', 'Attendance'),
(168, 'employee', 'Employee'),
(169, 'emp_id', 'Employee Name'),
(170, 'sign_in', 'Sign In'),
(171, 'sign_out', 'Sign Out'),
(172, 'staytime', 'Stay Time'),
(173, 'abc', 'abc'),
(174, 'first_name', 'First Name'),
(175, 'last_name', 'Last Name'),
(176, 'alter_phone', 'Alternative Phone'),
(177, 'present_address', 'Present Address'),
(178, 'parmanent_address', 'Permanent Address'),
(179, 'candidateinfo', 'Candidate Info'),
(180, 'add_advertisement', 'Add Advertisement'),
(181, 'advertisement_list', 'Manage Advertisement '),
(182, 'candidate_basic_info', 'Candidate Information'),
(183, 'can_basicinfo_list', 'Manage Candidate'),
(184, 'add_canbasic_info', 'Add New Candidate'),
(185, 'candidate_education_info', 'Candidate Educational Info'),
(186, 'can_educationinfo_list', 'Candidate Edu Info List'),
(187, 'add_edu_info', 'Add Educational Info'),
(188, 'can_id', 'Candidate Id'),
(189, 'degree_name', 'Obtained Degree'),
(190, 'university_name', 'University'),
(191, 'cgp', 'CGPA'),
(192, 'comments', 'Comments'),
(193, 'signature', 'Signature'),
(194, 'candidate_workexperience', 'Candidate Work Experience'),
(195, 'can_workexperience_list', 'Work Experience List'),
(196, 'add_can_experience', 'Add Work Experience'),
(197, 'company_name', 'Company Name'),
(198, 'working_period', 'Working Period'),
(199, 'duties', 'Duties'),
(200, 'supervisor', 'Supervisor'),
(201, 'candidate_workexpe', 'Candidate Work Experience'),
(202, 'candidate_shortlist', 'Candidate Shortlist'),
(203, 'shortlist_view', 'Manage Shortlist'),
(204, 'add_shortlist', 'Add Shortlist'),
(205, 'date_of_shortlist', 'Shortlist Date'),
(206, 'interview_date', 'Interview Date'),
(207, 'submit', 'Submit'),
(208, 'candidate_id', 'Your ID'),
(209, 'job_adv_id', 'Job Position'),
(210, 'sequence', 'Sequence'),
(211, 'candidate_interview', 'Interview'),
(212, 'interview_list', 'Interview list'),
(213, 'add_interview', 'Add interview'),
(214, 'interviewer_id', 'Interviewer'),
(215, 'interview_marks', 'Viva Marks'),
(216, 'written_total_marks', 'Written Total Marks'),
(217, 'mcq_total_marks', 'MCQ Total Marks'),
(218, 'recommandation', 'Recommendation'),
(219, 'selection', 'Selection'),
(220, 'details', 'Details'),
(221, 'candidate_selection', 'Candidate Selection'),
(222, 'selection_list', 'Selection List'),
(223, 'add_selection', 'Add Selection'),
(224, 'employee_id', 'Employee Id'),
(225, 'position_id', '1'),
(226, 'selection_terms', 'Selection Terms'),
(227, 'total_marks', 'Total Marks'),
(228, 'photo', 'Picture'),
(229, 'your_id', 'Your ID'),
(230, 'change_image', 'Change Photo'),
(231, 'picture', 'Photograph'),
(232, 'ad', 'Add'),
(233, 'write_y_p_info', 'Write Your Personal Information'),
(234, 'emp_position', 'Employee Position'),
(235, 'add_pos', 'Add Position'),
(236, 'list_pos', 'List of Position'),
(237, 'emp_salary_stup', 'Employee Salary Setup'),
(238, 'add_salary_stup', 'Add Salary Setup'),
(239, 'list_salarystup', 'List of Salary Setup'),
(240, 'emp_sal_name', 'Salary Name'),
(241, 'emp_sal_type', 'Salary Type'),
(242, 'emp_performance', 'Employee Performance'),
(243, 'add_performance', 'Add Performance'),
(244, 'list_performance', 'List of Performance'),
(245, 'note', 'Note'),
(246, 'note_by', 'Note By'),
(247, 'number_of_star', 'Number of Star'),
(248, 'updated_by', 'Updated By'),
(249, 'emp_sal_payment', 'Manage Employee Salary'),
(250, 'add_payment', 'Add Payment'),
(251, 'list_payment', 'List of payment'),
(252, 'total_salary', 'Total Salary'),
(253, 'total_working_minutes', 'Working Hour'),
(254, 'payment_due', 'Payment Type'),
(255, 'payment_date', 'Date'),
(256, 'paid_by', 'Paid By'),
(257, 'view_employee_payment', 'Employee Payment List'),
(258, 'sal_payment_type', 'Salary Payment Type'),
(259, 'add_payment_type', 'Add Payment Type'),
(260, 'list_payment_type', 'List of Payment Type'),
(261, 'payment_period', 'Payment Period'),
(262, 'payment_type', 'Payment Type'),
(263, 'time', 'Punch Time'),
(264, 'shift', 'Shift'),
(265, 'location', 'Location'),
(266, 'logtype', 'Log Type'),
(267, 'branch', 'Location'),
(268, 'student', 'Students'),
(269, 'csv', 'CSV'),
(270, 'save_successfull', 'Your Data Save Successfully'),
(271, 'successfully_updated', 'Your Data Successfully Updated'),
(272, 'atn_form', 'Attendance Form'),
(273, 'atn_report', 'Attendance Report'),
(274, 'end_date', 'To'),
(275, 'start_date', 'From'),
(276, 'done', 'Done'),
(277, 'employee_id_se', 'Write Employee Id or name here '),
(278, 'attendance_repor', 'Attendance Report'),
(279, 'e_time', 'End Time'),
(280, 's_time', 'Start Time'),
(281, 'atn_datewiserer', 'Date Wise Report'),
(282, 'atn_report_id', 'Date And Id base Report'),
(283, 'atn_report_time', 'Date And Time report'),
(284, 'payroll', 'Payroll'),
(285, 'loan', 'Loan'),
(286, 'loan_grand', 'Grant Loan'),
(287, 'add_loan', 'Add Loan'),
(288, 'loan_list', 'List of Loan'),
(289, 'loan_details', 'Loan Details'),
(290, 'amount', 'Amount'),
(291, 'interest_rate', 'Interest Percentage'),
(292, 'installment_period', 'Installment Period'),
(293, 'repayment_amount', 'Repayment Total'),
(294, 'date_of_approve', 'Approved Date'),
(295, 'repayment_start_date', 'Repayment From'),
(296, 'permission_by', 'Permitted By'),
(297, 'grand', 'Grand'),
(298, 'installment', 'Installment'),
(299, 'loan_status', 'Status'),
(300, 'installment_period_m', 'Installment Period in Month'),
(301, 'successfully_inserted', 'Your loan Successfully Granted'),
(302, 'loan_installment', 'Loan Installment'),
(303, 'add_installment', 'Add Installment'),
(304, 'installment_list', 'List of Installment'),
(305, 'loan_id', 'Loan No'),
(306, 'installment_amount', 'Installment Amount'),
(307, 'payment', 'Payment'),
(308, 'received_by', 'Receiver'),
(309, 'installment_no', 'Install No'),
(310, 'notes', 'Notes'),
(311, 'paid', 'Paid'),
(312, 'loan_report', 'Loan Report'),
(313, 'e_r_id', 'Enter Your Employee ID'),
(314, 'leave', 'Leave'),
(315, 'add_leave', 'Add Leave'),
(316, 'list_leave', 'List of Leave'),
(317, 'dayname', 'Weekly Leave Day'),
(318, 'holiday', 'Holiday'),
(319, 'list_holiday', 'List of Holidays'),
(320, 'no_of_days', 'Number of Days'),
(321, 'holiday_name', 'Holiday Name'),
(322, 'set', 'Set'),
(323, 'tax', 'Tax'),
(324, 'tax_setup', 'Tax Setup'),
(325, 'add_tax_setup', 'Add Tax Setup'),
(326, 'list_tax_setup', 'List of Tax setup'),
(327, 'tax_collection', 'Tax collection'),
(328, 'start_amount', 'Start Amount'),
(329, 'end_amount', 'End Amount'),
(330, 'rate', 'Tax Rate'),
(331, 'date_start', 'Date Start'),
(332, 'amount_tax', 'Tax Amount'),
(333, 'collection_by', 'Collection By'),
(334, 'date_end', 'Date End'),
(335, 'income_net_period', 'Income  Net period'),
(336, 'default_amount', 'Default Amount'),
(337, 'add_sal_type', 'Add Salary Type'),
(338, 'list_sal_type', 'Salary Type List'),
(339, 'salary_type_setup', 'Salary Type Setup'),
(340, 'salary_setup', 'Salary Setup'),
(341, 'add_sal_setup', 'Add Salary Setup'),
(342, 'list_sal_setup', 'Salary Setup List'),
(343, 'salary_type_id', 'Salary Type'),
(344, 'salary_generate', 'Salary Generate'),
(345, 'add_sal_generate', 'Generate Now'),
(346, 'list_sal_generate', 'Generated Salary List'),
(347, 'gdate', 'Generate Date'),
(348, 'start_dates', 'Start Date'),
(349, 'generate', 'Generate '),
(350, 'successfully_saved_saletup', ' Set up Successful'),
(351, 's_date', 'Start Date'),
(352, 'e_date', 'End Date'),
(353, 'salary_payable', 'Payable Salary'),
(354, 'tax_manager', 'Tax'),
(355, 'generate_by', 'Generated By'),
(356, 'successfully_paid', 'Successfully Paid'),
(357, 'direct_empl', ' Employee'),
(358, 'add_emp_info', 'Add New Employee'),
(359, 'new_empl_pos', 'Add New Employee Position'),
(360, 'manage', 'Manage Designation'),
(361, 'ad_advertisement', 'ADD POSITION'),
(362, 'moduless', 'Modules'),
(363, 'next', 'Next'),
(364, 'finish', 'Finish'),
(365, 'request', 'Request'),
(366, 'successfully_saved', 'Your Data Successfully Saved'),
(367, 'sal_type', 'Salary Type'),
(368, 'sal_name', 'Salary Name'),
(369, 'leave_application', 'Leave Application'),
(370, 'apply_strt_date', 'Application Start Date'),
(371, 'apply_end_date', 'Application End date'),
(372, 'leave_aprv_strt_date', 'Approved Start Date'),
(373, 'leave_aprv_end_date', 'Approved End Date'),
(374, 'num_aprv_day', 'Approved Day'),
(375, 'reason', 'Reason'),
(376, 'approve_date', 'Approved Date'),
(377, 'leave_type', 'Leave Type'),
(378, 'apply_hard_copy', 'Application Hard Copy'),
(379, 'approved_by', 'Approved By'),
(380, 'notice', 'Notice Board'),
(381, 'noticeboard', 'Notice Board'),
(382, 'notice_descriptiion', 'Description'),
(383, 'notice_date', 'Notice Date'),
(384, 'notice_type', 'Notice Type'),
(385, 'notice_by', 'Notice By'),
(386, 'notice_attachment', 'Attachment'),
(387, 'account_name', 'Account Name'),
(388, 'account_type', 'Account Type'),
(389, 'account_id', 'Account Name'),
(390, 'transaction_description', 'Description'),
(391, 'payment_id', 'Payment'),
(392, 'create_by_id', 'Created By'),
(393, 'account', 'Account'),
(394, 'account_add', 'Add Account'),
(395, 'account_transaction', 'Transaction'),
(396, 'award', 'Award'),
(397, 'new_award', 'New Award'),
(398, 'award_name', 'Award Name'),
(399, 'aw_description', 'Award Description'),
(400, 'awr_gift_item', 'Gift Item'),
(401, 'awarded_by', 'Award By'),
(402, 'employee_name', 'Employee Name'),
(403, 'employee_list', 'Atn List'),
(404, 'department', 'Department'),
(405, 'department_name', 'Department Name '),
(406, 'clockout', 'Clock Out'),
(407, 'se_account_id', 'Select Account Name'),
(408, 'division', 'Division'),
(409, 'add_division', 'Add Division'),
(410, 'update_division', 'Update Division'),
(411, 'division_name', 'Division Name'),
(412, 'division_list', 'Manage Division '),
(413, 'designation_list', 'Designation List'),
(414, 'manage_designation', 'Manage Designation'),
(415, 'add_designation', 'Add Designation'),
(416, 'select_division', 'Select Division'),
(417, 'select_designation', 'Select Designation'),
(418, 'asset', 'Asset'),
(419, 'asset_type', 'Asset Type'),
(420, 'add_type', 'Add Type'),
(421, 'type_list', 'Type List'),
(422, 'type_name', 'Type Name'),
(423, 'select_type', 'Select Type'),
(424, 'equipment_name', 'Equipment Name'),
(425, 'model', 'Model'),
(426, 'serial_no', 'Serial No'),
(427, 'equipment', 'Equipment'),
(428, 'add_equipment', 'Add Equipment'),
(429, 'equipment_list', 'Equipment List'),
(430, 'type', 'Type'),
(431, 'equipment_maping', 'Equipment Mapping'),
(432, 'add_maping', 'Add Mapping'),
(433, 'maping_list', 'Mapping List'),
(434, 'update_equipment', 'Update Equipment'),
(435, 'select_employee', 'Select Employee'),
(436, 'select_equipment', 'Select Equipment'),
(437, 'basic_info', 'Basic Information'),
(438, 'middle_name', 'Middle Name'),
(439, 'state', 'State'),
(440, 'city', 'City'),
(441, 'zip_code', 'Zip Code'),
(442, 'maiden_name', 'Maiden Name'),
(443, 'add_employee', 'Add Employee'),
(444, 'manage_employee', 'Manage Employee'),
(445, 'employee_update_form', 'Employee Update Form'),
(446, 'what_you_search', 'What You Search'),
(447, 'search', 'Search'),
(448, 'duty_type', 'Duty Type'),
(449, 'hire_date', 'Hire Date'),
(450, 'original_h_date', 'Original Hire Date'),
(451, 'voluntary_termination', 'Voluntary Termination'),
(452, 'termination_reason', 'Termination Reason'),
(453, 'termination_date', 'Termination Date'),
(454, 're_hire_date', 'Re Hire Date'),
(455, 'rate_type', 'Rate Type'),
(456, 'pay_frequency', 'Pay Frequency'),
(457, 'pay_frequency_txt', 'Pay Frequency Text'),
(458, 'hourly_rate2', 'Hourly Rate2'),
(459, 'hourly_rate3', 'Hourly Rate3'),
(460, 'home_department', 'Home Department'),
(461, 'department_text', 'Department Text'),
(462, 'benifit_class_code', 'Benefit Class code'),
(463, 'benifit_desc', 'Benefit Description'),
(464, 'benifit_acc_date', 'Benefit Accrual Date'),
(465, 'benifit_sta', 'Benefit Status'),
(466, 'super_visor_name', 'Supervisor Name'),
(467, 'is_super_visor', 'Is Supervisor'),
(468, 'supervisor_report', 'Supervisor Report'),
(469, 'dob', 'Date of Birth'),
(470, 'gender', 'Gender'),
(471, 'marital_stats', 'Marital Status'),
(472, 'ethnic_group', 'Ethnic Group'),
(473, 'eeo_class_gp', 'EEO Class'),
(474, 'ssn', 'SSN'),
(475, 'work_in_state', 'Work in State'),
(476, 'live_in_state', 'Live in State'),
(477, 'home_email', 'Home Email'),
(478, 'business_email', 'Business Email'),
(479, 'home_phone', 'Home Phone'),
(480, 'business_phone', 'Business Phone'),
(481, 'cell_phone', 'Cell Phone'),
(482, 'emerg_contct', 'Emergency Contact'),
(483, 'emerg_home_phone', 'Emergency Home Phone'),
(484, 'emrg_w_phone', 'Emergency Work Phone'),
(485, 'emer_con_rela', 'Emergency Contact Relation'),
(486, 'alt_em_contct', 'Alter Emergency Contact'),
(487, 'alt_emg_h_phone', 'Alt Emergency Home Phone'),
(488, 'alt_emg_w_phone', 'Alt Emergency  Work Phone'),
(489, 'reports', 'Reports'),
(490, 'employee_reports', 'Employee Reports'),
(491, 'demographic_report', 'Demographic Report'),
(492, 'posting_report', 'Positional Report'),
(493, 'custom_report', 'Custom Report'),
(494, 'benifit_report', 'Benefit Report'),
(495, 'demographic_info', 'Demographical Information'),
(496, 'positional_info', 'Positional Info'),
(497, 'assets_info', 'Assets Information'),
(498, 'custom_field', 'Custom Field'),
(499, 'custom_value', 'Custom Data'),
(500, 'adhoc_report', 'Adhoc Report'),
(501, 'asset_assignment', 'Asset Assignment'),
(502, 'assign_asset', 'Assign Assets'),
(503, 'assign_list', 'Assign List'),
(504, 'update_assign', 'Update Assign'),
(505, 'citizenship', 'Citizenship'),
(506, 'class_sta', 'Class status'),
(507, 'class_acc_date', 'Class Accrual date'),
(508, 'class_descript', 'Class Description'),
(509, 'class_code', 'Class Code'),
(510, 'return_asset', 'Return Assets'),
(511, 'dept_id', 'Department ID'),
(512, 'parent_id', 'Parent ID'),
(513, 'equipment_id', 'Equipment ID'),
(514, 'issue_date', 'Issue Date'),
(515, 'damarage_desc', 'Damarage Description'),
(516, 'return_date', 'Return Date'),
(517, 'is_assign', 'Is Assign'),
(518, 'emp_his_id', 'Employee History ID'),
(519, 'damarage_descript', 'Damage Description'),
(520, 'return', 'Return'),
(521, 'return_successfull', 'Return Successful'),
(522, 'return_list', 'Return List'),
(523, 'custom_data', 'Custom Data'),
(524, 'passing_year', 'Passing Year'),
(525, 'is_admin', 'Is Admin'),
(526, 'zip', 'Zip Code'),
(527, 'original_hire_date', 'Original Hire Date'),
(528, 'rehire_date', 'Rehire Date'),
(529, 'class_code_desc', 'Class Code Description'),
(530, 'class_status', 'Class Status'),
(531, 'super_visor_id', 'Supervisor ID'),
(532, 'marital_status', 'Marital Status'),
(533, 'emrg_h_phone', 'Emergency Home Phone'),
(534, 'emgr_contct_relation', 'Emergency Contact Relation'),
(535, 'id', 'ID'),
(536, 'type_id', 'Equipment Type'),
(537, 'custom_id', 'Custom ID'),
(538, 'custom_data_type', 'Custom Data Type'),
(539, 'role_permission', 'Role Permission'),
(540, 'permission_setup', 'Permission Setup'),
(541, 'add_role', 'Add Role'),
(542, 'role_list', 'Role List'),
(543, 'user_access_role', 'User Access Role'),
(544, 'menu_item_list', 'Menu Item List'),
(545, 'ins_menu_for_application', 'Ins Menu  For Application'),
(546, 'menu_title', 'Menu Title'),
(547, 'page_url', 'Page URL'),
(548, 'parent_menu', 'Parent Menu'),
(549, 'role', 'Role'),
(550, 'role_name', 'Role Name'),
(551, 'single_checkin', 'Single Check In'),
(552, 'bulk_checkin', 'Bulk Check In'),
(553, 'manage_attendance', 'Manage Attendance'),
(554, 'attendance_list', 'Attendance List'),
(555, 'checkin', 'Check In'),
(556, 'checkout', 'Check Out'),
(557, 'stay', 'Stay'),
(558, 'attendance_report', 'Attendance Report'),
(559, 'work_hour', 'Work Hour'),
(560, 'cancel', 'Cancel'),
(561, 'confirm_clock', 'Confirm Checkout'),
(562, 'add_attendance', 'Add Attendance'),
(563, 'upload_csv', 'Upload CSV'),
(564, 'import_attendance', 'Import Attendance'),
(565, 'manage_account', 'Manage Account'),
(566, 'add_account', 'Add Account'),
(567, 'add_new_account', 'Add New Account'),
(568, 'account_details', 'Account Details'),
(569, 'manage_transaction', 'Manage Transaction'),
(570, 'add_expence', 'Add Experience'),
(571, 'add_income', 'Add Income'),
(572, 'return_now', 'Return Now !!'),
(573, 'manage_award', 'Manage Award'),
(574, 'add_new_award', 'Add New Award'),
(575, 'personal_information', 'Personal Information'),
(576, 'educational_information', 'Educational Information'),
(577, 'past_experience', 'Past Experience'),
(578, 'basic_information', 'Basic Information'),
(579, 'result', 'Result'),
(580, 'institute_name', 'Institute Name'),
(581, 'education', 'Education'),
(582, 'manage_shortlist', 'Manage Short List'),
(583, 'manage_interview', 'Manage Interview'),
(584, 'manage_selection', 'Manage Selection'),
(585, 'add_new_dept', 'Add New Department'),
(586, 'manage_dept', 'Manage Department'),
(587, 'successfully_checkout', 'Checkout Successful !'),
(588, 'grant_loan', 'Grant Loan'),
(589, 'successfully_installed', 'Successfully Installed'),
(590, 'total_loan', 'Total Loan'),
(591, 'total_amount', 'Total Amount'),
(592, 'filter', 'Filter'),
(593, 'weekly_holiday', 'Weekly Holiday'),
(594, 'manage_application', 'Manage Application'),
(595, 'add_application', 'Add Application'),
(596, 'manage_holiday', 'Manage Holiday'),
(597, 'add_more_holiday', 'Add More Holiday'),
(598, 'manage_weekly_holiday', 'Manage Weekly Holiday'),
(599, 'add_weekly_holiday', 'Add Weekly Holiday'),
(600, 'manage_granted_loan', 'Manage Granted Loan'),
(601, 'manage_installment', 'Manage Installment'),
(602, 'add_new_notice', 'Add New Notice'),
(603, 'manage_notice', 'Manage Notice'),
(604, 'salary_type', 'Salary Type'),
(605, 'manage_salary_generate', 'Manage Salary Generate'),
(606, 'generate_now', 'Generate Now'),
(607, 'add_salary_setup', 'Add Salary Setup'),
(608, 'manage_salary_setup', 'Manage Salary Setup'),
(609, 'add_salary_type', 'Add Salary Type'),
(610, 'manage_salary_type', 'Manage Salary Type'),
(611, 'manage_tax_setup', 'Manage Tax Setup'),
(612, 'setup_tax', 'Setup Tax'),
(613, 'add_more', 'Add More'),
(614, 'tax_rate', 'Tax Rate'),
(615, 'no', 'No'),
(616, 'setup', 'Setup'),
(617, 'biographicalinfo', 'Bio-Graphical Information'),
(618, 'positional_information', 'Positional Information'),
(620, 'benifits', 'Benefits'),
(621, 'others_leave_application', 'Others Leave'),
(622, 'add_leave_type', 'Add Leave Type'),
(623, 'others_leave', 'Apply Leave'),
(624, 'number_of_leave_days', 'Number of Leave Days'),
(625, 'itemmanage', 'Food Management'),
(626, 'manage_category', 'Manage Category'),
(627, 'add_category', 'Add Category'),
(628, 'category_list', 'Category List'),
(629, 'manage_food', 'Manage Food'),
(630, 'add_food', 'Add Food'),
(631, 'food_list', 'Food List'),
(632, 'category_name', 'Category Name'),
(633, 'food_name', 'Food Name'),
(634, 'category_subtitle', 'Category Subtitle'),
(635, 'update_category', 'Update Category'),
(636, 'update_fooditem', 'Update Food Item'),
(713, 'food_list', 'Food List'),
(714, 'food_name', 'Food Name'),
(715, 'add_category', 'Add Category'),
(716, 'add_food', 'Add Food'),
(717, 'category_name', 'Category Name'),
(718, 'category_list', 'Category List'),
(719, 'itemmanage', 'Food Management'),
(720, 'manage_category', 'Manage Category'),
(721, 'manage_food', 'Manage Food'),
(722, 'offerdate', 'Offer Start Date'),
(723, 'manage_addons', 'Manage Add-ons'),
(724, 'add_adons', 'Add Add-ons'),
(725, 'menu_addons', 'Add-ons Menu'),
(726, 'addons_list', 'Add-ons List'),
(727, 'assign_adons', 'Add-ons Assign'),
(728, 'assign_adons_list', 'Add-ons Assign List'),
(729, 'update_adons', 'Update Add-ons'),
(730, 'item_name', 'Food Name'),
(731, 'price', 'Price'),
(732, 'offerenddate', 'Offer End Date'),
(733, 'units', 'Unit and Ingredients'),
(734, 'manage_unitmeasurement', 'Unit Measurement'),
(735, 'unit_list', 'Unit Measurement List'),
(736, 'unit_add', 'Add Unit'),
(737, 'unit_update', 'Unit Update'),
(738, 'unit_name', 'Unit Name'),
(739, 'manage_ingradient', 'Manage Ingredients'),
(740, 'ingradient_list', 'Ingredient List'),
(741, 'add_ingredient', 'Add Ingredient'),
(742, 'ingredient_name', 'Ingredient Name'),
(743, 'unit_short_name', 'Short Name'),
(744, 'update_ingredient', 'Update Ingredient'),
(745, 'component', 'Components'),
(746, 'vat_tax', 'Vat'),
(747, 'addons_name', 'Add-ons Name '),
(748, 'food_varient', 'Food Variant'),
(749, 'food_availablity', 'Food Availability'),
(750, 'add_varient', 'Add Variant'),
(751, 'varient_name', 'Variant Name'),
(752, 'variant_list', 'Variant List'),
(753, 'variant_edit', 'Update Variant'),
(754, 'food_availablelist', 'Food Available List'),
(755, 'add_availablity', 'Add Available Day & Time'),
(756, 'edit_availablity', 'Update Available Day & Time'),
(757, 'available_day', 'Available Day'),
(758, 'available_time', 'Available Time'),
(759, 'membership_management', 'Membership Management'),
(760, 'membership_list', 'Membership List'),
(761, 'membership_name', 'Membership Name'),
(762, 'discount', 'Discount'),
(763, 'other_facilities', 'Other Facilities'),
(764, 'membership_add', 'Add Membership'),
(765, 'membership_edit', 'Update Membership'),
(766, 'payment_setting', 'Payment Method Setting'),
(767, 'paymentmethod_list', 'Payment Method List'),
(768, 'payment_add', 'Add Payment Method'),
(769, 'payment_edit', 'Update Payment Method'),
(770, 'payment_name', 'Payment Method Name'),
(771, 'shipping_setting', 'Shipping Method Setting'),
(772, 'shipping_list', 'Shipping Method List'),
(773, 'shipping_name', 'Shipping Method Name'),
(774, 'shipping_add', 'Add Shipping Method'),
(775, 'shipping_edit', 'Update Shipping Method'),
(776, 'shippingrate', 'Shipping Rate'),
(777, 'supplier_manage', 'Supplier Manage'),
(778, 'supplier_name', 'Supplier Name'),
(779, 'supplier_list', 'Supplier List'),
(780, 'mobile', 'Mobile'),
(781, 'address', 'Address'),
(782, 'supplier_add', 'Add Supplier'),
(783, 'supplier_edit', 'Update Supplier'),
(784, 'purchase_item', 'Purchase Item'),
(785, 'purchase', 'Purchase Manage'),
(786, 'purchase_list', 'Purchase List'),
(787, 'purchase_add', 'Add Purchase'),
(788, 'purchase_edit', 'Update Purchase'),
(789, 'quantity', 'Quantity'),
(790, 'supplier_information', 'Supplier Information'),
(791, 'add_new_order', 'Add New Order'),
(792, 'pending_order', 'Pending Order'),
(793, 'processing_order', 'Processing Order'),
(794, 'cancel_order', 'Cancel Order'),
(795, 'complete_order', 'Complete Order'),
(796, 'pos_invoice', 'POS Invoice'),
(797, 'ordermanage', 'Manage Order'),
(798, 'table_manage', 'Manage Table'),
(799, 'table_edit', 'Update Table'),
(800, 'table_list', 'Table List'),
(801, 'table_name', 'Table Name'),
(802, 'customer_type', 'Customer Type'),
(803, 'customertype_list', 'Customer Type List'),
(804, 'production', 'Production'),
(805, 'add_table', 'Table Add'),
(806, 'table_add', 'Add Table'),
(807, 'add_new_table', 'Add Table'),
(808, 'order_list', 'Order List'),
(809, 'currency', 'Currency'),
(810, 'currency_list', 'Currency List'),
(811, 'currency_name', 'Currency Name'),
(812, 'currency_add', 'Add Currency'),
(813, 'currency_edit', 'Update Currency'),
(814, 'currency_icon', 'Currency Icon'),
(815, 'currency_rate', 'Conversion Rate'),
(816, 'report', 'Report'),
(817, 'purchase_report', 'Purchase Report'),
(818, 'purchase_report_ingredient', 'Stock Report (Kitchen)'),
(819, 'stock_report', 'Stock Report'),
(820, 'sell_report', 'Sales Report'),
(821, 'stock_report_product_wise', 'Stock Report (Food Items)'),
(822, 'accounts', 'Accounts'),
(823, 'c_o_a', 'Chart of Accounts'),
(824, 'debit_voucher', 'Debit Voucher'),
(825, 'credit_voucher', 'Credit Voucher'),
(826, 'contra_voucher', 'Contra Voucher'),
(827, 'journal_voucher', 'Journal Voucher'),
(828, 'voucher_approval', 'Voucher Approval'),
(829, 'account_report', 'Accounts Report'),
(830, 'voucher_report', 'Voucher Report'),
(831, 'cash_book', 'Cash Book'),
(832, 'bank_book', 'Bank Book'),
(833, 'general_ledger', 'General Ledger'),
(834, 'trial_balance', 'Trial Balance'),
(835, 'profit_loss', 'Profit Loss'),
(836, 'cash_flow', 'Cash Flow'),
(837, 'coa_print', 'COA Print'),
(838, 'in_quantity', 'In Quantity'),
(839, 'out_quantity', 'Out Quantity'),
(840, 'stock', 'Stock'),
(841, 'find', 'Find'),
(842, 'from_date', 'From'),
(843, 'to_date', 'To'),
(844, 'approved', 'Approved'),
(845, 'total_ammount', 'Total Amount'),
(846, 'total_purchase', 'Total Purchase'),
(847, 'total_sale', 'Total Sale'),
(848, 'csv_file_informaion', 'CSV File Information'),
(849, 'import_product_csv', 'Import product (CSV)'),
(850, 'set_productionunit', 'Set Production Unit'),
(851, 'production_set_list', 'Production Set List'),
(852, 'production_add', 'Add Production'),
(853, 'production_list', 'Production List'),
(854, 'billing_from', 'Billing From'),
(855, 'invoice', 'Invoice'),
(856, 'invoice_no', 'Invoice No'),
(857, 'billing_date', 'Billing Date'),
(858, 'billing_to', 'Billing To'),
(859, 'reservation', 'Reservation'),
(860, 'take_reservation', 'Take A Reservation'),
(861, 'update_table', 'Table Update'),
(862, 'reserve_time', 'Reservation Table'),
(863, 'reservation_table', 'Add Booking'),
(864, 'table_setting', 'Table Setting'),
(865, 'capacity', 'Capacity'),
(866, 'icon', 'Icon'),
(867, 'purchase_return', 'Purchase Return'),
(868, 'purchase_qty', 'Purchase Qty'),
(869, 'return_qty', 'Return Qty'),
(870, 'total', 'Total'),
(871, 'select', 'Select'),
(872, 'return_invoice', 'Return Invoice'),
(873, 'invoice_view', 'View Invoice'),
(874, 'grand_total', 'Grand Total'),
(875, 'supplier', 'Supplier'),
(876, 'po_no', 'Invoice No'),
(877, 'grant', 'Grant'),
(878, 'hrm', 'Human Resource'),
(879, 'departmentfrm', 'Add Department'),
(880, 'benefits', 'Benefits'),
(881, 'class', 'Class'),
(882, 'biographical_info', 'Biographical Info'),
(883, 'additional_address', 'Additional Address'),
(884, 'custom', 'Custom'),
(885, 'pay_now', 'Pay Now ??'),
(886, 'paymentmethod_setup', 'Payment Setup'),
(887, 'add_paymentsetup', 'Add New Payment Setup'),
(888, 'edit_setup', 'Update Setup'),
(889, 'marchantid', 'Marchant ID'),
(890, 'order_successfully', 'Your Payment was Completed!!!.'),
(891, 'order_fail', 'Payment Incomplete!!!'),
(892, 'voucher_no', 'Voucher No'),
(893, 'remark', 'Remark'),
(894, 'code', 'Code'),
(895, 'debit', 'Debit'),
(896, 'credit', 'Credit'),
(897, 'template_name', 'Template Name '),
(898, 'sms_template', 'SMS Template'),
(899, 'sms_template_warning', 'Please Use '),
(900, 'userid', 'User ID'),
(901, 'from', 'From'),
(902, 'opening_cash_and_equivalent', 'Opening Cash & Equivalent'),
(903, 'amount_in_Dollar', 'Amount In Dollar'),
(904, 'pre_balance', 'Pre Balance'),
(905, 'current_balance', 'Current Balance'),
(906, 'with_details', 'With Details'),
(907, 'credit_account_head', 'Credit Account Head'),
(908, 'gl_head', 'GL Head'),
(909, 'transaction_head', 'Transaction Head'),
(910, 'confirm', 'Confirm'),
(911, 's_rate', 'Rate'),
(912, 'web_setting', 'Web Setting'),
(913, 'banner_setting', 'Banner Setting'),
(914, 'menu_setting', 'Menu Setting'),
(915, 'widget_setting', 'Widget Setting'),
(916, 'add_banner', 'Add Banner'),
(917, 'bannertype', 'Add Banner Type'),
(918, 'banner_list', 'Banner List'),
(919, 'title', 'Title'),
(920, 'subtitle', 'Sub Title'),
(921, 'banner_type', 'Banner Type'),
(922, 'link_url', 'Link URL'),
(923, 'banner_edit', 'Banner Update'),
(924, 'menu_name', 'Menu Name'),
(925, 'menu_url', 'Menu Slug'),
(926, 'sub_menu', 'Sub Menu'),
(927, 'add_menu', 'Add Menu'),
(928, 'parent_menu', 'Parent Menu'),
(929, 'widget_name', 'Widget Name'),
(930, 'widget_title', 'Widget Title'),
(931, 'widget_desc', 'Description'),
(932, 'add_widget', 'Add New'),
(933, 'common_setting', 'Common Setting'),
(934, 'bannersize', 'Banner Size'),
(935, 'width', 'Width'),
(936, 'height', 'Height'),
(937, 'exclusive', 'Exclusive'),
(938, 'best_Offers', 'Best Offer'),
(939, 'invalid_size', 'Invalid Size'),
(940, 'confirm_reservation', 'Confirm Reservation'),
(941, 'food_details', 'Food Details'),
(942, 'email_setting', 'Email Setting'),
(943, 'contact_email_list', 'Contact List'),
(944, 'subscribelist', 'Subscribe List'),
(945, 'contact_send', 'Your Contact Information Send Successfully.'),
(946, 'couponlist', 'Coupon List'),
(947, 'add_coupon', 'Add Coupon'),
(948, 'coupon_Code', 'Coupon Code'),
(949, 'coupon_rate', 'Coupon Value'),
(950, 'coupon_startdate', 'Start Date'),
(951, 'coupon_enddate', 'End Date'),
(952, 'coupon_edit', 'Update Coupon'),
(953, 'rating', 'Rating '),
(954, 'add_rating', 'Add Rating'),
(955, 'reviewtxt', 'Review Text'),
(956, 'rating_edit', 'Rating Update'),
(957, 'customer_rating', 'Customer Rating'),
(958, 'country_list', 'Country List'),
(959, 'countryname', 'Country Name'),
(960, 'add_country', 'Add Country'),
(961, 'edit_country', 'Update Country'),
(962, 'add_state', 'Add State'),
(963, 'edit_state', 'State Update'),
(964, 'state', 'State'),
(965, 'city', 'City'),
(966, 'add_city', 'Add City'),
(967, 'edit_city', 'City Update'),
(968, 'country', 'Country'),
(969, 'state_list', 'State List'),
(970, 'city_list', 'All City'),
(971, 'server_setting', 'App Setting'),
(972, 'netip', 'Your Local Host Full URL'),
(973, 'ip_port', 'Your Online URL'),
(974, 'onlinebdname', 'Online Database Name'),
(975, 'dbuser', 'Database User'),
(976, 'dbpassword', 'Database Password'),
(977, 'dbhost', 'Database Host Name'),
(978, 'social_setting', 'Social Setting'),
(979, 'url_link', 'URL'),
(980, 'sicon', 'Select Icon'),
(981, 'ord_failed', 'Order Failed!!!'),
(982, 'failed_msg', 'Order not placed due to some reason. Please Try Again!!!. Thank You !!!'),
(983, 'ord_succ', 'Order Placed Successfully!!!'),
(984, 'succ_smg', 'Are you Sure to Print This Invoice????'),
(985, 'no_order_run', 'No Order Running'),
(986, 'thirdpartycustomer_list', 'Third-Party Customers'),
(987, '3rd_customer_list', 'Third-Party Customers List'),
(988, '3rdcompany_name', 'Company Name'),
(989, 'add_3rdparty_comapny', 'Add New Company'),
(990, 'update_3rdparty', 'Update Company'),
(991, 'commision', 'Commission'),
(992, 'list_of_card_terminal', 'Card Terminal List'),
(993, 'add_new_terminal', 'Add New Terminal'),
(994, 'update_terminal', 'Update Terminal'),
(995, 'card_terminal_name', 'Card Terminal Name'),
(996, 'list_of_bank', 'Bank List'),
(997, 'add_bank', 'Add New Bank'),
(998, 'update_bank', 'Update Bank'),
(999, 'bank_name', 'Bank Name'),
(1000, 'sell_report_filter', 'Sale Report Filtering'),
(1001, 'sms_setting', 'SMS Setting'),
(1002, 'sms_configuration', 'SMS Configuration'),
(1003, 'sms_temp', 'SMS Template'),
(1004, 'candidate_name', 'Candidate Name'),
(1005, 'assign1_role', 'Assign Role'),
(1006, 'customer_list', 'Customer List'),
(1007, 'customer_name', 'Customer Name'),
(1008, 'update_ord', 'Update Order'),
(1009, 'final_report', 'Final Report'),
(1010, 'ehrm', 'HRM'),
(1011, 'add_expense_item', 'Add Expense Item'),
(1012, 'manage_expense_item', 'Manage Expense Item'),
(1013, 'add_expense', 'Add Expense'),
(1014, 'manage_expense', 'Manage Expense'),
(1015, 'expense_statement', 'Expense Statement'),
(1016, 'expense_type', 'Expense Type'),
(1017, 'expense_item_name', 'Expense Item Name'),
(1018, 'expense', 'Expense'),
(1020, 'signature_pic', 'Signature Picture'),
(1021, 'branch1', 'Branch'),
(1022, 'ac_no', 'A/C Number'),
(1023, 'ac_name', 'A/C Name'),
(1024, 'bank_transaction', 'Bank Transaction'),
(1025, 'bank', 'Bank'),
(1026, 'withdraw_deposite_id', 'Withdraw / Deposit ID'),
(1027, 'bank_ledger', 'Bank Ledger'),
(1028, 'note_name', 'Note Name'),
(1029, 'balance', 'Balance'),
(1030, 'previous_balance', 'Previous Credit Balance'),
(1031, 'manage_supplier_ledger', 'Manage supplier Ledger'),
(1032, 'supplier_ledger', 'Supplier Ledger'),
(1033, 'print', 'Print'),
(1034, 'select_supplier', 'Select Supplier'),
(1035, 'deposite_id', 'Deposit ID'),
(1036, 'print_date', 'Print Date'),
(1037, 'manage_bank', 'Manage Bank'),
(1038, 'add_new_bank', 'Add New Bank'),
(1039, 'bank_list', 'Bank List'),
(1040, 'bank_edit', 'Bank Edit'),
(1041, 'debit_plus', 'Debit (+)'),
(1042, 'credit_minus', 'Credit (-)'),
(1043, 'withdraw_deposite_id', 'Withdraw / Deposit ID'),
(1044, 'cash_adjustment', 'Cash Adjustment'),
(1045, 'adjustment_type', 'Adjustment Type'),
(1046, 'supplier_payment', 'Supplier Payment'),
(1047, 'prepared_by', 'Prepared By'),
(1048, 'authorized_signature', 'Authorized Signature'),
(1049, 'chairman', 'Chairman'),
(1050, 'kitchen_dashboard', 'Kitchen Dashboard'),
(1051, 'counter_dashboard', 'Counter Dashboard'),
(1052, 'nw_order', 'New Order'),
(1053, 'ongoingorder', 'On Going Order'),
(1054, 'tdayorder', 'Today Order'),
(1055, 'onlineord', 'Online Order '),
(1056, 'table', 'Table'),
(1057, 'waiter', 'Waiter'),
(1058, 'del_company', 'Delivery Company'),
(1059, 'cookedtime', 'Cooking Time'),
(1060, 'ord_num', 'Order Number'),
(1061, 'cmplt', 'Complete'),
(1062, 'sl_payment', 'Select Your Payment Method'),
(1063, 'paymd', 'Payment Method'),
(1064, 'crd_terminal', 'Card Terminal'),
(1065, 'sl_bank', 'Select Bank'),
(1066, 'lstdigit', 'Last 4 Digit'),
(1067, 'cuspayment', 'Customer Payment'),
(1068, 'cng_amount', 'Changes Amount'),
(1069, 'pay_print', 'Pay Now & Print Invoice'),
(1070, 'payn', 'Pay Now'),
(1071, 'ordid', 'Order ID'),
(1072, 'can_reason', 'Cancel Reason'),
(1073, 'can_ord', 'Cancel Order'),
(1074, 'close', 'Close'),
(1075, 'add_customer', 'Add Customer'),
(1076, 'fav_addesrr', 'Favorite Address'),
(1077, 'tabltno', 'Table No'),
(1078, 'ordate', 'Order Date'),
(1079, 'payment_status', 'Payment Status'),
(1080, 'ordtcoun', 'Order Time Countdown Board'),
(1081, 'remtime', 'Remaining Time'),
(1082, 'ordtime', 'Order Time'),
(1083, 'ord', 'Order'),
(1084, 'tok', 'Token'),
(1085, 'view_ord', 'View Order'),
(1086, 'fdready', 'Food Ready'),
(1087, 'fdnready', 'Food Not Ready'),
(1088, 'foodrfs', 'Food is Ready for Served!!'),
(1089, 'foodnrfs', 'Food Not Ready for Served'),
(1090, 'ordready', 'Order Ready'),
(1091, 'sele_by_date', 'Sale By Date'),
(1092, 'withdetails', 'With Details'),
(1093, 'topeneqv', 'Total Opening Cash & Cash Equivalent'),
(1094, 'cashopen', 'Cashflow from Operating Activities'),
(1095, 'payact', 'Payment for Other Operating Activities'),
(1096, 'cash_gand_lie', 'Cash generated from Operating Activities before Changing in Operating Assets & Liabilities'),
(1097, 'casfactive', 'Cashflow from Non Operating Activities'),
(1098, 'cashnonlia', 'Cash generated from Non Operating Activities before Changing in Operating Assets & Liabilities'),
(1099, 'incdre', 'Increase/Decrease in Operating Assets & Liabilities'),
(1100, 'Tincdre', 'Total Increase/Decrease'),
(1101, 'netopenactv', 'Net Cash From Operating/Non Operating Activities'),
(1102, 'cfact', 'Cash Flow from Investing Activities'),
(1103, 'ncuia', 'Net Cash Used Investing Activities'),
(1104, 'cfffa', 'Cash Flow from Financing Activities'),
(1105, 'netcufa', 'Net  Cash Used Financing Activities'),
(1106, 'ncio', 'Net Cash Inflow/Outflow'),
(1107, 'pflos', 'Profit Loss'),
(1108, 'clcEq', 'Closing Cash & Cash Equivalent:'),
(1109, 'TcccE', 'Total Closing Cash & Cash Equivalent'),
(1110, 'pp_by', 'Prepared By'),
(1111, 'act', 'Accounts'),
(1112, 'ausig', 'Authorized Signature'),
(1113, 'particls', 'Particulars'),
(1114, 'back', 'Back'),
(1115, 'bk_vouchar', 'Bank Book Voucher'),
(1116, 'errorajdata', 'Error get data from ajax'),
(1117, 'reach_limit', 'You have reached the limit of adding'),
(1118, 'inpt', 'inputs'),
(1119, 'cantdel', 'There only one row you can\'t delete.'),
(1120, 'slsuplier', 'Select Supplier'),
(1121, 'ptype', 'Payment Type'),
(1122, 'casp', 'Cash Payment'),
(1123, 'bnkp', 'Bank Payment'),
(1124, 'slbank', 'Select Bank'),
(1125, 'cscrv', 'Cash Credit Voucher'),
(1126, 'ac_code', 'Account Code'),
(1127, 'ac_head', 'Account Head'),
(1128, 'iword', 'In word'),
(1129, 'ac_office', 'Accounts Officer'),
(1130, 'latestv', 'Latest version'),
(1131, 'after19', 'Auto Update Feature working On  after 1.9'),
(1132, 'crver', 'Current version'),
(1133, 'notesupdate', 'note: strongly recommended to backup your <b>SOURCE FILE</b> and <b>DATABASE</b> before update.'),
(1134, 'noupdates', 'No Update available'),
(1135, 'lic_pur_key', 'License/Purchase key'),
(1136, 'lifeord', 'Lifetime Orders'),
(1137, 'tdaysell', 'Today Sale'),
(1138, 'tcustomer', 'Total Customer'),
(1139, 'tdeliv', 'Total Delivered'),
(1140, 'treserv', 'Total Reservation'),
(1141, 'latestord', 'Latest Order'),
(1142, 'latest_reser', 'Latest Reservation'),
(1143, 'ord_number', 'Order No.'),
(1144, 'latestolorder', 'Latest Online Order'),
(1145, 'monsalamntorder', 'Monthly Sales Amount and Order'),
(1146, 'onlineofline', 'Online Vs Offline Order & Sales'),
(1147, 'pending_ord', 'Pending Order'),
(1148, 'onlinesamnt', 'Online Sale Amount'),
(1149, 'onlineordnum', 'Online Order Number'),
(1150, 'offsalamnt', 'Offline Sale Amount'),
(1151, 'offlordnum', 'Offline Order Number'),
(1152, 'saleamnt', 'Sale Amount'),
(1153, 'ordnumb', 'Order Number'),
(1154, 'store_name', 'Store Name'),
(1155, 'opent', 'Available On'),
(1156, 'closeTime', 'Closing Time'),
(1157, 'sldistype', 'Select Discount Type'),
(1158, 'distype', 'Discount Type'),
(1159, 'percent', 'Percent'),
(1160, 'sl_se_ch_ty', 'Select Service Charge Type'),
(1161, 'vatset', 'VAT Setting(%)'),
(1162, 'mindeltime', 'Min. Delivery Time'),
(1163, 'dateformat', 'Date Format'),
(1164, 'sedateformat', 'Seletet Date Format'),
(1165, 'add_menu_item', 'Add Menu Item'),
(1166, 'menu_title', 'Menu Title'),
(1167, 'can_create', 'Can Create'),
(1168, 'can_read', 'Can Read'),
(1169, 'can_edit', 'Can Edit'),
(1170, 'can_delete', 'Can Delete'),
(1171, 'smsrankgateway', 'To get <b>50</b> free SMS from smsrank.com click'),
(1172, 'ranktext', ' and register in registration section click Already Envato user and put your envato purchase key and product id  after registration put your username and password into the password and user name field this form.'),
(1173, 'managementsection', 'This Section is Use Only for Store Management.'),
(1174, 'width', 'Width'),
(1175, 'protocal', 'Protocol'),
(1176, 'mailpath', 'Mail Path'),
(1177, 'Mail_type', 'Mail Type'),
(1178, 'smtp_host', 'SMTP Host'),
(1179, 'smtp_post', 'SMTP Port'),
(1180, 'sender_email', 'Sender Email'),
(1181, 'smtp_password', 'SMTP Password'),
(1183, 'powered_by', 'Powered By Text'),
(1184, 'item_information', 'Item Information'),
(1185, 'size', 'Size'),
(1186, 'qty', 'Quantity'),
(1187, 'addons_name', 'Add-ons Name '),
(1188, 'addons_qty', 'Add-ons Qty'),
(1189, 'add_to_cart', 'add to cart'),
(1190, 'item', 'Item'),
(1191, 'unit_price', 'Unit Price'),
(1192, 'total_price', 'Total Price'),
(1193, 'order_status', 'Order Status'),
(1194, 'served', 'Served'),
(1195, 'cancel_reason', 'Cancel Reason'),
(1196, 'customer_order', 'Customer Notes'),
(1197, 'customerpicktime', 'Customer Pick-up Date and time'),
(1198, 'subtotal', 'Subtotal'),
(1199, 'service_chrg', 'Service Charge'),
(1200, 'customer_paid_amount', 'Customer Paid Amount'),
(1201, 'change_due', 'Change Due'),
(1202, 'total_due', 'Total Due'),
(1203, 'powerbybdtask', 'Powered  By: BDTASK, www.bdtask.com'),
(1204, 'recept', 'Receipt  No'),
(1205, 'orderno', 'Order No.'),
(1206, 'ref_page', 'Refresh Page'),
(1207, 'orderid', 'Order ID'),
(1208, 'all', 'All'),
(1209, 'vat_tax1', 'Vat/Tax'),
(1210, 'ord_uodate_success', 'Order Update Successfully!!!'),
(1211, 'do_print_token', 'Do you Want to Print Token No.???'),
(1212, 'req_failed', 'Request Failed, Please check your code and try again!'),
(1213, 'ord_places', 'Order Placed Successfully'),
(1214, 'do_print_in', 'Do you Want to Print Invoice???'),
(1215, 'ord_complte', 'Order Completed'),
(1216, 'ord_com_sucs', 'Order Completed Successfully'),
(1217, 'token_no', 'Token NO'),
(1218, 'qr-order', 'QR Order'),
(1219, 'cuschange', 'Customer Change'),
(1220, 'order_successfully_placed', 'Order Has Been Placed Successfully!'),
(1221, 'kitchen_setting', 'kitchen Setting'),
(1222, 'kitchen_name', 'Kitchen Name'),
(1223, 'kitchen_user_assign', 'Assign Kitchen User'),
(1224, 'kitchen_list', 'Kitchen List'),
(1225, 'add_kitchen', 'Add Kitchen'),
(1226, 'kitchen_assign', 'Kitchen Assign'),
(1227, 'kitchen_edit', 'Kitchen Edit'),
(1228, 'please_try_again_userassign', 'This user is already assign in this kitchen'),
(1229, 'select_kitchen', 'Select Kitchen'),
(1230, 'memberid', 'Member ID'),
(1231, 'member_name', 'Member Name'),
(1232, 'add_member', 'Add New Member'),
(1233, 'update_member', 'Update Member'),
(1234, 'member_list', 'Member List'),
(1236, 'meminfo', 'Member Manage'),
(1237, 'blocked', 'Blocked'),
(1238, 'memberid_exist', 'Member ID Already Exists. Please Try Another.'),
(1239, 'add_new_payment_type', 'Add New Payment Method'),
(1240, 'sell_report_items', 'Items Sales Report'),
(1241, 'sell_report_waiters', 'Waiters Sales Report'),
(1242, 'sell_report_delvirytype', 'Delivery Type Sales Report'),
(1243, 'sell_report_casher', 'Sale Report Cashier'),
(1244, 'ready_all_ietm', 'All Item Ready'),
(1245, 'unpaid_sell', 'Unpaid Sale'),
(1246, 'kitchen_sell', 'Kitchen Sales Report'),
(1247, 'order_total', 'Total Order '),
(1248, 'scharge_report', 'Service Charge Report '),
(1249, 'seo_setting', 'SEO Setting'),
(1250, 'seo_title', 'Title'),
(1251, 'seo_keyword', 'Keyword'),
(1252, 'seo_description', 'Description'),
(1253, 'pos_setting', 'POS Setting'),
(1257, 'buy_now', 'Buy Now'),
(1264, 'purchase_key', 'Purchase Key'),
(1271, 'kitchen_status', 'Kitchen Status'),
(1278, 'habittrack', 'Customer Habit List'),
(1279, 'review_rating', 'Review & Rating'),
(1280, 'pos_setting', 'POS Setting'),
(1285, 'please_wait', 'Please Wait'),
(1286, 'month', 'Month'),
(1287, 'sl_option', 'Select Option'),
(1288, 'sl_product', 'Search Product'),
(1289, 'quickorder', 'Quick Order'),
(1290, 'placeorder', 'Place Order'),
(1291, 'type_slorder', 'Type and Select Order'),
(1292, 'mergeord', 'Merge Order'),
(1293, 'Processingod', 'Processing...'),
(1294, 'sLengthMenu', 'Display _MENU_ records per page'),
(1295, 'sInfo', 'Showing _START_ to _END_ of _TOTAL_ entries'),
(1296, 'sInfoEmpty', 'Showing 0 to 0 of 0 entries'),
(1297, 'sInfoFiltered', '(Filtered from _MAX_ Total Records)'),
(1298, 'sLoadingRecords', 'Loading...'),
(1299, 'sZeroRecords', 'Nothing found - sorry'),
(1300, 'sEmptyTable', 'No Data Available in Table'),
(1301, 'sFirst', 'First'),
(1302, 'sLast', 'Last'),
(1303, 'sPrevious', 'Previous'),
(1304, 'sNext', 'Next'),
(1305, 'sSortAscending', 'Activate to sort column ascending'),
(1306, 'sSortDescending', 'Activate to Sort Column Descending'),
(1307, '_sign', 'Show %d Rows'),
(1308, '_0sign', 'No Row Selected'),
(1309, '_1sign', '1 Line Selected'),
(1310, 'copy', 'Copy'),
(1312, 'excel', 'Excel'),
(1313, 'pdf', 'Pdf'),
(1314, 'colvis', 'Column Visibility'),
(1316, 'no_orderfound', 'No Order Found!!!'),
(1317, 'prepared', 'Prepared'),
(1318, 'accept', 'Accept'),
(1319, 'reject', 'Reject'),
(1320, 'ready', 'Ready'),
(1321, 'proccessing', 'Processing'),
(1322, 'kitnotacpt', 'Kitchen Not Accept'),
(1425, 'person', 'Person'),
(1426, 'before_time', 'Running Time'),
(1427, 'select_this_table', 'Select This Table'),
(1428, 'seat', 'Seat'),
(1429, 'seat_time', 'Time'),
(1430, '+', 'Add'),
(1431, 'clear', 'Clear'),
(1432, 'no_customer', 'No Customer'),
(1433, 'table_map', 'Table Map'),
(1434, 'add', 'Add'),
(1435, 'itemsincart', 'Item(s) in Cart'),
(1436, 'view_cart', 'View Cart'),
(1437, 'morderlist', 'My Order List'),
(1438, 'edit', 'Edit'),
(1439, 'foodde', 'Food Details'),
(1440, 'cartlist', 'Cart List'),
(1441, 'subtotal', 'Subtotal'),
(1442, 'ordnote', 'Order Notes'),
(1443, 'upsummery', 'Update Summery'),
(1444, 'upsumlist', 'Update Summery List'),
(1445, 'mkpayment', 'Make Payment'),
(1446, 'foodnote', 'Food Note'),
(1447, 'addnotesi', 'Add Note'),
(1448, 'thirdparty_orderid', 'Third-party Order ID'),
(1456, 'themes', 'Themes'),
(1457, 'menu_type', 'Menu Type'),
(1458, 'add_menu_type', 'Add Menu Type'),
(1459, 'menutype_edit', 'Menu Type Edit'),
(1460, 'menu_type_name', 'Menu Type'),
(1461, 'storetime', 'Manage Store Time'),
(1462, 'day_name', 'Day'),
(1463, 'saturday', 'Saturday'),
(1464, 'sunday', 'Sunday'),
(1465, 'monday', 'Monday'),
(1466, 'tuesday', 'Tuesday'),
(1467, 'wednesday', 'Wednesday'),
(1468, 'thursday', 'Thursday'),
(1469, 'friday', 'Friday'),
(1470, 'footer_logo', 'Footer Logo'),
(1471, 'contact_us', 'Contact Us'),
(1472, 'opening_time', 'Available On'),
(1473, 'ourstore', 'Our Store'),
(1474, 'call_reservation', 'Call for Reservations'),
(1475, 'item_available', 'Items Available'),
(1479, 'membership_card', 'Bar Code'),
(1480, 'barcode_start', 'From Barcode'),
(1481, 'barcode_end', 'To Barcode'),
(1494, 'commission', 'Commission'),
(1495, 'sale_by_table', 'Sale By Table'),
(1496, 'stock_limit', 'Re-Stock Level'),
(1497, 'ingredients', 'Ingredients'),
(1498, 'stock_out_ingredients', 'Stock Out Ingredients'),
(1499, 'office_addres1', 'Office Address'),
(1500, 'call_us', 'Call Us'),
(1501, 'email_us', 'Email Us'),
(1502, 'upload_theme', 'Upload Theme'),
(1503, 'discount_type', 'Discount Type'),
(1504, 'confirm_password', 'Confirm Password'),
(1559, 'wastemangment', 'Waste Management'),
(1590, 'add_group_item', 'Add Group Item'),
(1591, 'update_group_item', 'Update Group Item'),
(1592, 'production_setting', 'Production Setting'),
(1593, 'select_auto', 'Select auto Production'),
(1594, 'split', 'Split'),
(1595, 'tinvat', 'TIN OR VAT NUM.'),
(1596, 'bill', 'Bill'),
(1597, 'checkin', 'Check In'),
(1598, 'checkout', 'Check Out'),
(1599, 'totalpayment', 'Total payment'),
(1600, 'thanssuport', 'Thank You for Your Support'),
(1601, 'thanks_you', 'Thank you very much'),
(1602, 'opening_balance', 'Opening Balance'),
(1603, 'transaction_date', 'Date'),
(1604, 'voucher_type', 'Voucher Type'),
(1605, 'particulars', 'Head Name'),
(1606, 'total_empolyee', 'Total Employee'),
(1607, 'apply_day', 'Days'),
(1608, 'loan_no', 'Loan No.'),
(1609, 'add_floor', 'Add Floor'),
(1610, 'floor_name', 'Floor Name'),
(1611, 'edit_floor', 'Edit Floor'),
(1612, 'floor_list', 'Floor List'),
(1613, 'floor_select', 'Floor Select');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES
(1614, 'add_to_cart_more', 'Add Multiple Variant'),
(1615, 'kitchen_printers', 'Kitchen printer Setting'),
(1616, 'printer_list', 'Printer List'),
(1617, 'add_printer', 'Add Printer'),
(1618, 'ip_port', 'Your Online URL'),
(1625, 'counter_list', 'Counter List'),
(1626, 'add_counter', 'Add Counter'),
(1627, 'edit_counter', 'Edit Counter'),
(1628, 'counter_no', 'Counter Number'),
(1629, 'add_opening_balance', 'Add Opening Balance'),
(1630, 'add_closing_balance', 'Add Closing Balance'),
(1632, 'sell_report_cashregister', 'Cash Register Report'),
(1633, 'closing_balance', 'Closing Balance'),
(1634, 'factory_reset', 'Factory Reset'),
(1635, 'fresettext', 'Note: Strongly recommended to backup your SOURCE file and DATABASE before resetting because all transactional data will be cleared after running the factory reset.'),
(1636, 'bill_by', 'Bill By'),
(1640, 'type_table', 'Type and Select Table'),
(1643, 'number_of_tax', 'Number of tax'),
(1645, 'tax_name', 'Tax Name'),
(1646, 'tax_name', 'Tax Name'),
(1648, 'sound_setting', 'Sound Setting'),
(1649, 'is_sound', 'Is Sound Enable'),
(1650, 'upload_notify', 'Upload Notification Sound'),
(1651, 'upload_order', 'Upload order Add Sound'),
(1655, 'room_list', 'Room List'),
(1656, 'add_room', 'Add Room'),
(1657, 'room_no', 'Room No'),
(1658, 'room_qr', 'All Room QR'),
(1659, 'restaurant_closed', 'Restaurant is Closed!!'),
(1660, 'closed_msg', 'You order Only when restaurant is open. Our opening and closing Time is:'),
(1661, 'privactp', 'Privacy Policy'),
(1662, 'terms_condition', 'Terms & conditions'),
(1663, 'refundp', 'Refund Policies'),
(1664, 'reservation_on_off', 'Reservation On Off'),
(1665, 'unavailable_day', 'Unavailable Day'),
(1666, 'unavaildate', 'Unavailable Date'),
(1667, 'add_unavailablity', 'Add Unavailability'),
(1668, 'edit_unavailablity', 'Edit Unavailability'),
(1669, 'unavailable_time', 'Unavailable Time'),
(1670, 'max_reserveperson', 'Max Reserve Person'),
(1671, 'reservasetting', 'Reservation Setting'),
(1672, 'webon', 'Website ON'),
(1673, 'weboff', 'Website Off'),
(1674, 'webdisable', 'Web site ON/Off'),
(1675, 'placr_setting', 'Place order Setting'),
(1676, 'quick_ord', 'Quick Order Setting'),
(1677, 'shippingtime', 'Shipping Date & Time'),
(1678, 'search_food_item', 'Search Food Item'),
(1679, 'search_category', 'Search Category'),
(1680, 'check_availablity', 'Check Availability'),
(1681, 'subscribe_paragraph', 'Subscribe to Receive Our Weekly Promotion'),
(1682, 'shipping_method', 'Shipping Method'),
(1683, 'please_select_shipping_method', 'Please Select Shipping Method'),
(1684, 'autoupdate', 'Auto Update'),
(1685, 'coa_head', 'COA Head'),
(1686, 'apps_addons', 'Apps Add-ons'),
(1687, 'download_apps_playstore', 'Please Download Apps on Playstore'),
(1688, 'kitchen_app', 'Kitchen App'),
(1689, 'waiter_app', 'Waiter App'),
(1690, 'customer_app', 'Customer App'),
(1691, 'if_you_need_the_above_all_apps', 'If you need the above all apps, please feel free to contact us.'),
(1692, 'do_you_want_proceed', 'Do You Want to Proceed?'),
(1693, 'is_offer', 'Offer'),
(1694, 'is_special', 'Special'),
(1695, 'is_custome_quantity', 'Custom Quantity'),
(1696, 'kitchenitemsell', 'Kitchen Sell'),
(1697, 'due_marge', 'Due Merge'),
(1698, 'book_table', 'Book Table'),
(1699, 'reserve_table', 'Reserve Table'),
(1700, 'see_more', 'See More'),
(1701, 'food_name', 'Food Name'),
(1702, 'category', 'Category'),
(1703, 'search', 'Search'),
(1704, 'read_more', 'Read more'),
(1705, 'item_has_been_successfully_added', 'Item has been successfully added'),
(1706, 'add_to_cart', 'add to cart'),
(1707, 'view_full_menu', 'View Full Menu'),
(1708, 'home', 'Home'),
(1709, 'subscribe_to_newsletter', 'Subscribe to Newsletter'),
(1710, 'subscribe', 'subscribe'),
(1711, 'get_directions', 'Get Directions'),
(1712, 'teams_of_use', 'Teams of use'),
(1713, 'privacy_policy', 'Privacy Policy'),
(1714, 'contact', 'Contact'),
(1715, 'please_enter_your_email', 'Please Enter Your email !!'),
(1716, 'please_enter_valid_email', 'Please enter a valid Email'),
(1717, 'thanks_for_subscription', 'Thanks for Subscription'),
(1718, 'note_added', 'Note Added'),
(1719, 'posting_failed', 'Posting failed'),
(1720, 'our_service_is_closed_on_this_date_and_time', 'Our service is Closed on this date and time !!!'),
(1721, 'reservation_time_closed_try_later', 'Reservation Time is closed!! Please try later.'),
(1722, 'select_date', 'Please select date'),
(1723, 'select_time', 'Please select Time'),
(1724, 'enter_number_of_people', 'Please enter the number of people'),
(1725, 'select_after_hour_current_time', 'Please select after 1 hour to Current time'),
(1726, 'no_free_seat_to_the_reservation', 'Currently, there is no free seat to the reservation'),
(1727, 'search_topics_or_keywords', 'Search topics or keywords'),
(1728, 'no_data_found', 'No Data Found'),
(1729, 'please_wait', 'Please Wait'),
(1730, 'reservation_contact', 'Contact No.'),
(1731, 'reservation_time', 'Expected Time'),
(1732, 'reservation_date', 'Expected Date'),
(1733, 'reservation_person', 'Total Person'),
(1734, 'deal_of_the_day', 'Deal of the day'),
(1735, 'cart', 'Cart'),
(1736, 'unavailable', 'Unavailable'),
(1737, 'write_comments', 'Write Your Comments'),
(1738, 'get_in_touch', 'Get In Touch'),
(1739, 'forgot_password', 'Forgot Password'),
(1740, 'shopping_details_information_msg', 'If you have shopped with us before, please enter your details in the boxes below.'),
(1741, 'remember_me', 'Remember Me'),
(1742, 'or', 'OR'),
(1743, 'register', 'Register'),
(1744, 'enter_your_phone_or_email', 'Please enter your Phone or Email.'),
(1745, 'password_not_empty', 'Password Not Empty.'),
(1746, 'failed_login_msg', 'Failed Login: Check your Email and password!'),
(1747, 'email_not_registered_msg', 'Failed: Email has not been registered yet.!!!'),
(1748, 'have_been_sent_email', 'Success: We have been sent an email to this'),
(1749, 'check_your_new_password', 'Email Address. Please check your New Password..!!!'),
(1750, 'profile_picture', 'Profile Picture'),
(1751, 'my_profile', 'My Profile'),
(1752, 'my_reservation', 'My Reservation'),
(1753, 'profile_update', 'Profile Update'),
(1754, 'name', 'Name'),
(1755, 'returning_customer', 'Returning customer?'),
(1756, 'click_login', 'Click here to login'),
(1757, 'checkout_msg', 'If you have shopped with us before, please enter your details in the boxes below. If you are a new customer, please proceed to the Billing & Shipping section.'),
(1758, 'username_or_email', 'Username or Email'),
(1759, 'billing_address', 'Billing Address'),
(1760, 'select_country', 'Select Country'),
(1761, 'select_state', 'Select State'),
(1762, 'town_city', 'Town / City'),
(1763, 'select_city', 'Select City'),
(1764, 'street_address', 'Street Address'),
(1765, 'postcode_zip', 'Postcode / ZIP'),
(1766, 'create_account', 'Create an Account?'),
(1767, 'create_account_password', 'Create account password'),
(1768, 'shipping_different_address', 'Ship to a Different Address?'),
(1769, 'your_order', 'Your Order'),
(1770, 'product', 'Product'),
(1771, 'total_vat', 'Total VAT'),
(1772, 'coupon_discount', 'Coupon Discount'),
(1773, 'service', 'Service'),
(1774, 'tag', 'Tag'),
(1775, 'review', 'Review'),
(1776, 'average_user_rating', 'Average User Rating'),
(1777, 'rating_breakdown', 'Rating Breakdown'),
(1778, 'complete_success', '100% Complete (success)'),
(1779, '80_complete_primary', '80% Complete (primary)'),
(1780, '60_complete_info', '60% Complete (info)'),
(1781, '40_complete_warning', '40% Complete (warning)'),
(1782, '20_complete_danger', '20% Complete (danger)'),
(1783, 'rate_it', 'Rate It'),
(1784, 'french_chicken_burger_tomato_sauce', 'French Chicken Burger With Hot tomato Sauce'),
(1785, 'review_submit', 'Review Submit'),
(1786, 'related_items', 'Related Items'),
(1787, 'pickup', 'Pickup'),
(1788, 'dine_in', 'Dine-in'),
(1789, 'enter_coupon_code', 'Enter coupon code'),
(1790, '00_15_min', '00:15 MIN'),
(1791, 'go_to_checkout', 'Go to Checkout'),
(1798, 'timezone', 'Time Zome'),
(1799, 'discountrate', 'Discount Rate'),
(1800, 'vat', 'Vat'),
(1801, 'loan_issue_id', 'Loan Issue ID'),
(1802, 'repayment', 'Re-payment'),
(1803, 'loan_report_details', 'Loan Details'),
(1804, 'balance_sheet', 'Balance Sheet'),
(1805, 'purdate', 'Purchase Date'),
(1806, 'expdate', 'Expiry Date'),
(1807, 'parent_cat', 'Parent Category'),
(1808, 'set_productioncost', 'Set Production Cost Per Unit'),
(1809, 'set_productionunit', 'Set Production Unit'),
(1810, 'production_set', 'Production Set'),
(1811, 'production_set_for', 'Production Set For'),
(1812, 'serving_unit', 'Serving Unit'),
(1813, 'purdate', 'Purchase Date'),
(1814, 'expdate', 'Expiry Date'),
(1815, 'parent_cat', 'Parent Category'),
(1816, 'set_productioncost', 'Set Production Cost Per Unit'),
(1817, 'set_productionunit', 'Set Production Unit'),
(1818, 'production_set', 'Production Set'),
(1819, 'production_set_for', 'Production Set For'),
(1820, 'serving_unit', 'Serving Unit'),
(1821, 'kit_dashoard_setting', 'Kitchen Dashboard Setting'),
(1822, 'kot_reftime', 'Kitchen Refresh time In Second'),
(1823, 'bulk_upload', 'Bulk Upload'),
(1824, 'upload_food_csv', 'Upload Food Item csv'),
(2202, 'appcartempty', 'Your Cart is empty!!!.Please add some food.'),
(2203, 'apporderempty', 'You Order List is empty!!! Please Place A Order First!!!'),
(2239, 'number_of_tax', 'Number of tax'),
(2241, 'tax_name', 'Tax Name'),
(2242, 'tax_name', 'Tax Name'),
(2244, 'topselleingitem', 'Top selling Item'),
(2247, 'number_of_tax', 'Number of tax'),
(2249, 'tax_name', 'Tax Name'),
(2250, 'tax_name', 'Tax Name'),
(2252, 'logininfo', 'Login Info'),
(2253, 'newuser', 'New User'),
(2254, 'orloginwith', 'or login with'),
(2255, 'registerinfo', 'Registration Info'),
(2256, 'register_txt', 'If you have shopped with us before, please enter your details in the boxes below.'),
(2257, 'customerinfo', 'Customer Info'),
(2258, 'delvtype', 'Delivery Type'),
(2259, 'delv_date', 'Delivery Date'),
(2260, 'delvtime', 'Delivery Time'),
(2261, 'yourcart', 'Your Cart'),
(2262, 'items', 'items'),
(2263, 'delivarycrg', 'Delivery charge'),
(2264, 'offercodegift', 'Offer code / gift card code'),
(2265, 'apply', 'Apply'),
(2266, 'proceedtocart', 'Proceed to Checkout'),
(2267, 'delv_address', 'Delivary address List'),
(2268, 'create_address', 'Create Address'),
(2269, 'seeallmenu', 'See all menu'),
(2270, 'sendymsg', 'Send Your Message'),
(2271, 'send_us', 'Send Us Message'),
(2297, 'number_of_tax', 'Number of tax'),
(2299, 'tax_name', 'Reg No'),
(2300, 'tax_name', 'Tax Name');

-- --------------------------------------------------------

--
-- Table structure for table `leave_apply`
--

CREATE TABLE `leave_apply` (
  `leave_appl_id` int(11) NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  `leave_type_id` int(2) NOT NULL,
  `apply_strt_date` varchar(20) NOT NULL,
  `apply_end_date` varchar(20) NOT NULL,
  `apply_day` int(11) NOT NULL,
  `leave_aprv_strt_date` varchar(20) NOT NULL,
  `leave_aprv_end_date` varchar(20) NOT NULL,
  `num_aprv_day` varchar(15) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `apply_hard_copy` text DEFAULT NULL,
  `apply_date` varchar(20) NOT NULL,
  `approve_date` varchar(20) NOT NULL,
  `approved_by` varchar(30) NOT NULL,
  `leave_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE `leave_type` (
  `leave_type_id` int(2) NOT NULL,
  `leave_type` varchar(50) NOT NULL,
  `leave_days` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loan_installment`
--

CREATE TABLE `loan_installment` (
  `loan_inst_id` int(11) NOT NULL,
  `employee_id` varchar(21) CHARACTER SET latin1 NOT NULL,
  `loan_id` varchar(21) CHARACTER SET latin1 NOT NULL,
  `installment_amount` varchar(20) CHARACTER SET latin1 NOT NULL,
  `payment` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date` varchar(20) CHARACTER SET latin1 NOT NULL,
  `received_by` varchar(20) CHARACTER SET latin1 NOT NULL,
  `installment_no` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '1',
  `notes` varchar(80) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `marital_info`
--

CREATE TABLE `marital_info` (
  `id` int(11) NOT NULL,
  `marital_sta` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marital_info`
--

INSERT INTO `marital_info` (`id`, `marital_sta`) VALUES
(1, 'Single'),
(2, 'Married'),
(3, 'Divorced'),
(4, 'Widowed'),
(5, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` int(11) NOT NULL,
  `membership_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `discount` float NOT NULL,
  `other_facilities` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_date` date NOT NULL,
  `startpoint` int(11) NOT NULL,
  `endpoint` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `membership_name`, `discount`, `other_facilities`, `create_by`, `create_date`, `update_by`, `update_date`, `startpoint`, `endpoint`) VALUES
(1, 'Normal User', 0, '', 2, '2018-11-07', 2, '2018-11-07', 0, 0),
(2, 'Premium Member', 0, '', 1, '2020-11-04', 0, '0000-00-00', 250, 999),
(3, 'VIP', 0, '', 1, '2020-11-04', 0, '0000-00-00', 1001, 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `menu_add_on`
--

CREATE TABLE `menu_add_on` (
  `row_id` bigint(20) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `add_on_id` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_permission`
--

CREATE TABLE `module_permission` (
  `id` int(11) NOT NULL,
  `fk_module_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module_purchase_key`
--

CREATE TABLE `module_purchase_key` (
  `id` int(11) NOT NULL,
  `identity` varchar(250) DEFAULT NULL,
  `purchase_key` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `multipay_bill`
--

CREATE TABLE `multipay_bill` (
  `multipay_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `multipayid` varchar(30) DEFAULT NULL,
  `payment_type_id` int(11) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_menu`
--

CREATE TABLE `order_menu` (
  `row_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` decimal(19,3) DEFAULT 0.000,
  `groupmid` int(11) DEFAULT 0,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menuqty` float NOT NULL,
  `add_on_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `addonsqty` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `varientid` int(11) NOT NULL,
  `groupvarient` int(11) DEFAULT NULL,
  `addonsuid` int(11) DEFAULT NULL,
  `qroupqty` int(11) DEFAULT NULL,
  `isgroup` int(11) DEFAULT 0,
  `food_status` int(11) DEFAULT 0,
  `allfoodready` int(11) DEFAULT NULL,
  `isupdate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymentsetup`
--

CREATE TABLE `paymentsetup` (
  `setupid` int(11) NOT NULL,
  `paymentid` int(11) NOT NULL,
  `marchantid` varchar(255) DEFAULT NULL,
  `password` varchar(120) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `currency` varchar(20) NOT NULL,
  `Islive` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `edit_url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_method_id` tinyint(4) NOT NULL,
  `payment_method` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `modulename` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_method_id`, `payment_method`, `is_active`, `modulename`) VALUES
(1, 'Card Payment', 1, ''),
(4, 'Cash Payment', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_commission_setting`
--

CREATE TABLE `payroll_commission_setting` (
  `id` int(11) NOT NULL,
  `pos_id` int(6) NOT NULL,
  `rate` int(4) NOT NULL,
  `create_by` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_holiday`
--

CREATE TABLE `payroll_holiday` (
  `payrl_holi_id` int(11) UNSIGNED NOT NULL,
  `holiday_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `no_of_days` varchar(30) CHARACTER SET latin1 NOT NULL,
  `created_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  `updated_by` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_tax_setup`
--

CREATE TABLE `payroll_tax_setup` (
  `tax_setup_id` int(11) UNSIGNED NOT NULL,
  `start_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_amount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `rate` varchar(30) CHARACTER SET latin1 NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pay_frequency`
--

CREATE TABLE `pay_frequency` (
  `id` int(11) NOT NULL,
  `frequency_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay_frequency`
--

INSERT INTO `pay_frequency` (`id`, `frequency_name`) VALUES
(1, 'Weekly'),
(2, 'Biweekly'),
(3, 'Annual'),
(4, 'Monthly');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `pos_id` int(10) UNSIGNED NOT NULL,
  `position_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `position_details` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`pos_id`, `position_name`, `position_details`) VALUES
(1, 'chef', 'Responsible for the pastry shop in a foodservice establishment. Ensures that the products produced in the pastry shop meet the quality standards in conjunction with the executive chef.'),
(2, 'HRM', 'Recruits and hires qualified employees, creates in-house job-training programs, and assists employees with their career needs.'),
(3, 'Kitchen manager', 'Supervises and coordinates activities concerning all back-of-the-house operations and personnel, including food preparation, kitchen and storeroom areas.'),
(4, 'Counter server', 'Responsible for providing quick and efficient service to customers. Greets customers, takes their food and beverage orders, rings orders into register, and prepares and serves hot and cold drinks.'),
(6, 'Waiter', 'Most waiters and waitresses, also called servers, work in full-service restaurants. They greet customers, take food orders, bring food and drinks to the tables and take payment and make change.'),
(7, 'Accounts', 'Play a key role in every restaurant. '),
(8, 'Salesman', 'A salesman is someone who works in sales, with the main function of selling products or services to others either by visiting locations');

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `productionid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `itemvid` int(11) DEFAULT NULL,
  `itemquantity` int(11) NOT NULL,
  `savedby` int(11) NOT NULL,
  `saveddate` date NOT NULL,
  `productionexpiredate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `production_details`
--

CREATE TABLE `production_details` (
  `pro_detailsid` int(11) NOT NULL,
  `foodid` int(11) NOT NULL,
  `pvarientid` int(11) DEFAULT NULL,
  `ingredientid` int(11) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `unitname` varchar(100) NOT NULL,
  `createdby` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitem`
--

CREATE TABLE `purchaseitem` (
  `purID` int(11) NOT NULL,
  `invoiceid` varchar(50) DEFAULT NULL,
  `suplierID` int(11) NOT NULL,
  `paymenttype` int(11) DEFAULT NULL,
  `bankid` int(11) DEFAULT NULL,
  `total_price` decimal(19,3) NOT NULL DEFAULT 0.000,
  `paid_amount` decimal(19,3) DEFAULT 0.000,
  `details` text DEFAULT NULL,
  `purchasedate` date NOT NULL,
  `purchaseexpiredate` date NOT NULL,
  `savedby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `detailsid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `indredientid` int(11) NOT NULL,
  `quantity` decimal(19,3) NOT NULL DEFAULT 0.000,
  `unitname` varchar(80) NOT NULL,
  `price` decimal(19,3) NOT NULL DEFAULT 0.000,
  `totalprice` decimal(19,3) NOT NULL DEFAULT 0.000,
  `purchaseby` int(11) NOT NULL,
  `purchasedate` date NOT NULL,
  `purchaseexpiredate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return`
--

CREATE TABLE `purchase_return` (
  `preturn_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `po_no` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `return_date` date NOT NULL,
  `totalamount` float NOT NULL,
  `totaldiscount` float NOT NULL,
  `return_reason` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` int(11) NOT NULL,
  `updatedate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

CREATE TABLE `purchase_return_details` (
  `preturn_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_rate` float NOT NULL,
  `store_id` int(11) NOT NULL,
  `discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rate_type`
--

CREATE TABLE `rate_type` (
  `id` int(11) NOT NULL,
  `r_type_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate_type`
--

INSERT INTO `rate_type` (`id`, `r_type_name`) VALUES
(1, 'Hourly'),
(2, 'Salary');

-- --------------------------------------------------------

--
-- Table structure for table `reservationofday`
--

CREATE TABLE `reservationofday` (
  `offdayid` int(11) NOT NULL,
  `offdaydate` date NOT NULL,
  `availtime` varchar(50) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rest_table`
--

CREATE TABLE `rest_table` (
  `tableid` int(11) NOT NULL,
  `tablename` varchar(50) NOT NULL,
  `person_capicity` int(11) NOT NULL,
  `table_icon` varchar(255) NOT NULL,
  `floor` int(11) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1=booked,0=free'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rest_table`
--

INSERT INTO `rest_table` (`tableid`, `tablename`, `person_capicity`, `table_icon`, `floor`, `status`) VALUES
(1, '1', 2, 'assets/img/icons/resttable/1.png', 3, 1),
(2, '2', 4, 'assets/img/icons/resttable/4.png', 1, 1),
(3, '3', 2, 'assets/img/icons/resttable/2.png', 1, 0),
(6, '6', 3, 'assets/img/icons/resttable/3.png', 1, 0),
(7, '7', 8, 'assets/img/icons/resttable/8.png', 1, 1),
(8, '8', 4, 'assets/img/icons/resttable/4.png', 3, 1),
(9, '9', 3, 'assets/img/icons/resttable/3.png', 1, 0),
(10, 'VIP', 8, 'assets/img/icons/resttable/7.png', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_setup_header`
--

CREATE TABLE `salary_setup_header` (
  `s_s_h_id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `salary_payable` varchar(30) CHARACTER SET latin1 NOT NULL,
  `absent_deduct` varchar(30) CHARACTER SET latin1 NOT NULL,
  `tax_manager` varchar(30) CHARACTER SET latin1 NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_sheet_generate`
--

CREATE TABLE `salary_sheet_generate` (
  `ssg_id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gdate` varchar(20) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary_sheet_generate`
--

INSERT INTO `salary_sheet_generate` (`ssg_id`, `employee_id`, `name`, `gdate`, `start_date`, `end_date`, `generate_by`) VALUES
(1, '3654', '3654', '2023-04-14', '2023-04-14', '2023-04-28', 'Zam Zam Resturant');

-- --------------------------------------------------------

--
-- Table structure for table `salary_type`
--

CREATE TABLE `salary_type` (
  `salary_type_id` int(10) UNSIGNED NOT NULL,
  `sal_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `emp_sal_type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `default_amount` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sec_menu_item`
--

CREATE TABLE `sec_menu_item` (
  `menu_id` int(11) NOT NULL,
  `menu_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_menu` int(11) DEFAULT NULL,
  `is_report` tinyint(1) DEFAULT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sec_menu_item`
--

INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES
(1, 'manage_category', '', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00'),
(2, 'category_list', 'item_category', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00'),
(3, 'add_category', 'create', 'itemmanage', 2, 0, 2, '2018-11-05 00:00:00'),
(4, 'manage_food', '', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00'),
(5, 'food_list', 'item_food', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00'),
(6, 'add_food', 'index', 'itemmanage', 5, 0, 2, '2018-11-05 00:00:00'),
(7, 'food_varient', 'foodvarientlist', 'itemmanage', 5, 0, 2, '2018-11-07 00:00:00'),
(8, 'add_varient', 'addvariant', 'itemmanage', 5, 0, 2, '2018-11-07 00:00:00'),
(9, 'food_availablity', 'availablelist', 'itemmanage', 5, 0, 2, '2018-11-07 00:00:00'),
(10, 'add_availablity', 'addavailable', 'itemmanage', 5, 0, 2, '2018-11-07 00:00:00'),
(11, 'manage_addons', '', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00'),
(12, 'addons_list', 'menu_addons', 'itemmanage', 0, 0, 2, '2018-11-05 00:00:00'),
(13, 'add_adons', 'create', 'itemmanage', 8, 0, 2, '2018-11-05 00:00:00'),
(14, 'manage_unitmeasurement', '', 'units', 0, 0, 2, '2018-11-05 00:00:00'),
(15, 'unit_list', 'unitmeasurement', 'units', 0, 0, 2, '2018-11-05 00:00:00'),
(16, 'unit_add', 'create', 'units', 12, 0, 2, '2018-11-05 00:00:00'),
(17, 'manage_ingradient', '', 'units', 0, 0, 2, '2018-11-05 00:00:00'),
(18, 'ingradient_list', 'ingradient', 'units', 0, 0, 2, '2018-11-05 00:00:00'),
(19, 'add_ingredient', 'create', 'units', 15, 0, 2, '2018-11-05 00:00:00'),
(20, 'assign_adons_list', 'assignaddons', 'itemmanage', 8, 0, 2, '2018-11-06 00:00:00'),
(21, 'assign_adons', 'assignaddonscreate', 'itemmanage', 8, 0, 2, '2018-11-06 00:00:00'),
(28, 'membership_management', '', 'setting', 0, 0, 2, '2018-11-12 00:00:00'),
(29, 'membership_list', 'index', 'setting', 28, 0, 2, '2018-11-12 00:00:00'),
(30, 'membership_add', 'create', 'setting', 29, 0, 2, '2018-11-12 00:00:00'),
(31, 'payment_setting', '', 'setting', 0, 0, 2, '2018-11-12 00:00:00'),
(32, 'paymentmethod_list', 'index', 'setting', 31, 0, 2, '2018-11-12 00:00:00'),
(33, 'payment_add', 'create', 'setting', 32, 0, 2, '2018-11-12 00:00:00'),
(34, 'shipping_setting', '', 'setting', 0, 0, 2, '2018-11-12 00:00:00'),
(35, 'shipping_list', 'index', 'setting', 34, 0, 2, '2018-11-12 00:00:00'),
(36, 'shipping_add', 'create', 'setting', 35, 0, 2, '2018-11-12 00:00:00'),
(37, 'supplier_manage', '', 'setting', 0, 0, 2, '2018-11-12 00:00:00'),
(38, 'supplier_list', 'index', 'setting', 37, 0, 2, '2018-11-12 00:00:00'),
(39, 'supplier_add', 'create', 'setting', 38, 0, 2, '2018-11-12 00:00:00'),
(40, 'purchase_item', 'index', 'purchase', 0, 0, 2, '2018-11-12 00:00:00'),
(41, 'purchase_add', 'create', 'purchase', 40, 0, 2, '2018-11-12 00:00:00'),
(42, 'table_manage', '', 'setting', 0, 0, 2, '2018-11-13 00:00:00'),
(43, 'add_new_table', 'create', 'setting', 44, 0, 2, '2018-11-13 00:00:00'),
(44, 'table_list', 'restauranttable', 'setting', 42, 0, 2, '2018-11-13 00:00:00'),
(45, 'ordermanage', 'index', 'ordermanage', 0, 0, 2, '2018-11-22 00:00:00'),
(46, 'add_new_order', 'neworder', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00'),
(47, 'order_list', 'orderlist', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00'),
(48, 'pending_order', 'pendingorder', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00'),
(49, 'processing_order', 'processing', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00'),
(50, 'complete_order', 'completelist', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00'),
(51, 'cancel_order', 'cancellist', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00'),
(52, 'pos_invoice', 'pos_invoice', 'ordermanage', 45, 0, 2, '2018-11-22 00:00:00'),
(53, 'c_o_a', 'treeview', 'accounts', 0, 0, 2, '2018-12-17 00:00:00'),
(54, 'debit_voucher', 'debit_voucher', 'accounts', 0, 0, 2, '2018-12-17 00:00:00'),
(55, 'credit_voucher', 'credit_voucher', 'accounts', 0, 0, 2, '2018-12-17 00:00:00'),
(56, 'contra_voucher', 'contra_voucher', 'accounts', 0, 0, 2, '2018-12-17 00:00:00'),
(57, 'journal_voucher', 'journal_voucher', 'accounts', 0, 0, 2, '2018-12-17 00:00:00'),
(58, 'voucher_approval', 'voucher_approval', 'accounts', 0, 0, 2, '2018-12-17 00:00:00'),
(59, 'account_report', '', 'accounts', 0, 0, 2, '2018-12-17 00:00:00'),
(60, 'voucher_report', 'coa', 'accounts', 59, 0, 2, '2018-12-17 00:00:00'),
(61, 'cash_book', 'cash_book', 'accounts', 59, 0, 2, '2018-12-17 00:00:00'),
(62, 'bank_book', 'bank_book', 'accounts', 59, 0, 2, '2018-12-17 00:00:00'),
(63, 'general_ledger', 'general_ledger', 'accounts', 59, 0, 2, '2018-12-17 00:00:00'),
(64, 'trial_balance', 'trial_balance', 'accounts', 59, 0, 2, '2018-12-17 00:00:00'),
(65, 'profit_loss', 'profit_loss_report', 'accounts', 59, 0, 2, '2018-12-17 00:00:00'),
(66, 'cash_flow', 'cash_flow_report', 'accounts', 59, 0, 2, '2018-12-17 00:00:00'),
(67, 'coa_print', 'coa_print', 'accounts', 59, 0, 2, '2018-12-17 00:00:00'),
(68, 'hrm', '', 'hrm', 0, 0, 2, '2018-12-18 00:00:00'),
(69, 'attendance', 'Home', 'hrm', 0, 0, 2, '2018-12-18 00:00:00'),
(70, 'atn_form', 'atnview', 'hrm', 69, 0, 2, '2018-12-18 00:00:00'),
(71, 'atn_report', 'attendance_list', 'hrm', 69, 0, 2, '2018-12-18 00:00:00'),
(72, 'award', 'Award_controller', 'hrm', 0, 0, 2, '2018-12-18 00:00:00'),
(73, 'new_award', 'create_award', 'hrm', 72, 0, 2, '2018-12-18 00:00:00'),
(74, 'circularprocess', 'Candidate', 'hrm', 0, 0, 2, '2018-12-18 00:00:00'),
(75, 'add_canbasic_info', 'caninfo_create', 'hrm', 74, 0, 2, '2018-12-18 00:00:00'),
(76, 'can_basicinfo_list', 'canInfoview', 'hrm', 74, 0, 2, '2018-12-18 00:00:00'),
(77, 'candidate_basic_info', 'Candidate_select', 'hrm', 0, 0, 2, '2018-12-18 00:00:00'),
(78, 'candidate_shortlist', 'shortlist_form', 'hrm', 77, 0, 2, '2018-12-18 00:00:00'),
(79, 'candidate_interview', 'interview_form', 'hrm', 77, 0, 2, '2018-12-18 00:00:00'),
(80, 'candidate_selection', 'selection_form', 'hrm', 77, 0, 2, '2018-12-18 00:00:00'),
(81, 'department', 'Department_controller', 'hrm', 0, 0, 2, '2018-12-18 00:00:00'),
(82, 'departmentfrm', 'create_dept', 'hrm', 81, 0, 2, '2018-12-18 00:00:00'),
(83, 'division', 'Division_controller', 'hrm', 0, 0, 2, '2018-12-18 00:00:00'),
(84, 'add_division', 'division_form', 'hrm', 83, 0, 2, '2018-12-18 00:00:00'),
(85, 'ehrm', 'Employees', 'hrm', 0, 0, 2, '2018-12-18 00:00:00'),
(86, 'division_list', 'position_form', 'hrm', 87, 0, 2, '2018-12-18 00:00:00'),
(87, 'designation', 'create_position', 'hrm', 87, 0, 2, '2018-12-18 00:00:00'),
(88, 'add_employee', 'viewEmhistory', 'hrm', 87, 0, 2, '2018-12-18 00:00:00'),
(89, 'manage_employee', 'manageemployee', 'hrm', 87, 0, 2, '2018-12-18 00:00:00'),
(91, 'emp_sal_payment', 'paymentview', 'hrm', 87, 0, 2, '2018-12-18 00:00:00'),
(92, 'leave', 'leave', 'hrm', 0, 0, 2, '2018-12-18 00:00:00'),
(93, 'weekly_holiday', 'weeklyform', 'hrm', 92, 0, 2, '2018-12-18 00:00:00'),
(94, 'holiday', 'holiday_form', 'hrm', 92, 0, 2, '2018-12-18 00:00:00'),
(95, 'others_leave_application', 'others_leave', 'hrm', 92, 0, 2, '2018-12-18 00:00:00'),
(96, 'add_leave_type', 'leave_type_form', 'hrm', 92, 0, 2, '2018-12-18 00:00:00'),
(97, 'leave_application', 'others_leave', 'hrm', 92, 0, 2, '2018-12-18 00:00:00'),
(98, 'loan', 'loan', 'hrm', 0, 0, 2, '2018-12-18 00:00:00'),
(99, 'loan_grand', 'create_grandloan', 'hrm', 98, 0, 2, '2018-12-18 00:00:00'),
(100, 'loan_installment', 'create_installment', 'hrm', 98, 0, 2, '2018-12-19 00:00:00'),
(101, 'manage_installment', 'installmentView', 'hrm', 98, 0, 2, '2018-12-19 00:00:00'),
(102, 'manage_granted_loan', 'loan_view', 'hrm', 98, 0, 2, '2018-12-19 00:00:00'),
(103, 'loan_report', 'loan_report', 'hrm', 98, 0, 2, '2018-12-19 00:00:00'),
(104, 'payroll', 'Payroll', 'hrm', 0, 0, 2, '2018-12-19 00:00:00'),
(105, 'salary_type_setup', 'create_salary_setup', 'hrm', 104, 0, 2, '2018-12-19 00:00:00'),
(106, 'manage_salary_setup', 'emp_salary_setup_view', 'hrm', 104, 0, 2, '2018-12-19 00:00:00'),
(107, 'salary_setup', 'create_s_setup', 'hrm', 104, 0, 2, '2018-12-19 00:00:00'),
(108, 'manage_salary_type', 'salary_setup_view', 'hrm', 104, 0, 2, '2018-12-19 00:00:00'),
(109, 'salary_generate', 'create_salary_generate', 'hrm', 104, 0, 2, '2018-12-19 00:00:00'),
(110, 'manage_salary_generate', 'salary_generate_view', 'hrm', 104, 0, 2, '2018-12-19 00:00:00'),
(111, 'purchase_return', 'return_form', 'purchase', 40, 0, 2, '2018-12-19 00:00:00'),
(112, 'return_invoice', 'return_invoice', 'purchase', 40, 0, 2, '2018-12-19 00:00:00'),
(113, 'report', 'reports', 'report', 0, 0, 2, '2018-12-19 00:00:00'),
(114, 'purchase_report', 'index', 'report', 113, 0, 2, '2018-12-19 00:00:00'),
(115, 'stock_report_product_wise', 'productwise', 'report', 113, 0, 2, '2018-12-19 00:00:00'),
(116, 'purchase_report_ingredient', 'ingredientwise', 'report', 113, 0, 2, '2018-12-19 00:00:00'),
(117, 'sell_report', 'sellrpt', 'report', 113, 0, 2, '2018-12-19 00:00:00'),
(118, 'table_setting', 'tablesetting', 'setting', 44, 0, 2, '2018-12-19 00:00:00'),
(119, 'customer_type', '', 'setting', 0, 0, 2, '2018-12-19 00:00:00'),
(120, 'customertype_list', 'customertype', 'setting', 0, 0, 2, '2018-12-19 00:00:00'),
(121, 'add_type', 'create', 'setting', 120, 0, 2, '2018-12-19 00:00:00'),
(122, 'currency', '', 'setting', 0, 0, 2, '2018-12-19 00:00:00'),
(123, 'currency_list', 'currency', 'setting', 0, 0, 2, '2018-12-19 00:00:00'),
(124, 'currency_add', 'create', 'setting', 123, 0, 2, '2018-12-19 00:00:00'),
(125, 'production', '', 'production', 0, 0, 2, '2018-12-19 00:00:00'),
(126, 'production_set_list', 'production', 'production', 0, 0, 2, '2018-12-19 00:00:00'),
(127, 'set_productionunit', 'productionunit', 'production', 126, 0, 2, '2018-12-19 00:00:00'),
(128, 'production_add', 'create', 'production', 126, 0, 2, '2018-12-19 00:00:00'),
(129, 'production_list', 'addproduction', 'production', 126, 0, 2, '2018-12-19 00:00:00'),
(130, 'reservation', '', 'reservation', 0, 0, 2, '2018-12-19 00:00:00'),
(131, 'reservation_table', 'tablebooking', 'reservation', 130, 0, 2, '2018-12-19 00:00:00'),
(132, 'update_ord', 'updateorder', 'ordermanage', 45, 0, 2, '2019-12-11 00:00:00'),
(133, 'kitchen_dashboard', 'kitchen', 'ordermanage', 45, 0, 2, '2020-02-13 00:00:00'),
(134, 'counter_dashboard', 'counterboard', 'ordermanage', 45, 0, 2, '2020-02-16 00:00:00'),
(191, 'counter_list', 'counterlist', 'ordermanage', 45, 0, 2, '2021-03-28 00:00:00'),
(192, 'pos_setting', 'possetting', 'ordermanage', 45, 0, 2, '2021-03-28 00:00:00'),
(193, 'sound_setting', 'soundsetting', 'ordermanage', 45, 0, 2, '2021-03-28 00:00:00'),
(194, 'supplier_ledger', 'supplier_ledger_report', 'purchase', 38, 0, 2, '2021-03-28 00:00:00'),
(195, 'stock_out_ingredients', 'stock_out_ingredients', 'purchase', 40, 0, 2, '2021-03-28 00:00:00'),
(196, 'sell_report_items', 'sellrptItems', 'report', 117, 0, 2, '2021-01-21 00:00:00'),
(197, 'scharge_report', 'servicerpt', 'report', 113, 0, 2, '2021-01-21 00:00:00'),
(198, 'sell_report_waiters', 'sellrptwaiter', 'report', 113, 0, 2, '2021-01-21 00:00:00'),
(199, 'kitchen_sell', 'kichansrpt', 'report', 113, 0, 2, '2021-01-21 00:00:00'),
(200, 'sell_report_delvirytype', 'sellrptdelvirytype', 'report', 113, 0, 2, '2021-01-21 00:00:00'),
(201, 'sell_report_casher', 'sellrptCasher', 'report', 113, 0, 2, '2021-01-21 00:00:00'),
(202, 'unpaid_sell', 'unpaid_sell', 'report', 113, 0, 2, '2021-01-21 00:00:00'),
(203, 'sell_report_filter', 'sellrpt2', 'report', 113, 0, 2, '2021-01-21 00:00:00'),
(204, 'sele_by_date', 'sellrptbydate', 'report', 113, 0, 2, '2021-01-21 00:00:00'),
(205, 'production_setting', 'possetting', 'production', 125, 0, 2, '2021-03-28 00:00:00'),
(206, 'kitchen_setting', 'kitchensetting', 'setting', 0, 0, 2, '2021-03-28 00:00:00'),
(207, 'kitchen_assign', 'assignkitchen', 'setting', 206, 0, 2, '2021-03-28 00:00:00'),
(208, 'sms_setting', 'smsetting', 'setting', 0, 0, 2, '2021-03-28 00:00:00'),
(209, 'sms_configuration', 'sms_configuration', 'setting', 208, 0, 2, '2021-03-28 00:00:00'),
(210, 'sms_temp', 'sms_template', 'setting', 208, 0, 2, '2021-03-28 00:00:00'),
(211, 'bank', 'bank_list', 'setting', 0, 0, 2, '2021-03-28 00:00:00'),
(212, 'list_of_bank', 'index', 'setting', 211, 0, 2, '2021-03-28 00:00:00'),
(213, 'language', 'language', 'setting', 0, 0, 2, '2021-03-28 00:00:00'),
(214, 'application_setting', 'setting', 'setting', 0, 0, 2, '2021-03-28 00:00:00'),
(215, 'server_setting', 'serversetting', 'setting', 0, 0, 2, '2021-03-28 00:00:00'),
(216, 'factory_reset', 'factoryreset', 'setting', 214, 0, 2, '2021-03-28 00:00:00'),
(217, 'country', 'country_city_list', 'setting', 0, 0, 2, '2021-03-28 00:00:00'),
(218, 'state', 'statelist', 'setting', 217, 0, 2, '2021-03-28 00:00:00'),
(219, 'city', 'citylist', 'setting', 217, 0, 2, '2021-03-28 00:00:00'),
(220, 'commission', 'Commissionsetting/payroll_commission', 'setting', 0, 0, 2, '2021-03-28 00:00:00'),
(221, 'supplier_payment', 'supplier_payments', 'accounts', 59, 0, 2, '2021-03-28 00:00:00'),
(222, 'cash_adjustment', 'cash_adjustment', 'accounts', 59, 0, 2, '2021-03-28 00:00:00'),
(223, 'balance_sheet', 'balance_sheet', 'accounts', 59, 0, 2, '2021-03-28 00:00:00'),
(224, 'expense', 'Cexpense', 'hrm', 0, 0, 2, '2021-03-28 00:00:00'),
(225, 'unavailable_day', 'unavailablelist', 'reservation', 130, 0, 2, '2021-03-28 00:00:00'),
(226, 'reservasetting', 'setting', 'reservation', 130, 0, 2, '2021-03-28 00:00:00'),
(1388, 'dashboard', 'home', 'dashboard', 0, 0, 2, '2021-09-02 00:00:00'),
(1515, 'add_expense_item', 'add_expense_item', 'hrm', 224, 0, 178, '2023-02-20 00:00:00'),
(1516, 'manage_expense_item', 'manage_expense_item', 'hrm', 224, 0, 178, '2023-02-20 00:00:00'),
(1517, 'add_expense', 'add_expense', 'hrm', 224, 0, 178, '2023-02-20 00:00:00'),
(1518, 'manage_expense', 'manage_expense', 'hrm', 224, 0, 178, '2023-02-20 00:00:00'),
(1519, 'expense_statement_form', 'expense_statement_form', 'hrm', 224, 0, 178, '2023-02-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sec_role_permission`
--

CREATE TABLE `sec_role_permission` (
  `id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `can_access` tinyint(1) NOT NULL,
  `can_create` tinyint(1) NOT NULL,
  `can_edit` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sec_role_permission`
--

INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES
(520, 3, 53, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(521, 3, 54, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(522, 3, 55, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(523, 3, 56, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(524, 3, 57, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(525, 3, 58, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(526, 3, 59, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(527, 3, 60, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(528, 3, 61, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(529, 3, 62, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(530, 3, 63, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(531, 3, 64, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(532, 3, 65, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(533, 3, 66, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(534, 3, 67, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(535, 3, 221, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(536, 3, 222, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(537, 3, 223, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(538, 3, 1388, 1, 1, 1, 1, 2, '2021-09-02 05:42:45'),
(539, 3, 68, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(540, 3, 69, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(541, 3, 70, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(542, 3, 71, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(543, 3, 72, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(544, 3, 73, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(545, 3, 74, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(546, 3, 75, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(547, 3, 76, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(548, 3, 77, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(549, 3, 78, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(550, 3, 79, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(551, 3, 80, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(552, 3, 81, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(553, 3, 82, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(554, 3, 83, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(555, 3, 84, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(556, 3, 85, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(557, 3, 86, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(558, 3, 87, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(559, 3, 88, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(560, 3, 89, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(561, 3, 90, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(562, 3, 91, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(563, 3, 92, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(564, 3, 93, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(565, 3, 94, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(566, 3, 95, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(567, 3, 96, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(568, 3, 97, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(569, 3, 98, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(570, 3, 99, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(571, 3, 100, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(572, 3, 101, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(573, 3, 102, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(574, 3, 103, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(575, 3, 104, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(576, 3, 105, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(577, 3, 106, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(578, 3, 107, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(579, 3, 108, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(580, 3, 109, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(581, 3, 110, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(582, 3, 224, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(583, 3, 1, 1, 1, 1, 1, 2, '2021-09-02 05:42:45'),
(584, 3, 2, 1, 1, 1, 1, 2, '2021-09-02 05:42:45'),
(585, 3, 3, 1, 1, 1, 1, 2, '2021-09-02 05:42:45'),
(586, 3, 4, 1, 1, 1, 1, 2, '2021-09-02 05:42:45'),
(587, 3, 5, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(588, 3, 6, 1, 1, 0, 0, 2, '2021-09-02 05:42:45'),
(589, 3, 7, 1, 1, 0, 0, 2, '2021-09-02 05:42:45'),
(590, 3, 8, 1, 1, 0, 0, 2, '2021-09-02 05:42:45'),
(591, 3, 9, 1, 1, 0, 0, 2, '2021-09-02 05:42:45'),
(592, 3, 10, 1, 1, 0, 0, 2, '2021-09-02 05:42:45'),
(593, 3, 11, 1, 1, 0, 0, 2, '2021-09-02 05:42:45'),
(594, 3, 12, 1, 1, 0, 0, 2, '2021-09-02 05:42:45'),
(595, 3, 13, 1, 1, 0, 0, 2, '2021-09-02 05:42:45'),
(596, 3, 20, 1, 1, 0, 0, 2, '2021-09-02 05:42:45'),
(597, 3, 21, 1, 1, 0, 0, 2, '2021-09-02 05:42:45'),
(598, 3, 1382, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(599, 3, 1383, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(600, 3, 1384, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(601, 3, 1385, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(602, 3, 1386, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(603, 3, 1387, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(604, 3, 45, 1, 1, 1, 0, 2, '2021-09-02 05:42:45'),
(605, 3, 46, 1, 1, 1, 0, 2, '2021-09-02 05:42:45'),
(606, 3, 47, 1, 1, 1, 0, 2, '2021-09-02 05:42:45'),
(607, 3, 48, 1, 1, 1, 0, 2, '2021-09-02 05:42:45'),
(608, 3, 49, 1, 1, 1, 0, 2, '2021-09-02 05:42:45'),
(609, 3, 50, 1, 1, 1, 0, 2, '2021-09-02 05:42:45'),
(610, 3, 51, 1, 1, 1, 0, 2, '2021-09-02 05:42:45'),
(611, 3, 52, 1, 1, 1, 0, 2, '2021-09-02 05:42:45'),
(612, 3, 132, 1, 1, 1, 0, 2, '2021-09-02 05:42:45'),
(613, 3, 133, 1, 1, 1, 0, 2, '2021-09-02 05:42:45'),
(614, 3, 134, 1, 1, 1, 0, 2, '2021-09-02 05:42:45'),
(615, 3, 191, 1, 1, 1, 0, 2, '2021-09-02 05:42:45'),
(616, 3, 192, 1, 1, 1, 0, 2, '2021-09-02 05:42:45'),
(617, 3, 193, 1, 1, 1, 0, 2, '2021-09-02 05:42:45'),
(618, 3, 125, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(619, 3, 126, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(620, 3, 127, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(621, 3, 128, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(622, 3, 129, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(623, 3, 205, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(624, 3, 40, 1, 1, 0, 0, 2, '2021-09-02 05:42:45'),
(625, 3, 41, 1, 1, 0, 0, 2, '2021-09-02 05:42:45'),
(626, 3, 111, 1, 1, 0, 0, 2, '2021-09-02 05:42:45'),
(627, 3, 112, 1, 1, 0, 0, 2, '2021-09-02 05:42:45'),
(628, 3, 194, 1, 1, 0, 0, 2, '2021-09-02 05:42:45'),
(629, 3, 195, 1, 1, 0, 0, 2, '2021-09-02 05:42:45'),
(630, 3, 227, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(631, 3, 228, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(632, 3, 229, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(633, 3, 113, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(634, 3, 114, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(635, 3, 115, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(636, 3, 116, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(637, 3, 117, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(638, 3, 196, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(639, 3, 197, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(640, 3, 198, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(641, 3, 199, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(642, 3, 200, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(643, 3, 201, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(644, 3, 202, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(645, 3, 203, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(646, 3, 204, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(647, 3, 130, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(648, 3, 131, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(649, 3, 225, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(650, 3, 226, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(651, 3, 28, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(652, 3, 29, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(653, 3, 30, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(654, 3, 31, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(655, 3, 32, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(656, 3, 33, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(657, 3, 34, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(658, 3, 35, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(659, 3, 36, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(660, 3, 37, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(661, 3, 38, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(662, 3, 39, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(663, 3, 42, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(664, 3, 43, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(665, 3, 44, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(666, 3, 118, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(667, 3, 119, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(668, 3, 120, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(669, 3, 121, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(670, 3, 122, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(671, 3, 123, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(672, 3, 124, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(673, 3, 206, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(674, 3, 207, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(675, 3, 208, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(676, 3, 209, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(677, 3, 210, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(678, 3, 211, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(679, 3, 212, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(680, 3, 213, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(681, 3, 214, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(682, 3, 215, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(683, 3, 216, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(684, 3, 217, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(685, 3, 218, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(686, 3, 219, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(687, 3, 220, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(688, 3, 14, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(689, 3, 15, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(690, 3, 16, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(691, 3, 17, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(692, 3, 18, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(693, 3, 19, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(694, 3, 230, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(695, 3, 231, 0, 0, 0, 0, 2, '2021-09-02 05:42:45'),
(2008, 2, 53, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2009, 2, 54, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2010, 2, 55, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2011, 2, 56, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2012, 2, 57, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2013, 2, 58, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2014, 2, 59, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2015, 2, 60, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2016, 2, 61, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2017, 2, 62, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2018, 2, 63, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2019, 2, 64, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2020, 2, 65, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2021, 2, 66, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2022, 2, 67, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2023, 2, 221, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2024, 2, 222, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2025, 2, 223, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2026, 2, 1388, 1, 1, 1, 1, 178, '2023-02-20 10:52:50'),
(2027, 2, 68, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2028, 2, 69, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2029, 2, 70, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2030, 2, 71, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2031, 2, 72, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2032, 2, 73, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2033, 2, 74, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2034, 2, 75, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2035, 2, 76, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2036, 2, 77, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2037, 2, 78, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2038, 2, 79, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2039, 2, 80, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2040, 2, 81, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2041, 2, 82, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2042, 2, 83, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2043, 2, 84, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2044, 2, 85, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2045, 2, 86, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2046, 2, 87, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2047, 2, 88, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2048, 2, 89, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2049, 2, 91, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2050, 2, 92, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2051, 2, 93, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2052, 2, 94, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2053, 2, 95, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2054, 2, 96, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2055, 2, 97, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2056, 2, 98, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2057, 2, 99, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2058, 2, 100, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2059, 2, 101, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2060, 2, 102, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2061, 2, 103, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2062, 2, 104, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2063, 2, 105, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2064, 2, 106, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2065, 2, 107, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2066, 2, 108, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2067, 2, 109, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2068, 2, 110, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2069, 2, 224, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2070, 2, 1, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2071, 2, 2, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2072, 2, 3, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2073, 2, 4, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2074, 2, 5, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2075, 2, 6, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2076, 2, 7, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2077, 2, 8, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2078, 2, 9, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2079, 2, 10, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2080, 2, 11, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2081, 2, 12, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2082, 2, 13, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2083, 2, 20, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2084, 2, 21, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2085, 2, 45, 1, 1, 1, 0, 178, '2023-02-20 10:52:50'),
(2086, 2, 46, 1, 1, 1, 0, 178, '2023-02-20 10:52:50'),
(2087, 2, 47, 1, 1, 1, 0, 178, '2023-02-20 10:52:50'),
(2088, 2, 48, 1, 1, 1, 0, 178, '2023-02-20 10:52:50'),
(2089, 2, 49, 1, 1, 1, 0, 178, '2023-02-20 10:52:50'),
(2090, 2, 50, 1, 1, 1, 0, 178, '2023-02-20 10:52:50'),
(2091, 2, 51, 1, 1, 1, 0, 178, '2023-02-20 10:52:50'),
(2092, 2, 52, 1, 1, 1, 0, 178, '2023-02-20 10:52:50'),
(2093, 2, 132, 1, 1, 1, 0, 178, '2023-02-20 10:52:50'),
(2094, 2, 133, 1, 1, 1, 0, 178, '2023-02-20 10:52:50'),
(2095, 2, 134, 1, 1, 1, 0, 178, '2023-02-20 10:52:50'),
(2096, 2, 191, 1, 1, 1, 0, 178, '2023-02-20 10:52:50'),
(2097, 2, 192, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2098, 2, 193, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2099, 2, 125, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2100, 2, 126, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2101, 2, 127, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2102, 2, 128, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2103, 2, 129, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2104, 2, 205, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2105, 2, 40, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2106, 2, 41, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2107, 2, 111, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2108, 2, 112, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2109, 2, 194, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2110, 2, 195, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2111, 2, 113, 1, 1, 0, 0, 178, '2023-02-20 10:52:50'),
(2112, 2, 114, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2113, 2, 115, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2114, 2, 116, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2115, 2, 117, 1, 1, 0, 0, 178, '2023-02-20 10:52:50'),
(2116, 2, 196, 1, 1, 0, 0, 178, '2023-02-20 10:52:50'),
(2117, 2, 197, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2118, 2, 198, 1, 1, 0, 0, 178, '2023-02-20 10:52:50'),
(2119, 2, 199, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2120, 2, 200, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2121, 2, 201, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2122, 2, 202, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2123, 2, 203, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2124, 2, 204, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2125, 2, 130, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2126, 2, 131, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2127, 2, 225, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2128, 2, 226, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2129, 2, 28, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2130, 2, 29, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2131, 2, 30, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2132, 2, 31, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2133, 2, 32, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2134, 2, 33, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2135, 2, 34, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2136, 2, 35, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2137, 2, 36, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2138, 2, 37, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2139, 2, 38, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2140, 2, 39, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2141, 2, 42, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2142, 2, 43, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2143, 2, 44, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2144, 2, 118, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2145, 2, 119, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2146, 2, 120, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2147, 2, 121, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2148, 2, 122, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2149, 2, 123, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2150, 2, 124, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2151, 2, 206, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2152, 2, 207, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2153, 2, 208, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2154, 2, 209, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2155, 2, 210, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2156, 2, 211, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2157, 2, 212, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2158, 2, 213, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2159, 2, 214, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2160, 2, 215, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2161, 2, 216, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2162, 2, 217, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2163, 2, 218, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2164, 2, 219, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2165, 2, 220, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2166, 2, 14, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2167, 2, 15, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2168, 2, 16, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2169, 2, 17, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2170, 2, 18, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(2171, 2, 19, 0, 0, 0, 0, 178, '2023-02-20 10:52:50'),
(3345, 4, 53, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3346, 4, 54, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3347, 4, 55, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3348, 4, 56, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3349, 4, 57, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3350, 4, 58, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3351, 4, 59, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3352, 4, 60, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3353, 4, 61, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3354, 4, 62, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3355, 4, 63, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3356, 4, 64, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3357, 4, 65, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3358, 4, 66, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3359, 4, 67, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3360, 4, 221, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3361, 4, 222, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3362, 4, 223, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3363, 4, 1388, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3364, 4, 68, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3365, 4, 69, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3366, 4, 70, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3367, 4, 71, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3368, 4, 72, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3369, 4, 73, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3370, 4, 74, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3371, 4, 75, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3372, 4, 76, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3373, 4, 77, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3374, 4, 78, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3375, 4, 79, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3376, 4, 80, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3377, 4, 81, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3378, 4, 82, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3379, 4, 83, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3380, 4, 84, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3381, 4, 85, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3382, 4, 86, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3383, 4, 87, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3384, 4, 88, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3385, 4, 89, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3386, 4, 91, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3387, 4, 92, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3388, 4, 93, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3389, 4, 94, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3390, 4, 95, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3391, 4, 96, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3392, 4, 97, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3393, 4, 98, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3394, 4, 99, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3395, 4, 100, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3396, 4, 101, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3397, 4, 102, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3398, 4, 103, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3399, 4, 104, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3400, 4, 105, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3401, 4, 106, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3402, 4, 107, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3403, 4, 108, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3404, 4, 109, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3405, 4, 110, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3406, 4, 224, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3407, 4, 1515, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3408, 4, 1516, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3409, 4, 1517, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3410, 4, 1518, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3411, 4, 1519, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3412, 4, 1, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3413, 4, 2, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3414, 4, 3, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3415, 4, 4, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3416, 4, 5, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3417, 4, 6, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3418, 4, 7, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3419, 4, 8, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3420, 4, 9, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3421, 4, 10, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3422, 4, 11, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3423, 4, 12, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3424, 4, 13, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3425, 4, 20, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3426, 4, 21, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3427, 4, 45, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3428, 4, 46, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3429, 4, 47, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3430, 4, 48, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3431, 4, 49, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3432, 4, 50, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3433, 4, 51, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3434, 4, 52, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3435, 4, 132, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3436, 4, 133, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3437, 4, 134, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3438, 4, 191, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3439, 4, 192, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3440, 4, 193, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3441, 4, 125, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3442, 4, 126, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3443, 4, 127, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3444, 4, 128, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3445, 4, 129, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3446, 4, 205, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3447, 4, 40, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3448, 4, 41, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3449, 4, 111, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3450, 4, 112, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3451, 4, 194, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3452, 4, 195, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3453, 4, 113, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3454, 4, 114, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3455, 4, 115, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3456, 4, 116, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3457, 4, 117, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3458, 4, 196, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3459, 4, 197, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3460, 4, 198, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3461, 4, 199, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3462, 4, 200, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3463, 4, 201, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3464, 4, 202, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3465, 4, 203, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3466, 4, 204, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3467, 4, 130, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3468, 4, 131, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3469, 4, 225, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3470, 4, 226, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3471, 4, 28, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3472, 4, 29, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3473, 4, 30, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3474, 4, 31, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3475, 4, 32, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3476, 4, 33, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3477, 4, 34, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3478, 4, 35, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3479, 4, 36, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3480, 4, 37, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3481, 4, 38, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3482, 4, 39, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3483, 4, 42, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3484, 4, 43, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3485, 4, 44, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3486, 4, 118, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3487, 4, 119, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3488, 4, 120, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3489, 4, 121, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3490, 4, 122, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3491, 4, 123, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3492, 4, 124, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3493, 4, 206, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3494, 4, 207, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3495, 4, 208, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3496, 4, 209, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3497, 4, 210, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3498, 4, 211, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3499, 4, 212, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3500, 4, 213, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3501, 4, 214, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3502, 4, 215, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3503, 4, 216, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3504, 4, 217, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3505, 4, 218, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3506, 4, 219, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3507, 4, 220, 0, 0, 0, 0, 178, '2023-04-14 11:59:59'),
(3508, 4, 14, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3509, 4, 15, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3510, 4, 16, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3511, 4, 17, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3512, 4, 18, 1, 1, 1, 1, 178, '2023-04-14 11:59:59'),
(3513, 4, 19, 1, 1, 1, 1, 178, '2023-04-14 11:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `sec_role_tbl`
--

CREATE TABLE `sec_role_tbl` (
  `role_id` int(11) NOT NULL,
  `role_name` text NOT NULL,
  `role_description` text NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `role_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sec_role_tbl`
--

INSERT INTO `sec_role_tbl` (`role_id`, `role_name`, `role_description`, `create_by`, `date_time`, `role_status`) VALUES
(1, 'kitchen', 'manage kitchen', 2, '2020-10-12 10:27:03', 1),
(2, 'Counter', 'Display Order timing', 2, '2020-10-12 10:27:45', 1),
(3, 'Waiter', 'Order Taken and served food', 2, '2020-10-12 10:29:13', 1),
(4, 'Admin', 'admin', 178, '2023-02-20 11:25:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sec_user_access_tbl`
--

CREATE TABLE `sec_user_access_tbl` (
  `role_acc_id` int(11) NOT NULL,
  `fk_role_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sec_user_access_tbl`
--

INSERT INTO `sec_user_access_tbl` (`role_acc_id`, `fk_role_id`, `fk_user_id`) VALUES
(1, 3, 172),
(2, 2, 179),
(3, 4, 180);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `storename` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `logoweb` varchar(255) DEFAULT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `opentime` varchar(255) DEFAULT NULL,
  `closetime` varchar(255) DEFAULT NULL,
  `vat` decimal(10,2) NOT NULL DEFAULT 0.00,
  `isvatnumshow` int(11) DEFAULT 0,
  `vattinno` varchar(30) DEFAULT NULL,
  `discount_type` int(11) NOT NULL DEFAULT 0 COMMENT '0=amount,1=percent',
  `discountrate` decimal(19,3) DEFAULT 0.000,
  `servicecharge` decimal(10,0) NOT NULL DEFAULT 0,
  `service_chargeType` int(11) NOT NULL DEFAULT 0 COMMENT '0=amount,1=percent',
  `currency` int(11) DEFAULT 0,
  `min_prepare_time` varchar(50) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `timezone` varchar(150) NOT NULL,
  `dateformat` text NOT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `kitchenrefreshtime` int(11) DEFAULT 5,
  `powerbytxt` text DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `reservation_open` varchar(30) DEFAULT NULL,
  `reservation_close` varchar(30) DEFAULT NULL,
  `maxreserveperson` int(11) DEFAULT NULL,
  `printtype` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `title`, `storename`, `address`, `email`, `phone`, `logo`, `logoweb`, `favicon`, `opentime`, `closetime`, `vat`, `isvatnumshow`, `vattinno`, `discount_type`, `discountrate`, `servicecharge`, `service_chargeType`, `currency`, `min_prepare_time`, `language`, `timezone`, `dateformat`, `site_align`, `kitchenrefreshtime`, `powerbytxt`, `footer_text`, `reservation_open`, `reservation_close`, `maxreserveperson`, `printtype`) VALUES
(2, 'Zamzam Restaurant', 'Zamzam Restaurant', 'Mukhtar Bari Gate, Chowmuhani Road, Daganbhuiyan', 'zamzamrestaurant@gmail.com', '01770-702446', 'assets/img/icons/2023-02-17/2.jpg', NULL, 'assets/img/icons/2023-02-17/21.jpg', '9:00AM', '12:00AM', '0.00', NULL, '12345678', 0, '0.000', '0', 1, 1, '1:00 Hour', 'english', 'Asia/Dhaka', 'Y/m/d', 'LTR', 120, 'Developed By: SHUVO', '© 2023 Developed by SoftwareFarm BD.', '09:00:00', '23:00:00', 1000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method`
--

CREATE TABLE `shipping_method` (
  `ship_id` int(11) NOT NULL,
  `shipping_method` varchar(150) NOT NULL,
  `shippingrate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(255) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `shiptype` int(11) DEFAULT NULL COMMENT '1=dinein,2=pickup,3=home'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipping_method`
--

INSERT INTO `shipping_method` (`ship_id`, `shipping_method`, `shippingrate`, `payment_method`, `is_active`, `shiptype`) VALUES
(1, 'Home Delivary', '60.00', '9, 8, 5, 4, 3, 1', 1, 3),
(2, 'Pickup', '0.00', '4, 3, 1', 1, 2),
(3, 'Dine-in', '0.00', '9, 8, 5, 4, 3', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_configuration`
--

CREATE TABLE `sms_configuration` (
  `id` int(11) NOT NULL,
  `link` text NOT NULL,
  `gateway` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sms_from` varchar(200) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_configuration`
--

INSERT INTO `sms_configuration` (`id`, `link`, `gateway`, `user_name`, `password`, `sms_from`, `userid`, `status`) VALUES
(1, 'http://smsrank.com/', 'SMS Rank', 'rabbani', '123456', 'smsrank', '', 1),
(2, 'https://www.nexmo.com/', 'nexmo', '50489b88', 'z1cBmtrDeQrOaqhg', 'restaurant', '', 0),
(3, 'https://www.budgetsms.net/', 'budgetsms', 'user1', '1e753da74', 'budgetsms', '21547', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sms_template`
--

CREATE TABLE `sms_template` (
  `id` int(11) NOT NULL,
  `template_name` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `default_status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_template`
--

INSERT INTO `sms_template` (`id`, `template_name`, `message`, `type`, `status`, `default_status`, `created_at`, `updated_at`) VALUES
(1, 'one', 'your Order {id} is cancel for some reason.', 'Cancel', 0, 0, '2018-12-30 18:08:07', '0000-00-00 00:00:00'),
(2, 'two', 'your order {id} is completed', 'CompleteOrder', 0, 1, '2018-12-30 19:58:19', '0000-00-00 00:00:00'),
(3, 'three', 'your order {id} is processing', 'Processing', 0, 1, '2018-11-06 18:00:46', '0000-00-00 00:00:00'),
(8, 'four', 'Your Order Has been Placed Successfully.', 'Neworder', 1, 0, '2018-12-30 19:59:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_emaillist`
--

CREATE TABLE `subscribe_emaillist` (
  `emailid` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dateinsert` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_order`
--

CREATE TABLE `sub_order` (
  `sub_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `vat` float DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT 0.00,
  `s_charge` float DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=unpaid,1=paid',
  `order_menu_id` text DEFAULT NULL,
  `adons_id` varchar(20) DEFAULT NULL,
  `adons_qty` varchar(20) DEFAULT NULL,
  `invoiceprint` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supid` int(11) NOT NULL,
  `suplier_code` varchar(255) NOT NULL,
  `supName` varchar(100) NOT NULL,
  `supEmail` varchar(100) NOT NULL,
  `supMobile` varchar(50) NOT NULL,
  `supAddress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_ledger`
--

CREATE TABLE `supplier_ledger` (
  `id` int(20) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `chalan_no` varchar(100) DEFAULT NULL,
  `deposit_no` varchar(50) DEFAULT NULL,
  `amount` decimal(19,3) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `d_c` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `synchronizer_setting`
--

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_details`
--

CREATE TABLE `table_details` (
  `id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `time_enter` time NOT NULL,
  `total_people` int(11) NOT NULL,
  `delete_at` int(11) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_setting`
--

CREATE TABLE `table_setting` (
  `settingid` int(11) NOT NULL,
  `tableid` int(11) NOT NULL,
  `iconpos` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblreservation`
--

CREATE TABLE `tblreservation` (
  `reserveid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `tableid` int(11) NOT NULL,
  `person_capicity` int(11) NOT NULL,
  `formtime` time NOT NULL,
  `totime` time NOT NULL,
  `reserveday` date NOT NULL,
  `customer_notes` text DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '1=free,2=booked',
  `notif` int(11) NOT NULL DEFAULT 0 COMMENT '0=unseen,1=seen'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblserver`
--

CREATE TABLE `tblserver` (
  `serverid` int(11) NOT NULL,
  `localhost_url` varchar(255) NOT NULL,
  `online_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblserver`
--

INSERT INTO `tblserver` (`serverid`, `localhost_url`, `online_url`) VALUES
(1, 'http://localhost/restaurant_v2', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assign_kitchen`
--

CREATE TABLE `tbl_assign_kitchen` (
  `assignid` int(11) NOT NULL,
  `kitchen_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_assign_kitchen`
--

INSERT INTO `tbl_assign_kitchen` (`assignid`, `kitchen_id`, `userid`) VALUES
(2, 1, 177);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `bankid` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(200) DEFAULT NULL,
  `ac_number` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `signature_pic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`bankid`, `bank_name`, `ac_name`, `ac_number`, `branch`, `signature_pic`) VALUES
(1, 'Dutch-Bangla Bank', 'Ainal Haque', '110535764655', 'Mirpur 10', './application/modules/hrm/assets/images/2020-01-18/c.jpg'),
(2, 'City Bank', 'Kamal Hassan', '3869583', 'Uttara', './application/modules/hrm/assets/images/2020-01-18/e.jpg'),
(3, 'Brac Bank', 'Robiul Islam', '9356346', 'Motijeel', './application/modules/hrm/assets/images/2020-01-18/f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_billingaddress`
--

CREATE TABLE `tbl_billingaddress` (
  `billaddressid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `city` varchar(70) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `DateInserted` datetime NOT NULL DEFAULT '1970-01-01 01:01:01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cancelitem`
--

CREATE TABLE `tbl_cancelitem` (
  `cancelid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `foodid` int(11) NOT NULL,
  `varientid` int(11) NOT NULL,
  `quantity` decimal(19,3) NOT NULL DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card_terminal`
--

CREATE TABLE `tbl_card_terminal` (
  `card_terminalid` int(11) NOT NULL,
  `terminal_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_card_terminal`
--

INSERT INTO `tbl_card_terminal` (`card_terminalid`, `terminal_name`) VALUES
(1, 'Nexus Terminal'),
(2, 'Brac Bank Terminal'),
(3, 'Visa-Master Terminal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cashcounter`
--

CREATE TABLE `tbl_cashcounter` (
  `ccid` int(11) NOT NULL,
  `counterno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cashcounter`
--

INSERT INTO `tbl_cashcounter` (`ccid`, `counterno`) VALUES
(1, 1),
(7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cashregister`
--

CREATE TABLE `tbl_cashregister` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `counter_no` int(11) NOT NULL,
  `opening_balance` decimal(19,3) NOT NULL DEFAULT 0.000,
  `closing_balance` decimal(19,3) NOT NULL DEFAULT 0.000,
  `openclosedate` date NOT NULL,
  `opendate` datetime DEFAULT '1970-01-01 01:01:01',
  `closedate` datetime DEFAULT '1970-01-01 01:01:01',
  `status` int(11) NOT NULL DEFAULT 0,
  `openingnote` text DEFAULT NULL,
  `closing_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cashregister`
--

INSERT INTO `tbl_cashregister` (`id`, `userid`, `counter_no`, `opening_balance`, `closing_balance`, `openclosedate`, `opendate`, `closedate`, `status`, `openingnote`, `closing_note`) VALUES
(1, 178, 1, '0.000', '0.000', '2023-04-17', '2023-04-17 23:08:52', '1970-01-01 00:00:00', 0, '', ''),
(2, 179, 2, '0.000', '0.000', '2023-04-17', '2023-04-17 23:09:20', '1970-01-01 00:00:00', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `cityid` int(11) NOT NULL,
  `countryid` int(11) NOT NULL,
  `stateid` int(11) NOT NULL,
  `cityname` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `countryid` int(11) NOT NULL,
  `countryname` varchar(70) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`countryid`, `countryname`, `status`) VALUES
(1, 'Bangladesh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_delivaritime`
--

CREATE TABLE `tbl_delivaritime` (
  `dtimeid` int(11) NOT NULL,
  `deltime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_delivaritime`
--

INSERT INTO `tbl_delivaritime` (`dtimeid`, `deltime`) VALUES
(1, '10:00-10:30'),
(2, '10:30-11:00'),
(3, '11:00-11:30'),
(4, '11:30-12:00'),
(5, '12:00-12:30'),
(6, '12:30-13:00'),
(7, '13:00-13:30'),
(8, '13:30-14:00'),
(9, '14:00-14:30'),
(10, '14:30-15:00'),
(11, '15:00-15:30'),
(12, '15:30-16:00'),
(13, '16:00-16:30'),
(14, '16:30-17:00'),
(15, '17:00-17:30'),
(16, '17:30-18:00'),
(17, '18:00-18:30'),
(18, '18:30-19:00'),
(19, '19:00-19:30'),
(20, '19:30-20:00'),
(21, '20:00-20:30'),
(22, '20:30-21:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_delivaryaddress`
--

CREATE TABLE `tbl_delivaryaddress` (
  `delivaryid` int(11) NOT NULL,
  `deladdress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_delivaryaddress`
--

INSERT INTO `tbl_delivaryaddress` (`delivaryid`, `deladdress`) VALUES
(1, 'Uttara,Road#7,Dhaka-Bangladesh.'),
(2, 'Uttara,Road#5,Dhaka'),
(3, 'Uttara,Road#2,Dhaka'),
(4, 'Uttara,Road#4,Dhaka'),
(5, 'Gulsion Circle,Dhaka-Bangladesh'),
(6, 'Banani, Dhaka-Bangladesh'),
(7, 'Dhanmondi,Road#15 Dhaka-Bangladesh'),
(8, 'Dhanmondi,Road#27 Dhaka-Bangladesh'),
(9, 'Elephantroad, Dhaka-Bangladesh'),
(10, 'Badda,Road#15 Dhaka-Bangladesh'),
(11, 'Rampura,Road#15 Dhaka-Bangladesh'),
(12, 'Khilkhet,Road#15 Dhaka-Bangladesh'),
(13, 'Mohammadpur,Road#15 Dhaka-Bangladesh'),
(14, 'Motijeel,Road#15 Dhaka-Bangladesh'),
(15, 'komlapur,Road#15 Dhaka-Bangladesh'),
(16, 'Newmarket,Road#15 Rajshahi-Bangladesh'),
(17, 'Road#15, Khulna-Bangladesh'),
(18, 'Road#15, Chittagong-Bangladesh'),
(19, 'Agrabad, Chittagong-Bangladesh'),
(20, 'Potengha, Chittagong-Bangladesh'),
(21, 'Kadirgonj,Rail Gate,Nogor Bhabon, Rajshahi.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_generatedreport`
--

CREATE TABLE `tbl_generatedreport` (
  `generateid` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `saleinvoice` varchar(100) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `cutomertype` int(11) NOT NULL,
  `isthirdparty` int(11) NOT NULL DEFAULT 0,
  `waiter_id` int(11) DEFAULT NULL,
  `kitchen` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `table_no` int(11) DEFAULT NULL,
  `tokenno` varchar(30) DEFAULT NULL,
  `totalamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `customerpaid` decimal(10,2) DEFAULT 0.00,
  `customer_note` text DEFAULT NULL,
  `anyreason` text DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL,
  `nofification` int(11) NOT NULL,
  `orderacceptreject` int(11) DEFAULT NULL,
  `reportDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_groupitems`
--

CREATE TABLE `tbl_groupitems` (
  `groupid` int(11) NOT NULL,
  `gitemid` int(11) NOT NULL,
  `items` int(11) NOT NULL,
  `item_qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `varientid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_itemaccepted`
--

CREATE TABLE `tbl_itemaccepted` (
  `acid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `varient` int(11) NOT NULL,
  `accepttime` datetime NOT NULL DEFAULT '1970-01-01 01:01:01'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kitchen`
--

CREATE TABLE `tbl_kitchen` (
  `kitchenid` int(11) NOT NULL,
  `kitchen_name` varchar(100) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kitchen`
--

INSERT INTO `tbl_kitchen` (`kitchenid`, `kitchen_name`, `ip`, `port`, `status`) VALUES
(1, 'Common Kitchen', '192.168.1.87', '9100', 1),
(11, 'Test', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kitchen_order`
--

CREATE TABLE `tbl_kitchen_order` (
  `ktid` int(11) NOT NULL,
  `kitchenid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `varient` int(11) DEFAULT NULL,
  `addonsuid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menutype`
--

CREATE TABLE `tbl_menutype` (
  `menutypeid` int(11) NOT NULL,
  `menutype` varchar(120) NOT NULL,
  `menu_icon` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menutype`
--

INSERT INTO `tbl_menutype` (`menutypeid`, `menutype`, `menu_icon`, `status`) VALUES
(1, 'Breakfast', './application/modules/itemmanage/assets/images/2020-11-21/b.png', 1),
(2, 'Launch', './application/modules/itemmanage/assets/images/2020-11-21/l1.png', 1),
(3, 'Dinner', './application/modules/itemmanage/assets/images/2020-11-21/d.png', 1),
(4, 'Coffee', './application/modules/itemmanage/assets/images/2020-11-21/c.png', 1),
(5, 'Party', './application/modules/itemmanage/assets/images/2020-11-21/p.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_purchasekey`
--

CREATE TABLE `tbl_module_purchasekey` (
  `mpid` int(11) NOT NULL,
  `module` varchar(25) DEFAULT NULL,
  `purchasekey` varchar(55) DEFAULT NULL,
  `downloaddate` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `updatedate` datetime NOT NULL DEFAULT '1970-01-01 01:01:01'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notificationsetting`
--

CREATE TABLE `tbl_notificationsetting` (
  `notifid` int(11) NOT NULL,
  `firebasewaiterkitchen` text DEFAULT NULL,
  `onesignalcustomer` text NOT NULL,
  `onesignal_ioswaiter` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notificationsetting`
--

INSERT INTO `tbl_notificationsetting` (`notifid`, `firebasewaiterkitchen`, `onesignalcustomer`, `onesignal_ioswaiter`, `status`) VALUES
(1, 'AAAAqG0NVRM:APA91bExey2V18zIHoQmCkMX08SN-McqUvI4c3CG3AnvkRHQp8S9wKn-K4Vb9G79Rfca8bQJY9pn-tTcWiXYJiqe2s63K6QHRFqIx4Oaj9MoB1uVqB7U_gNT9fiqckeWge8eVB9P5-rX', '208455d9-baca-4ed2-b6be-12b466a2efbd', '4e1150f3-03c8-4de3-ab57-79ca27da1b8e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_openclose`
--

CREATE TABLE `tbl_openclose` (
  `stid` int(11) NOT NULL,
  `dayname` varchar(20) NOT NULL,
  `opentime` varchar(15) NOT NULL,
  `closetime` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_openclose`
--

INSERT INTO `tbl_openclose` (`stid`, `dayname`, `opentime`, `closetime`) VALUES
(10, 'Saturday', '8', '24'),
(11, 'Sunday', '8', '24'),
(12, 'Monday', '8', '24'),
(13, 'Tuesday', '8', '24'),
(14, 'Wednesday', '8', '24'),
(15, 'Thursday', '8', '24'),
(16, 'Friday', '8', '24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orderprepare`
--

CREATE TABLE `tbl_orderprepare` (
  `opid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `varient` int(11) NOT NULL,
  `preparetime` datetime NOT NULL DEFAULT '1970-01-01 01:01:01'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posetting`
--

CREATE TABLE `tbl_posetting` (
  `possettingid` int(11) NOT NULL,
  `waiter` int(11) NOT NULL DEFAULT 0 COMMENT '1=show,0=hide',
  `tableid` int(11) NOT NULL DEFAULT 0 COMMENT '1=show,0=hide',
  `cooktime` int(11) NOT NULL DEFAULT 0 COMMENT '1=enable,0=disable',
  `productionsetting` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=manual,1=auto',
  `tablemaping` int(11) NOT NULL DEFAULT 0 COMMENT '1=enable,0=disable',
  `soundenable` int(11) DEFAULT NULL COMMENT '1=enable,0=disable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_posetting`
--

INSERT INTO `tbl_posetting` (`possettingid`, `waiter`, `tableid`, `cooktime`, `productionsetting`, `tablemaping`, `soundenable`) VALUES
(1, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quickordersetting`
--

CREATE TABLE `tbl_quickordersetting` (
  `quickordid` int(11) NOT NULL,
  `waiter` int(11) NOT NULL DEFAULT 1 COMMENT '1=show,0=hide',
  `tableid` int(11) NOT NULL DEFAULT 1 COMMENT '1=show,0=hide',
  `cooktime` int(11) NOT NULL DEFAULT 1 COMMENT '1=show,0=hide',
  `soundenable` int(11) NOT NULL DEFAULT 1 COMMENT '1=enable,0=disable	',
  `tablemaping` int(11) NOT NULL DEFAULT 1 COMMENT '1=enable,0=disable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_quickordersetting`
--

INSERT INTO `tbl_quickordersetting` (`quickordid`, `waiter`, `tableid`, `cooktime`, `soundenable`, `tablemaping`) VALUES
(1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `ratingid` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `reviewtxt` text DEFAULT NULL,
  `proid` int(11) NOT NULL,
  `rating` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL,
  `ratetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_room`
--

CREATE TABLE `tbl_room` (
  `id` int(11) NOT NULL,
  `roomno` varchar(100) NOT NULL,
  `floorno` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seoption`
--

CREATE TABLE `tbl_seoption` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_slug` varchar(255) NOT NULL,
  `keywords` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_seoption`
--

INSERT INTO `tbl_seoption` (`id`, `title`, `title_slug`, `keywords`, `description`) VALUES
(1, 'Bhojon Home page', 'home', 'restaurant,food,reservation', 'Best Restautant Management Software'),
(3, 'Menu', 'menu', 'Desert,Meet,fish,meet,bevarage', 'Menu Page'),
(4, 'Food Details', 'food_details', 'Meet,solt', 'Details food  information'),
(5, 'Reservation', 'reservation', 'Table,booking,reservation', 'Table Reservation'),
(6, 'Cart Page', 'cart_page', 'food,menu', 'Cart Page'),
(7, 'Checkout', 'checkout', 'Checkout', 'Checkout'),
(8, 'Login', 'login', 'Login', 'Login'),
(9, 'Registration', 'registration', 'Registration', 'Registration'),
(10, 'Payment information', 'payment_information', 'Online Payment information', 'Payment information'),
(11, 'Stripe Payment information', 'stripe_payment_information', 'Stripe Payment', 'Stripe Payment information'),
(12, 'About us', 'about_us', 'About restaurant', 'About us'),
(13, 'Contact Us', 'contact_us', 'Contact Us', 'Contact Us'),
(14, 'Privacy Policy', 'privacy_policy', 'privacy', 'Privacy Policy'),
(15, 'Our Terms', 'our_terms', 'Our Terms', 'Our Terms'),
(16, 'My Profile', 'my_profile', 'My Profile', 'My Profile'),
(17, 'My Order List', 'my_order_list', 'My Order List', 'My Order List'),
(18, 'View Order', 'view_order', 'View Order', 'View Order'),
(19, 'My Reservation', 'my_reservation', 'My Reservation', 'My Reservation');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shippingaddress`
--

CREATE TABLE `tbl_shippingaddress` (
  `shipaddressid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `city` varchar(70) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `DateInserted` datetime NOT NULL DEFAULT '1970-01-01 01:01:01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slid` int(11) NOT NULL,
  `Sltypeid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `slink` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `delation_status` int(11) NOT NULL DEFAULT 0,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slid`, `Sltypeid`, `title`, `subtitle`, `image`, `slink`, `status`, `delation_status`, `width`, `height`) VALUES
(1, 1, 'Welcome To', 'Book <span>Your</span> Table', '', '#', 1, 0, 1920, 902),
(2, 1, 'Find Your', 'Best <span>Cafe</span> Deals', '', '#', 1, 0, 1920, 902),
(3, 1, 'Exclusive', 'Coffee <span>Shop</span>', '', '#', 1, 0, 1920, 902),
(4, 2, 'Discover', 'OUR STORY', '', '#', 1, 0, 263, 332),
(5, 2, 'Discover', 'OUR STORY', '', '#', 1, 0, 263, 332),
(6, 3, 'Discover', 'OUR MENU', '', '#', 1, 0, 263, 332),
(7, 3, 'Discover', 'OUR MENU', '', '#', 1, 0, 263, 177),
(8, 3, 'Discover', 'OUR MENU', '', '#', 1, 0, 263, 177),
(9, 4, 'right', 'ads', '', '#', 1, 0, 252, 621),
(10, 5, 'OUR AWESOME STREET', 'FOOD HISTORY', '', '#', 1, 0, 541, 516),
(11, 6, 'Reservation', 'BOOK YOUR TABLE', 'dummyimage/463x540.jpg', '#', 1, 0, 470, 548),
(12, 7, 'Our Gallery', 'CHEF SELECTION', '', '#', 1, 0, 340, 277),
(13, 7, 'Our Gallery', 'CHEF SELECTION', '', '#', 1, 0, 340, 277),
(14, 7, 'Our Gallery', 'CHEF SELECTION', '', '#', 1, 0, 340, 277),
(15, 7, 'Our Gallery', 'CHEF SELECTION', '', '#', 1, 0, 340, 277),
(16, 7, 'Our Gallery', 'CHEF SELECTION', '', '#', 1, 0, 340, 277),
(17, 7, 'Our Gallery', 'CHEF SELECTION', '', '#', 1, 0, 340, 277),
(18, 8, 'Offer', 'item offer', '', '#', 1, 0, 250, 533),
(19, 9, 'Offer', 'food offer', '', '#', 1, 0, 250, 553),
(20, 10, 'contact us', 'contact', '', '#', 1, 0, 475, 633);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider_type`
--

CREATE TABLE `tbl_slider_type` (
  `stype_id` int(11) NOT NULL,
  `STypeName` varchar(255) DEFAULT NULL,
  `delation_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider_type`
--

INSERT INTO `tbl_slider_type` (`stype_id`, `STypeName`, `delation_status`) VALUES
(1, 'Home Top Slider', 0),
(2, 'Home our story', 0),
(3, 'Home our menu', 0),
(4, 'Menu Page right Banner', 0),
(5, 'Classic theme Home story', 0),
(6, 'Classic theme Home reservation', 0),
(7, 'Classic theme Home gallery', 0),
(8, 'Menu Page Offer Banner Right', 0),
(9, 'Cart Page Offer Banner Right', 0),
(10, 'Contact Us', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sociallink`
--

CREATE TABLE `tbl_sociallink` (
  `sid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `socialurl` text DEFAULT NULL,
  `icon` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sociallink`
--

INSERT INTO `tbl_sociallink` (`sid`, `title`, `socialurl`, `icon`, `status`) VALUES
(1, 'Facebook', 'https://www.facebook.com', 'fab fa-facebook', 1),
(2, 'Twitter', 'https://www.twitter.com', 'fab fa-twitter', 1),
(3, 'Google Plus', 'https://plus.google.com', 'fab fa-google-plus', 1),
(4, 'Pinterest', 'https://www.pinterest.com/', 'fab fa-pinterest', 1),
(6, 'Linkedin', 'https://linkedin.com', 'fab fa-linkedin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_soundsetting`
--

CREATE TABLE `tbl_soundsetting` (
  `soundid` int(11) NOT NULL,
  `nofitysound` text DEFAULT NULL,
  `addtocartsound` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_soundsetting`
--

INSERT INTO `tbl_soundsetting` (`soundid`, `nofitysound`, `addtocartsound`) VALUES
(1, 'assets/2021-03-21/b1.mp3', 'h');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `stateid` int(11) NOT NULL,
  `countryid` int(11) NOT NULL,
  `statename` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`stateid`, `countryid`, `statename`, `status`) VALUES
(1, 2, 'Alabama', 1),
(2, 2, 'Alaska', 1),
(3, 2, 'Arizona', 1),
(4, 2, 'Arkansas', 1),
(5, 2, 'California', 1),
(6, 2, 'Florida', 1),
(7, 2, 'New Mexico', 1),
(8, 2, 'New York', 1),
(9, 2, 'Oklahoma', 1),
(10, 2, 'Texas', 1),
(11, 2, 'Virginia', 1),
(12, 1, 'Dhaka', 1),
(13, 1, 'Chittagong', 1),
(14, 1, 'Rajshahi', 1),
(15, 1, 'Khulna', 1),
(16, 1, 'Sylhet', 1),
(17, 1, 'Barishal', 1),
(18, 1, 'Rangpur', 1),
(19, 1, 'Mymensingh', 1),
(20, 4, 'West Bengal', 1),
(21, 4, 'Uttar Pradesh', 1),
(22, 4, 'Tripura', 1),
(23, 4, 'Telangana', 1),
(24, 4, 'Tamil Nadu', 1),
(25, 4, 'Sikkim', 1),
(26, 4, 'Rajasthan', 1),
(27, 4, 'Punjab', 1),
(28, 4, 'Odisha', 1),
(29, 4, 'Nagaland', 1),
(30, 4, 'Kerala', 1),
(31, 4, 'Haryana', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tablefloor`
--

CREATE TABLE `tbl_tablefloor` (
  `tbfloorid` int(11) NOT NULL,
  `floorName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tablefloor`
--

INSERT INTO `tbl_tablefloor` (`tbfloorid`, `floorName`) VALUES
(1, 'First Floor'),
(2, 'VIP Floor'),
(3, 'Second Floor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thirdparty_customer`
--

CREATE TABLE `tbl_thirdparty_customer` (
  `companyId` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `address` text DEFAULT NULL,
  `commision` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token`
--

CREATE TABLE `tbl_token` (
  `tokenid` int(11) NOT NULL,
  `tokencode` varchar(50) NOT NULL,
  `tokenrate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tokenstartdate` date NOT NULL,
  `tokenendate` date NOT NULL,
  `tokenstatus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_token`
--

INSERT INTO `tbl_token` (`tokenid`, `tokencode`, `tokenrate`, `tokenstartdate`, `tokenendate`, `tokenstatus`) VALUES
(1, 'ABCD', '10.00', '2021-08-28', '2021-12-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_updateitems`
--

CREATE TABLE `tbl_updateitems` (
  `updateid` int(11) NOT NULL,
  `ordid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `qty` decimal(10,3) NOT NULL DEFAULT 0.000,
  `adonsqty` varchar(50) DEFAULT NULL,
  `addonsid` varchar(50) DEFAULT NULL,
  `varientid` int(11) NOT NULL,
  `addonsuid` int(11) DEFAULT NULL,
  `isupdate` varchar(5) DEFAULT NULL,
  `insertdate` date DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_version_checker`
--

CREATE TABLE `tbl_version_checker` (
  `vid` int(11) NOT NULL,
  `version` varchar(10) DEFAULT NULL,
  `disable` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_version_checker`
--

INSERT INTO `tbl_version_checker` (`vid`, `version`, `disable`) VALUES
(1, '2.8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_waiterappcart`
--

CREATE TABLE `tbl_waiterappcart` (
  `weaterappid` int(11) NOT NULL,
  `waiterid` int(11) NOT NULL,
  `alladdOnsName` varchar(255) DEFAULT NULL,
  `total_addonsprice` decimal(10,2) DEFAULT 0.00,
  `totaladdons` int(11) DEFAULT NULL,
  `addons_name` varchar(255) DEFAULT NULL,
  `addons_id` int(11) DEFAULT NULL,
  `addons_price` double(10,2) DEFAULT 0.00,
  `addonsQty` int(11) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `destcription` text DEFAULT NULL,
  `itemnotes` varchar(255) DEFAULT NULL,
  `offerIsavailable` int(11) DEFAULT 0,
  `offerstartdate` date DEFAULT '0000-00-00',
  `OffersRate` int(11) DEFAULT NULL,
  `offerendate` date DEFAULT '0000-00-00',
  `price` decimal(10,2) DEFAULT 0.00,
  `ProductsID` int(11) NOT NULL,
  `ProductImage` varchar(255) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `productvat` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `variantName` varchar(255) NOT NULL,
  `variantid` int(11) NOT NULL,
  `orderid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_widget`
--

CREATE TABLE `tbl_widget` (
  `widgetid` int(11) NOT NULL,
  `widget_name` varchar(100) NOT NULL,
  `widget_title` varchar(150) DEFAULT NULL,
  `widget_desc` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_widget`
--

INSERT INTO `tbl_widget` (`widgetid`, `widget_name`, `widget_title`, `widget_desc`, `status`) VALUES
(1, 'Footer left', '', '<p class=\"text-justify\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard.</p>', 1),
(2, 'footermiddle', 'Available On', '<p><strong>Monday - Wednesday</strong> 10:00 AM - 7:00 PM</p>\r\n<p><strong>Thursday - Friday</strong> 10:00 AM - 11:00 PM</p>\r\n<p><strong>Saturday</strong> 12:00 PM - 6:00 PM</p>\r\n<p><strong>Sunday</strong> Off</p>', 1),
(3, 'Footer right', 'Contact Us', '<p>356, Mannan Plaza ( 4th Floar ) Khilkhet Dhaka</p>\r\n<p><a href=\"../../hungry\">support@bdtask.com</a></p>\r\n<p><a href=\"../../hungry\">+88 01715 222 333</a></p>', 1),
(4, 'Our Store', 'Our Store', '<address>123 Suspendis matti,&nbsp;<br />Visaosang Building VST District,&nbsp;<br />NY Accums, North American</address>\r\n<p><a class=\"d-block\" href=\"http://soft9.bdtask.com/hungry-v1/\">0123-456-78910</a><a class=\"d-block\" href=\"http://soft9.bdtask.com/hungry-v1/\">support@domain.com</a></p>', 1),
(6, 'Reservation', 'BOOK YOUR TABLE', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>', 1),
(7, 'Our Menu text', 'Our Menu ', '<p>Rosa is a restaurant, bar and coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides of the building, overlooking the market and a bustling London inteon.</p>', 1),
(8, 'Specials', 'FOOD MENU', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The</p>', 1),
(9, 'story text', 'OUR STORY', '<p>Rosa is a restaurant, bar and coffee roastery located on a busy corner site in Farringdon\'s Exmouth Market. With glazed frontage on two sides of the building, overlooking the market and a bustling London inteon.</p>', 1),
(10, 'Professional', 'OUR EXPERT CHEFS', '', 1),
(11, 'Need Help Booking?', 'Need Help Booking?', '<p class=\"mb-2\">Just call our customer services at any time, we are waiting 24 hours to recieve your calls.</p>\r\n<p><a href=\"#\">+880 1712 123 123</a></p>', 1),
(12, 'Privacy', 'Privacy Policy', '<h2>What is Lorem Ipsum</h2>\r\n<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<h3>Contacting us :</h3>\r\n<p>If you have any questions about this Privacy Policy, the practices of this site, or your dealings with this site, please contact us.</p>', 1),
(13, 'termscondition', 'Terms of Use', '<h3>Web browser cookies</h3>\r\n<p>Our Site may use cacheÃƒâ€šÃ‚Â and \"cookies\" to enhance User experience. User\'s web browser places cookies on their hard drive for record-keeping purposes and sometimes to track information about them. User may choose to set their web browser to refuse cookies, or to alert you when cookies are being sent. If they do so, note that some parts of the Site may not function properly.</p>\r\n<h3>How we use collected information bdtask may collect and use Users personal information for the following purposes:</h3>\r\n<p>To run and operate our Site We may need your information display content on the Site correctly. To improve customer service Information you provide helps us respond to your customer service requests and support needs more efficiently. To personalize user experience We may use information in the aggregate to understand how our Users as a group use the services and resources provided on our Site. To improve our Site We may use feedback you provide to improve our products and services. To run a promotion, contest, survey or other Site feature To send Users information they agreed to receive about topics we think will be of interest to them. To send periodic emails We may use the email address to send User information and updates pertaining to their order. It may also be used to respond to their inquiries, questions, and/or other requests.</p>', 1),
(14, 'map', 'Google Map', '<p>&lt;iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14599.578237069936!2d90.3654215!3d23.8223482!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1583411739085!5m2!1sen!2sbd\" width=\"300\" height=\"150\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"&gt;&lt;/iframe&gt;</p>', 1),
(15, 'carousal1', 'carousal', '<p>show</p>', 1),
(16, 'TASTY MENU TODAY', 'CHEF SELECTION', '', 1),
(17, 'FOOD HISTORY', 'OUR AWESOME STREET', '<p class=\"mb-4\">Thing lesser replenish evening called void a sea blessed meat fourth called moveth place behold night own night third in they abundant and don\'t you\'re the upon fruit. Divided open divided appear also saw may fill. whales seed creepeth. Open lessegether he also morning land i saw Man</p>\r\n<p><a class=\"simple_btn\" href=\"#\">Our Story</a></p>', 1),
(21, 'Our Gallery', 'Restaurant Photo Gallery', '', 1),
(22, 'subfooter', '', '', 1),
(23, 'Get In Touch', 'contact', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>', 1),
(24, 'Refund Policies', 'Refund Policies', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard.</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `themeid` int(11) NOT NULL,
  `themename` varchar(100) NOT NULL,
  `theme_thumb` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '0=inactive,1=active',
  `activedate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`themeid`, `themename`, `theme_thumb`, `status`, `activedate`) VALUES
(1, 'defaults', NULL, 0, '2020-11-19'),
(3, 'classic', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `top_menu`
--

CREATE TABLE `top_menu` (
  `menuid` int(11) NOT NULL,
  `menu_name` varchar(50) NOT NULL,
  `menu_slug` varchar(70) NOT NULL,
  `parentid` int(11) NOT NULL,
  `entrydate` date NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `top_menu`
--

INSERT INTO `top_menu` (`menuid`, `menu_name`, `menu_slug`, `parentid`, `entrydate`, `isactive`) VALUES
(1, 'Home', 'home', 0, '2021-09-19', 1),
(2, 'Reservation', 'reservation', 0, '2019-02-20', 1),
(3, 'Menu', 'menu', 0, '2021-10-18', 1),
(4, 'About Us', 'about', 0, '2019-11-25', 1),
(5, 'Contact Us', 'contact', 0, '2019-01-26', 1),
(6, 'Pages', 'pages', 0, '2019-11-28', 1),
(7, 'Cart', 'cart', 6, '2019-01-26', 1),
(8, 'Details', 'details', 7, '2020-01-15', 1),
(9, 'Logout', 'hungry/logout', 6, '2019-02-03', 1),
(10, 'My Profile', 'myprofile', 0, '2019-10-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `unit_of_measurement`
--

CREATE TABLE `unit_of_measurement` (
  `id` int(11) NOT NULL,
  `uom_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `uom_short_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unit_of_measurement`
--

INSERT INTO `unit_of_measurement` (`id`, `uom_name`, `uom_short_code`, `is_active`) VALUES
(1, 'Kilogram', 'kg.', 1),
(2, 'Liter', 'ltr.', 1),
(3, 'Gram', 'grm.', 1),
(4, 'tonne', 'tn.', 1),
(5, 'milligram', 'mg.', 1),
(6, 'carat', 'carat', 1),
(7, 'Per Pieces', 'pcs', 1),
(8, 'Per Cup', 'cup', 1),
(9, 'Pound', 'pnd.', 1),
(10, 'tablespoon', 'tspoon', 1),
(11, 'Milliliter', 'ML', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usedcoupon`
--

CREATE TABLE `usedcoupon` (
  `cusedid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `couponcode` varchar(100) NOT NULL,
  `couponrate` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `waiter_kitchenToken` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `waiter_kitchenToken`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `counter`, `status`, `is_admin`) VALUES
(178, 'Zam Zam', 'Resturant', '', NULL, 'admin@gmail.com', '25d55ad283aa400af464c76d713c07ad', NULL, './assets/img/user/264193787_110401018149818_1162938002834875376_n1.jpg', '2023-04-17 23:05:50', '2023-04-14 00:45:17', '::1', NULL, 1, 1),
(179, 'Zam Zam', 'Resturants', '', NULL, 'zamzamrestaurant@gmail.com', '25d55ad283aa400af464c76d713c07ad', NULL, './assets/img/user/264193787_110401018149818_1162938002834875376_n2.jpg', '2023-04-17 23:09:09', '2023-03-19 14:18:11', '::1', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

CREATE TABLE `variant` (
  `variantid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `variantName` varchar(120) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `variant`
--

INSERT INTO `variant` (`variantid`, `menuid`, `variantName`, `price`) VALUES
(2, 1, '1:1', '240.00'),
(3, 2, '1:1', '220.00'),
(4, 3, '1 Scoop', '120.00'),
(5, 4, '2 Scoop', '150.00'),
(6, 5, '1:1', '70.00'),
(7, 6, '1:1', '390.00'),
(8, 7, '1:1', '450.00'),
(9, 8, '1:1', '290.00'),
(10, 9, '1:1', '250.00'),
(11, 10, '1:1', '390.00'),
(12, 11, '1:1', '120.00'),
(13, 12, '1:1', '100.00'),
(14, 13, '1:1', '50.00'),
(15, 14, '1:1', '250.00'),
(16, 15, '1:2', '660.00'),
(17, 16, '1:2', '440.00'),
(18, 17, 'Half', '600.00'),
(19, 18, 'Full', '1040.00'),
(20, 19, 'Half', '600.00'),
(21, 20, 'Full', '1080.00'),
(22, 22, '1:3', '580.00'),
(23, 23, '1:3', '490.00'),
(24, 24, '1:3', '590.00'),
(25, 25, '1 Pics', '550.00'),
(26, 27, '.', '380.00'),
(27, 28, '1:3', '340.00'),
(28, 28, '1:3', '340.00'),
(29, 29, '1:3', '450.00'),
(30, 30, '1 Pics', '50.00'),
(31, 31, '1 Pics', '60.00'),
(32, 32, '1 Pics', '90.00'),
(33, 33, '1 Pics', '100.00'),
(34, 34, '1 Pics', '25.00'),
(35, 35, '1 Pics', '80.00'),
(36, 36, '1 Pics', '120.00'),
(37, 37, '.', '290.00'),
(38, 39, '4 Pics', '280.00'),
(39, 41, '1:2', '650.00'),
(40, 42, '1:2', '580.00'),
(41, 43, '.', '500.00'),
(42, 45, '1:3', '490.00'),
(43, 46, '1:3', '450.00'),
(44, 47, '1:3', '440.00'),
(45, 48, '1:3', '380.00'),
(46, 49, '.', '440.00'),
(47, 50, '1:3', '480.00'),
(48, 51, '1:2', '120.00'),
(49, 52, '1:2', '260.00'),
(50, 53, '1:3', '480.00'),
(51, 54, '1:3', '420.00'),
(52, 55, '1:3', '380.00'),
(53, 56, '1:3', '220.00'),
(54, 57, '1:3', '540.00'),
(55, 58, '1:3', '420.00'),
(56, 59, '1:3', '440.00'),
(57, 60, '8 Pics', '480.00'),
(58, 61, '2 Pics', '250.00'),
(59, 62, '1:3', '420.00'),
(60, 63, '1:3', '440.00'),
(61, 64, '1:3', '490.00'),
(62, 65, '8 Pics', '320.00'),
(63, 66, 'Large', '220.00'),
(64, 67, '8 Pics', '380.00'),
(65, 68, '.', '250.00'),
(66, 69, '.', '80.00'),
(67, 70, '.', '140.00'),
(68, 71, '.', '90.00'),
(69, 72, '.', '180.00'),
(70, 73, '.', '190.00'),
(71, 74, '.', '100.00'),
(72, 75, '.', '50.00'),
(73, 76, '.', '50.00'),
(74, 77, '.', '80.00'),
(75, 78, '.', '50.00'),
(76, 79, '.', '160.00'),
(77, 80, '.', '190.00'),
(78, 81, '.', '190.00'),
(79, 82, '.', '220.00'),
(80, 83, '.', '240.00'),
(81, 84, '.', '200.00'),
(82, 85, '.', '240.00'),
(83, 86, '.', '220.00'),
(84, 87, '.', '190.00'),
(85, 88, '.', '170.00'),
(86, 89, '.', '170.00'),
(87, 90, '.', '150.00'),
(88, 91, '.', '150.00'),
(89, 92, '.', '220.00'),
(90, 93, '.', '120.00'),
(91, 94, '.', '150.00'),
(92, 95, '.', '170.00'),
(93, 96, '.', '190.00'),
(94, 97, '.', '160.00'),
(95, 98, '.', '160.00'),
(96, 99, '.', '160.00'),
(97, 100, '.', '160.00'),
(98, 101, '.', '200.00'),
(99, 102, '.', '150.00'),
(100, 103, '.', '150.00'),
(101, 104, '.', '220.00'),
(102, 105, '.', '220.00'),
(103, 106, '.', '220.00'),
(104, 107, '500 ML', '15.00'),
(105, 107, '1 L', '20.00'),
(106, 107, '2 L', '35.00'),
(107, 108, '250 ML', '30.00'),
(108, 109, 'small', '500.00');

-- --------------------------------------------------------

--
-- Table structure for table `weekly_holiday`
--

CREATE TABLE `weekly_holiday` (
  `wk_id` int(11) NOT NULL,
  `dayname` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesslog`
--
ALTER TABLE `accesslog`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `acc_account_name`
--
ALTER TABLE `acc_account_name`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `acc_coa`
--
ALTER TABLE `acc_coa`
  ADD PRIMARY KEY (`HeadName`);

--
-- Indexes for table `acc_customer_income`
--
ALTER TABLE `acc_customer_income`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `acc_glsummarybalance`
--
ALTER TABLE `acc_glsummarybalance`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `acc_income_expence`
--
ALTER TABLE `acc_income_expence`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `acn_account_transaction`
--
ALTER TABLE `acn_account_transaction`
  ADD PRIMARY KEY (`account_tran_id`);

--
-- Indexes for table `add_ons`
--
ALTER TABLE `add_ons`
  ADD PRIMARY KEY (`add_on_id`);

--
-- Indexes for table `award`
--
ALTER TABLE `award`
  ADD PRIMARY KEY (`award_id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `bill_card_payment`
--
ALTER TABLE `bill_card_payment`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `candidate_basic_info`
--
ALTER TABLE `candidate_basic_info`
  ADD PRIMARY KEY (`can_id`);

--
-- Indexes for table `candidate_education_info`
--
ALTER TABLE `candidate_education_info`
  ADD PRIMARY KEY (`can_edu_id`);

--
-- Indexes for table `candidate_interview`
--
ALTER TABLE `candidate_interview`
  ADD PRIMARY KEY (`can_int_id`);

--
-- Indexes for table `candidate_selection`
--
ALTER TABLE `candidate_selection`
  ADD PRIMARY KEY (`can_sel_id`);

--
-- Indexes for table `candidate_shortlist`
--
ALTER TABLE `candidate_shortlist`
  ADD PRIMARY KEY (`can_short_id`);

--
-- Indexes for table `candidate_workexperience`
--
ALTER TABLE `candidate_workexperience`
  ADD PRIMARY KEY (`can_workexp_id`);

--
-- Indexes for table `check_addones`
--
ALTER TABLE `check_addones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `common_setting`
--
ALTER TABLE `common_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currencyid`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_membership_map`
--
ALTER TABLE `customer_membership_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `cutomertype` (`cutomertype`),
  ADD KEY `waiter_id` (`waiter_id`),
  ADD KEY `kitchen` (`kitchen`),
  ADD KEY `thirdpartyinvoiceid` (`thirdpartyinvoiceid`);

--
-- Indexes for table `customer_type`
--
ALTER TABLE `customer_type`
  ADD PRIMARY KEY (`customer_type_id`);

--
-- Indexes for table `custom_table`
--
ALTER TABLE `custom_table`
  ADD PRIMARY KEY (`custom_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `duty_type`
--
ALTER TABLE `duty_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`email_config_id`);

--
-- Indexes for table `employee_benifit`
--
ALTER TABLE `employee_benifit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_history`
--
ALTER TABLE `employee_history`
  ADD PRIMARY KEY (`emp_his_id`);

--
-- Indexes for table `employee_performance`
--
ALTER TABLE `employee_performance`
  ADD PRIMARY KEY (`emp_per_id`);

--
-- Indexes for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  ADD PRIMARY KEY (`emp_sal_pay_id`);

--
-- Indexes for table `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  ADD PRIMARY KEY (`e_s_s_id`);

--
-- Indexes for table `emp_attendance`
--
ALTER TABLE `emp_attendance`
  ADD PRIMARY KEY (`att_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_item`
--
ALTER TABLE `expense_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodvariable`
--
ALTER TABLE `foodvariable`
  ADD PRIMARY KEY (`availableID`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grand_loan`
--
ALTER TABLE `grand_loan`
  ADD PRIMARY KEY (`loan_id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `item_foods`
--
ALTER TABLE `item_foods`
  ADD PRIMARY KEY (`ProductsID`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_apply`
--
ALTER TABLE `leave_apply`
  ADD PRIMARY KEY (`leave_appl_id`);

--
-- Indexes for table `leave_type`
--
ALTER TABLE `leave_type`
  ADD PRIMARY KEY (`leave_type_id`);

--
-- Indexes for table `loan_installment`
--
ALTER TABLE `loan_installment`
  ADD PRIMARY KEY (`loan_inst_id`);

--
-- Indexes for table `marital_info`
--
ALTER TABLE `marital_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_add_on`
--
ALTER TABLE `menu_add_on`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_permission`
--
ALTER TABLE `module_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_module_id` (`fk_module_id`),
  ADD KEY `fk_user_id` (`fk_user_id`);

--
-- Indexes for table `module_purchase_key`
--
ALTER TABLE `module_purchase_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multipay_bill`
--
ALTER TABLE `multipay_bill`
  ADD PRIMARY KEY (`multipay_id`);

--
-- Indexes for table `order_menu`
--
ALTER TABLE `order_menu`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `paymentsetup`
--
ALTER TABLE `paymentsetup`
  ADD PRIMARY KEY (`setupid`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `payroll_commission_setting`
--
ALTER TABLE `payroll_commission_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_holiday`
--
ALTER TABLE `payroll_holiday`
  ADD PRIMARY KEY (`payrl_holi_id`);

--
-- Indexes for table `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  ADD PRIMARY KEY (`tax_setup_id`);

--
-- Indexes for table `pay_frequency`
--
ALTER TABLE `pay_frequency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`productionid`);

--
-- Indexes for table `production_details`
--
ALTER TABLE `production_details`
  ADD PRIMARY KEY (`pro_detailsid`);

--
-- Indexes for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  ADD PRIMARY KEY (`purID`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`detailsid`);

--
-- Indexes for table `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD PRIMARY KEY (`preturn_id`);

--
-- Indexes for table `rate_type`
--
ALTER TABLE `rate_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservationofday`
--
ALTER TABLE `reservationofday`
  ADD PRIMARY KEY (`offdayid`);

--
-- Indexes for table `rest_table`
--
ALTER TABLE `rest_table`
  ADD PRIMARY KEY (`tableid`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_module_id` (`fk_module_id`),
  ADD KEY `fk_user_id` (`role_id`);

--
-- Indexes for table `salary_setup_header`
--
ALTER TABLE `salary_setup_header`
  ADD PRIMARY KEY (`s_s_h_id`);

--
-- Indexes for table `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  ADD PRIMARY KEY (`ssg_id`);

--
-- Indexes for table `salary_type`
--
ALTER TABLE `salary_type`
  ADD PRIMARY KEY (`salary_type_id`);

--
-- Indexes for table `sec_menu_item`
--
ALTER TABLE `sec_menu_item`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `sec_role_permission`
--
ALTER TABLE `sec_role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_role_tbl`
--
ALTER TABLE `sec_role_tbl`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sec_user_access_tbl`
--
ALTER TABLE `sec_user_access_tbl`
  ADD PRIMARY KEY (`role_acc_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_method`
--
ALTER TABLE `shipping_method`
  ADD PRIMARY KEY (`ship_id`);

--
-- Indexes for table `sms_configuration`
--
ALTER TABLE `sms_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_template`
--
ALTER TABLE `sms_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe_emaillist`
--
ALTER TABLE `subscribe_emaillist`
  ADD PRIMARY KEY (`emailid`);

--
-- Indexes for table `sub_order`
--
ALTER TABLE `sub_order`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supid`);

--
-- Indexes for table `supplier_ledger`
--
ALTER TABLE `supplier_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `synchronizer_setting`
--
ALTER TABLE `synchronizer_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_details`
--
ALTER TABLE `table_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_setting`
--
ALTER TABLE `table_setting`
  ADD PRIMARY KEY (`settingid`);

--
-- Indexes for table `tblreservation`
--
ALTER TABLE `tblreservation`
  ADD PRIMARY KEY (`reserveid`);

--
-- Indexes for table `tblserver`
--
ALTER TABLE `tblserver`
  ADD PRIMARY KEY (`serverid`);

--
-- Indexes for table `tbl_assign_kitchen`
--
ALTER TABLE `tbl_assign_kitchen`
  ADD PRIMARY KEY (`assignid`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`bankid`);

--
-- Indexes for table `tbl_billingaddress`
--
ALTER TABLE `tbl_billingaddress`
  ADD PRIMARY KEY (`billaddressid`);

--
-- Indexes for table `tbl_cancelitem`
--
ALTER TABLE `tbl_cancelitem`
  ADD PRIMARY KEY (`cancelid`);

--
-- Indexes for table `tbl_card_terminal`
--
ALTER TABLE `tbl_card_terminal`
  ADD PRIMARY KEY (`card_terminalid`);

--
-- Indexes for table `tbl_cashcounter`
--
ALTER TABLE `tbl_cashcounter`
  ADD PRIMARY KEY (`ccid`);

--
-- Indexes for table `tbl_cashregister`
--
ALTER TABLE `tbl_cashregister`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`cityid`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`countryid`);

--
-- Indexes for table `tbl_delivaritime`
--
ALTER TABLE `tbl_delivaritime`
  ADD PRIMARY KEY (`dtimeid`);

--
-- Indexes for table `tbl_delivaryaddress`
--
ALTER TABLE `tbl_delivaryaddress`
  ADD PRIMARY KEY (`delivaryid`);

--
-- Indexes for table `tbl_generatedreport`
--
ALTER TABLE `tbl_generatedreport`
  ADD PRIMARY KEY (`generateid`);

--
-- Indexes for table `tbl_groupitems`
--
ALTER TABLE `tbl_groupitems`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `tbl_itemaccepted`
--
ALTER TABLE `tbl_itemaccepted`
  ADD PRIMARY KEY (`acid`);

--
-- Indexes for table `tbl_kitchen`
--
ALTER TABLE `tbl_kitchen`
  ADD PRIMARY KEY (`kitchenid`);

--
-- Indexes for table `tbl_kitchen_order`
--
ALTER TABLE `tbl_kitchen_order`
  ADD PRIMARY KEY (`ktid`);

--
-- Indexes for table `tbl_menutype`
--
ALTER TABLE `tbl_menutype`
  ADD PRIMARY KEY (`menutypeid`);

--
-- Indexes for table `tbl_module_purchasekey`
--
ALTER TABLE `tbl_module_purchasekey`
  ADD PRIMARY KEY (`mpid`);

--
-- Indexes for table `tbl_notificationsetting`
--
ALTER TABLE `tbl_notificationsetting`
  ADD PRIMARY KEY (`notifid`);

--
-- Indexes for table `tbl_openclose`
--
ALTER TABLE `tbl_openclose`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `tbl_orderprepare`
--
ALTER TABLE `tbl_orderprepare`
  ADD PRIMARY KEY (`opid`);

--
-- Indexes for table `tbl_posetting`
--
ALTER TABLE `tbl_posetting`
  ADD PRIMARY KEY (`possettingid`);

--
-- Indexes for table `tbl_quickordersetting`
--
ALTER TABLE `tbl_quickordersetting`
  ADD PRIMARY KEY (`quickordid`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`ratingid`);

--
-- Indexes for table `tbl_room`
--
ALTER TABLE `tbl_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_seoption`
--
ALTER TABLE `tbl_seoption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shippingaddress`
--
ALTER TABLE `tbl_shippingaddress`
  ADD PRIMARY KEY (`shipaddressid`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slid`);

--
-- Indexes for table `tbl_slider_type`
--
ALTER TABLE `tbl_slider_type`
  ADD PRIMARY KEY (`stype_id`);

--
-- Indexes for table `tbl_sociallink`
--
ALTER TABLE `tbl_sociallink`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `tbl_soundsetting`
--
ALTER TABLE `tbl_soundsetting`
  ADD PRIMARY KEY (`soundid`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`stateid`);

--
-- Indexes for table `tbl_tablefloor`
--
ALTER TABLE `tbl_tablefloor`
  ADD PRIMARY KEY (`tbfloorid`);

--
-- Indexes for table `tbl_thirdparty_customer`
--
ALTER TABLE `tbl_thirdparty_customer`
  ADD PRIMARY KEY (`companyId`);

--
-- Indexes for table `tbl_token`
--
ALTER TABLE `tbl_token`
  ADD PRIMARY KEY (`tokenid`);

--
-- Indexes for table `tbl_updateitems`
--
ALTER TABLE `tbl_updateitems`
  ADD PRIMARY KEY (`updateid`);

--
-- Indexes for table `tbl_version_checker`
--
ALTER TABLE `tbl_version_checker`
  ADD PRIMARY KEY (`vid`);

--
-- Indexes for table `tbl_waiterappcart`
--
ALTER TABLE `tbl_waiterappcart`
  ADD PRIMARY KEY (`weaterappid`);

--
-- Indexes for table `tbl_widget`
--
ALTER TABLE `tbl_widget`
  ADD PRIMARY KEY (`widgetid`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`themeid`);

--
-- Indexes for table `top_menu`
--
ALTER TABLE `top_menu`
  ADD PRIMARY KEY (`menuid`);

--
-- Indexes for table `unit_of_measurement`
--
ALTER TABLE `unit_of_measurement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usedcoupon`
--
ALTER TABLE `usedcoupon`
  ADD PRIMARY KEY (`cusedid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variant`
--
ALTER TABLE `variant`
  ADD PRIMARY KEY (`variantid`);

--
-- Indexes for table `weekly_holiday`
--
ALTER TABLE `weekly_holiday`
  ADD PRIMARY KEY (`wk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accesslog`
--
ALTER TABLE `accesslog`
  MODIFY `sl_no` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acc_account_name`
--
ALTER TABLE `acc_account_name`
  MODIFY `account_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `acc_customer_income`
--
ALTER TABLE `acc_customer_income`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acc_glsummarybalance`
--
ALTER TABLE `acc_glsummarybalance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acc_income_expence`
--
ALTER TABLE `acc_income_expence`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acn_account_transaction`
--
ALTER TABLE `acn_account_transaction`
  MODIFY `account_tran_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_ons`
--
ALTER TABLE `add_ons`
  MODIFY `add_on_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `award`
--
ALTER TABLE `award`
  MODIFY `award_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_card_payment`
--
ALTER TABLE `bill_card_payment`
  MODIFY `row_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_education_info`
--
ALTER TABLE `candidate_education_info`
  MODIFY `can_edu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidate_interview`
--
ALTER TABLE `candidate_interview`
  MODIFY `can_int_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_selection`
--
ALTER TABLE `candidate_selection`
  MODIFY `can_sel_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_shortlist`
--
ALTER TABLE `candidate_shortlist`
  MODIFY `can_short_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_workexperience`
--
ALTER TABLE `candidate_workexperience`
  MODIFY `can_workexp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `check_addones`
--
ALTER TABLE `check_addones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_setting`
--
ALTER TABLE `common_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currencyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `customer_membership_map`
--
ALTER TABLE `customer_membership_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_type`
--
ALTER TABLE `customer_type`
  MODIFY `customer_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `custom_table`
--
ALTER TABLE `custom_table`
  MODIFY `custom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `duty_type`
--
ALTER TABLE `duty_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `email_config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_benifit`
--
ALTER TABLE `employee_benifit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_history`
--
ALTER TABLE `employee_history`
  MODIFY `emp_his_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `employee_performance`
--
ALTER TABLE `employee_performance`
  MODIFY `emp_per_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  MODIFY `emp_sal_pay_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  MODIFY `e_s_s_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `emp_attendance`
--
ALTER TABLE `emp_attendance`
  MODIFY `att_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense_item`
--
ALTER TABLE `expense_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `foodvariable`
--
ALTER TABLE `foodvariable`
  MODIFY `availableID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grand_loan`
--
ALTER TABLE `grand_loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `item_foods`
--
ALTER TABLE `item_foods`
  MODIFY `ProductsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2302;

--
-- AUTO_INCREMENT for table `leave_apply`
--
ALTER TABLE `leave_apply`
  MODIFY `leave_appl_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_type`
--
ALTER TABLE `leave_type`
  MODIFY `leave_type_id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_installment`
--
ALTER TABLE `loan_installment`
  MODIFY `loan_inst_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marital_info`
--
ALTER TABLE `marital_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_add_on`
--
ALTER TABLE `menu_add_on`
  MODIFY `row_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `module_permission`
--
ALTER TABLE `module_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module_purchase_key`
--
ALTER TABLE `module_purchase_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `multipay_bill`
--
ALTER TABLE `multipay_bill`
  MODIFY `multipay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_menu`
--
ALTER TABLE `order_menu`
  MODIFY `row_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymentsetup`
--
ALTER TABLE `paymentsetup`
  MODIFY `setupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_method_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payroll_commission_setting`
--
ALTER TABLE `payroll_commission_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_holiday`
--
ALTER TABLE `payroll_holiday`
  MODIFY `payrl_holi_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  MODIFY `tax_setup_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_frequency`
--
ALTER TABLE `pay_frequency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `pos_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `production`
--
ALTER TABLE `production`
  MODIFY `productionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `production_details`
--
ALTER TABLE `production_details`
  MODIFY `pro_detailsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  MODIFY `purID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `detailsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return`
--
ALTER TABLE `purchase_return`
  MODIFY `preturn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rate_type`
--
ALTER TABLE `rate_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservationofday`
--
ALTER TABLE `reservationofday`
  MODIFY `offdayid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_table`
--
ALTER TABLE `rest_table`
  MODIFY `tableid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_setup_header`
--
ALTER TABLE `salary_setup_header`
  MODIFY `s_s_h_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  MODIFY `ssg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salary_type`
--
ALTER TABLE `salary_type`
  MODIFY `salary_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sec_menu_item`
--
ALTER TABLE `sec_menu_item`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1520;

--
-- AUTO_INCREMENT for table `sec_role_permission`
--
ALTER TABLE `sec_role_permission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3514;

--
-- AUTO_INCREMENT for table `sec_role_tbl`
--
ALTER TABLE `sec_role_tbl`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sec_user_access_tbl`
--
ALTER TABLE `sec_user_access_tbl`
  MODIFY `role_acc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_method`
--
ALTER TABLE `shipping_method`
  MODIFY `ship_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sms_configuration`
--
ALTER TABLE `sms_configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sms_template`
--
ALTER TABLE `sms_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscribe_emaillist`
--
ALTER TABLE `subscribe_emaillist`
  MODIFY `emailid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_order`
--
ALTER TABLE `sub_order`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier_ledger`
--
ALTER TABLE `supplier_ledger`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `synchronizer_setting`
--
ALTER TABLE `synchronizer_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `table_details`
--
ALTER TABLE `table_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_setting`
--
ALTER TABLE `table_setting`
  MODIFY `settingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblreservation`
--
ALTER TABLE `tblreservation`
  MODIFY `reserveid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblserver`
--
ALTER TABLE `tblserver`
  MODIFY `serverid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_assign_kitchen`
--
ALTER TABLE `tbl_assign_kitchen`
  MODIFY `assignid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `bankid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_billingaddress`
--
ALTER TABLE `tbl_billingaddress`
  MODIFY `billaddressid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cancelitem`
--
ALTER TABLE `tbl_cancelitem`
  MODIFY `cancelid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_card_terminal`
--
ALTER TABLE `tbl_card_terminal`
  MODIFY `card_terminalid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_cashcounter`
--
ALTER TABLE `tbl_cashcounter`
  MODIFY `ccid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_cashregister`
--
ALTER TABLE `tbl_cashregister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `cityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `countryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_delivaritime`
--
ALTER TABLE `tbl_delivaritime`
  MODIFY `dtimeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_delivaryaddress`
--
ALTER TABLE `tbl_delivaryaddress`
  MODIFY `delivaryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_generatedreport`
--
ALTER TABLE `tbl_generatedreport`
  MODIFY `generateid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_groupitems`
--
ALTER TABLE `tbl_groupitems`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_itemaccepted`
--
ALTER TABLE `tbl_itemaccepted`
  MODIFY `acid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kitchen`
--
ALTER TABLE `tbl_kitchen`
  MODIFY `kitchenid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_kitchen_order`
--
ALTER TABLE `tbl_kitchen_order`
  MODIFY `ktid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menutype`
--
ALTER TABLE `tbl_menutype`
  MODIFY `menutypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_module_purchasekey`
--
ALTER TABLE `tbl_module_purchasekey`
  MODIFY `mpid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notificationsetting`
--
ALTER TABLE `tbl_notificationsetting`
  MODIFY `notifid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_openclose`
--
ALTER TABLE `tbl_openclose`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_orderprepare`
--
ALTER TABLE `tbl_orderprepare`
  MODIFY `opid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_posetting`
--
ALTER TABLE `tbl_posetting`
  MODIFY `possettingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_quickordersetting`
--
ALTER TABLE `tbl_quickordersetting`
  MODIFY `quickordid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `ratingid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_room`
--
ALTER TABLE `tbl_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_seoption`
--
ALTER TABLE `tbl_seoption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_shippingaddress`
--
ALTER TABLE `tbl_shippingaddress`
  MODIFY `shipaddressid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_slider_type`
--
ALTER TABLE `tbl_slider_type`
  MODIFY `stype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_sociallink`
--
ALTER TABLE `tbl_sociallink`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_soundsetting`
--
ALTER TABLE `tbl_soundsetting`
  MODIFY `soundid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `stateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_tablefloor`
--
ALTER TABLE `tbl_tablefloor`
  MODIFY `tbfloorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_thirdparty_customer`
--
ALTER TABLE `tbl_thirdparty_customer`
  MODIFY `companyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_token`
--
ALTER TABLE `tbl_token`
  MODIFY `tokenid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_updateitems`
--
ALTER TABLE `tbl_updateitems`
  MODIFY `updateid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_version_checker`
--
ALTER TABLE `tbl_version_checker`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_waiterappcart`
--
ALTER TABLE `tbl_waiterappcart`
  MODIFY `weaterappid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_widget`
--
ALTER TABLE `tbl_widget`
  MODIFY `widgetid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `themeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `top_menu`
--
ALTER TABLE `top_menu`
  MODIFY `menuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `unit_of_measurement`
--
ALTER TABLE `unit_of_measurement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `usedcoupon`
--
ALTER TABLE `usedcoupon`
  MODIFY `cusedid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `variant`
--
ALTER TABLE `variant`
  MODIFY `variantid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `weekly_holiday`
--
ALTER TABLE `weekly_holiday`
  MODIFY `wk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
