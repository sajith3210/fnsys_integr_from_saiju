-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2022 at 04:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finsys_sale`
--

-- --------------------------------------------------------

--
-- Table structure for table `app1_accounts`
--

CREATE TABLE `app1_accounts` (
  `accountsid` int(11) NOT NULL,
  `acctype` varchar(100) NOT NULL,
  `detype` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `gst` varchar(100) DEFAULT NULL,
  `deftaxcode` varchar(100) NOT NULL,
  `balance` double DEFAULT NULL,
  `asof` date NOT NULL,
  `balfordisp` double DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `productid_id` int(11) NOT NULL,
  `proid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_accounts1`
--

CREATE TABLE `app1_accounts1` (
  `accounts1id` int(11) NOT NULL,
  `acctype` varchar(100) NOT NULL,
  `detype` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `gst` varchar(100) DEFAULT NULL,
  `deftaxcode` varchar(100) NOT NULL,
  `balance` double DEFAULT NULL,
  `asof` date DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_accounts1`
--

INSERT INTO `app1_accounts1` (`accounts1id`, `acctype`, `detype`, `name`, `description`, `gst`, `deftaxcode`, `balance`, `asof`, `cid_id`) VALUES
(1, 'Current Assets', 'Inventory', 'Inventory Asset', '', '', '', 24921.875, '2022-09-01', 16),
(2, 'Equity', 'Retained Earnings', 'Retained Earnings', '', '', '', 10000, '2022-09-01', 16),
(3, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', '', '', 5250, '2022-09-01', 16),
(4, 'Income', 'Sales of Product Income', 'Sales', '', '', '', 210000, '2022-09-01', 16),
(5, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', '', '', 120078.125, '2022-09-01', 16),
(6, 'Expenses', 'Bank Charges', 'Bank Charges', '', '', '', 5000, '2022-09-01', 16),
(7, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', '', '', 12000, '2022-09-01', 16),
(8, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', '', '', 1000, '2022-09-01', 16),
(9, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', '', '', 20078, '2022-09-01', 16),
(10, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', '', '', 30000, '2022-09-01', 16),
(11, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', '', '', '', -100320, '2022-09-01', 16),
(12, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', '', '', '', 3250, '2022-09-01', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_accountype`
--

CREATE TABLE `app1_accountype` (
  `accountypeid` int(11) NOT NULL,
  `accountname` varchar(100) NOT NULL,
  `accountbal` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_accountype`
--

INSERT INTO `app1_accountype` (`accountypeid`, `accountname`, `accountbal`, `cid_id`) VALUES
(22, 'Inventory', '0', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_addac`
--

CREATE TABLE `app1_addac` (
  `id` bigint(20) NOT NULL,
  `acname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  `dateadded` date NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_addtax1`
--

CREATE TABLE `app1_addtax1` (
  `addtax1id` int(11) NOT NULL,
  `taxname` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_advancepayment`
--

CREATE TABLE `app1_advancepayment` (
  `advancepaymentid` int(11) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `paymentdate` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `memo` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_bankstatement`
--

CREATE TABLE `app1_bankstatement` (
  `bankstatementid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `debit` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_bills`
--

CREATE TABLE `app1_bills` (
  `billid` int(11) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `paymacnt` varchar(100) NOT NULL,
  `paymdate` varchar(100) NOT NULL,
  `paymmethod` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `totamt` varchar(100) NOT NULL,
  `category1` varchar(100) NOT NULL,
  `descrptin1` varchar(100) NOT NULL,
  `catqty1` varchar(100) NOT NULL,
  `catprice1` varchar(100) NOT NULL,
  `cattotal1` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `descrptin2` varchar(100) NOT NULL,
  `catqty2` varchar(100) NOT NULL,
  `catprice2` varchar(100) NOT NULL,
  `cattotal2` varchar(100) NOT NULL,
  `category3` varchar(100) NOT NULL,
  `descrptin3` varchar(100) NOT NULL,
  `catqty3` varchar(100) NOT NULL,
  `catprice3` varchar(100) NOT NULL,
  `cattotal3` varchar(100) NOT NULL,
  `category4` varchar(100) NOT NULL,
  `descrptin4` varchar(100) NOT NULL,
  `catqty4` varchar(100) NOT NULL,
  `catprice4` varchar(100) NOT NULL,
  `cattotal4` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `tax4` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `payornot` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_bundle`
--

CREATE TABLE `app1_bundle` (
  `bundleid` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `product1` varchar(100) DEFAULT NULL,
  `product2` varchar(100) DEFAULT NULL,
  `product3` varchar(100) DEFAULT NULL,
  `product4` varchar(100) DEFAULT NULL,
  `hsn1` varchar(100) DEFAULT NULL,
  `hsn2` varchar(100) DEFAULT NULL,
  `hsn3` varchar(100) DEFAULT NULL,
  `hsn4` varchar(100) DEFAULT NULL,
  `description1` varchar(255) DEFAULT NULL,
  `description2` varchar(255) DEFAULT NULL,
  `description3` varchar(255) DEFAULT NULL,
  `description4` varchar(255) DEFAULT NULL,
  `qty1` int(11) DEFAULT NULL,
  `qty2` int(11) DEFAULT NULL,
  `qty3` int(11) DEFAULT NULL,
  `qty4` int(11) DEFAULT NULL,
  `price1` double DEFAULT NULL,
  `price2` double DEFAULT NULL,
  `price3` double DEFAULT NULL,
  `price4` double DEFAULT NULL,
  `total1` double DEFAULT NULL,
  `total2` double DEFAULT NULL,
  `total3` double DEFAULT NULL,
  `total4` double DEFAULT NULL,
  `tax1` varchar(100) DEFAULT NULL,
  `tax2` varchar(100) DEFAULT NULL,
  `tax3` varchar(100) DEFAULT NULL,
  `tax4` varchar(100) DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_bundle`
--

INSERT INTO `app1_bundle` (`bundleid`, `image`, `name`, `sku`, `description`, `product1`, `product2`, `product3`, `product4`, `hsn1`, `hsn2`, `hsn3`, `hsn4`, `description1`, `description2`, `description3`, `description4`, `qty1`, `qty2`, `qty3`, `qty4`, `price1`, `price2`, `price3`, `price4`, `total1`, `total2`, `total3`, `total4`, `tax1`, `tax2`, `tax3`, `tax4`, `grandtotal`, `cid_id`) VALUES
(3, '', 'Bun_1', 'N41554', 'des1', 'Inv_1', 'Non_1', '', '', '1001', '1002', '', '', 'des', 'des1', '', '', 1, 1, 0, 0, 78.125, 400, 0, 0, 78, 45, 0, 0, '28.0% GST (28%)', '12.0% GST (12%)', '0', '0', NULL, 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_cheqs`
--

CREATE TABLE `app1_cheqs` (
  `chequeid` int(11) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `bankacc` varchar(100) NOT NULL,
  `mailaddr` varchar(100) NOT NULL,
  `paydate` varchar(100) NOT NULL,
  `chequeno` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `category1` varchar(100) NOT NULL,
  `descrptin1` varchar(100) NOT NULL,
  `catqty1` varchar(100) NOT NULL,
  `catprice1` varchar(100) NOT NULL,
  `cattotal1` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `descrptin2` varchar(100) NOT NULL,
  `catqty2` varchar(100) NOT NULL,
  `catprice2` varchar(100) NOT NULL,
  `cattotal2` varchar(100) NOT NULL,
  `category3` varchar(100) NOT NULL,
  `descrptin3` varchar(100) NOT NULL,
  `catqty3` varchar(100) NOT NULL,
  `catprice3` varchar(100) NOT NULL,
  `cattotal3` varchar(100) NOT NULL,
  `category4` varchar(100) NOT NULL,
  `descrptin4` varchar(100) NOT NULL,
  `catqty4` varchar(100) NOT NULL,
  `catprice4` varchar(100) NOT NULL,
  `cattotal4` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `tax4` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_company`
--

CREATE TABLE `app1_company` (
  `cid` int(11) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `caddress` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `cimg` varchar(100) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `industry` varchar(100) NOT NULL,
  `ctype` varchar(100) NOT NULL,
  `abt` varchar(100) NOT NULL,
  `paid` varchar(100) NOT NULL,
  `id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_company`
--

INSERT INTO `app1_company` (`cid`, `cname`, `caddress`, `city`, `state`, `pincode`, `cemail`, `phone`, `cimg`, `bname`, `industry`, `ctype`, `abt`, `paid`, `id_id`) VALUES
(16, 'HCL', 'Kochi', 'Kochi', 'India', '680300', 'hcl@gmail.com', '8887776665', 'service.png', 'HCL', 'Accounting Services', 'Public Limited Company', 'No', 'Cash', 44),
(17, 'TCS', 'Banglore', 'Banglore', 'India', '680404', 'tcs@gmail.com', '8889997776', 'finsys_as_2.png', 'tcs business', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', 45);

-- --------------------------------------------------------

--
-- Table structure for table `app1_credit`
--

CREATE TABLE `app1_credit` (
  `creditnoteid` int(11) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `biladdr` varchar(100) NOT NULL,
  `creditdate` varchar(100) NOT NULL,
  `creditno` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `invnum` varchar(100) NOT NULL,
  `invperiod` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `descrip` varchar(100) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `subtot` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `grndtot` int(11) DEFAULT NULL,
  `taxamnt` int(11) DEFAULT NULL,
  `product1` varchar(100) NOT NULL,
  `descrip1` varchar(100) NOT NULL,
  `qty1` int(11) DEFAULT NULL,
  `price1` varchar(100) NOT NULL,
  `tax1` varchar(100) NOT NULL,
  `total1` int(11) DEFAULT NULL,
  `product2` varchar(100) NOT NULL,
  `descrip2` varchar(100) NOT NULL,
  `qty2` int(11) DEFAULT NULL,
  `price2` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `total2` int(11) DEFAULT NULL,
  `product3` varchar(100) NOT NULL,
  `descrip3` varchar(100) NOT NULL,
  `qty3` int(11) DEFAULT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` int(11) DEFAULT NULL,
  `tax3` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_customer`
--

CREATE TABLE `app1_customer` (
  `customerid` int(11) NOT NULL,
  `title` varchar(10) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `gsttype` varchar(100) DEFAULT NULL,
  `gstin` varchar(100) NOT NULL,
  `panno` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `shipstreet` varchar(100) DEFAULT NULL,
  `shipcity` varchar(100) DEFAULT NULL,
  `shipstate` varchar(100) DEFAULT NULL,
  `shippincode` varchar(100) DEFAULT NULL,
  `shipcountry` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_customer`
--

INSERT INTO `app1_customer` (`customerid`, `title`, `firstname`, `lastname`, `company`, `location`, `gsttype`, `gstin`, `panno`, `email`, `website`, `mobile`, `street`, `city`, `state`, `pincode`, `country`, `shipstreet`, `shipcity`, `shipstate`, `shippincode`, `shipcountry`, `cid_id`) VALUES
(15, 'Miss', 'Sagma', 'N G', 'BOSCH', 'Chennai', 'GST registered Regular', '29ACKFFGH21', 'AJEPS09L', 'sagma@gmail.com', 'www.google.com', '9998887776', 'XYZ Street', 'Chennai', 'Tamilnadu', '680400', 'India', 'XYZ Street', 'Chennai', 'Tamilnadu', '680400', 'India', 16),
(16, 'Miss', 'Silpa', 'N S', 'IBM', 'Banglore', 'GST registered Regular', 'APFGTDR546', 'APPCK60L', 'silpa@gmail.com', 'www.google.com', '998877665', 'z street', 'Banglore', 'Karnataka', '680717', 'India', 'z street', 'Banglore', 'Karnataka', '680717', 'India', 16),
(17, 'Mr', 'Vishnu', 'D', 'Amazon', 'Banglore', 'GST registered Regular', '29ABCDEF56', 'AJEPS87H', 'vishnu@gmail.com', 'www.google.com', '9998887775', 'XYZ Street', 'Banglore', 'Karnataka', '680400', 'India', 'XYZ Street', 'Banglore', 'Karnataka', '680400', 'India', 16),
(18, 'Miss', 'Sonia', 'Johny', 'Aspire', 'Kochi', 'GST registered Regular', '29ACFDER56', 'AJETS78K', 'sonia@gmail.com', 'www.google.com', '8889996664', 'Street1', 'Kochi', 'Kerala', '680303', 'India', 'Street1', 'Kochi', 'Kerala', '680303', 'India', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_customercompliant`
--

CREATE TABLE `app1_customercompliant` (
  `compliantid` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `customername` varchar(255) DEFAULT NULL,
  `invoiceno` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `soldqty` int(11) DEFAULT NULL,
  `compliantqty` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_customercompliant`
--

INSERT INTO `app1_customercompliant` (`compliantid`, `date`, `customername`, `invoiceno`, `productname`, `soldqty`, `compliantqty`, `description`, `cid_id`) VALUES
(1, '2022-09-27', 'Vishnu D', '30', 'Inv_1', 10, 2, 'des', 16),
(2, '2022-09-27', 'Vishnu D', '30', 'Inv_1', 10, 2, 'des', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_customize`
--

CREATE TABLE `app1_customize` (
  `customizeid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `pcolour` varchar(255) NOT NULL,
  `scolour` varchar(255) NOT NULL,
  `fonts` varchar(255) NOT NULL,
  `lastedited` varchar(255) NOT NULL,
  `selected` varchar(255) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_customize`
--

INSERT INTO `app1_customize` (`customizeid`, `name`, `template`, `pcolour`, `scolour`, `fonts`, `lastedited`, `selected`, `cid_id`) VALUES
(1, 'Form_1', 'Classic', '#E9967A', '#DDA0DD', 'Serif Serif font', '2022-09-19', '1', 16),
(4, 'Form_2', '', '#E9967A', '#DB7093', 'Serif Serif font', '2022-09-19', '1', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_delayedcharge`
--

CREATE TABLE `app1_delayedcharge` (
  `delayedchargeid` int(11) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `delayedchargedate` varchar(100) NOT NULL,
  `delayedchargeno` varchar(100) NOT NULL,
  `prodorser` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `prodorser1` varchar(100) NOT NULL,
  `description1` varchar(100) NOT NULL,
  `qty1` varchar(100) NOT NULL,
  `rate1` varchar(100) NOT NULL,
  `total1` varchar(100) NOT NULL,
  `tax1` varchar(100) NOT NULL,
  `prodorser2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `rate2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `prodorser3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `rate3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_employee`
--

CREATE TABLE `app1_employee` (
  `employeeid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `joiningdate` varchar(100) NOT NULL,
  `employeenumber` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `gmail` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `providebankdetails` varchar(20) NOT NULL,
  `bankaccountnumber` varchar(100) NOT NULL,
  `ifsccode` varchar(100) NOT NULL,
  `hrareceived` varchar(20) NOT NULL,
  `totalrentpaid` varchar(100) NOT NULL,
  `livein` varchar(100) NOT NULL,
  `applicabletaxregime` varchar(100) NOT NULL,
  `pannumber` varchar(100) NOT NULL,
  `aadhaarnumber` varchar(100) NOT NULL,
  `universalaccountnumber` varchar(100) NOT NULL,
  `pfaccountnumber` varchar(100) NOT NULL,
  `epsaccountnumber` varchar(100) NOT NULL,
  `praccountnumber` varchar(100) NOT NULL,
  `esinumber` varchar(100) NOT NULL,
  `esidispensaryname` varchar(100) NOT NULL,
  `basic` varchar(100) NOT NULL,
  `da` varchar(100) NOT NULL,
  `othincome1` varchar(100) NOT NULL,
  `othincome2` varchar(100) NOT NULL,
  `othincome3` varchar(100) NOT NULL,
  `othincome4` varchar(100) NOT NULL,
  `othincome5` varchar(100) NOT NULL,
  `othamount1` varchar(100) NOT NULL,
  `othamount2` varchar(100) NOT NULL,
  `othamount3` varchar(100) NOT NULL,
  `othamount4` varchar(100) NOT NULL,
  `othamount5` varchar(100) NOT NULL,
  `provifund` varchar(100) NOT NULL,
  `proftax` varchar(100) NOT NULL,
  `esi` varchar(100) NOT NULL,
  `deduc1` varchar(100) NOT NULL,
  `deduc2` varchar(100) NOT NULL,
  `deduc3` varchar(100) NOT NULL,
  `deduc4` varchar(100) NOT NULL,
  `deducamt1` varchar(100) NOT NULL,
  `deducamt2` varchar(100) NOT NULL,
  `deducamt3` varchar(100) NOT NULL,
  `deducamt4` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_employee`
--

INSERT INTO `app1_employee` (`employeeid`, `name`, `joiningdate`, `employeenumber`, `designation`, `department`, `branch`, `location`, `gender`, `age`, `mobile`, `gmail`, `address`, `providebankdetails`, `bankaccountnumber`, `ifsccode`, `hrareceived`, `totalrentpaid`, `livein`, `applicabletaxregime`, `pannumber`, `aadhaarnumber`, `universalaccountnumber`, `pfaccountnumber`, `epsaccountnumber`, `praccountnumber`, `esinumber`, `esidispensaryname`, `basic`, `da`, `othincome1`, `othincome2`, `othincome3`, `othincome4`, `othincome5`, `othamount1`, `othamount2`, `othamount3`, `othamount4`, `othamount5`, `provifund`, `proftax`, `esi`, `deduc1`, `deduc2`, `deduc3`, `deduc4`, `deducamt1`, `deducamt2`, `deducamt3`, `deducamt4`, `cid_id`) VALUES
(1, 'Chinju Paul', '', '', 'Developer', 'IT Department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_estimate`
--

CREATE TABLE `app1_estimate` (
  `estimateid` int(11) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `billingaddress` varchar(100) NOT NULL,
  `estimatedate` varchar(100) NOT NULL,
  `expirationdate` varchar(100) NOT NULL,
  `estimateno` varchar(100) NOT NULL,
  `placeofsupply` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `estimatetotal` varchar(100) NOT NULL,
  `product1` varchar(100) NOT NULL,
  `hsn1` varchar(100) NOT NULL,
  `description1` varchar(100) NOT NULL,
  `qty1` varchar(100) NOT NULL,
  `rate1` varchar(100) NOT NULL,
  `total1` varchar(100) NOT NULL,
  `tax1` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `rate2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `rate3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_expences`
--

CREATE TABLE `app1_expences` (
  `expencesid` int(11) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `paymdate` varchar(100) NOT NULL,
  `paymmethod` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `totamt` varchar(100) NOT NULL,
  `category1` varchar(100) NOT NULL,
  `descrptin1` varchar(100) NOT NULL,
  `catqty1` varchar(100) NOT NULL,
  `catprice1` varchar(100) NOT NULL,
  `cattotal1` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `descrptin2` varchar(100) NOT NULL,
  `catqty2` varchar(100) NOT NULL,
  `catprice2` varchar(100) NOT NULL,
  `cattotal2` varchar(100) NOT NULL,
  `category3` varchar(100) NOT NULL,
  `descrptin3` varchar(100) NOT NULL,
  `catqty3` varchar(100) NOT NULL,
  `catprice3` varchar(100) NOT NULL,
  `cattotal3` varchar(100) NOT NULL,
  `category4` varchar(100) NOT NULL,
  `descrptin4` varchar(100) NOT NULL,
  `catqty4` varchar(100) NOT NULL,
  `catprice4` varchar(100) NOT NULL,
  `cattotal4` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `tax4` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_expences`
--

INSERT INTO `app1_expences` (`expencesid`, `payee`, `paymdate`, `paymmethod`, `refno`, `totamt`, `category1`, `descrptin1`, `catqty1`, `catprice1`, `cattotal1`, `category2`, `descrptin2`, `catqty2`, `catprice2`, `cattotal2`, `category3`, `descrptin3`, `catqty3`, `catprice3`, `cattotal3`, `category4`, `descrptin4`, `catqty4`, `catprice4`, `cattotal4`, `product`, `hsn`, `description`, `qty`, `price`, `total`, `product2`, `hsn2`, `description2`, `qty2`, `price2`, `total2`, `product3`, `hsn3`, `description3`, `qty3`, `price3`, `total3`, `product4`, `hsn4`, `description4`, `qty4`, `price4`, `total4`, `subtotal`, `tax`, `tax2`, `tax3`, `tax4`, `taxamount`, `grandtotal`, `cid_id`) VALUES
(1, 'Sneha S', '2022-09-29', 'Cash', '', '', 'Inventory Asset', 'des', '1', '100', '100', 'Retained Earnings', 'des', '1', '50', '50', 'Output CGST', 'des', '1', '25', '25', 'Sales', 'des', '1', '75', '75', 'Inv_1', '1001', 'des\n', '1', '78.12', '78.12', 'Non_1', '1002', 'des1\n', '1', '44.64', '44.64', '', '', '\n', '0', '0', '', '', '', '\n', '0', '0', '', '372.76', '28.0% GST(28%)', '28.0% GST(28%)', 'Choose', 'Choose', '34.37', '0.0', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_expenseaccount`
--

CREATE TABLE `app1_expenseaccount` (
  `expenseid` int(11) NOT NULL,
  `account` varchar(100) NOT NULL,
  `begbal` varchar(100) NOT NULL,
  `endbal` varchar(100) NOT NULL,
  `enddate` varchar(100) DEFAULT NULL,
  `dat` varchar(100) DEFAULT NULL,
  `serchar` varchar(100) NOT NULL,
  `expacc` varchar(100) DEFAULT NULL,
  `type1` varchar(100) DEFAULT NULL,
  `memo1` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `expaccountypid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_incomeaccount`
--

CREATE TABLE `app1_incomeaccount` (
  `incomeid` int(11) NOT NULL,
  `dat1` varchar(100) DEFAULT NULL,
  `intear` varchar(100) NOT NULL,
  `incacc` varchar(100) DEFAULT NULL,
  `type2` varchar(100) DEFAULT NULL,
  `memo2` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `expenceincomeid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_inventory`
--

CREATE TABLE `app1_inventory` (
  `inventoryid` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `initialqty` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `stockalrt` varchar(100) NOT NULL,
  `invacnt` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `salesprice` varchar(10) NOT NULL,
  `incomeacnt` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `purchaseinfo` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `expacnt` varchar(100) NOT NULL,
  `purtax` varchar(100) NOT NULL,
  `revcharge` varchar(100) NOT NULL,
  `presupplier` varchar(100) NOT NULL,
  `cxq` double DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_inventory`
--

INSERT INTO `app1_inventory` (`inventoryid`, `image`, `name`, `sku`, `hsn`, `unit`, `category`, `initialqty`, `date`, `stockalrt`, `invacnt`, `description`, `salesprice`, `incomeacnt`, `tax`, `purchaseinfo`, `cost`, `expacnt`, `purtax`, `revcharge`, `presupplier`, `cxq`, `cid_id`) VALUES
(8, '', 'Inv_1', 'N41554', '1001', 'BAG Bags', 'Inventory', '102', '2022-08-25', '5', 'Inventory Asset', 'des', '7000', 'Billable Expense Income', '28.0% GST (28%)', 'des', '700', 'Cost of sales', '28.0% GST (28%)', '5', 'Select Supplier', NULL, 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_invoice`
--

CREATE TABLE `app1_invoice` (
  `invoiceid` int(11) NOT NULL,
  `customername` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `invoiceno` int(11) NOT NULL,
  `terms` varchar(100) NOT NULL,
  `invoicedate` varchar(100) NOT NULL,
  `duedate` varchar(100) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `placosupply` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `tax` varchar(100) NOT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `grandtotal` int(11) DEFAULT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` int(11) DEFAULT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` int(11) DEFAULT NULL,
  `tax2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` int(11) DEFAULT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` int(11) DEFAULT NULL,
  `tax3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` int(11) DEFAULT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` int(11) DEFAULT NULL,
  `tax4` varchar(100) NOT NULL,
  `amtrecvd` int(11) DEFAULT NULL,
  `taxamount` int(11) DEFAULT NULL,
  `baldue` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_invoice`
--

INSERT INTO `app1_invoice` (`invoiceid`, `customername`, `email`, `invoiceno`, `terms`, `invoicedate`, `duedate`, `bname`, `placosupply`, `product`, `hsn`, `description`, `qty`, `price`, `total`, `tax`, `subtotal`, `grandtotal`, `product2`, `hsn2`, `description2`, `qty2`, `price2`, `total2`, `tax2`, `product3`, `hsn3`, `description3`, `qty3`, `price3`, `total3`, `tax3`, `product4`, `hsn4`, `description4`, `qty4`, `price4`, `total4`, `tax4`, `amtrecvd`, `taxamount`, `baldue`, `cid_id`) VALUES
(30, 'Vishnu D', 'vishnu@gmail.com', 30, 'NET 15', '2022-09-23', '2022-10-08', 'Vishnu D\nAmazon\nXYZ Street\nBanglore\nKarnataka\n680400\nIndia', 'Kerala', 'Inv_1', '1001', 'des', 1, '78.12', 78, '28.0% GST (28%)', 246, 300, 'Non_1', '1002', 'des1', 1, '44.64', 45, '12.0% GST (12%)', 'Bun_1', 'N41554', 'des1', 0, '0', 0, 'Choose', '', '', '', 0, '0', 0, 'Choose', 300, 54, '0.0', 16),
(31, 'Silpa N S', 'silpa@gmail.com', 31, 'NET 30', '2022-09-23', '2022-09-23', 'Silpa N S\nIBM\nz street\nBanglore\nKarnataka\n680717\nIndia', 'Kerala', 'Inv_1', '1001', 'des', 1, '78.12', 78, '28.0% GST (28%)', 123, 300, 'Non_1', '1002', 'des1', 1, '44.64', 45, '12.0% GST (12%)', 'Bun_1', 'N41554', 'des1', 0, '0', 0, 'Choose', '', '', '', 0, '0', 0, 'Choose', 300, 54, '0.0', 16),
(41, 'Sagma N G', 'sagma@gmail.com', 0, 'NET 15', '2022-10-01', '2022-10-16', 'Sagma N G\nBOSCH\nXYZ Street\nChennai\nTamilnadu\n680400\nIndia', 'Kerala', 'Non_1', '1002', 'des1', 1, '4000.0', 4000, '28.0% GST (28%)', 16000, 20480, 'Non_1', '1002', 'des1', 1, '4000.0', 4000, '28.0% GST (28%)', 'Non_1', '1002', 'des1', 1, '4000.0', 4000, '28.0% GST (28%)', 'Non_1', '1002', 'des1', 1, '4000.0', 4000, '28.0% GST (28%)', 5120, 4480, '0.0', 16),
(42, 'Sonia Johny', 'sonia@gmail.com', 0, 'NET 30', '2022-10-01', '2022-10-31', 'Sonia Johny\nAspire\nStreet1\nKochi\nKerala\n680303\nIndia', 'Kerala', 'Non_1', '1002', 'des1', 1, '4000.0', 4000, '28.0% GST (28%)', 4000, 5120, '', '', '', 0, '0', 0, 'Choose', '', '', '', 0, '0', 0, 'Choose', '', '', '', 0, '0', 0, 'Choose', 5120, 1120, '0.0', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_item`
--

CREATE TABLE `app1_item` (
  `itemsid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `hsncode` varchar(255) DEFAULT NULL,
  `taxable` varchar(255) DEFAULT NULL,
  `nontaxable` varchar(255) DEFAULT NULL,
  `purchaseprice` varchar(255) DEFAULT NULL,
  `purchaseaccount` varchar(255) DEFAULT NULL,
  `purchasedes` varchar(255) DEFAULT NULL,
  `salesprice` varchar(255) DEFAULT NULL,
  `salesaccount` varchar(255) DEFAULT NULL,
  `salesdes` varchar(255) DEFAULT NULL,
  `taxrate` varchar(255) DEFAULT NULL,
  `intrastatetaxrate` varchar(255) DEFAULT NULL,
  `interstatetaxrate` varchar(255) DEFAULT NULL,
  `trackinventory` varchar(255) DEFAULT NULL,
  `inventoryaccount` varchar(255) DEFAULT NULL,
  `stockonhand` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `inactive` varchar(255) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_item`
--

INSERT INTO `app1_item` (`itemsid`, `name`, `type`, `unit`, `hsncode`, `taxable`, `nontaxable`, `purchaseprice`, `purchaseaccount`, `purchasedes`, `salesprice`, `salesaccount`, `salesdes`, `taxrate`, `intrastatetaxrate`, `interstatetaxrate`, `trackinventory`, `inventoryaccount`, `stockonhand`, `active`, `inactive`, `cid_id`) VALUES
(1, 'Item_1', 'Goods', 'BAG Bags', '12345678', '1', '0', '100', 'Cost of Sales', 'p_des\n\n', '150', 'Billable Expense Income', 's_des\n\n', '28.0% GST (28%)', 'GST 0(0%)', 'IGST 5(5%)', '1', 'Inventory Asset', '10', 'Active', '', 16),
(3, 'Item_2', 'Services', 'CAN Cans', '99887766', '0', '1', '200', 'Cost of Sales', 'p_des_2\n', '', '', '\n', '15.0% ST (100%)', 'GST 18(18%)', 'IGST 18(18%)', '0', '', '0', '', 'Inactive', 16),
(4, 'Item_3', 'Goods', 'V Volume', '01234567', '1', '0', '10', 'Cost of Sales', 'pdes_3\n', '25', 'Billable Expense Income', 'sdes_3\n', '14.00% ST (100%)', 'GST 0(0%)', 'IGST 0(0%)', '0', '', '0', 'Active', '', 16),
(6, 'Item_4', 'Goods', 'BKL Buckles', '12340975', '1', '0', '200', 'Cost of Sales', 'p_des4\n', '', 'Billable Expense Income', '\n', '14.0% VAT (100%)', 'GST 12(12%)', 'IGST 18(18%)', '0', '', '0', '', 'Inactive', 16),
(7, 'Item_5', 'Services', 'CTN Cartons', '22334455', '0', '1', '40', 'Cost of Sales', 'pdess\n', '50', 'Billable Expense Income', 'sdess\n', '14.00% ST (100%)', 'GST 28(28%)', 'IGST 28(28%)', '0', '', '0', 'Active', 'Inactive', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_materialerror`
--

CREATE TABLE `app1_materialerror` (
  `materialerrorid` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `hsn` varchar(255) DEFAULT NULL,
  `availableqty` int(11) DEFAULT NULL,
  `inspectedqty` int(11) DEFAULT NULL,
  `compliantqty` int(11) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_materialerror`
--

INSERT INTO `app1_materialerror` (`materialerrorid`, `date`, `productname`, `sku`, `hsn`, `availableqty`, `inspectedqty`, `compliantqty`, `cid_id`) VALUES
(1, '2022-09-23', 'Inv_1', 'N41554', '1001', 10, 8, 3, 16),
(3, '2022-09-24', 'Inv_1', 'N41554', '1001', 10, 6, 4, 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_noninventory`
--

CREATE TABLE `app1_noninventory` (
  `noninventoryid` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sku` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `descr` varchar(100) NOT NULL,
  `saleprice` varchar(100) NOT NULL,
  `income` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `purchasedescr` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `expenseaccount` varchar(100) NOT NULL,
  `purchasetax` varchar(100) NOT NULL,
  `revcharge` varchar(100) NOT NULL,
  `presupplier` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_noninventory`
--

INSERT INTO `app1_noninventory` (`noninventoryid`, `image`, `name`, `sku`, `hsn`, `unit`, `category`, `descr`, `saleprice`, `income`, `tax`, `purchasedescr`, `cost`, `expenseaccount`, `purchasetax`, `revcharge`, `presupplier`, `qty`, `cid_id`) VALUES
(4, '', 'Non_1', 'N41554', '1002', 'BAG Bags', 'Default', 'des1', '4000', 'Services', '12.0% GST (12%)', 'des2', '50', 'Advertising/Promotional', '12.0% GST (12%)', '5', 'Select Supplier', '108', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_paydowncreditcard`
--

CREATE TABLE `app1_paydowncreditcard` (
  `paycreditcardid` int(11) NOT NULL,
  `ccno` varchar(100) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `dateofpayment` varchar(100) NOT NULL,
  `discription` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_payment`
--

CREATE TABLE `app1_payment` (
  `paymentid` int(11) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `findinvoice` varchar(100) DEFAULT NULL,
  `paymdate` varchar(100) NOT NULL,
  `pmethod` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `depto` varchar(100) NOT NULL,
  `amtreceived` varchar(100) NOT NULL,
  `descrip` varchar(100) NOT NULL,
  `duedate` varchar(10) NOT NULL,
  `orgamt` varchar(100) NOT NULL,
  `openbal` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `amtapply` varchar(100) NOT NULL,
  `amtcredit` varchar(100) NOT NULL,
  `descrip1` varchar(100) NOT NULL,
  `duedate1` varchar(10) NOT NULL,
  `orgamt1` varchar(100) NOT NULL,
  `openbal1` varchar(100) NOT NULL,
  `payment1` varchar(100) NOT NULL,
  `descrip2` varchar(100) NOT NULL,
  `duedate2` varchar(10) NOT NULL,
  `orgamt2` varchar(100) NOT NULL,
  `openbal2` varchar(100) NOT NULL,
  `payment2` varchar(100) NOT NULL,
  `descrip3` varchar(100) NOT NULL,
  `duedate3` varchar(10) NOT NULL,
  `orgamt3` varchar(100) NOT NULL,
  `openbal3` varchar(100) NOT NULL,
  `payment3` varchar(100) NOT NULL,
  `descrip4` varchar(100) NOT NULL,
  `duedate4` varchar(10) NOT NULL,
  `orgamt4` varchar(100) NOT NULL,
  `openbal4` varchar(100) NOT NULL,
  `payment4` varchar(100) NOT NULL,
  `descrip5` varchar(100) NOT NULL,
  `duedate5` varchar(10) NOT NULL,
  `orgamt5` varchar(100) NOT NULL,
  `openbal5` varchar(100) NOT NULL,
  `payment5` varchar(100) NOT NULL,
  `descrip6` varchar(100) NOT NULL,
  `duedate6` varchar(10) NOT NULL,
  `orgamt6` varchar(100) NOT NULL,
  `openbal6` varchar(100) NOT NULL,
  `payment6` varchar(100) NOT NULL,
  `descrip7` varchar(100) NOT NULL,
  `duedate7` varchar(10) NOT NULL,
  `orgamt7` varchar(100) NOT NULL,
  `openbal7` varchar(100) NOT NULL,
  `payment7` varchar(100) NOT NULL,
  `descrip8` varchar(100) NOT NULL,
  `duedate8` varchar(10) NOT NULL,
  `orgamt8` varchar(100) NOT NULL,
  `openbal8` varchar(100) NOT NULL,
  `payment8` varchar(100) NOT NULL,
  `descrip9` varchar(100) NOT NULL,
  `duedate9` varchar(10) NOT NULL,
  `orgamt9` varchar(100) NOT NULL,
  `openbal9` varchar(100) NOT NULL,
  `payment9` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_payment`
--

INSERT INTO `app1_payment` (`paymentid`, `customer`, `email`, `findinvoice`, `paymdate`, `pmethod`, `refno`, `depto`, `amtreceived`, `descrip`, `duedate`, `orgamt`, `openbal`, `payment`, `amtapply`, `amtcredit`, `descrip1`, `duedate1`, `orgamt1`, `openbal1`, `payment1`, `descrip2`, `duedate2`, `orgamt2`, `openbal2`, `payment2`, `descrip3`, `duedate3`, `orgamt3`, `openbal3`, `payment3`, `descrip4`, `duedate4`, `orgamt4`, `openbal4`, `payment4`, `descrip5`, `duedate5`, `orgamt5`, `openbal5`, `payment5`, `descrip6`, `duedate6`, `orgamt6`, `openbal6`, `payment6`, `descrip7`, `duedate7`, `orgamt7`, `openbal7`, `payment7`, `descrip8`, `duedate8`, `orgamt8`, `openbal8`, `payment8`, `descrip9`, `duedate9`, `orgamt9`, `openbal9`, `payment9`, `cid_id`) VALUES
(1, 'Vishnu D', 'vishnu@gmail.com', '30', '2022-10-01', 'Cheque', '1001', 'Deferred CGST', '400', '30 2022-09-23', '2022-10-08', '300', '300.23', '300.23', '300.23', '99.76999999999998', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 16),
(2, 'Vishnu D', 'vishnu@gmail.com', '30', '2022-10-01', 'Credit Card', '1002.0', 'Deferred CGST', '1000', '30 2022-09-23', '2022-10-08', '300', '0.0', '0.0', '0.0', '1000.0', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 16),
(4, 'Sonia Johny', 'sonia@gmail.com', '0', '2022-10-01', 'Cash', '1003.0', 'Deferred CGST', '6000', '0 2022-10-01', '2022-10-31', '5120', '5120.0', '5120.0', '5120.0', '880.0', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_payslip`
--

CREATE TABLE `app1_payslip` (
  `payslipid` int(11) NOT NULL,
  `empname` varchar(100) NOT NULL,
  `employeenumber` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `fper` varchar(100) NOT NULL,
  `tper` varchar(100) NOT NULL,
  `paydate` varchar(100) NOT NULL,
  `basic` varchar(100) NOT NULL,
  `da` varchar(100) NOT NULL,
  `ear1` varchar(100) NOT NULL,
  `earr1` varchar(100) NOT NULL,
  `ear2` varchar(100) NOT NULL,
  `earr2` varchar(100) NOT NULL,
  `ear3` varchar(100) NOT NULL,
  `earr3` varchar(100) NOT NULL,
  `ear4` varchar(100) NOT NULL,
  `earr4` varchar(100) NOT NULL,
  `ear5` varchar(100) NOT NULL,
  `earr5` varchar(100) NOT NULL,
  `ear6` varchar(100) NOT NULL,
  `earr6` varchar(100) NOT NULL,
  `ear7` varchar(100) NOT NULL,
  `earr7` varchar(100) NOT NULL,
  `provi` varchar(100) NOT NULL,
  `prof` varchar(100) NOT NULL,
  `esi` varchar(100) NOT NULL,
  `ded1` varchar(100) NOT NULL,
  `dedu1` varchar(100) NOT NULL,
  `ded2` varchar(100) NOT NULL,
  `dedu2` varchar(100) NOT NULL,
  `ded3` varchar(100) NOT NULL,
  `dedu3` varchar(100) NOT NULL,
  `ded4` varchar(100) NOT NULL,
  `dedu4` varchar(100) NOT NULL,
  `ded5` varchar(100) NOT NULL,
  `dedu5` varchar(100) NOT NULL,
  `ded6` varchar(100) NOT NULL,
  `dedu6` varchar(100) NOT NULL,
  `gros` varchar(100) NOT NULL,
  `tded` varchar(100) NOT NULL,
  `netsal` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_payslip`
--

INSERT INTO `app1_payslip` (`payslipid`, `empname`, `employeenumber`, `desig`, `fper`, `tper`, `paydate`, `basic`, `da`, `ear1`, `earr1`, `ear2`, `earr2`, `ear3`, `earr3`, `ear4`, `earr4`, `ear5`, `earr5`, `ear6`, `earr6`, `ear7`, `earr7`, `provi`, `prof`, `esi`, `ded1`, `dedu1`, `ded2`, `dedu2`, `ded3`, `dedu3`, `ded4`, `dedu4`, `ded5`, `dedu5`, `ded6`, `dedu6`, `gros`, `tded`, `netsal`, `cid_id`) VALUES
(1, 'Chinju Paul', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_production`
--

CREATE TABLE `app1_production` (
  `id` bigint(20) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `hsn` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `manufacturing_date` varchar(255) NOT NULL,
  `expiry_date` varchar(255) NOT NULL,
  `pname1` varchar(255) NOT NULL,
  `sku1` varchar(255) NOT NULL,
  `quantity1` varchar(255) NOT NULL,
  `rate1` varchar(255) NOT NULL,
  `amount1` varchar(255) NOT NULL,
  `pname2` varchar(255) NOT NULL,
  `sku2` varchar(255) NOT NULL,
  `quantity2` varchar(255) NOT NULL,
  `rate2` varchar(255) NOT NULL,
  `amount2` varchar(255) NOT NULL,
  `pname3` varchar(255) NOT NULL,
  `sku3` varchar(255) NOT NULL,
  `quantity3` varchar(255) NOT NULL,
  `rate3` varchar(255) NOT NULL,
  `amount3` varchar(255) NOT NULL,
  `pname4` varchar(255) NOT NULL,
  `sku4` varchar(255) NOT NULL,
  `quantity4` varchar(255) NOT NULL,
  `rate4` varchar(255) NOT NULL,
  `amount4` varchar(255) NOT NULL,
  `pname5` varchar(255) NOT NULL,
  `sku5` varchar(255) NOT NULL,
  `quantity5` varchar(255) NOT NULL,
  `rate5` varchar(255) NOT NULL,
  `amount5` varchar(255) NOT NULL,
  `pname6` varchar(255) NOT NULL,
  `sku6` varchar(255) NOT NULL,
  `quantity6` varchar(255) NOT NULL,
  `rate6` varchar(255) NOT NULL,
  `amount6` varchar(255) NOT NULL,
  `pname7` varchar(255) NOT NULL,
  `sku7` varchar(255) NOT NULL,
  `quantity7` varchar(255) NOT NULL,
  `rate7` varchar(255) NOT NULL,
  `amount7` varchar(255) NOT NULL,
  `pname8` varchar(255) NOT NULL,
  `sku8` varchar(255) NOT NULL,
  `quantity8` varchar(255) NOT NULL,
  `rate8` varchar(255) NOT NULL,
  `amount8` varchar(255) NOT NULL,
  `pname9` varchar(255) NOT NULL,
  `sku9` varchar(255) NOT NULL,
  `quantity9` varchar(255) NOT NULL,
  `rate9` varchar(255) NOT NULL,
  `amount9` varchar(255) NOT NULL,
  `pname10` varchar(255) NOT NULL,
  `sku10` varchar(255) NOT NULL,
  `quantity10` varchar(255) NOT NULL,
  `rate10` varchar(255) NOT NULL,
  `amount10` varchar(255) NOT NULL,
  `pname11` text NOT NULL,
  `sku11` text NOT NULL,
  `quantity11` text NOT NULL,
  `rate11` text NOT NULL,
  `amount11` text NOT NULL,
  `pname12` text NOT NULL,
  `sku12` text NOT NULL,
  `quantity12` text NOT NULL,
  `rate12` text NOT NULL,
  `amount12` text NOT NULL,
  `pname13` text NOT NULL,
  `sku13` text NOT NULL,
  `quantity13` text NOT NULL,
  `rate13` text NOT NULL,
  `amount13` text NOT NULL,
  `pname14` text NOT NULL,
  `sku14` text NOT NULL,
  `quantity14` text NOT NULL,
  `rate14` text NOT NULL,
  `amount14` text NOT NULL,
  `pname15` text NOT NULL,
  `sku15` text NOT NULL,
  `quantity15` text NOT NULL,
  `rate15` text NOT NULL,
  `amount15` text NOT NULL,
  `co_pname1` text NOT NULL,
  `co_sku1` text NOT NULL,
  `co_qty1` text NOT NULL,
  `co_rate1` text NOT NULL,
  `co_amount1` text NOT NULL,
  `co_pname2` text NOT NULL,
  `co_sku2` text NOT NULL,
  `co_qty2` text NOT NULL,
  `co_rate2` text NOT NULL,
  `co_amount2` text NOT NULL,
  `co_pname3` text NOT NULL,
  `co_sku3` text NOT NULL,
  `co_qty3` text NOT NULL,
  `co_rate3` text NOT NULL,
  `co_amount3` text NOT NULL,
  `co_pname4` text NOT NULL,
  `co_sku4` text NOT NULL,
  `co_qty4` text NOT NULL,
  `co_rate4` text NOT NULL,
  `co_amount4` text NOT NULL,
  `co_pname5` text NOT NULL,
  `co_sku5` text NOT NULL,
  `co_qty5` text NOT NULL,
  `co_rate5` text NOT NULL,
  `co_amount5` text NOT NULL,
  `co_pname6` text NOT NULL,
  `co_sku6` text NOT NULL,
  `co_qty6` text NOT NULL,
  `co_rate6` text NOT NULL,
  `co_amount6` text NOT NULL,
  `co_pname7` text NOT NULL,
  `co_sku7` text NOT NULL,
  `co_qty7` text NOT NULL,
  `co_rate7` text NOT NULL,
  `co_amount7` text NOT NULL,
  `co_pname8` text NOT NULL,
  `co_sku8` text NOT NULL,
  `co_qty8` text NOT NULL,
  `co_rate8` text NOT NULL,
  `co_amount8` text NOT NULL,
  `co_pname9` text NOT NULL,
  `co_sku9` text NOT NULL,
  `co_qty9` text NOT NULL,
  `co_rate9` text NOT NULL,
  `co_amount9` text NOT NULL,
  `co_pname10` text NOT NULL,
  `co_sku10` text NOT NULL,
  `co_qty10` text NOT NULL,
  `co_rate10` text NOT NULL,
  `co_amount10` text NOT NULL,
  `co_pname11` text NOT NULL,
  `co_sku11` text NOT NULL,
  `co_qty11` text NOT NULL,
  `co_rate11` text NOT NULL,
  `co_amount11` text NOT NULL,
  `co_pname12` text NOT NULL,
  `co_sku12` text NOT NULL,
  `co_qty12` text NOT NULL,
  `co_rate12` text NOT NULL,
  `co_amount12` text NOT NULL,
  `co_pname13` text NOT NULL,
  `co_sku13` text NOT NULL,
  `co_qty13` text NOT NULL,
  `co_rate13` text NOT NULL,
  `co_amount13` text NOT NULL,
  `co_pname14` text NOT NULL,
  `co_sku14` text NOT NULL,
  `co_qty14` text NOT NULL,
  `co_rate14` text NOT NULL,
  `co_amount14` text NOT NULL,
  `co_pname15` text NOT NULL,
  `co_sku15` text NOT NULL,
  `co_qty15` text NOT NULL,
  `co_rate15` text NOT NULL,
  `co_amount15` text NOT NULL,
  `wg_adi_cost1` text NOT NULL,
  `wg_perc1` text NOT NULL,
  `wg_amount1` text NOT NULL,
  `wg_adi_cost2` text NOT NULL,
  `wg_perc2` text NOT NULL,
  `wg_amount2` text NOT NULL,
  `wg_adi_cost3` text NOT NULL,
  `wg_perc3` text NOT NULL,
  `wg_amount3` text NOT NULL,
  `wg_adi_cost4` text NOT NULL,
  `wg_perc4` text NOT NULL,
  `wg_amount4` text NOT NULL,
  `wg_adi_cost5` text NOT NULL,
  `wg_perc5` text NOT NULL,
  `wg_amount5` text NOT NULL,
  `tot_add_cost` text NOT NULL,
  `eff_cost` text NOT NULL,
  `tt_qty` varchar(255) NOT NULL,
  `tt_tot` varchar(255) NOT NULL,
  `co_tt_qty` varchar(255) NOT NULL,
  `co_tt_tot` varchar(255) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_production`
--

INSERT INTO `app1_production` (`id`, `productname`, `sku`, `hsn`, `quantity`, `price`, `manufacturing_date`, `expiry_date`, `pname1`, `sku1`, `quantity1`, `rate1`, `amount1`, `pname2`, `sku2`, `quantity2`, `rate2`, `amount2`, `pname3`, `sku3`, `quantity3`, `rate3`, `amount3`, `pname4`, `sku4`, `quantity4`, `rate4`, `amount4`, `pname5`, `sku5`, `quantity5`, `rate5`, `amount5`, `pname6`, `sku6`, `quantity6`, `rate6`, `amount6`, `pname7`, `sku7`, `quantity7`, `rate7`, `amount7`, `pname8`, `sku8`, `quantity8`, `rate8`, `amount8`, `pname9`, `sku9`, `quantity9`, `rate9`, `amount9`, `pname10`, `sku10`, `quantity10`, `rate10`, `amount10`, `pname11`, `sku11`, `quantity11`, `rate11`, `amount11`, `pname12`, `sku12`, `quantity12`, `rate12`, `amount12`, `pname13`, `sku13`, `quantity13`, `rate13`, `amount13`, `pname14`, `sku14`, `quantity14`, `rate14`, `amount14`, `pname15`, `sku15`, `quantity15`, `rate15`, `amount15`, `co_pname1`, `co_sku1`, `co_qty1`, `co_rate1`, `co_amount1`, `co_pname2`, `co_sku2`, `co_qty2`, `co_rate2`, `co_amount2`, `co_pname3`, `co_sku3`, `co_qty3`, `co_rate3`, `co_amount3`, `co_pname4`, `co_sku4`, `co_qty4`, `co_rate4`, `co_amount4`, `co_pname5`, `co_sku5`, `co_qty5`, `co_rate5`, `co_amount5`, `co_pname6`, `co_sku6`, `co_qty6`, `co_rate6`, `co_amount6`, `co_pname7`, `co_sku7`, `co_qty7`, `co_rate7`, `co_amount7`, `co_pname8`, `co_sku8`, `co_qty8`, `co_rate8`, `co_amount8`, `co_pname9`, `co_sku9`, `co_qty9`, `co_rate9`, `co_amount9`, `co_pname10`, `co_sku10`, `co_qty10`, `co_rate10`, `co_amount10`, `co_pname11`, `co_sku11`, `co_qty11`, `co_rate11`, `co_amount11`, `co_pname12`, `co_sku12`, `co_qty12`, `co_rate12`, `co_amount12`, `co_pname13`, `co_sku13`, `co_qty13`, `co_rate13`, `co_amount13`, `co_pname14`, `co_sku14`, `co_qty14`, `co_rate14`, `co_amount14`, `co_pname15`, `co_sku15`, `co_qty15`, `co_rate15`, `co_amount15`, `wg_adi_cost1`, `wg_perc1`, `wg_amount1`, `wg_adi_cost2`, `wg_perc2`, `wg_amount2`, `wg_adi_cost3`, `wg_perc3`, `wg_amount3`, `wg_adi_cost4`, `wg_perc4`, `wg_amount4`, `wg_adi_cost5`, `wg_perc5`, `wg_amount5`, `tot_add_cost`, `eff_cost`, `tt_qty`, `tt_tot`, `co_tt_qty`, `co_tt_tot`, `cid_id`) VALUES
(24, 'dfgfh', '125', '258', '2', '$3622.5', '2022-09-03', '2022-09-03', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'laptop', '154', '1', '$500.0', '500.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'dfds', '1', '63.0', 'vc', '2', '126.0', 'cxv', '3', '189.0', 'cvx', '4', '252.0', 'cvxd', '5', '315.0', '$945.0', '$7245.0', '', '', '', '', 16),
(27, 'hp brand', '1254', '54455', '2', '$4158.0', '2022-09-03', '2022-09-03', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'laptop', '154', '1', '$500.0', '500.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'laptop', '154', '1', '$500.0', '500.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'wd', '2', '132.0', 'sda', '1', '66.0', 'zxc', '6', '396.0', 'zx', '8', '528.0', 'vcb', '9', '594.0', '$1716.0', '$8316.0', '', '', '', '', 16),
(28, 'ph', '455', '455', '5', '$1263.6', '2022-09-03', '2022-09-03', 'laptop', '154', '2', '$500.0', '1000.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'laptop', '154', '1', '$500.0', '500.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'laptop', '154', '1', '$500.0', '500.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'laptop', '154', '1', '$500.0', '500.0', 'mi mobile', '200.0', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'laptop', '154', '1', '$500.0', '500.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'laptop', '154', '1', '$500.0', '500.0', 'fd', '2', '98.0', 'fdgf', '3', '147.0', 'zx', '4', '196.0', 'zx', '5', '245.0', 'z', '6', '294.0', '$1418.0', '$6318.0', '2', '$1000.0', '15', '$3900.0', 16),
(31, 'phs', '1245', '5858', '5', '$96.0', '2022-09-05', '2022-09-05', 'mi mobile', '1235', '1', '$200.0', '200.0', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', 'mi mobile', '1235', '1', '$200.0', '200.0', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', 'dfs', '2', '8.0', 'dsf', '3', '12.0', 'dsf', '4', '16.0', 'dsf', '5', '20.0', 'ds', '6', '24.0', '$80.0', '$480.0', '1', '$200.0', '1', '$200.0', 16),
(32, 'bnhj', '1254', '6578', '5', '$181.6', '2022-09-05', '2022-09-05', 'mi mobile', '1235', '1', '$200.0', '200.0', 'vivo y11', '15478', '0', '$$1200', '', 'laptop', '154', '1', '$$500', '500.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'mi mobile', '1235', '1', '$200.0', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'vcbvb', '2', '18.0', '', '', '0.0', '', '', '0.0', '', '', '0.0', '', '', '0.0', '$8.0', '$908.0', '2', '$700.0', '1', '$200.0', 16),
(34, 'dsfd', '12456', '555', '2', '$204.0', '2022-09-05', '2022-09-05', 'mi mobile', '1235', '1', '$200.0', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'mi mobile', '1235', '1', '$200.0', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'fdgfd', '2', '8.0', '', '', '', '', '', '', '', '', '', '', '', '', '$8.0', '$408.0', '1', '$200.0', '1', '$200.0', 16),
(35, 'sdf', '1457', '888', '5', '$81.6', '2022-09-05', '2022-09-05', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'sdfd', '2', '8.0', '', '', '', '', '', '', '', '', '', '', '', '', '$8.0', '$408.0', '1', '$200.0', '1', '$200.0', 16),
(38, 'sdfd', 'dsfd', 'dsfds', '2', '$206.0', '2022-09-05', '2022-09-05', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'ghfg', '3', '12.0', '', '', '', '', '', '', '', '', '', '', '', '', '$12.0', '$412.0', '1', '$200.0', '1', '$200.0', 16),
(39, 'Asus', '121619', '2587', '2', '$212.0', '2022-09-06', '2022-09-06', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'wgty', '6', '24.0', '', '', '', '', '', '', '', '', '', '', '', '', '$24.0', '$424.0', '1', '$200.0', '1', '$200.0', 16),
(40, 'zeb', '12456', '2', '2', '$559.0', '2022-09-01', '2022-09-06', 'mi mobile', '1235', '1', '$200', '200.0', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'laptop', '154', '1', '$500', '500.0', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'wg', '2', '22.0', '', '', '0.0', '', '', '0.0', '', '', '0.0', '', '', '0.0', '$18.0', '$1118.0', '2', '$400.0', '2', '$700.0', 16),
(41, 'rens', 'as2154', 'N42015', '3', '$247.33333333333334', '2022-09-23', '2022-09-23', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'laptop', '154', '1', '$500', '500.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'wages', '6', '42.0', '', '', '', '', '', '', '', '', '', '', '', '', '$42.0', '$742.0', '1', '$200.0', '1', '$500.0', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_projectmanagement`
--

CREATE TABLE `app1_projectmanagement` (
  `projectid` int(11) NOT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `startdate` varchar(255) DEFAULT NULL,
  `enddate` varchar(255) DEFAULT NULL,
  `estimatecost_item` int(11) DEFAULT NULL,
  `estimateprice_item` int(11) DEFAULT NULL,
  `totalestimatecost` int(11) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_projectmanagement`
--

INSERT INTO `app1_projectmanagement` (`projectid`, `productname`, `quantity`, `description`, `startdate`, `enddate`, `estimatecost_item`, `estimateprice_item`, `totalestimatecost`, `cid_id`) VALUES
(1, 'Inv_1', 10, 'des', '9/23/22', '9/24/22', 50, 25, 500, 16),
(4, 'Pen', 100, 'Ball Pen', '9/24/22', '9/24/22', 10, 15, 1000, 16),
(5, 'Car', 100, '', '9/24/22', '9/24/22', 100, 200, 10000, 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_qualitycertificate`
--

CREATE TABLE `app1_qualitycertificate` (
  `certificateid` int(11) NOT NULL,
  `dateofinspection` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `hsn` varchar(255) DEFAULT NULL,
  `customername` varchar(255) DEFAULT NULL,
  `suppliername` varchar(255) DEFAULT NULL,
  `inspectedby` varchar(255) DEFAULT NULL,
  `inspectedqty` int(11) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_qualitycertificate`
--

INSERT INTO `app1_qualitycertificate` (`certificateid`, `dateofinspection`, `productname`, `sku`, `hsn`, `customername`, `suppliername`, `inspectedby`, `inspectedqty`, `cid_id`) VALUES
(4, '2022-09-25', 'Inv_1', 'N41554', '1001', 'Vishnu D', 'Neena C', 'Chinju Paul', 5, 16),
(5, '2022-09-30', 'Inv_1', 'N41554', '1001', 'Vishnu D', 'Sneha S', 'Chinju Paul', 5, 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_qualityinspection`
--

CREATE TABLE `app1_qualityinspection` (
  `inspectionid` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `hsn` varchar(255) DEFAULT NULL,
  `availableqty` int(11) DEFAULT NULL,
  `inspectedqty` int(11) DEFAULT NULL,
  `noninspectedqty` int(11) DEFAULT NULL,
  `inspectedby` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `qualifiedqty` int(11) DEFAULT NULL,
  `defectedqty` int(11) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_qualityinspection`
--

INSERT INTO `app1_qualityinspection` (`inspectionid`, `date`, `productname`, `sku`, `hsn`, `availableqty`, `inspectedqty`, `noninspectedqty`, `inspectedby`, `department`, `qualifiedqty`, `defectedqty`, `cid_id`) VALUES
(1, '2022-09-23', 'Inv_1', 'N41554', '1001', 10, 5, 5, 'Chinju Paul', 'IT Department', 3, 2, 16),
(3, '2022-09-24', 'Inv_1', 'N41554', '1001', 10, 7, 3, 'Chinju Paul', 'IT Department', 5, 1, 16),
(4, '2022-09-26', 'Inv_1', 'N41554', '1001', 10, 8, 2, 'Chinju Paul', 'IT Department', 8, 0, 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_recon1`
--

CREATE TABLE `app1_recon1` (
  `recon1id` int(11) NOT NULL,
  `accounttype` varchar(100) NOT NULL,
  `beginningbalance` varchar(100) NOT NULL,
  `endingbalance` varchar(100) NOT NULL,
  `endingdate` varchar(100) NOT NULL,
  `edat` varchar(100) DEFAULT NULL,
  `serchar` varchar(100) NOT NULL,
  `expacc` varchar(100) NOT NULL,
  `idat1` varchar(100) DEFAULT NULL,
  `intear` varchar(100) NOT NULL,
  `incacc` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_recordpay`
--

CREATE TABLE `app1_recordpay` (
  `recordpayid` int(11) NOT NULL,
  `textname` varchar(100) NOT NULL,
  `paymentdate` varchar(100) NOT NULL,
  `recordamount` varchar(100) NOT NULL,
  `recordmemo` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_salesrecpts`
--

CREATE TABLE `app1_salesrecpts` (
  `salesrecptsid` int(11) NOT NULL,
  `salename` varchar(100) NOT NULL,
  `saleemail` varchar(254) NOT NULL,
  `saleaddress` varchar(150) NOT NULL,
  `saledate` varchar(10) NOT NULL,
  `saleno` varchar(20) NOT NULL,
  `salesplace` varchar(100) NOT NULL,
  `salepay` varchar(10) NOT NULL,
  `salerefno` varchar(10) NOT NULL,
  `saledeposit` varchar(150) NOT NULL,
  `salepro` varchar(100) NOT NULL,
  `salehsn` varchar(100) NOT NULL,
  `saledescription` varchar(100) NOT NULL,
  `saleqty` varchar(100) NOT NULL,
  `saleprice` varchar(100) NOT NULL,
  `saaletotal` varchar(100) NOT NULL,
  `salesubtotal` varchar(100) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `saletaxamount` varchar(100) NOT NULL,
  `salegrandtotal` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `categoryhsn2` varchar(100) NOT NULL,
  `descrptin2` varchar(100) NOT NULL,
  `catqty2` varchar(100) NOT NULL,
  `catprice2` varchar(100) NOT NULL,
  `cattotal2` varchar(100) NOT NULL,
  `tax1` int(11) DEFAULT NULL,
  `category3` varchar(100) NOT NULL,
  `categoryhsn3` varchar(100) NOT NULL,
  `descrptin3` varchar(100) NOT NULL,
  `catqty3` varchar(100) NOT NULL,
  `catprice3` varchar(100) NOT NULL,
  `cattotal3` varchar(100) NOT NULL,
  `tax2` int(11) DEFAULT NULL,
  `category4` varchar(100) NOT NULL,
  `categoryhsn4` varchar(100) NOT NULL,
  `descrptin4` varchar(100) NOT NULL,
  `catqty4` varchar(100) NOT NULL,
  `catprice4` varchar(100) NOT NULL,
  `cattotal4` varchar(100) NOT NULL,
  `tax3` int(11) DEFAULT NULL,
  `offline` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_service`
--

CREATE TABLE `app1_service` (
  `serviceid` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `sac` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `categ` varchar(100) NOT NULL,
  `descr` varchar(100) NOT NULL,
  `saleprice` varchar(100) NOT NULL,
  `income` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `abatement` varchar(100) NOT NULL,
  `sertype` varchar(100) NOT NULL,
  `purchasedescr` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `expenseaccount` varchar(100) NOT NULL,
  `purchasetax` varchar(100) NOT NULL,
  `revcharge` varchar(100) NOT NULL,
  `presupplier` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_service`
--

INSERT INTO `app1_service` (`serviceid`, `img`, `name`, `sku`, `sac`, `unit`, `categ`, `descr`, `saleprice`, `income`, `tax`, `abatement`, `sertype`, `purchasedescr`, `cost`, `expenseaccount`, `purchasetax`, `revcharge`, `presupplier`, `cid_id`) VALUES
(9, '', 'Ser_1', 'N41554', '889941', 'BAL-BALE', 'Default', 'des', '84.7457627118644', 'Equipment Rental for Jobs', '18.0% GST (18%)', '5', 'Steamer Agent', 'des2', '84.7457627118644', 'Dues and Subscriptions', '18.0% GST (18%)', '5', 'Select Supplier', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_sign`
--

CREATE TABLE `app1_sign` (
  `sid` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `conformpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_suplrcredit`
--

CREATE TABLE `app1_suplrcredit` (
  `suppliercreditid` int(11) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `mailaddr` varchar(100) NOT NULL,
  `paymdate` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `ccatego` varchar(100) NOT NULL,
  `cdescrip` varchar(100) NOT NULL,
  `cqty` varchar(100) NOT NULL,
  `cprice` varchar(100) NOT NULL,
  `ctotal` varchar(100) NOT NULL,
  `ccatego2` varchar(100) NOT NULL,
  `cdescrip2` varchar(100) NOT NULL,
  `cqty2` varchar(100) NOT NULL,
  `cprice2` varchar(100) NOT NULL,
  `ctotal2` varchar(100) NOT NULL,
  `ccatego3` varchar(100) NOT NULL,
  `cdescrip3` varchar(100) NOT NULL,
  `cqty3` varchar(100) NOT NULL,
  `cprice3` varchar(100) NOT NULL,
  `ctotal3` varchar(100) NOT NULL,
  `ccatego4` varchar(100) NOT NULL,
  `cdescrip4` varchar(100) NOT NULL,
  `cqty4` varchar(100) NOT NULL,
  `cprice4` varchar(100) NOT NULL,
  `ctotal4` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `tax4` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `creditamount` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_supplier`
--

CREATE TABLE `app1_supplier` (
  `supplierid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `billingrate` varchar(100) NOT NULL,
  `terms` varchar(100) NOT NULL,
  `addterms` varchar(100) NOT NULL,
  `openingbalance` varchar(100) NOT NULL,
  `accountno` varchar(100) NOT NULL,
  `gsttype` varchar(100) NOT NULL,
  `gstin` varchar(100) NOT NULL,
  `taxregistrationno` varchar(100) NOT NULL,
  `effectivedate` varchar(100) NOT NULL,
  `defaultexpenceaccount` varchar(100) NOT NULL,
  `tds` varchar(200) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_supplier`
--

INSERT INTO `app1_supplier` (`supplierid`, `title`, `firstname`, `lastname`, `company`, `mobile`, `email`, `website`, `billingrate`, `terms`, `addterms`, `openingbalance`, `accountno`, `gsttype`, `gstin`, `taxregistrationno`, `effectivedate`, `defaultexpenceaccount`, `tds`, `street`, `city`, `state`, `pincode`, `country`, `notes`, `cid_id`) VALUES
(1, 'Mr', 'Sam', 'Alex', '', '', '', '', '', '', '', '200', '', '', '', '', '2022-08-25', '', '', '', '', '', '', '', '', 16),
(2, 'Miss', 'Neena', 'C', '', '', '', '', '', '', '', '400', '', '', '', '', '2022-09-01', '', '', '', '', '', '', '', '', 16),
(3, 'Miss', 'Sneha', 'S', '', '', '', '', '', '', '', '150', '', '', '', '', '2022-09-02', '', '', '', '', '', '', '', '', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_suppliererror`
--

CREATE TABLE `app1_suppliererror` (
  `suppliererrorid` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `referenceno` varchar(255) DEFAULT NULL,
  `suppliername` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `hsn` varchar(255) DEFAULT NULL,
  `desciption` varchar(300) DEFAULT NULL,
  `purchaseqty` int(11) DEFAULT NULL,
  `compliantqty` int(11) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_suppliererror`
--

INSERT INTO `app1_suppliererror` (`suppliererrorid`, `date`, `referenceno`, `suppliername`, `productname`, `sku`, `hsn`, `desciption`, `purchaseqty`, `compliantqty`, `cid_id`) VALUES
(3, '2022-09-26', '1002', 'Sneha S', 'Inv_1', 'N41554', '1001', 'des', 100, 25, 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_timeact`
--

CREATE TABLE `app1_timeact` (
  `timeactid` int(11) NOT NULL,
  `timdate` varchar(10) NOT NULL,
  `timename` varchar(20) NOT NULL,
  `timecust` varchar(20) NOT NULL,
  `timecheck` varchar(10) NOT NULL,
  `timebill` varchar(20) NOT NULL,
  `timecheckk` varchar(10) NOT NULL,
  `timestart` varchar(6) NOT NULL,
  `timeend` varchar(6) NOT NULL,
  `tyme` varchar(6) NOT NULL,
  `timedes` varchar(50) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_timeactsale`
--

CREATE TABLE `app1_timeactsale` (
  `timeactsaleid` int(11) NOT NULL,
  `timdatesale` varchar(10) NOT NULL,
  `timenamesale` varchar(20) NOT NULL,
  `timecustsale` varchar(20) NOT NULL,
  `timechecksale` varchar(10) NOT NULL,
  `timebillsale` varchar(20) NOT NULL,
  `timecheckksale` varchar(10) NOT NULL,
  `timestartsale` varchar(6) NOT NULL,
  `timeendsale` varchar(6) NOT NULL,
  `tymesale` varchar(6) NOT NULL,
  `timedessale` varchar(50) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_unit`
--

CREATE TABLE `app1_unit` (
  `unitid` int(11) NOT NULL,
  `unitsymbol` varchar(255) DEFAULT NULL,
  `unitname` varchar(255) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_unit`
--

INSERT INTO `app1_unit` (`unitid`, `unitsymbol`, `unitname`, `cid_id`) VALUES
(1, 'f', 'Frequency', 16),
(2, 'V', 'Volume', 16),
(3, 'V', 'Volume', 16);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(44, 'Gavas@123', NULL, 0, 'gavas', 'Gavas', 'N G', 'gavas@gmail.com', 0, 0, '2022-08-25 12:47:51.457067'),
(45, 'Gopi@555', NULL, 0, 'gopi', 'Gopi', 'N N', 'gopi@gmail.com', 0, 0, '2022-09-14 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(43, 'app1', 'accounts'),
(42, 'app1', 'accounts1'),
(7, 'app1', 'accountype'),
(8, 'app1', 'addac'),
(41, 'app1', 'addtax1'),
(40, 'app1', 'advancepayment'),
(39, 'app1', 'bankstatement'),
(38, 'app1', 'bills'),
(37, 'app1', 'bundle'),
(36, 'app1', 'cheqs'),
(9, 'app1', 'company'),
(35, 'app1', 'credit'),
(34, 'app1', 'customer'),
(33, 'app1', 'customize'),
(32, 'app1', 'delayedcharge'),
(31, 'app1', 'employee'),
(30, 'app1', 'estimate'),
(29, 'app1', 'expences'),
(10, 'app1', 'expenseaccount'),
(28, 'app1', 'incomeaccount'),
(27, 'app1', 'inventory'),
(26, 'app1', 'invoice'),
(11, 'app1', 'itemmodel'),
(25, 'app1', 'noninventory'),
(24, 'app1', 'paydowncreditcard'),
(23, 'app1', 'payment'),
(22, 'app1', 'payslip'),
(44, 'app1', 'production'),
(12, 'app1', 'productmodel'),
(21, 'app1', 'recon1'),
(20, 'app1', 'recordpay'),
(19, 'app1', 'salesrecpts'),
(18, 'app1', 'service'),
(13, 'app1', 'sign'),
(17, 'app1', 'suplrcredit'),
(16, 'app1', 'supplier'),
(15, 'app1', 'timeact'),
(14, 'app1', 'timeactsale'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-08-02 07:53:08.750165'),
(2, 'auth', '0001_initial', '2022-08-02 07:53:22.456555'),
(3, 'admin', '0001_initial', '2022-08-02 07:53:25.243189'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-08-02 07:53:25.340940'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-02 07:53:25.400907'),
(6, 'app1', '0001_initial', '2022-08-02 07:54:15.722084'),
(7, 'app1', '0002_production', '2022-08-02 07:54:16.271469'),
(8, 'contenttypes', '0002_remove_content_type_name', '2022-08-02 07:54:17.416420'),
(9, 'auth', '0002_alter_permission_name_max_length', '2022-08-02 07:54:18.643758'),
(10, 'auth', '0003_alter_user_email_max_length', '2022-08-02 07:54:18.790300'),
(11, 'auth', '0004_alter_user_username_opts', '2022-08-02 07:54:18.863182'),
(12, 'auth', '0005_alter_user_last_login_null', '2022-08-02 07:54:20.112349'),
(13, 'auth', '0006_require_contenttypes_0002', '2022-08-02 07:54:20.186782'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2022-08-02 07:54:20.254743'),
(15, 'auth', '0008_alter_user_username_max_length', '2022-08-02 07:54:20.440635'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2022-08-02 07:54:20.550572'),
(17, 'auth', '0010_alter_group_name_max_length', '2022-08-02 07:54:20.803123'),
(18, 'auth', '0011_update_proxy_permissions', '2022-08-02 07:54:20.976790'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2022-08-02 07:54:21.111978'),
(20, 'sessions', '0001_initial', '2022-08-02 07:54:21.506066');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itemstable`
--

CREATE TABLE `itemstable` (
  `Itemid` int(11) NOT NULL,
  `Itemname` varchar(100) NOT NULL,
  `Pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `payee` varchar(255) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `paymdate` date DEFAULT NULL,
  `payment_account` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `ccatego` varchar(255) DEFAULT NULL,
  `cdescrip` varchar(255) DEFAULT NULL,
  `cqty` varchar(255) DEFAULT NULL,
  `cprice` varchar(255) DEFAULT NULL,
  `ctotal` varchar(255) DEFAULT NULL,
  `ccatego2` varchar(255) DEFAULT NULL,
  `cdescrip2` varchar(255) DEFAULT NULL,
  `cqty2` varchar(255) DEFAULT NULL,
  `cprice2` varchar(255) DEFAULT NULL,
  `ctotal2` varchar(255) DEFAULT NULL,
  `ccatego3` varchar(255) DEFAULT NULL,
  `cdescrip3` varchar(255) DEFAULT NULL,
  `cqty3` varchar(255) DEFAULT NULL,
  `cprice3` varchar(255) DEFAULT NULL,
  `ctotal3` varchar(255) DEFAULT NULL,
  `ccatego4` varchar(255) DEFAULT NULL,
  `cdescrip4` varchar(255) DEFAULT NULL,
  `cqty4` varchar(255) DEFAULT NULL,
  `cprice4` varchar(255) DEFAULT NULL,
  `ctotal4` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `hsn` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `product2` varchar(255) DEFAULT NULL,
  `hsn2` varchar(255) DEFAULT NULL,
  `description2` varchar(255) DEFAULT NULL,
  `qty2` varchar(255) DEFAULT NULL,
  `price2` varchar(255) DEFAULT NULL,
  `total2` varchar(255) DEFAULT NULL,
  `product3` varchar(255) DEFAULT NULL,
  `hsn3` varchar(255) DEFAULT NULL,
  `description3` varchar(255) DEFAULT NULL,
  `qty3` varchar(255) DEFAULT NULL,
  `price3` varchar(255) DEFAULT NULL,
  `total3` varchar(255) DEFAULT NULL,
  `product4` varchar(255) DEFAULT NULL,
  `hsn4` varchar(255) DEFAULT NULL,
  `description4` varchar(255) DEFAULT NULL,
  `qty4` varchar(255) DEFAULT NULL,
  `price4` varchar(255) DEFAULT NULL,
  `total4` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `tax2` varchar(255) DEFAULT NULL,
  `tax3` varchar(255) DEFAULT NULL,
  `tax4` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `taxamount` varchar(255) DEFAULT NULL,
  `grandtotal` varchar(255) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payee`, `ref`, `paymdate`, `payment_account`, `payment_method`, `ccatego`, `cdescrip`, `cqty`, `cprice`, `ctotal`, `ccatego2`, `cdescrip2`, `cqty2`, `cprice2`, `ctotal2`, `ccatego3`, `cdescrip3`, `cqty3`, `cprice3`, `ctotal3`, `ccatego4`, `cdescrip4`, `cqty4`, `cprice4`, `ctotal4`, `product`, `hsn`, `description`, `qty`, `price`, `total`, `product2`, `hsn2`, `description2`, `qty2`, `price2`, `total2`, `product3`, `hsn3`, `description3`, `qty3`, `price3`, `total3`, `product4`, `hsn4`, `description4`, `qty4`, `price4`, `total4`, `tax`, `tax2`, `tax3`, `tax4`, `subtotal`, `taxamount`, `grandtotal`, `cid_id`) VALUES
(1, 'zxcxz xzcxzcz', '6', '2022-09-21', '', 'Debit cards', 'Consulting Income', 'asdhagsdhj', '1', '200', '200', 'Consulting Income', 'dfssf', '1', '100', '100', '', '', '0', '', '', '', '', '0', '', '', 'Mouse', 'fdg2154', 'fdgf\n\n\n', '1', '200.0', '200.0', 'Mouse', 'fdg2154', 'fdg\n\n\n', '1', '200.0', '200.0', 'Mouse', 'fdg2154', 'fdgfd\n\n\n', '2', '200.0', '400.0', 'Mouse', 'fdg2154', 'fdgfd\n\n\n', '1', '200.0', '200.0', '28.0% GST(28%)', '18.0% GST(18%)', '28.0% GST(28%)', 'Choose', '1300.0', '148.0', '400', 16),
(2, 'ram kum', '10', '2022-09-23', 'Inventory', 'Cash', 'Billable Expense Income', 'erwewrw', '1', '200', '200', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'Mouse', 'fdg2154', 'sad\n\n', '1', '201', '201.0', 'Mouse', 'fdg2154', '\n', '1', '200.0', '200.0', '', '', '\n\n', '0', '0', '', '', '', '\n\n', '0', '0', '', '28.0% GST(28%)', '28.0% GST(28%)', 'Choose', 'Choose', '601.0', '112.28', '713.28', 16),
(3, 'ram kum', '10', '2022-09-23', '', 'Cash', 'Billable Expense Income', 'erwewrw', '1', '200', '200', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'Mouse', 'fdg2154', 'sad\n\n', '1', '201', '201.0', '', '', '\n\n', '0', '0', '', '', '', '\n\n', '0', '0', '', '', '', '\n\n', '0', '0', '', '28.0% GST(28%)', 'Choose', 'Choose', 'Choose', '401.0', '56.28', '56', 16),
(12, 'Sneha S', '1', '2022-09-29', '', 'Cash', 'Inventory Asset', 'des', '1', '100', '100', 'Retained Earnings', 'des', '1', '50', '50', 'Output CGST', 'des', '1', '25', '25', 'Sales', 'des', '1', '75', '75', 'Inv_1', '1001', 'des\n\n', '1', '78.12', '78.12', 'Non_1', '1002', 'des1\n\n', '1', '44.64', '44.64', '', '', '\n\n', '0', '0', '', '', '', '\n\n', '0', '0', '', '28.0% GST(28%)', '28.0% GST(28%)', 'Choose', 'Choose', '372.76', '34.37', '407.13', 16);

-- --------------------------------------------------------

--
-- Table structure for table `producttable`
--

CREATE TABLE `producttable` (
  `Pid` int(11) NOT NULL,
  `Pname` varchar(100) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producttable`
--

INSERT INTO `producttable` (`Pid`, `Pname`, `sku`, `price`, `cid_id`) VALUES
(1, 'Account Receivable(Debtors)', '', '', 16),
(2, 'Current Assets', '', '', 16),
(3, 'Bank', '', '', 0),
(4, 'Fixed Assets', '', '', 0),
(5, 'Non-Current Assets', '', '', 0),
(6, 'Accounts Payable(Creditors)', '', '', 0),
(7, 'Credit Card', '', '', 0),
(8, 'Current Liabilities', '', '', 0),
(9, 'Non-Current Liabilities', '', '', 0),
(10, 'Equity', '', '', 0),
(11, 'Income', '', '', 0),
(12, 'Other Income', '', '', 0),
(13, 'Cost of Goods Sold', '', '', 0),
(14, 'Expenses', '', '', 0),
(15, 'Other Expenses', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app1_accounts`
--
ALTER TABLE `app1_accounts`
  ADD PRIMARY KEY (`accountsid`),
  ADD KEY `app1_accounts_cid_id_ca072561_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_accounts_productid_id_ff25de48_fk_producttable_Pid` (`productid_id`),
  ADD KEY `app1_accounts_proid_id_d0d77a6d_fk_app1_accountype_accountypeid` (`proid_id`);

--
-- Indexes for table `app1_accounts1`
--
ALTER TABLE `app1_accounts1`
  ADD PRIMARY KEY (`accounts1id`),
  ADD KEY `app1_accounts1_cid_id_073c043d_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_accountype`
--
ALTER TABLE `app1_accountype`
  ADD PRIMARY KEY (`accountypeid`),
  ADD KEY `app1_accountype_cid_id_b591dd7d_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_addac`
--
ALTER TABLE `app1_addac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app1_addtax1`
--
ALTER TABLE `app1_addtax1`
  ADD PRIMARY KEY (`addtax1id`),
  ADD KEY `app1_addtax1_cid_id_90eebb52_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_advancepayment`
--
ALTER TABLE `app1_advancepayment`
  ADD PRIMARY KEY (`advancepaymentid`),
  ADD KEY `app1_advancepayment_cid_id_796af5b3_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_bankstatement`
--
ALTER TABLE `app1_bankstatement`
  ADD PRIMARY KEY (`bankstatementid`),
  ADD KEY `app1_bankstatement_cid_id_00a3fc3b_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_bills`
--
ALTER TABLE `app1_bills`
  ADD PRIMARY KEY (`billid`),
  ADD KEY `app1_bills_cid_id_d648c3f6_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_bundle`
--
ALTER TABLE `app1_bundle`
  ADD PRIMARY KEY (`bundleid`),
  ADD KEY `app1_bundle_cid_id_82c2ec98_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_cheqs`
--
ALTER TABLE `app1_cheqs`
  ADD PRIMARY KEY (`chequeid`),
  ADD KEY `app1_cheqs_cid_id_ff8a2ca6_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_company`
--
ALTER TABLE `app1_company`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `app1_company_id_id_84084c19_fk_auth_user_id` (`id_id`);

--
-- Indexes for table `app1_credit`
--
ALTER TABLE `app1_credit`
  ADD PRIMARY KEY (`creditnoteid`),
  ADD KEY `app1_credit_cid_id_40b75237_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_customer`
--
ALTER TABLE `app1_customer`
  ADD PRIMARY KEY (`customerid`),
  ADD KEY `app1_customer_cid_id_607bad1d_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_customercompliant`
--
ALTER TABLE `app1_customercompliant`
  ADD PRIMARY KEY (`compliantid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_customize`
--
ALTER TABLE `app1_customize`
  ADD PRIMARY KEY (`customizeid`),
  ADD KEY `app1_customize_cid_id_059fe662_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_delayedcharge`
--
ALTER TABLE `app1_delayedcharge`
  ADD PRIMARY KEY (`delayedchargeid`),
  ADD KEY `app1_delayedcharge_cid_id_b9dff420_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_employee`
--
ALTER TABLE `app1_employee`
  ADD PRIMARY KEY (`employeeid`),
  ADD KEY `app1_employee_cid_id_62659cb7_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_estimate`
--
ALTER TABLE `app1_estimate`
  ADD PRIMARY KEY (`estimateid`),
  ADD KEY `app1_estimate_cid_id_983a0fc3_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_expences`
--
ALTER TABLE `app1_expences`
  ADD PRIMARY KEY (`expencesid`),
  ADD KEY `app1_expences_cid_id_2cd98c8f_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_expenseaccount`
--
ALTER TABLE `app1_expenseaccount`
  ADD PRIMARY KEY (`expenseid`),
  ADD KEY `app1_expenseaccount_cid_id_df816740_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_expenseaccount_expaccountypid_id_67312bdf_fk_app1_acco` (`expaccountypid_id`);

--
-- Indexes for table `app1_incomeaccount`
--
ALTER TABLE `app1_incomeaccount`
  ADD PRIMARY KEY (`incomeid`),
  ADD KEY `app1_incomeaccount_cid_id_094b46f8_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_incomeaccount_expenceincomeid_id_f4304840_fk_app1_expe` (`expenceincomeid_id`);

--
-- Indexes for table `app1_inventory`
--
ALTER TABLE `app1_inventory`
  ADD PRIMARY KEY (`inventoryid`),
  ADD KEY `app1_inventory_cid_id_f2e81863_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_invoice`
--
ALTER TABLE `app1_invoice`
  ADD PRIMARY KEY (`invoiceid`),
  ADD KEY `app1_invoice_cid_id_a9c8e9b5_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_item`
--
ALTER TABLE `app1_item`
  ADD PRIMARY KEY (`itemsid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_materialerror`
--
ALTER TABLE `app1_materialerror`
  ADD PRIMARY KEY (`materialerrorid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_noninventory`
--
ALTER TABLE `app1_noninventory`
  ADD PRIMARY KEY (`noninventoryid`),
  ADD KEY `app1_noninventory_cid_id_d0447e15_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_paydowncreditcard`
--
ALTER TABLE `app1_paydowncreditcard`
  ADD PRIMARY KEY (`paycreditcardid`),
  ADD KEY `app1_paydowncreditcard_cid_id_148fd035_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_payment`
--
ALTER TABLE `app1_payment`
  ADD PRIMARY KEY (`paymentid`),
  ADD KEY `app1_payment_cid_id_a954b426_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_payslip`
--
ALTER TABLE `app1_payslip`
  ADD PRIMARY KEY (`payslipid`),
  ADD KEY `app1_payslip_cid_id_3f97b6d6_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_production`
--
ALTER TABLE `app1_production`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_projectmanagement`
--
ALTER TABLE `app1_projectmanagement`
  ADD PRIMARY KEY (`projectid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_qualitycertificate`
--
ALTER TABLE `app1_qualitycertificate`
  ADD PRIMARY KEY (`certificateid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_qualityinspection`
--
ALTER TABLE `app1_qualityinspection`
  ADD PRIMARY KEY (`inspectionid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_recon1`
--
ALTER TABLE `app1_recon1`
  ADD PRIMARY KEY (`recon1id`),
  ADD KEY `app1_recon1_cid_id_958c7d0e_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_recordpay`
--
ALTER TABLE `app1_recordpay`
  ADD PRIMARY KEY (`recordpayid`),
  ADD KEY `app1_recordpay_cid_id_f3d93b71_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_salesrecpts`
--
ALTER TABLE `app1_salesrecpts`
  ADD PRIMARY KEY (`salesrecptsid`),
  ADD KEY `app1_salesrecpts_cid_id_7834f425_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_service`
--
ALTER TABLE `app1_service`
  ADD PRIMARY KEY (`serviceid`),
  ADD KEY `app1_service_cid_id_e19684ee_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_sign`
--
ALTER TABLE `app1_sign`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `app1_suplrcredit`
--
ALTER TABLE `app1_suplrcredit`
  ADD PRIMARY KEY (`suppliercreditid`),
  ADD KEY `app1_suplrcredit_cid_id_943a7180_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_supplier`
--
ALTER TABLE `app1_supplier`
  ADD PRIMARY KEY (`supplierid`),
  ADD KEY `app1_supplier_cid_id_53a00add_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_suppliererror`
--
ALTER TABLE `app1_suppliererror`
  ADD PRIMARY KEY (`suppliererrorid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_timeact`
--
ALTER TABLE `app1_timeact`
  ADD PRIMARY KEY (`timeactid`),
  ADD KEY `app1_timeact_cid_id_2709432a_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_timeactsale`
--
ALTER TABLE `app1_timeactsale`
  ADD PRIMARY KEY (`timeactsaleid`),
  ADD KEY `app1_timeactsale_cid_id_0dcbffb2_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_unit`
--
ALTER TABLE `app1_unit`
  ADD PRIMARY KEY (`unitid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `itemstable`
--
ALTER TABLE `itemstable`
  ADD PRIMARY KEY (`Itemid`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `producttable`
--
ALTER TABLE `producttable`
  ADD PRIMARY KEY (`Pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app1_accounts`
--
ALTER TABLE `app1_accounts`
  MODIFY `accountsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `app1_accounts1`
--
ALTER TABLE `app1_accounts1`
  MODIFY `accounts1id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `app1_accountype`
--
ALTER TABLE `app1_accountype`
  MODIFY `accountypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `app1_addac`
--
ALTER TABLE `app1_addac`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_credit`
--
ALTER TABLE `app1_credit`
  MODIFY `creditnoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `app1_invoice`
--
ALTER TABLE `app1_invoice`
  MODIFY `invoiceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `app1_payment`
--
ALTER TABLE `app1_payment`
  MODIFY `paymentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app1_production`
--
ALTER TABLE `app1_production`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
