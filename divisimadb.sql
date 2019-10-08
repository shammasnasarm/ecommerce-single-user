-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2019 at 06:59 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `divisimadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add product_varient', 8, 'add_product_varient'),
(30, 'Can change product_varient', 8, 'change_product_varient'),
(31, 'Can delete product_varient', 8, 'delete_product_varient'),
(32, 'Can view product_varient', 8, 'view_product_varient'),
(33, 'Can add wishlist', 9, 'add_wishlist'),
(34, 'Can change wishlist', 9, 'change_wishlist'),
(35, 'Can delete wishlist', 9, 'delete_wishlist'),
(36, 'Can view wishlist', 9, 'view_wishlist'),
(37, 'Can add shipping_address', 10, 'add_shipping_address'),
(38, 'Can change shipping_address', 10, 'change_shipping_address'),
(39, 'Can delete shipping_address', 10, 'delete_shipping_address'),
(40, 'Can view shipping_address', 10, 'view_shipping_address'),
(41, 'Can add prodect_image', 11, 'add_prodect_image'),
(42, 'Can change prodect_image', 11, 'change_prodect_image'),
(43, 'Can delete prodect_image', 11, 'delete_prodect_image'),
(44, 'Can view prodect_image', 11, 'view_prodect_image'),
(45, 'Can add most_selling_product', 12, 'add_most_selling_product'),
(46, 'Can change most_selling_product', 12, 'change_most_selling_product'),
(47, 'Can delete most_selling_product', 12, 'delete_most_selling_product'),
(48, 'Can view most_selling_product', 12, 'view_most_selling_product'),
(49, 'Can add latest_product', 13, 'add_latest_product'),
(50, 'Can change latest_product', 13, 'change_latest_product'),
(51, 'Can delete latest_product', 13, 'delete_latest_product'),
(52, 'Can view latest_product', 13, 'view_latest_product'),
(53, 'Can add header_image', 14, 'add_header_image'),
(54, 'Can change header_image', 14, 'change_header_image'),
(55, 'Can delete header_image', 14, 'delete_header_image'),
(56, 'Can view header_image', 14, 'view_header_image'),
(57, 'Can add conformation_tb', 15, 'add_conformation_tb'),
(58, 'Can change conformation_tb', 15, 'change_conformation_tb'),
(59, 'Can delete conformation_tb', 15, 'delete_conformation_tb'),
(60, 'Can view conformation_tb', 15, 'view_conformation_tb'),
(61, 'Can add cart', 16, 'add_cart'),
(62, 'Can change cart', 16, 'change_cart'),
(63, 'Can delete cart', 16, 'delete_cart'),
(64, 'Can view cart', 16, 'view_cart'),
(65, 'Can add promo_code', 17, 'add_promo_code'),
(66, 'Can change promo_code', 17, 'change_promo_code'),
(67, 'Can delete promo_code', 17, 'delete_promo_code'),
(68, 'Can view promo_code', 17, 'view_promo_code'),
(69, 'Can add brand', 18, 'add_brand'),
(70, 'Can change brand', 18, 'change_brand'),
(71, 'Can delete brand', 18, 'delete_brand'),
(72, 'Can view brand', 18, 'view_brand'),
(73, 'Can add categorie', 19, 'add_categorie'),
(74, 'Can change categorie', 19, 'change_categorie'),
(75, 'Can delete categorie', 19, 'delete_categorie'),
(76, 'Can view categorie', 19, 'view_categorie'),
(77, 'Can add color', 20, 'add_color'),
(78, 'Can change color', 20, 'change_color'),
(79, 'Can delete color', 20, 'delete_color'),
(80, 'Can view color', 20, 'view_color'),
(81, 'Can add country', 21, 'add_country'),
(82, 'Can change country', 21, 'change_country'),
(83, 'Can delete country', 21, 'delete_country'),
(84, 'Can view country', 21, 'view_country'),
(85, 'Can add size', 22, 'add_size'),
(86, 'Can change size', 22, 'change_size'),
(87, 'Can delete size', 22, 'delete_size'),
(88, 'Can view size', 22, 'view_size'),
(89, 'Can add sub_categorie', 23, 'add_sub_categorie'),
(90, 'Can change sub_categorie', 23, 'change_sub_categorie'),
(91, 'Can delete sub_categorie', 23, 'delete_sub_categorie'),
(92, 'Can view sub_categorie', 23, 'view_sub_categorie'),
(93, 'Can add under_subcategorie', 24, 'add_under_subcategorie'),
(94, 'Can change under_subcategorie', 24, 'change_under_subcategorie'),
(95, 'Can delete under_subcategorie', 24, 'delete_under_subcategorie'),
(96, 'Can view under_subcategorie', 24, 'view_under_subcategorie'),
(97, 'Can add state', 25, 'add_state'),
(98, 'Can change state', 25, 'change_state'),
(99, 'Can delete state', 25, 'delete_state'),
(100, 'Can view state', 25, 'view_state'),
(101, 'Can add district', 26, 'add_district'),
(102, 'Can change district', 26, 'change_district'),
(103, 'Can delete district', 26, 'delete_district'),
(104, 'Can view district', 26, 'view_district'),
(105, 'Can add promo_code_applied', 27, 'add_promo_code_applied'),
(106, 'Can change promo_code_applied', 27, 'change_promo_code_applied'),
(107, 'Can delete promo_code_applied', 27, 'delete_promo_code_applied'),
(108, 'Can view promo_code_applied', 27, 'view_promo_code_applied'),
(109, 'Can add promo_code_applicable', 28, 'add_promo_code_applicable'),
(110, 'Can change promo_code_applicable', 28, 'change_promo_code_applicable'),
(111, 'Can delete promo_code_applicable', 28, 'delete_promo_code_applicable'),
(112, 'Can view promo_code_applicable', 28, 'view_promo_code_applicable'),
(113, 'Can add selled_items', 12, 'add_selled_items'),
(114, 'Can change selled_items', 12, 'change_selled_items'),
(115, 'Can delete selled_items', 12, 'delete_selled_items'),
(116, 'Can view selled_items', 12, 'view_selled_items');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$l0QpirfYEslu$EGY6wwqGx+nFznWf9/RyOkFySF0surJC2ahbhKocdWQ=', '2019-09-26 16:32:34.346048', 1, 'shammas', '', '', 'shammu284@gmail.com', 1, 1, '2019-09-12 08:16:23.514988');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `datas_brand`
--

CREATE TABLE `datas_brand` (
  `id` int(11) NOT NULL,
  `Brand` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datas_brand`
--

INSERT INTO `datas_brand` (`id`, `Brand`) VALUES
(1, 'puma'),
(2, 'nike'),
(3, 'basics');

-- --------------------------------------------------------

--
-- Table structure for table `datas_categorie`
--

CREATE TABLE `datas_categorie` (
  `id` int(11) NOT NULL,
  `Categorie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datas_categorie`
--

INSERT INTO `datas_categorie` (`id`, `Categorie`) VALUES
(1, 'Men'),
(2, 'Women'),
(3, 'Boys');

-- --------------------------------------------------------

--
-- Table structure for table `datas_color`
--

CREATE TABLE `datas_color` (
  `id` int(11) NOT NULL,
  `Color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datas_color`
--

INSERT INTO `datas_color` (`id`, `Color`) VALUES
(1, 'black'),
(2, 'blue'),
(3, 'red');

-- --------------------------------------------------------

--
-- Table structure for table `datas_country`
--

CREATE TABLE `datas_country` (
  `id` int(11) NOT NULL,
  `Country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datas_country`
--

INSERT INTO `datas_country` (`id`, `Country`) VALUES
(1, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `datas_district`
--

CREATE TABLE `datas_district` (
  `id` int(11) NOT NULL,
  `District` varchar(100) NOT NULL,
  `Country_id_id` int(11) NOT NULL,
  `State_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datas_district`
--

INSERT INTO `datas_district` (`id`, `District`, `Country_id_id`, `State_id_id`) VALUES
(1, 'kannur', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `datas_size`
--

CREATE TABLE `datas_size` (
  `id` int(11) NOT NULL,
  `Size` int(11) NOT NULL,
  `Size_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datas_size`
--

INSERT INTO `datas_size` (`id`, `Size`, `Size_name`) VALUES
(1, 40, 'm'),
(2, 42, 'l'),
(3, 39, 'l');

-- --------------------------------------------------------

--
-- Table structure for table `datas_state`
--

CREATE TABLE `datas_state` (
  `id` int(11) NOT NULL,
  `State` varchar(100) NOT NULL,
  `Country_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datas_state`
--

INSERT INTO `datas_state` (`id`, `State`, `Country_id_id`) VALUES
(1, 'kerala', 1);

-- --------------------------------------------------------

--
-- Table structure for table `datas_sub_categorie`
--

CREATE TABLE `datas_sub_categorie` (
  `id` int(11) NOT NULL,
  `Sub_categorie` varchar(100) NOT NULL,
  `Categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datas_sub_categorie`
--

INSERT INTO `datas_sub_categorie` (`id`, `Sub_categorie`, `Categorie_id`) VALUES
(2, 'clothes', 1),
(3, 'shoes', 1),
(4, 'clothes', 2),
(5, 'clothes', 3);

-- --------------------------------------------------------

--
-- Table structure for table `datas_under_subcategorie`
--

CREATE TABLE `datas_under_subcategorie` (
  `id` int(11) NOT NULL,
  `Under_subcategorie` varchar(100) NOT NULL,
  `Categorie_id` int(11) NOT NULL,
  `Sub_categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datas_under_subcategorie`
--

INSERT INTO `datas_under_subcategorie` (`id`, `Under_subcategorie`, `Categorie_id`, `Sub_categorie_id`) VALUES
(1, 'shirt', 1, 2),
(2, 'jacket', 2, 4),
(3, 'causal', 1, 3),
(4, 'top', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `divisima_cart`
--

CREATE TABLE `divisima_cart` (
  `id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Product_varient_id_id` int(11) NOT NULL,
  `User_id_id` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Ordered` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisima_cart`
--

INSERT INTO `divisima_cart` (`id`, `Quantity`, `Product_varient_id_id`, `User_id_id`, `Total`, `Ordered`) VALUES
(21, 1, 4, 1, 500, 1),
(22, 3, 4, 1, 1500, 1),
(23, 1, 4, 1, 500, 1),
(24, 2, 4, 1, 1000, 1),
(25, 3, 1, 1, 3000, 1),
(26, 1, 2, 1, 1200, 1),
(27, 1, 3, 1, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `divisima_conformation_tb`
--

CREATE TABLE `divisima_conformation_tb` (
  `id` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `Date` date NOT NULL,
  `User_id_id` int(11) NOT NULL,
  `Address_id_id` int(11) NOT NULL,
  `Delivered` tinyint(1) NOT NULL,
  `Received` tinyint(1) NOT NULL,
  `Return_req` tinyint(1) NOT NULL,
  `Refer_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisima_conformation_tb`
--

INSERT INTO `divisima_conformation_tb` (`id`, `cost`, `Date`, `User_id_id`, `Address_id_id`, `Delivered`, `Received`, `Return_req`, `Refer_code`) VALUES
(4, 2600, '2019-09-24', 1, 1, 0, 0, 0, '123'),
(5, 2499, '2019-09-24', 1, 1, 0, 0, 0, '123'),
(6, 2600, '2019-09-24', 1, 1, 0, 0, 0, '123'),
(7, 1000, '2019-09-26', 1, 1, 0, 0, 0, '123'),
(8, 1000, '2019-09-26', 1, 1, 0, 0, 0, '123'),
(9, 1000, '2019-09-26', 1, 1, 0, 0, 0, '123'),
(10, 1000, '2019-09-26', 1, 1, 0, 0, 0, '123'),
(11, 3000, '2019-09-26', 1, 1, 0, 0, 0, '123'),
(12, 1299, '2019-09-27', 1, 1, 0, 0, 0, '123');

-- --------------------------------------------------------

--
-- Table structure for table `divisima_conformation_tb_items`
--

CREATE TABLE `divisima_conformation_tb_items` (
  `id` int(11) NOT NULL,
  `conformation_tb_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisima_conformation_tb_items`
--

INSERT INTO `divisima_conformation_tb_items` (`id`, `conformation_tb_id`, `cart_id`) VALUES
(1, 4, 21),
(2, 4, 22),
(3, 4, 23),
(4, 5, 21),
(5, 5, 22),
(6, 5, 23),
(7, 6, 21),
(8, 6, 22),
(9, 6, 23),
(10, 7, 24),
(11, 8, 24),
(12, 9, 24),
(13, 10, 24),
(14, 11, 25),
(15, 12, 26),
(16, 12, 27);

-- --------------------------------------------------------

--
-- Table structure for table `divisima_header_image`
--

CREATE TABLE `divisima_header_image` (
  `id` int(11) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `About` longtext NOT NULL,
  `Product_varient_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisima_header_image`
--

INSERT INTO `divisima_header_image` (`id`, `Image`, `About`, `Product_varient_id_id`) VALUES
(1, 'pics/bg_V4cxc9a.jpg', 'some thing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `divisima_latest_product`
--

CREATE TABLE `divisima_latest_product` (
  `id` int(11) NOT NULL,
  `Product_varient_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisima_latest_product`
--

INSERT INTO `divisima_latest_product` (`id`, `Product_varient_id_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `divisima_prodect_image`
--

CREATE TABLE `divisima_prodect_image` (
  `id` int(11) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Product_varient_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisima_prodect_image`
--

INSERT INTO `divisima_prodect_image` (`id`, `Image`, `Product_varient_id_id`) VALUES
(1, 'pics/2_iZpCNnN.jpg', 1),
(2, 'pics/4_1c6DYL9.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `divisima_product`
--

CREATE TABLE `divisima_product` (
  `id` int(11) NOT NULL,
  `Code_or_Name` varchar(100) NOT NULL,
  `Brand_id` int(11) NOT NULL,
  `Categorie_id` int(11) NOT NULL,
  `Sub_categorie_id` int(11) NOT NULL,
  `Under_subcategorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisima_product`
--

INSERT INTO `divisima_product` (`id`, `Code_or_Name`, `Brand_id`, `Categorie_id`, `Sub_categorie_id`, `Under_subcategorie_id`) VALUES
(1, 'chuch shirt', 1, 1, 2, 1),
(2, 'top', 3, 2, 4, 4),
(3, 'plain shirt', 2, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `divisima_product_varient`
--

CREATE TABLE `divisima_product_varient` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Price` int(11) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Stock` int(11) NOT NULL,
  `Color_id` int(11) NOT NULL,
  `Product_id_id` int(11) NOT NULL,
  `Size_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisima_product_varient`
--

INSERT INTO `divisima_product_varient` (`id`, `Name`, `Price`, `Image`, `Stock`, `Color_id`, `Product_id_id`, `Size_id`) VALUES
(1, 'black chuck shirt', 1000, 'pics/12_ibLv4mt.jpg', 7, 1, 1, 1),
(2, 'blue chuck shirt', 1200, 'pics/11_CFlRMdI.jpg', 11, 2, 1, 2),
(3, 'blue top', 100, 'pics/7_YIVvytG.jpg', 14, 2, 2, 1),
(4, 'black top', 500, 'pics/4_uficJYl.jpg', 12, 1, 2, 2),
(5, 'red plain', 900, 'pics/1_7V55Rrd.jpg', 8, 3, 3, 1),
(6, 'abcd2', 1444, 'pics/men.jpg', 5, 1, 2, 1),
(7, 'abcd', 1452, 'pics/about_1.jpg', 5, 1, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `divisima_promo_code`
--

CREATE TABLE `divisima_promo_code` (
  `id` int(11) NOT NULL,
  `Code` varchar(20) NOT NULL,
  `Min_rate_for_apply` int(11) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `Discount_persentage` int(11) NOT NULL,
  `Max_discount_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisima_promo_code`
--

INSERT INTO `divisima_promo_code` (`id`, `Code`, `Min_rate_for_apply`, `Status`, `Discount_persentage`, `Max_discount_amount`) VALUES
(1, '123', 100, 1, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `divisima_promo_code_applicable`
--

CREATE TABLE `divisima_promo_code_applicable` (
  `id` int(11) NOT NULL,
  `Promo_code_id_id` int(11) NOT NULL,
  `Product_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisima_promo_code_applicable`
--

INSERT INTO `divisima_promo_code_applicable` (`id`, `Promo_code_id_id`, `Product_id_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `divisima_promo_code_applied`
--

CREATE TABLE `divisima_promo_code_applied` (
  `id` int(11) NOT NULL,
  `Promo_code_id_id` int(11) NOT NULL,
  `User_id_id` int(11) NOT NULL,
  `Product_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `divisima_selled_items`
--

CREATE TABLE `divisima_selled_items` (
  `id` int(11) NOT NULL,
  `No_item_sell` int(11) NOT NULL,
  `Product_varient_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `divisima_shipping_address`
--

CREATE TABLE `divisima_shipping_address` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `House_no` varchar(100) NOT NULL,
  `Post` varchar(100) NOT NULL,
  `Pin` int(11) NOT NULL,
  `User_id_id` int(11) NOT NULL,
  `Land_mark` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `District` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisima_shipping_address`
--

INSERT INTO `divisima_shipping_address` (`id`, `Name`, `House_no`, `Post`, `Pin`, `User_id_id`, `Land_mark`, `Phone`, `Country`, `District`, `State`) VALUES
(1, 'shammas', 'nehar view', 'mattoolnorth', 670325, 1, 'mattool north', '9995258791', 'india', 'kannur', 'kerala');

-- --------------------------------------------------------

--
-- Table structure for table `divisima_wishlist`
--

CREATE TABLE `divisima_wishlist` (
  `id` int(11) NOT NULL,
  `Product_varient_id_id` int(11) NOT NULL,
  `User_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisima_wishlist`
--

INSERT INTO `divisima_wishlist` (`id`, `Product_varient_id_id`, `User_id_id`) VALUES
(1, 1, 1),
(3, 4, 1),
(7, 5, 1),
(8, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-09-12 08:17:48.096816', '1', 'Men', 1, '[{\"added\": {}}]', 19, 1),
(2, '2019-09-12 08:17:57.235377', '2', 'Women', 1, '[{\"added\": {}}]', 19, 1),
(3, '2019-09-12 08:19:52.882546', '2', 'clothes', 1, '[{\"added\": {}}]', 23, 1),
(4, '2019-09-12 08:19:59.973504', '3', 'shoes', 1, '[{\"added\": {}}]', 23, 1),
(5, '2019-09-12 08:20:10.048746', '4', 'clothes', 1, '[{\"added\": {}}]', 23, 1),
(6, '2019-09-12 08:46:02.521410', '1', 'shirt', 1, '[{\"added\": {}}]', 24, 1),
(7, '2019-09-12 08:46:43.647174', '2', 'jacket', 1, '[{\"added\": {}}]', 24, 1),
(8, '2019-09-12 09:37:20.234903', '1', 'puma', 1, '[{\"added\": {}}]', 18, 1),
(9, '2019-09-12 09:37:28.535920', '2', 'nike', 1, '[{\"added\": {}}]', 18, 1),
(10, '2019-09-12 09:37:49.392475', '3', 'basics', 1, '[{\"added\": {}}]', 18, 1),
(11, '2019-09-12 09:38:07.280160', '1', 'black', 1, '[{\"added\": {}}]', 20, 1),
(12, '2019-09-13 09:55:04.038063', '3', 'Boys', 1, '[{\"added\": {}}]', 19, 1),
(13, '2019-09-13 09:55:14.971303', '5', 'clothes', 1, '[{\"added\": {}}]', 23, 1),
(14, '2019-09-13 09:55:48.058034', '3', 'causal', 1, '[{\"added\": {}}]', 24, 1),
(15, '2019-09-13 09:56:20.489297', '1', 'chuch shirt', 1, '[{\"added\": {}}]', 7, 1),
(16, '2019-09-13 09:57:04.786232', '1', '40', 1, '[{\"added\": {}}]', 22, 1),
(17, '2019-09-13 09:57:24.463458', '2', '42', 1, '[{\"added\": {}}]', 22, 1),
(18, '2019-09-13 09:57:34.826108', '1', '40', 2, '[{\"changed\": {\"fields\": [\"Size_name\"]}}]', 22, 1),
(19, '2019-09-13 09:58:02.805195', '1', 'black chuck shirt', 1, '[{\"added\": {}}]', 8, 1),
(20, '2019-09-13 09:58:19.594845', '1', 'black chuck shirt', 1, '[{\"added\": {}}]', 13, 1),
(21, '2019-09-13 09:58:58.030781', '1', 'header_image object (1)', 1, '[{\"added\": {}}]', 14, 1),
(22, '2019-09-13 14:24:50.152585', '1', 'prodect_image object (1)', 1, '[{\"added\": {}}]', 11, 1),
(23, '2019-09-13 14:25:00.927553', '2', 'prodect_image object (2)', 1, '[{\"added\": {}}]', 11, 1),
(24, '2019-09-13 14:38:54.842285', '2', 'blue', 1, '[{\"added\": {}}]', 20, 1),
(25, '2019-09-13 14:39:07.927282', '2', 'blue chuck shirt', 1, '[{\"added\": {}}]', 8, 1),
(26, '2019-09-13 14:40:12.769161', '4', 'top', 1, '[{\"added\": {}}]', 24, 1),
(27, '2019-09-13 14:40:18.124017', '2', 'top', 1, '[{\"added\": {}}]', 7, 1),
(28, '2019-09-13 14:40:52.375091', '3', 'blue top', 1, '[{\"added\": {}}]', 8, 1),
(29, '2019-09-13 14:41:26.134648', '4', 'black top', 1, '[{\"added\": {}}]', 8, 1),
(30, '2019-09-13 14:41:43.596654', '2', 'blue chuck shirt', 1, '[{\"added\": {}}]', 13, 1),
(31, '2019-09-13 14:41:48.074856', '3', 'blue top', 1, '[{\"added\": {}}]', 13, 1),
(32, '2019-09-13 14:41:52.678230', '4', 'black top', 1, '[{\"added\": {}}]', 13, 1),
(33, '2019-09-13 14:43:27.555185', '3', 'plain shirt', 1, '[{\"added\": {}}]', 7, 1),
(34, '2019-09-13 14:43:57.947433', '3', 'red', 1, '[{\"added\": {}}]', 20, 1),
(35, '2019-09-13 14:44:08.394757', '5', 'red plain', 1, '[{\"added\": {}}]', 8, 1),
(36, '2019-09-13 14:44:23.062906', '5', 'red plain', 1, '[{\"added\": {}}]', 13, 1),
(37, '2019-09-13 15:14:36.237054', '1', 'promo_code object (1)', 1, '[{\"added\": {}}]', 17, 1),
(38, '2019-09-13 15:27:27.124585', '1', 'country object (1)', 1, '[{\"added\": {}}]', 21, 1),
(39, '2019-09-13 15:27:44.292846', '1', 'state object (1)', 1, '[{\"added\": {}}]', 25, 1),
(40, '2019-09-13 15:28:01.047512', '1', 'district object (1)', 1, '[{\"added\": {}}]', 26, 1),
(41, '2019-09-17 09:23:18.149242', '6', 'abcd2', 1, '[{\"added\": {}}]', 8, 1),
(42, '2019-09-17 09:25:32.495438', '3', '39', 1, '[{\"added\": {}}]', 22, 1),
(43, '2019-09-17 09:26:01.294765', '7', 'abcd', 1, '[{\"added\": {}}]', 8, 1),
(44, '2019-09-24 15:51:48.717222', '1', 'promo_code object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 17, 1),
(45, '2019-09-27 15:00:54.759077', '1', 'promo_code_applicable object (1)', 1, '[{\"added\": {}}]', 28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(18, 'datas', 'brand'),
(19, 'datas', 'categorie'),
(20, 'datas', 'color'),
(21, 'datas', 'country'),
(26, 'datas', 'district'),
(22, 'datas', 'size'),
(25, 'datas', 'state'),
(23, 'datas', 'sub_categorie'),
(24, 'datas', 'under_subcategorie'),
(16, 'divisima', 'cart'),
(15, 'divisima', 'conformation_tb'),
(14, 'divisima', 'header_image'),
(13, 'divisima', 'latest_product'),
(11, 'divisima', 'prodect_image'),
(7, 'divisima', 'product'),
(8, 'divisima', 'product_varient'),
(17, 'divisima', 'promo_code'),
(28, 'divisima', 'promo_code_applicable'),
(27, 'divisima', 'promo_code_applied'),
(12, 'divisima', 'selled_items'),
(10, 'divisima', 'shipping_address'),
(9, 'divisima', 'wishlist'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-09-12 08:09:48.781157'),
(2, 'auth', '0001_initial', '2019-09-12 08:09:55.502476'),
(3, 'admin', '0001_initial', '2019-09-12 08:10:25.780288'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-09-12 08:10:29.759109'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-09-12 08:10:29.928226'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-09-12 08:10:33.592270'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-09-12 08:10:33.902598'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-09-12 08:10:34.131632'),
(9, 'auth', '0004_alter_user_username_opts', '2019-09-12 08:10:34.467669'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-09-12 08:10:37.189635'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-09-12 08:10:37.223657'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-09-12 08:10:37.643024'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-09-12 08:10:39.244211'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-09-12 08:10:40.304272'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-09-12 08:10:42.025233'),
(16, 'auth', '0011_update_proxy_permissions', '2019-09-12 08:10:42.438525'),
(17, 'datas', '0001_initial', '2019-09-12 08:10:49.596430'),
(18, 'datas', '0002_size_size_name', '2019-09-12 08:10:59.818737'),
(19, 'datas', '0003_auto_20190912_1305', '2019-09-12 08:11:00.519202'),
(20, 'divisima', '0001_initial', '2019-09-12 08:11:31.509590'),
(21, 'divisima', '0002_cart_total', '2019-09-12 08:13:40.675468'),
(22, 'divisima', '0003_promo_code', '2019-09-12 08:13:42.856446'),
(23, 'divisima', '0004_auto_20190814_1442', '2019-09-12 08:13:50.463658'),
(24, 'divisima', '0005_auto_20190814_1445', '2019-09-12 08:13:56.068123'),
(25, 'divisima', '0006_auto_20190829_1319', '2019-09-12 08:13:56.831450'),
(26, 'divisima', '0007_promo_code_discount', '2019-09-12 08:13:57.669314'),
(27, 'divisima', '0008_auto_20190902_2230', '2019-09-12 08:14:04.079713'),
(28, 'divisima', '0009_auto_20190912_1305', '2019-09-12 08:14:14.342466'),
(29, 'divisima', '0010_auto_20190912_1337', '2019-09-12 08:14:36.456149'),
(30, 'sessions', '0001_initial', '2019-09-12 08:14:37.198982'),
(31, 'datas', '0004_auto_20190912_1402', '2019-09-12 08:32:16.248788'),
(32, 'datas', '0005_auto_20190912_1406', '2019-09-12 08:36:23.747494'),
(33, 'datas', '0006_auto_20190912_1415', '2019-09-12 08:45:26.853228'),
(34, 'datas', '0007_auto_20190912_1510', '2019-09-12 09:41:00.265605'),
(35, 'divisima', '0011_auto_20190912_1512', '2019-09-12 09:42:24.531728'),
(36, 'divisima', '0012_auto_20190912_1515', '2019-09-12 09:45:56.968284'),
(37, 'divisima', '0013_auto_20190912_1524', '2019-09-12 09:54:47.889157'),
(38, 'divisima', '0014_auto_20190912_1525', '2019-09-12 09:55:39.529248'),
(39, 'divisima', '0015_product_under_subcategorie', '2019-09-12 09:56:32.008805'),
(40, 'divisima', '0016_auto_20190912_1528', '2019-09-12 09:58:34.398248'),
(41, 'divisima', '0017_auto_20190912_1530', '2019-09-12 10:00:16.221272'),
(42, 'divisima', '0018_auto_20190912_1542', '2019-09-12 10:12:22.474876'),
(43, 'divisima', '0019_auto_20190912_1543', '2019-09-12 10:13:07.981527'),
(44, 'divisima', '0020_auto_20190913_1521', '2019-09-13 09:51:39.742885'),
(45, 'divisima', '0021_auto_20190913_1524', '2019-09-13 09:54:47.041904'),
(46, 'divisima', '0022_auto_20190913_2122', '2019-09-13 15:52:29.737318'),
(47, 'divisima', '0023_auto_20190913_2137', '2019-09-13 16:07:35.647959'),
(48, 'divisima', '0024_auto_20190923_1513', '2019-09-23 09:44:42.635701'),
(49, 'divisima', '0025_auto_20190924_2111', '2019-09-24 15:41:36.727452'),
(50, 'divisima', '0026_conformation_tb_address_id', '2019-09-24 16:09:53.466628'),
(51, 'divisima', '0027_auto_20190927_2000', '2019-09-27 14:33:08.408761'),
(52, 'divisima', '0028_auto_20190927_2002', '2019-09-27 14:33:08.919628'),
(53, 'divisima', '0029_auto_20190927_2127', '2019-09-27 15:57:40.796500'),
(54, 'divisima', '0030_auto_20190927_2127', '2019-09-27 15:57:40.897722'),
(55, 'divisima', '0031_conformation_tb_delivery_status', '2019-09-27 16:06:20.219540'),
(56, 'divisima', '0032_auto_20190927_2153', '2019-09-27 16:23:48.420398'),
(57, 'divisima', '0033_auto_20190927_2155', '2019-09-27 16:25:28.205653'),
(58, 'divisima', '0034_conformation_tb_refer_code', '2019-09-27 16:46:30.323062'),
(59, 'divisima', '0035_auto_20190928_1333', '2019-09-28 08:03:50.116603');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1hz9uzcejzu8agkxei3y4hevk3wnj1zg', 'NDk1ZTc0YjZjODFhMmI2M2Y2MjM4MzVjMDUxNDk0MWEzNzE2ZTgzNjp7fQ==', '2019-10-05 07:26:49.650700'),
('3s428ytg244vdp57obe6eaisr8rxw09m', 'NDk1ZTc0YjZjODFhMmI2M2Y2MjM4MzVjMDUxNDk0MWEzNzE2ZTgzNjp7fQ==', '2019-09-30 15:31:17.257297'),
('49x5gxa8tvf2k0ydismmdg96gsvrjifu', 'NDk1ZTc0YjZjODFhMmI2M2Y2MjM4MzVjMDUxNDk0MWEzNzE2ZTgzNjp7fQ==', '2019-10-05 07:46:02.895498'),
('5jsvn7q8ni0mivu1ikshdnjwohyubsap', 'MjdiYWMxMDk3ZmYwODdlNWEyOGZmZjg1YjNkZDJhZGUzODk5OGRlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NzU1YTkxMDU1OGI1NDQ1M2E4YzZkY2FlZDhmOGIzY2MzOTAyZTZkIn0=', '2019-10-10 16:32:34.451117'),
('80yw5lp2uw16c1o0edn25mol9lbkhi9o', 'NDk1ZTc0YjZjODFhMmI2M2Y2MjM4MzVjMDUxNDk0MWEzNzE2ZTgzNjp7fQ==', '2019-09-30 15:14:27.477839'),
('8bnl5wosfx7mvsl0w7a9yjk3xhtgfdoz', 'MjdiYWMxMDk3ZmYwODdlNWEyOGZmZjg1YjNkZDJhZGUzODk5OGRlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NzU1YTkxMDU1OGI1NDQ1M2E4YzZkY2FlZDhmOGIzY2MzOTAyZTZkIn0=', '2019-10-07 15:56:32.872944'),
('8ptf6y5wcukacgoul0qgg2wh74q9p4ju', 'MjdiYWMxMDk3ZmYwODdlNWEyOGZmZjg1YjNkZDJhZGUzODk5OGRlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NzU1YTkxMDU1OGI1NDQ1M2E4YzZkY2FlZDhmOGIzY2MzOTAyZTZkIn0=', '2019-10-10 16:30:51.791297'),
('b5udbc156pai1ee1sdpfaj5eyja28ve1', 'NDk1ZTc0YjZjODFhMmI2M2Y2MjM4MzVjMDUxNDk0MWEzNzE2ZTgzNjp7fQ==', '2019-10-05 07:30:50.675978'),
('ctqrcn2lgilyghtdssueamkfwokwjglm', 'MjdiYWMxMDk3ZmYwODdlNWEyOGZmZjg1YjNkZDJhZGUzODk5OGRlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NzU1YTkxMDU1OGI1NDQ1M2E4YzZkY2FlZDhmOGIzY2MzOTAyZTZkIn0=', '2019-10-08 15:42:32.523011'),
('eqtbnmkhfsu69qnonrk59lraaba2ceed', 'NDk1ZTc0YjZjODFhMmI2M2Y2MjM4MzVjMDUxNDk0MWEzNzE2ZTgzNjp7fQ==', '2019-09-30 15:35:43.022105'),
('h4w6hvu88blpirtb22l9d9u6d3txyv4m', 'NDk1ZTc0YjZjODFhMmI2M2Y2MjM4MzVjMDUxNDk0MWEzNzE2ZTgzNjp7fQ==', '2019-10-05 07:32:17.460331'),
('iul1na1jrrj6mb8esjb5ypzm9b1bqw22', 'NDk1ZTc0YjZjODFhMmI2M2Y2MjM4MzVjMDUxNDk0MWEzNzE2ZTgzNjp7fQ==', '2019-10-05 14:15:32.750303'),
('k81cvo97ps4jf9h8g2isxm0oyygt5qt9', 'NDk1ZTc0YjZjODFhMmI2M2Y2MjM4MzVjMDUxNDk0MWEzNzE2ZTgzNjp7fQ==', '2019-10-05 07:42:03.352245'),
('ki77iskvynuyvs2mcdx8l7vxx72y4wdp', 'MjdiYWMxMDk3ZmYwODdlNWEyOGZmZjg1YjNkZDJhZGUzODk5OGRlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NzU1YTkxMDU1OGI1NDQ1M2E4YzZkY2FlZDhmOGIzY2MzOTAyZTZkIn0=', '2019-10-07 09:53:38.675945'),
('ladysvlpx25ucfbuoouaejlaeg7y3pe3', 'MjdiYWMxMDk3ZmYwODdlNWEyOGZmZjg1YjNkZDJhZGUzODk5OGRlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NzU1YTkxMDU1OGI1NDQ1M2E4YzZkY2FlZDhmOGIzY2MzOTAyZTZkIn0=', '2019-10-05 15:07:37.461533'),
('njjfjr56nbw7jiwie76tueif280sby0x', 'NDk1ZTc0YjZjODFhMmI2M2Y2MjM4MzVjMDUxNDk0MWEzNzE2ZTgzNjp7fQ==', '2019-09-30 15:34:29.172645'),
('pqyuz0uytwidikl3ha076z92oa6eky08', 'NDk1ZTc0YjZjODFhMmI2M2Y2MjM4MzVjMDUxNDk0MWEzNzE2ZTgzNjp7fQ==', '2019-10-05 07:33:29.188369'),
('qb9k3937u2xwsnjzzr0h2w6al7nvvrqv', 'NDk1ZTc0YjZjODFhMmI2M2Y2MjM4MzVjMDUxNDk0MWEzNzE2ZTgzNjp7fQ==', '2019-10-05 07:40:44.017870'),
('w2hxa2yhvoafmblvwoljywfgl15286i3', 'NDk1ZTc0YjZjODFhMmI2M2Y2MjM4MzVjMDUxNDk0MWEzNzE2ZTgzNjp7fQ==', '2019-09-30 15:36:41.986147'),
('xsdn32puk3wk8kn6zlbgp13vir7eitwc', 'MjdiYWMxMDk3ZmYwODdlNWEyOGZmZjg1YjNkZDJhZGUzODk5OGRlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NzU1YTkxMDU1OGI1NDQ1M2E4YzZkY2FlZDhmOGIzY2MzOTAyZTZkIn0=', '2019-10-05 08:29:29.731523'),
('yiy5oln3os33rbfoe5b2q43yassgj3jn', 'NDk1ZTc0YjZjODFhMmI2M2Y2MjM4MzVjMDUxNDk0MWEzNzE2ZTgzNjp7fQ==', '2019-10-05 07:26:01.897454'),
('ypgernst6n05idwirkycpauieqvtwjvr', 'MjdiYWMxMDk3ZmYwODdlNWEyOGZmZjg1YjNkZDJhZGUzODk5OGRlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NzU1YTkxMDU1OGI1NDQ1M2E4YzZkY2FlZDhmOGIzY2MzOTAyZTZkIn0=', '2019-10-01 09:21:50.534907');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `datas_brand`
--
ALTER TABLE `datas_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datas_categorie`
--
ALTER TABLE `datas_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datas_color`
--
ALTER TABLE `datas_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datas_country`
--
ALTER TABLE `datas_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datas_district`
--
ALTER TABLE `datas_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datas_district_Country_id_id_0a4d9645_fk_datas_country_id` (`Country_id_id`),
  ADD KEY `datas_district_State_id_id_75fb9bda_fk_datas_state_id` (`State_id_id`);

--
-- Indexes for table `datas_size`
--
ALTER TABLE `datas_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datas_state`
--
ALTER TABLE `datas_state`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datas_state_Country_id_id_1a222b04_fk_datas_country_id` (`Country_id_id`);

--
-- Indexes for table `datas_sub_categorie`
--
ALTER TABLE `datas_sub_categorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datas_sub_categorie_Categorie_id_7484577b_fk_datas_categorie_id` (`Categorie_id`);

--
-- Indexes for table `datas_under_subcategorie`
--
ALTER TABLE `datas_under_subcategorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datas_under_subcateg_Categorie_id_b605cd75_fk_datas_cat` (`Categorie_id`),
  ADD KEY `datas_under_subcateg_Sub_categorie_id_5618c4dd_fk_datas_sub` (`Sub_categorie_id`);

--
-- Indexes for table `divisima_cart`
--
ALTER TABLE `divisima_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisima_cart_Product_varient_id_i_557bb552_fk_divisima_` (`Product_varient_id_id`),
  ADD KEY `divisima_cart_User_id_id_e5739a25_fk_auth_user_id` (`User_id_id`);

--
-- Indexes for table `divisima_conformation_tb`
--
ALTER TABLE `divisima_conformation_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisima_conformation_tb_User_id_id_560672f0_fk_auth_user_id` (`User_id_id`),
  ADD KEY `divisima_conformatio_Address_id_id_769f6a8a_fk_divisima_` (`Address_id_id`);

--
-- Indexes for table `divisima_conformation_tb_items`
--
ALTER TABLE `divisima_conformation_tb_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `divisima_conformation_tb_conformation_tb_id_cart__646d7376_uniq` (`conformation_tb_id`,`cart_id`),
  ADD KEY `divisima_conformatio_cart_id_67ea90d1_fk_divisima_` (`cart_id`);

--
-- Indexes for table `divisima_header_image`
--
ALTER TABLE `divisima_header_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisima_header_imag_Product_varient_id_i_972362d0_fk_divisima_` (`Product_varient_id_id`);

--
-- Indexes for table `divisima_latest_product`
--
ALTER TABLE `divisima_latest_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisima_latest_prod_Product_varient_id_i_d92289d1_fk_divisima_` (`Product_varient_id_id`);

--
-- Indexes for table `divisima_prodect_image`
--
ALTER TABLE `divisima_prodect_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisima_prodect_ima_Product_varient_id_i_c7e68426_fk_divisima_` (`Product_varient_id_id`);

--
-- Indexes for table `divisima_product`
--
ALTER TABLE `divisima_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisima_product_Brand_id_26a07298_fk_datas_brand_id` (`Brand_id`),
  ADD KEY `divisima_product_Under_subcategorie_id_33ac7f67` (`Under_subcategorie_id`),
  ADD KEY `divisima_product_Categorie_id_9170a527_fk_datas_categorie_id` (`Categorie_id`),
  ADD KEY `divisima_product_Sub_categorie_id_07bc0994_fk_datas_sub` (`Sub_categorie_id`);

--
-- Indexes for table `divisima_product_varient`
--
ALTER TABLE `divisima_product_varient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisima_product_varient_Color_id_5d720552_fk_datas_color_id` (`Color_id`),
  ADD KEY `divisima_product_var_Product_id_id_f0b2da1b_fk_divisima_` (`Product_id_id`),
  ADD KEY `divisima_product_varient_Size_id_a82ef3bd_fk_datas_size_id` (`Size_id`);

--
-- Indexes for table `divisima_promo_code`
--
ALTER TABLE `divisima_promo_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisima_promo_code_applicable`
--
ALTER TABLE `divisima_promo_code_applicable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisima_promo_code__Promo_code_id_id_ac6eef54_fk_divisima_` (`Promo_code_id_id`),
  ADD KEY `divisima_promo_code__Product_id_id_80fcc656_fk_divisima_` (`Product_id_id`);

--
-- Indexes for table `divisima_promo_code_applied`
--
ALTER TABLE `divisima_promo_code_applied`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisima_promo_code__Promo_code_id_id_bbd57ece_fk_divisima_` (`Promo_code_id_id`),
  ADD KEY `divisima_promo_code_applied_User_id_id_0fbd49eb_fk_auth_user_id` (`User_id_id`),
  ADD KEY `divisima_promo_code__Product_id_id_d8a5f141_fk_divisima_` (`Product_id_id`);

--
-- Indexes for table `divisima_selled_items`
--
ALTER TABLE `divisima_selled_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisima_most_sellin_Product_varient_id_i_d660ab6a_fk_divisima_` (`Product_varient_id_id`);

--
-- Indexes for table `divisima_shipping_address`
--
ALTER TABLE `divisima_shipping_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisima_shipping_address_User_id_id_d0ba2852_fk_auth_user_id` (`User_id_id`);

--
-- Indexes for table `divisima_wishlist`
--
ALTER TABLE `divisima_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisima_wishlist_Product_varient_id_i_b14b15ae_fk_divisima_` (`Product_varient_id_id`),
  ADD KEY `divisima_wishlist_User_id_id_d1f6838d_fk_auth_user_id` (`User_id_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datas_brand`
--
ALTER TABLE `datas_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `datas_categorie`
--
ALTER TABLE `datas_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `datas_color`
--
ALTER TABLE `datas_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `datas_country`
--
ALTER TABLE `datas_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `datas_district`
--
ALTER TABLE `datas_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `datas_size`
--
ALTER TABLE `datas_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `datas_state`
--
ALTER TABLE `datas_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `datas_sub_categorie`
--
ALTER TABLE `datas_sub_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `datas_under_subcategorie`
--
ALTER TABLE `datas_under_subcategorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `divisima_cart`
--
ALTER TABLE `divisima_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `divisima_conformation_tb`
--
ALTER TABLE `divisima_conformation_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `divisima_conformation_tb_items`
--
ALTER TABLE `divisima_conformation_tb_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `divisima_header_image`
--
ALTER TABLE `divisima_header_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `divisima_latest_product`
--
ALTER TABLE `divisima_latest_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `divisima_prodect_image`
--
ALTER TABLE `divisima_prodect_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `divisima_product`
--
ALTER TABLE `divisima_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `divisima_product_varient`
--
ALTER TABLE `divisima_product_varient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `divisima_promo_code`
--
ALTER TABLE `divisima_promo_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `divisima_promo_code_applicable`
--
ALTER TABLE `divisima_promo_code_applicable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `divisima_promo_code_applied`
--
ALTER TABLE `divisima_promo_code_applied`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `divisima_selled_items`
--
ALTER TABLE `divisima_selled_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `divisima_shipping_address`
--
ALTER TABLE `divisima_shipping_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `divisima_wishlist`
--
ALTER TABLE `divisima_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `datas_district`
--
ALTER TABLE `datas_district`
  ADD CONSTRAINT `datas_district_Country_id_id_0a4d9645_fk_datas_country_id` FOREIGN KEY (`Country_id_id`) REFERENCES `datas_country` (`id`),
  ADD CONSTRAINT `datas_district_State_id_id_75fb9bda_fk_datas_state_id` FOREIGN KEY (`State_id_id`) REFERENCES `datas_state` (`id`);

--
-- Constraints for table `datas_state`
--
ALTER TABLE `datas_state`
  ADD CONSTRAINT `datas_state_Country_id_id_1a222b04_fk_datas_country_id` FOREIGN KEY (`Country_id_id`) REFERENCES `datas_country` (`id`);

--
-- Constraints for table `datas_sub_categorie`
--
ALTER TABLE `datas_sub_categorie`
  ADD CONSTRAINT `datas_sub_categorie_Categorie_id_7484577b_fk_datas_categorie_id` FOREIGN KEY (`Categorie_id`) REFERENCES `datas_categorie` (`id`);

--
-- Constraints for table `datas_under_subcategorie`
--
ALTER TABLE `datas_under_subcategorie`
  ADD CONSTRAINT `datas_under_subcateg_Categorie_id_b605cd75_fk_datas_cat` FOREIGN KEY (`Categorie_id`) REFERENCES `datas_categorie` (`id`),
  ADD CONSTRAINT `datas_under_subcateg_Sub_categorie_id_5618c4dd_fk_datas_sub` FOREIGN KEY (`Sub_categorie_id`) REFERENCES `datas_sub_categorie` (`id`);

--
-- Constraints for table `divisima_cart`
--
ALTER TABLE `divisima_cart`
  ADD CONSTRAINT `divisima_cart_Product_varient_id_i_557bb552_fk_divisima_` FOREIGN KEY (`Product_varient_id_id`) REFERENCES `divisima_product_varient` (`id`),
  ADD CONSTRAINT `divisima_cart_User_id_id_e5739a25_fk_auth_user_id` FOREIGN KEY (`User_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `divisima_conformation_tb`
--
ALTER TABLE `divisima_conformation_tb`
  ADD CONSTRAINT `divisima_conformatio_Address_id_id_769f6a8a_fk_divisima_` FOREIGN KEY (`Address_id_id`) REFERENCES `divisima_shipping_address` (`id`),
  ADD CONSTRAINT `divisima_conformation_tb_User_id_id_560672f0_fk_auth_user_id` FOREIGN KEY (`User_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `divisima_conformation_tb_items`
--
ALTER TABLE `divisima_conformation_tb_items`
  ADD CONSTRAINT `divisima_conformatio_cart_id_67ea90d1_fk_divisima_` FOREIGN KEY (`cart_id`) REFERENCES `divisima_cart` (`id`),
  ADD CONSTRAINT `divisima_conformatio_conformation_tb_id_5a5fffa6_fk_divisima_` FOREIGN KEY (`conformation_tb_id`) REFERENCES `divisima_conformation_tb` (`id`);

--
-- Constraints for table `divisima_header_image`
--
ALTER TABLE `divisima_header_image`
  ADD CONSTRAINT `divisima_header_imag_Product_varient_id_i_972362d0_fk_divisima_` FOREIGN KEY (`Product_varient_id_id`) REFERENCES `divisima_product_varient` (`id`);

--
-- Constraints for table `divisima_latest_product`
--
ALTER TABLE `divisima_latest_product`
  ADD CONSTRAINT `divisima_latest_prod_Product_varient_id_i_d92289d1_fk_divisima_` FOREIGN KEY (`Product_varient_id_id`) REFERENCES `divisima_product_varient` (`id`);

--
-- Constraints for table `divisima_prodect_image`
--
ALTER TABLE `divisima_prodect_image`
  ADD CONSTRAINT `divisima_prodect_ima_Product_varient_id_i_c7e68426_fk_divisima_` FOREIGN KEY (`Product_varient_id_id`) REFERENCES `divisima_product_varient` (`id`);

--
-- Constraints for table `divisima_product`
--
ALTER TABLE `divisima_product`
  ADD CONSTRAINT `divisima_product_Brand_id_26a07298_fk_datas_brand_id` FOREIGN KEY (`Brand_id`) REFERENCES `datas_brand` (`id`),
  ADD CONSTRAINT `divisima_product_Categorie_id_9170a527_fk_datas_categorie_id` FOREIGN KEY (`Categorie_id`) REFERENCES `datas_categorie` (`id`),
  ADD CONSTRAINT `divisima_product_Sub_categorie_id_07bc0994_fk_datas_sub` FOREIGN KEY (`Sub_categorie_id`) REFERENCES `datas_sub_categorie` (`id`),
  ADD CONSTRAINT `divisima_product_Under_subcategorie_i_33ac7f67_fk_datas_und` FOREIGN KEY (`Under_subcategorie_id`) REFERENCES `datas_under_subcategorie` (`id`);

--
-- Constraints for table `divisima_product_varient`
--
ALTER TABLE `divisima_product_varient`
  ADD CONSTRAINT `divisima_product_var_Product_id_id_f0b2da1b_fk_divisima_` FOREIGN KEY (`Product_id_id`) REFERENCES `divisima_product` (`id`),
  ADD CONSTRAINT `divisima_product_varient_Color_id_5d720552_fk_datas_color_id` FOREIGN KEY (`Color_id`) REFERENCES `datas_color` (`id`),
  ADD CONSTRAINT `divisima_product_varient_Size_id_a82ef3bd_fk_datas_size_id` FOREIGN KEY (`Size_id`) REFERENCES `datas_size` (`id`);

--
-- Constraints for table `divisima_promo_code_applicable`
--
ALTER TABLE `divisima_promo_code_applicable`
  ADD CONSTRAINT `divisima_promo_code__Product_id_id_80fcc656_fk_divisima_` FOREIGN KEY (`Product_id_id`) REFERENCES `divisima_product` (`id`),
  ADD CONSTRAINT `divisima_promo_code__Promo_code_id_id_ac6eef54_fk_divisima_` FOREIGN KEY (`Promo_code_id_id`) REFERENCES `divisima_promo_code` (`id`);

--
-- Constraints for table `divisima_promo_code_applied`
--
ALTER TABLE `divisima_promo_code_applied`
  ADD CONSTRAINT `divisima_promo_code__Product_id_id_d8a5f141_fk_divisima_` FOREIGN KEY (`Product_id_id`) REFERENCES `divisima_product` (`id`),
  ADD CONSTRAINT `divisima_promo_code__Promo_code_id_id_bbd57ece_fk_divisima_` FOREIGN KEY (`Promo_code_id_id`) REFERENCES `divisima_promo_code` (`id`),
  ADD CONSTRAINT `divisima_promo_code_applied_User_id_id_0fbd49eb_fk_auth_user_id` FOREIGN KEY (`User_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `divisima_selled_items`
--
ALTER TABLE `divisima_selled_items`
  ADD CONSTRAINT `divisima_most_sellin_Product_varient_id_i_d660ab6a_fk_divisima_` FOREIGN KEY (`Product_varient_id_id`) REFERENCES `divisima_product_varient` (`id`);

--
-- Constraints for table `divisima_shipping_address`
--
ALTER TABLE `divisima_shipping_address`
  ADD CONSTRAINT `divisima_shipping_address_User_id_id_d0ba2852_fk_auth_user_id` FOREIGN KEY (`User_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `divisima_wishlist`
--
ALTER TABLE `divisima_wishlist`
  ADD CONSTRAINT `divisima_wishlist_Product_varient_id_i_b14b15ae_fk_divisima_` FOREIGN KEY (`Product_varient_id_id`) REFERENCES `divisima_product_varient` (`id`),
  ADD CONSTRAINT `divisima_wishlist_User_id_id_d1f6838d_fk_auth_user_id` FOREIGN KEY (`User_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
