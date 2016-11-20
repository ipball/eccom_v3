-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.10-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.2.0.4947
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table ecomdb3.ci_sessions
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table ecomdb3.ci_sessions: 11 rows
DELETE FROM `ci_sessions`;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
	('7ffe528a452d5d0c3a2e24eae691edbba61fc4f9', '127.0.0.1', 1433228741, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313433333232383734313B),
	('9c864b3df73e1d69b93140e2c7908749d25d6165', '127.0.0.1', 1433399190, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313433333339393138323B636172745F636F6E74656E74737C613A333A7B733A31303A22636172745F746F74616C223B643A32343530303B733A31313A22746F74616C5F6974656D73223B643A313B733A33323A226534646133623766626263653233343564373737326230363734613331386435223B613A363A7B733A323A226964223B733A313A2235223B733A333A22717479223B643A313B733A353A227072696365223B643A32343530303B733A343A226E616D65223B733A32353A226950686F6E6520355320313647422053706163652047726179223B733A353A22726F776964223B733A33323A226534646133623766626263653233343564373737326230363734613331386435223B733A383A22737562746F74616C223B643A32343530303B7D7D),
	('67eda243ce81fff874010018ec1d7f9b299d7f0d', '127.0.0.1', 1434176565, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313433343137363536333B),
	('325f93467b1d4a70b948ebbdc71416d6ed5cbee1', '127.0.0.1', 1433226614, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313433333232363631343B),
	('bbaa1f53ce391513ee077cc3fd5e4f553e2464e8', '127.0.0.1', 1433226661, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313433333232363636313B),
	('a61f3a387dd648c049c05b84ad2bdcfd6b3f6f81', '127.0.0.1', 1433211676, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313433333231313537313B636172745F636F6E74656E74737C613A393A7B733A31303A22636172745F746F74616C223B643A3433323339303B733A31313A22746F74616C5F6974656D73223B643A32353B733A33323A226534646133623766626263653233343564373737326230363734613331386435223B613A363A7B733A323A226964223B733A313A2235223B733A333A22717479223B643A343B733A353A227072696365223B643A32343530303B733A343A226E616D65223B733A32353A226950686F6E6520355320313647422053706163652047726179223B733A353A22726F776964223B733A33323A226534646133623766626263653233343564373737326230363734613331386435223B733A383A22737562746F74616C223B643A39383030303B7D733A33323A223136373930393163356138383066616636666235653630383765623162326463223B613A363A7B733A323A226964223B733A313A2236223B733A333A22717479223B643A333B733A353A227072696365223B643A32343530303B733A343A226E616D65223B733A32313A226950686F6E6520355320313647422053696C766572223B733A353A22726F776964223B733A33323A223136373930393163356138383066616636666235653630383765623162326463223B733A383A22737562746F74616C223B643A37333530303B7D733A33323A223866313465343566636565613136376135613336646564643462656132353433223B613A363A7B733A323A226964223B733A313A2237223B733A333A22717479223B643A333B733A353A227072696365223B643A32343930303B733A343A226E616D65223B733A32343A226950686F6E65203620313647422053706163652047726179223B733A353A22726F776964223B733A33323A223866313465343566636565613136376135613336646564643462656132353433223B733A383A22737562746F74616C223B643A37343730303B7D733A33323A223363346434653838396435626135373361393336663462336466616566643635223B613A373A7B733A323A226964223B733A313A2238223B733A333A22717479223B643A343B733A353A227072696365223B643A32383930303B733A343A226E616D65223B733A32393A226950686F6E65203620506C757320313647422053706163652047726179223B733A373A226F7074696F6E73223B613A313A7B733A353A22436F6C6F72223B733A393A22E0B882E0B8B2E0B8A7223B7D733A353A22726F776964223B733A33323A223363346434653838396435626135373361393336663462336466616566643635223B733A383A22737562746F74616C223B643A3131353630303B7D733A33323A223133346333376162313631333138636563343033346131646366323732646333223B613A373A7B733A323A226964223B733A313A2239223B733A333A22717479223B643A333B733A353A227072696365223B643A31303939303B733A343A226E616D65223B733A31333A224173706972652065352D343131223B733A373A226F7074696F6E73223B613A313A7B733A353A22436F6C6F72223B733A353A22477265656E223B7D733A353A22726F776964223B733A33323A223133346333376162313631333138636563343033346131646366323732646333223B733A383A22737562746F74616C223B643A33323937303B7D733A33323A223635313262643433643963616136653032633939306230613832363532646361223B613A363A7B733A323A226964223B733A323A223131223B733A333A22717479223B643A353B733A353A227072696365223B643A363939303B733A343A226E616D65223B733A32353A224D532D57494E444F575320382E312050524F20363420424954223B733A353A22726F776964223B733A33323A223635313262643433643963616136653032633939306230613832363532646361223B733A383A22737562746F74616C223B643A33343935303B7D733A33323A226332306164346437366665393737353961613237613063393962666636373130223B613A363A7B733A323A226964223B733A323A223132223B733A333A22717479223B643A333B733A353A227072696365223B643A3839303B733A343A226E616D65223B733A33323A224B4153504552534B5920494E5445524E45542053454355524954592032303135223B733A353A22726F776964223B733A33323A226332306164346437366665393737353961613237613063393962666636373130223B733A383A22737562746F74616C223B643A323637303B7D7D),
	('42a8d152da17ce740929c3cb8456ab41ff6dfade', '127.0.0.1', 1433209068, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313433333230383830373B),
	('e9f1095b5523f6441499c0642bb1f3db2856075a', '127.0.0.1', 1433206492, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313433333230363231303B),
	('157139c26bd57d10f4ece8ea8e1eb4d955f52359', '127.0.0.1', 1433206617, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313433333230363538303B),
	('8f9c5192039fa4f2eef1519276d6a50ce9cf0e92', '127.0.0.1', 1433208101, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313433333230373937373B),
	('803377bdaa3958d04a52ecdfcae9939a5d05e09a', '::1', 1474972237, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313437343937323133343B636172745F636F6E74656E74737C613A393A7B733A31303A22636172745F746F74616C223B643A3132343334303B733A31313A22746F74616C5F6974656D73223B643A31303B733A33323A226534646133623766626263653233343564373737326230363734613331386435223B613A363A7B733A323A226964223B733A313A2235223B733A333A22717479223B643A313B733A353A227072696365223B643A32343530303B733A343A226E616D65223B733A32353A226950686F6E6520355320313647422053706163652047726179223B733A353A22726F776964223B733A33323A226534646133623766626263653233343564373737326230363734613331386435223B733A383A22737562746F74616C223B643A32343530303B7D733A33323A223136373930393163356138383066616636666235653630383765623162326463223B613A363A7B733A323A226964223B733A313A2236223B733A333A22717479223B643A313B733A353A227072696365223B643A32343530303B733A343A226E616D65223B733A32313A226950686F6E6520355320313647422053696C766572223B733A353A22726F776964223B733A33323A223136373930393163356138383066616636666235653630383765623162326463223B733A383A22737562746F74616C223B643A32343530303B7D733A33323A223866313465343566636565613136376135613336646564643462656132353433223B613A363A7B733A323A226964223B733A313A2237223B733A333A22717479223B643A313B733A353A227072696365223B643A32343930303B733A343A226E616D65223B733A32343A226950686F6E65203620313647422053706163652047726179223B733A353A22726F776964223B733A33323A223866313465343566636565613136376135613336646564643462656132353433223B733A383A22737562746F74616C223B643A32343930303B7D733A33323A223635313262643433643963616136653032633939306230613832363532646361223B613A363A7B733A323A226964223B733A323A223131223B733A333A22717479223B643A313B733A353A227072696365223B643A363939303B733A343A226E616D65223B733A32353A224D532D57494E444F575320382E312050524F20363420424954223B733A353A22726F776964223B733A33323A223635313262643433643963616136653032633939306230613832363532646361223B733A383A22737562746F74616C223B643A363939303B7D733A33323A223363346434653838396435626135373361393336663462336466616566643635223B613A373A7B733A323A226964223B733A313A2238223B733A333A22717479223B643A313B733A353A227072696365223B643A32383930303B733A343A226E616D65223B733A32393A226950686F6E65203620506C757320313647422053706163652047726179223B733A373A226F7074696F6E73223B613A313A7B733A353A22436F6C6F72223B733A393A22E0B882E0B8B2E0B8A7223B7D733A353A22726F776964223B733A33323A223363346434653838396435626135373361393336663462336466616566643635223B733A383A22737562746F74616C223B643A32383930303B7D733A33323A223133346333376162313631333138636563343033346131646366323732646333223B613A373A7B733A323A226964223B733A313A2239223B733A333A22717479223B643A313B733A353A227072696365223B643A31303939303B733A343A226E616D65223B733A31333A224173706972652065352D343131223B733A373A226F7074696F6E73223B613A313A7B733A353A22436F6C6F72223B733A353A22477265656E223B7D733A353A22726F776964223B733A33323A223133346333376162313631333138636563343033346131646366323732646333223B733A383A22737562746F74616C223B643A31303939303B7D733A33323A226332306164346437366665393737353961613237613063393962666636373130223B613A363A7B733A323A226964223B733A323A223132223B733A333A22717479223B643A343B733A353A227072696365223B643A3839303B733A343A226E616D65223B733A33323A224B4153504552534B5920494E5445524E45542053454355524954592032303135223B733A353A22726F776964223B733A33323A226332306164346437366665393737353961613237613063393962666636373130223B733A383A22737562746F74616C223B643A333536303B7D7D);
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;


-- Dumping structure for table ecomdb3.contents
CREATE TABLE IF NOT EXISTS `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส',
  `codename` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสเรียก',
  `topic` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'หัวข้อเรื่อง',
  `detail` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'รายละเอียด',
  `created` datetime NOT NULL COMMENT 'วันที่สร้าง',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table ecomdb3.contents: ~2 rows (approximately)
DELETE FROM `contents`;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` (`id`, `codename`, `topic`, `detail`, `created`) VALUES
	(1, 'howtopay', 'วิธีการสั่งซื้อ', '<div>1. เลือกสินค้าจนเจอสินค้าที่ถูกใจหลังจากนั้นหยิบใส่ตะกร้าพร้อมใส่จำนวนสินค้า</div>\r\n\r\n<div>2. กลับไปเลือกสินค้าใหม่หรือกดสั่งซื้อสินค้า</div>\r\n\r\n<div>3. ยืนยันการสั่งซื้อพร้อมกรอกรายละเอียดการส่งสินค้า</div>', '2015-01-07 16:50:50'),
	(2, 'aboutus', 'เกี่ยวกับเรา', '<div>\r\n<div>เว็บขายสินค้าออนไลน์ จัดทำขึ้นโดยทีมงาน itoffside.com</div>\r\n</div>', '2015-05-18 04:41:44');
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;


-- Dumping structure for table ecomdb3.gallerytbl
CREATE TABLE IF NOT EXISTS `gallerytbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_name` varchar(50) DEFAULT NULL,
  `gallery_img` varchar(25) DEFAULT NULL,
  `alt` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table ecomdb3.gallerytbl: ~4 rows (approximately)
DELETE FROM `gallerytbl`;
/*!40000 ALTER TABLE `gallerytbl` DISABLE KEYS */;
INSERT INTO `gallerytbl` (`id`, `gallery_name`, `gallery_img`, `alt`) VALUES
	(1, NULL, '1.jpg', 'Kitchen'),
	(2, NULL, '2.jpg', 'Nice Lady'),
	(3, NULL, '3.jpg', 'Image 3'),
	(4, NULL, '4.jpg', 'Image 4');
/*!40000 ALTER TABLE `gallerytbl` ENABLE KEYS */;


-- Dumping structure for table ecomdb3.gc_hoteltbl
CREATE TABLE IF NOT EXISTS `gc_hoteltbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(50) NOT NULL,
  `stars` tinyint(4) NOT NULL,
  `hotel_name_posx` varchar(3) NOT NULL,
  `hotel_name_posy` varchar(3) NOT NULL,
  `hotel_name_color` varchar(15) NOT NULL,
  `hotel_name_fsize` varchar(3) NOT NULL,
  `hotel_desc` varchar(50) NOT NULL,
  `hotel_desc_posx` varchar(3) NOT NULL,
  `hotel_desc_posy` varchar(3) NOT NULL,
  `images` text,
  `transition` varchar(15) DEFAULT 'fade',
  `slotamount` varchar(5) DEFAULT NULL,
  `masterspeed` varchar(5) DEFAULT NULL,
  `button_posx` varchar(3) NOT NULL,
  `button_posy` varchar(3) NOT NULL,
  `links` varchar(25) NOT NULL,
  `lat` varchar(25) NOT NULL,
  `lon` varchar(25) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table ecomdb3.gc_hoteltbl: ~4 rows (approximately)
DELETE FROM `gc_hoteltbl`;
/*!40000 ALTER TABLE `gc_hoteltbl` DISABLE KEYS */;
INSERT INTO `gc_hoteltbl` (`id`, `hotel_name`, `stars`, `hotel_name_posx`, `hotel_name_posy`, `hotel_name_color`, `hotel_name_fsize`, `hotel_desc`, `hotel_desc_posx`, `hotel_desc_posy`, `images`, `transition`, `slotamount`, `masterspeed`, `button_posx`, `button_posy`, `links`, `lat`, `lon`, `enabled`) VALUES
	(1, 'Siam Hotel', 3, '700', '30', '#ff33cc', '20', '<p>Away from busy days</p>', '805', '105', '{"3018b0f3bd3feb1e5b8b84bbb92648d7":{"filename":"3018b0f3bd3feb1e5b8b84bbb92648d7.jpg","alt":"","caption":"","primary":true}}', 'fade', '7', '1000', '900', '160', 'seerooms', '13.82168430148232', '100.84961700548104', 1),
	(2, 'Sandy Hotel', 5, '670', '30', '#f79646', '20', '<p>Obsessed with drinks</p>', '800', '105', '{"55dd98b625edb88c12c5b1f2d1de5461":{"filename":"55dd98b625edb88c12c5b1f2d1de5461.jpg","alt":"xxxxxxxxxx","caption":"bbb","roomtype":"3","rtypename":"Executive Room","price":"5000","breakfast":"1"},"cea7ae47ce7f446cf3ad29e1b557b770":{"filename":"cea7ae47ce7f446cf3ad29e1b557b770.jpg","alt":"Modern double bedroom in Sandy Hotel","caption":"Very comfortatble and large style bedroom","roomtype":"2","rtypename":"Double Room","price":"8800","breakfast":"1","wifi":"1","bathroom":"1","balcony":"1"},"ef66688f363d58d008f45e927242feeb":{"filename":"ef66688f363d58d008f45e927242feeb.jpg","alt":"Superior room Style for you at Siam Hotel","caption":"Away from busy tempor erat in magna pulvinar fermentum. Pellentesque scelerisque at leo nec vestibulum. malesuada metus.","roomtype":"3","rtypename":"Executive Room","price":"9000","breakfast":"1","wifi":"1","bathroom":"1","seaview":"1"},"09f5dc06dab23bf39e6c53746d2076bf":{"filename":"09f5dc06dab23bf39e6c53746d2076bf.jpg","alt":"Modern double bedroom in Sandy Hotel","caption":"Very comfortatble and large style bedroom","roomtype":"1","rtypename":"Single Room","price":"6500","breakfast":"1","bathroom":"1","balcony":"1"},"6b61e021329f91fcde65776c68bade81":{"filename":"6b61e021329f91fcde65776c68bade81.jpg","alt":"","caption":"","roomtype":"1","rtypename":"","price":"0","primary":true}}', 'flip', '7', '1000', '900', '160', 'seerooms', '13.821638809288226', '100.84970695767208', 1),
	(3, 'Tanny Hotel', 3, '700', '80', '#ffff00', '20', '<p>This summer day we\'ll join together</p>', '655', '155', '{"014ce70926b426aa6ff9fbd5c435835e":{"filename":"014ce70926b426aa6ff9fbd5c435835e.jpg","alt":"","caption":"","primary":true}}', 'flip', '7', '1000', '900', '205', 'seerooms', '0', '0', 1),
	(4, 'Cherngtor Hotel', 5, '580', '30', 'red', '20', '<p>Never forget it, Nothing at all</p>', '805', '105', '{"4c8bbc9ccd2ccdc608f02b32758ef3ab":{"filename":"4c8bbc9ccd2ccdc608f02b32758ef3ab.jpg","alt":"","caption":"","primary":true}}', 'flow', '7', '1000', '860', '160', 'seerooms', '0', '0', 0);
/*!40000 ALTER TABLE `gc_hoteltbl` ENABLE KEYS */;


-- Dumping structure for table ecomdb3.hoteltbl
CREATE TABLE IF NOT EXISTS `hoteltbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(50) NOT NULL,
  `stars` tinyint(4) NOT NULL,
  `hotel_name_posx` varchar(3) NOT NULL,
  `hotel_name_posy` varchar(3) NOT NULL,
  `hotel_name_color` varchar(15) NOT NULL,
  `hotel_name_fsize` varchar(3) NOT NULL,
  `hotel_desc` varchar(50) NOT NULL,
  `hotel_desc_posx` varchar(3) NOT NULL,
  `hotel_desc_posy` varchar(3) NOT NULL,
  `img_name` varchar(25) DEFAULT NULL,
  `transition` varchar(15) DEFAULT NULL,
  `slotamount` varchar(5) DEFAULT NULL,
  `masterspeed` varchar(5) DEFAULT NULL,
  `button_posx` varchar(3) NOT NULL,
  `button_posy` varchar(3) NOT NULL,
  `links` varchar(25) NOT NULL,
  `lat` varchar(25) NOT NULL,
  `lon` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table ecomdb3.hoteltbl: ~4 rows (approximately)
DELETE FROM `hoteltbl`;
/*!40000 ALTER TABLE `hoteltbl` DISABLE KEYS */;
INSERT INTO `hoteltbl` (`id`, `hotel_name`, `stars`, `hotel_name_posx`, `hotel_name_posy`, `hotel_name_color`, `hotel_name_fsize`, `hotel_desc`, `hotel_desc_posx`, `hotel_desc_posy`, `img_name`, `transition`, `slotamount`, `masterspeed`, `button_posx`, `button_posy`, `links`, `lat`, `lon`) VALUES
	(1, 'Siam Hotel', 2, '700', '30', '#33CCCC', '20', 'Away from busy days', '805', '105', 'slide-bg.jpg', 'fade', '7', '2000', '900', '160', 'seerooms', '', ''),
	(2, 'Sandy Hotel', 5, '670', '30', 'orange', '20', 'Obsessed with drinks', '800', '105', 'slide-bg-02.jpg', 'boxfade', '7', '2500', '900', '160', 'seerooms', '', ''),
	(3, 'Tanny Hotel', 3, '700', '80', 'yellow', '20', 'This summer day we\'ll join together', '655', '155', 'slide-bg-03.jpg', 'boxfade', '7', '2000', '900', '205', 'seerooms', '', ''),
	(4, 'Cherngtor Hotel', 5, '580', '30', 'red', '20', 'Never forget it', '805', '105', 'slide-bg-04.jpg', 'fade', '7', '2000', '860', '160', 'seerooms', '', '');
/*!40000 ALTER TABLE `hoteltbl` ENABLE KEYS */;


-- Dumping structure for table ecomdb3.images
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table ecomdb3.images: ~0 rows (approximately)
DELETE FROM `images`;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;


-- Dumping structure for table ecomdb3.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส',
  `order_date` datetime NOT NULL COMMENT 'วันที่สั่งซื้อ',
  `total` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'ราคารวม',
  `user_id` int(11) NOT NULL COMMENT 'ผู้สั่งซื้อ',
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อผู้สั่งซื้อ',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'อีเมล์',
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เบอร์โทรศัพท์',
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ที่อยู่ผู้รับสินค้า',
  `district` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'อำเภอ',
  `province` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'จังหวัด',
  `postcode` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสไปรษณีย์',
  `order_status` enum('pending','payments','shipping','delivery') CHARACTER SET utf8 NOT NULL DEFAULT 'pending' COMMENT 'สถานะการสั่งซื้อสินค้า',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table ecomdb3.orders: ~7 rows (approximately)
DELETE FROM `orders`;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `order_date`, `total`, `user_id`, `fullname`, `email`, `phone`, `address`, `district`, `province`, `postcode`, `order_status`) VALUES
	(1, '2014-12-06 18:00:05', 143400.00, 2, 'ธวัชศักดิ์ แตงเอี่ยม', 'bie008o@hotmail.com', '0998726726', '6/5, moo 9', 'บึงคำพร้อย', 'ปทุมธานี', '12150', 'payments'),
	(3, '2014-12-08 15:53:00', 56880.00, 2, 'ธวัชศักดิ์ แตงเอี่ยม', 'inonzent@hotmail.com', '0998726726', '6/5, moo 9', 'บึงคำพร้อย', 'ปทุมธานี', '12150', 'payments'),
	(6, '2014-12-08 16:31:26', 28900.00, 2, 'ธวัชศักดิ์ แตงเอี่ยม', 'bie008o@hotmail.com', '0111111111', '6/5, moo 9', 'บึงคำพร้อย', 'ปทุมธานี', '12150', 'pending'),
	(7, '2014-12-21 09:33:04', 73500.00, 2, 'ธวัชศักดิ์ แตงเอี่ยม', 'inonzent@hotmail.com', '0998726726', '6/5, moo 9', 'บึงคำพร้อย', 'ปทุมธานี', '12150', 'pending'),
	(8, '2014-12-21 09:39:55', 24500.00, 2, 'ธวัชศักดิ์ แตงเอี่ยม', 'tangeaim@itoffside.com', '0811448167', '89/30 หมู่ 17 ต.บึงคำพร้อย', 'ลำลูกกา', 'ปทุมธานี', '12150', 'payments'),
	(9, '2014-12-21 09:43:12', 14870.00, 2, 'ธวัชศักดิ์ แตงเอี่ยม', 'tangeaim@itoffside.com', '0811448167', '89/30 หมู่ 17 ต.บึงคำพร้อย', 'ลำลูกกา', 'ปทุมธานี', '12150', 'pending'),
	(10, '2015-01-07 17:24:44', 100420.00, 2, 'สมชาย ใจดี', 'somchai@itoffside.com', '0822234419', '67 หมู่ 20 ตำบล ไอที', 'ไอทีออฟไซต์', 'ดอทคอม', '12110', 'pending');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


-- Dumping structure for table ecomdb3.order_details
CREATE TABLE IF NOT EXISTS `order_details` (
  `order_id` int(11) NOT NULL COMMENT 'รหัสสั่งซื้อ',
  `product_id` int(11) NOT NULL COMMENT 'รหัสสินค้า',
  `quantity` int(11) NOT NULL COMMENT 'จำนวนสั่งซื้อ',
  `price` decimal(8,2) NOT NULL COMMENT 'ราคา',
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table ecomdb3.order_details: ~14 rows (approximately)
DELETE FROM `order_details`;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` (`order_id`, `product_id`, `quantity`, `price`) VALUES
	(1, 5, 2, 24500.00),
	(1, 6, 1, 24500.00),
	(1, 11, 10, 6990.00),
	(3, 5, 2, 24500.00),
	(3, 11, 1, 6990.00),
	(3, 12, 1, 890.00),
	(6, 8, 1, 28900.00),
	(7, 5, 3, 24500.00),
	(8, 5, 1, 24500.00),
	(9, 11, 2, 6990.00),
	(9, 12, 1, 890.00),
	(10, 5, 1, 24500.00),
	(10, 9, 5, 10990.00),
	(10, 11, 3, 6990.00);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;


-- Dumping structure for table ecomdb3.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสหน้าเพจ',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `short_detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort_item` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table ecomdb3.pages: ~0 rows (approximately)
DELETE FROM `pages`;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `title`, `detail`, `created`, `short_detail`, `sort_item`) VALUES
	(2, 'Promotions', '<div>โปรโมชั่นจากร้าน ทุกๆเดือน</div>\r\n', '2014-09-08 22:54:59', 'ข่าวสารโปรโมชั่น', 1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


-- Dumping structure for table ecomdb3.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสชำระเงิน',
  `pay_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'จำนวนโอน',
  `pay_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'วันเวลาโอน',
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0.00' COMMENT 'รายละเอียด',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT 'รหัสใบสั่งซื้อ',
  PRIMARY KEY (`id`),
  KEY `FK_payments_orders` (`order_id`),
  CONSTRAINT `FK_payments_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table ecomdb3.payments: ~3 rows (approximately)
DELETE FROM `payments`;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` (`id`, `pay_money`, `pay_date`, `detail`, `order_id`) VALUES
	(1, 56880.01, '2014-12-12 23:05:00', '<div>ทดสอบตัวอักษร</div>\r\n\r\n<div>ทดสอบ</div>', 3),
	(3, 143000.00, '2014-12-12 12:25:00', '', 1),
	(4, 24500.00, '2014-12-21 14:20:00', '<div>ทดสอบระบบ<br />\r\n&nbsp;</div>', 8);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;


-- Dumping structure for table ecomdb3.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อสินค้า',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'ราคาสินค้า',
  `brandname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ยี่ห้อสินค้า',
  `detail` text COLLATE utf8_unicode_ci COMMENT 'รายละเอียดสินค้า',
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'ecimage.jpg' COMMENT 'รูปภาพหลักสินค้า',
  `option_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_values` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL COMMENT 'วันที่สร้าง',
  `product_categorie_id` int(11) NOT NULL COMMENT 'รหัสประเภทสินค้า',
  PRIMARY KEY (`id`),
  KEY `product_categorie_id` (`product_categorie_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_categorie_id`) REFERENCES `product_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table ecomdb3.products: ~7 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `price`, `brandname`, `detail`, `image`, `option_name`, `option_values`, `created`, `product_categorie_id`) VALUES
	(5, 'iPhone 5S 16GB Space Gray', 24500.00, 'APPLE', '<div>\r\n<table cellpadding="5" cellspacing="1">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>OS</strong></td>\r\n			<td>iOS 7, upgradable to iOS 7.1.2, planned upgrade to iOS 8</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Processor</strong></td>\r\n			<td>Dual-core 1.3 GHz Cyclone (ARM v8-based)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Display</strong></td>\r\n			<td>4&quot; LED-backlit IPS LCD, capacitive touchscreen, 16M colors</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Internal , ram</strong></td>\r\n			<td>16 GB. , 1 GB. RAM DDR3</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Network</strong></td>\r\n			<td>2G Network : GSM 850 / 900 / 1800 / 1900<br />\r\n			3G Network : HSDPA 850 / 900 / 1700 / 1900 / 2100<br />\r\n			4G Network : LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Camera</strong></td>\r\n			<td>Back Camera : 8 MP, 3264 x 2448 pixels, autofocus, dual-LED (dual tone) flash<br />\r\n			Front Camera : .2 MP, 720p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chipset</strong></td>\r\n			<td>Apple A7</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>GPU</strong></td>\r\n			<td>PowerVR G6430 (quad-core graphics)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>SIM</strong></td>\r\n			<td>Nano-SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Card slot</strong></td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Battery</strong></td>\r\n			<td>Non-removable Li-Po 1560 mAh battery (5.92 Wh)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Dimension</strong></td>\r\n			<td>123.8 x 58.6 x 7.6 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Warranty</strong></td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', '201412101739141.png', NULL, NULL, '2014-11-17 17:27:31', 30),
	(6, 'iPhone 5S 16GB Silver', 24500.00, 'APPLE', '<div>\r\n<table cellpadding="5" cellspacing="1">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>OS</strong></td>\r\n			<td>iOS 7, upgradable to iOS 7.1.2, planned upgrade to iOS 8</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Processor</strong></td>\r\n			<td>Dual-core 1.3 GHz Cyclone (ARM v8-based)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Display</strong></td>\r\n			<td>4&quot; LED-backlit IPS LCD, capacitive touchscreen, 16M colors</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Internal , ram</strong></td>\r\n			<td>16 GB. , 1 GB. RAM DDR3</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Network</strong></td>\r\n			<td>2G Network : GSM 850 / 900 / 1800 / 1900<br />\r\n			3G Network : HSDPA 850 / 900 / 1700 / 1900 / 2100<br />\r\n			4G Network : LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Camera</strong></td>\r\n			<td>Back Camera : 8 MP, 3264 x 2448 pixels, autofocus, dual-LED (dual tone) flash<br />\r\n			Front Camera : .2 MP, 720p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chipset</strong></td>\r\n			<td>Apple A7</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>GPU</strong></td>\r\n			<td>PowerVR G6430 (quad-core graphics)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>SIM</strong></td>\r\n			<td>Nano-SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Card slot</strong></td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Battery</strong></td>\r\n			<td>Non-removable Li-Po 1560 mAh battery (5.92 Wh)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Dimension</strong></td>\r\n			<td>123.8 x 58.6 x 7.6 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Warranty</strong></td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', '201411171730103.jpg', NULL, NULL, '2014-11-17 17:30:10', 30),
	(7, 'iPhone 6 16GB Space Gray', 24900.00, 'APPLE', '<div>\r\n<table cellpadding="5" cellspacing="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>OS</td>\r\n			<td>iOS 8, upgradable to iOS 8.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor</td>\r\n			<td>Apple A8 Dual Core 2014 1.4 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display</td>\r\n			<td>4.7&quot; Retina Display 1334 x 750 Pixel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Internal , ram</td>\r\n			<td>16 GB. , 1 GB.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Network</td>\r\n			<td>2G : 850/900/1800/1900<br />\r\n			3G : 850 /900/2100<br />\r\n			4G : LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera</td>\r\n			<td>Back Camara : 8 MP<br />\r\n			Front Camara : 1.2 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Apple A8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>PowerVR GX6450 (quad-core graphics)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SIM</td>\r\n			<td>Nano-SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Card slot</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Battery</td>\r\n			<td>Non-removable Li-Po 1810 mAh battery (6.9 Wh)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dimension</td>\r\n			<td>138.1 x 67 x 6.9 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Warranty</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', '201411171732320.jpg', NULL, NULL, '2014-11-17 17:32:32', 30),
	(8, 'iPhone 6 Plus 16GB Space Gray', 28900.00, 'APPLE', '<div>\r\n<table cellpadding="5" cellspacing="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>OS</td>\r\n			<td>iOS 8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor</td>\r\n			<td>Dual Core 2014 1.4 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display</td>\r\n			<td>5.5&quot; Retina Display</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Internal , ram</td>\r\n			<td>16 GB. / 1 GB.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Network</td>\r\n			<td>2G : 850/900/1800/1900<br />\r\n			3G : 850 /900/2100<br />\r\n			4G : LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera</td>\r\n			<td>Back Camara : 8 MP<br />\r\n			Front Camara : 1.2 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Apple A8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>PowerVR GX6450 (quad-core graphics)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SIM</td>\r\n			<td>Nano-SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Card slot</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Battery</td>\r\n			<td>Li - Polymer 2915 mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dimension</td>\r\n			<td>158.10 x 77.80 mm.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Warranty</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', '201411171733516.jpg', 'Color', 'ขาว,เทา,ดำ', '2014-11-17 17:33:51', 30),
	(9, 'Aspire e5-411', 10990.00, 'Acer', '<div>\r\n<table cellpadding="5" cellspacing="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Intel Celeron N2830</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display</td>\r\n			<td>14&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Main Memory</td>\r\n			<td>4 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Storage</td>\r\n			<td>500 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Optical Media Drive</td>\r\n			<td>DVD Super Multi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Graphics</td>\r\n			<td>UMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Web Camera</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>D-Sub/VGA</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>e-SATA</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HDMI</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Card Reader</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Express Slot</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Finger Print</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Connection</td>\r\n			<td>WLAN<br />\r\n			Bluetooth 4.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Battery</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Dos</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Warranty</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', '201411171737166.jpg', 'Color', 'Green,Red,Blue', '2014-11-17 17:37:16', 31),
	(11, 'MS-WINDOWS 8.1 PRO 64 BIT', 6990.00, 'Microsoft', '<div>Operating System Windows 8.1 64-bit Eng</div>', '201411171743588.jpg', NULL, NULL, '2014-11-17 17:43:58', 32),
	(12, 'KASPERSKY INTERNET SECURITY 2015', 890.00, 'KASPERSKY', '<div>Features Anti-virus<br />\r\nAnti-spyware<br />\r\nAnti-phishing<br />\r\nAnti-spam<br />\r\nAnti-rootkit<br />\r\nAnti-banner<br />\r\nSafe Money<br />\r\nAutomatic exploit prevention<br />\r\nTwo-way firewall</div>', '201411211736326.jpg', NULL, NULL, '2014-11-17 17:45:16', 32);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;


-- Dumping structure for table ecomdb3.product_categories
CREATE TABLE IF NOT EXISTS `product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส',
  `codename` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสประเภทสินค้า',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ประเภทสินค้า',
  `created` datetime NOT NULL COMMENT 'วันที่สร้าง',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table ecomdb3.product_categories: ~5 rows (approximately)
DELETE FROM `product_categories`;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` (`id`, `codename`, `name`, `created`) VALUES
	(30, 'P001', 'Smartphone', '2014-11-17 17:17:41'),
	(31, 'P002', 'Notebook', '2014-11-17 17:18:06'),
	(32, 'P003', 'Software', '2014-11-17 17:18:40'),
	(33, 'P004', 'รองเท้า', '2015-05-17 16:07:02'),
	(34, 'P005', 'กระเป๋า', '2015-05-17 16:49:19');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;


-- Dumping structure for table ecomdb3.roomsubtbl
CREATE TABLE IF NOT EXISTS `roomsubtbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) DEFAULT NULL COMMENT 'link to roomtbl id',
  `roomsub_img` varchar(50) DEFAULT NULL COMMENT 'another image such as bathroom balcony or living room',
  `roomsub_alt` varchar(25) DEFAULT NULL COMMENT 'explain for each another image',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table ecomdb3.roomsubtbl: ~6 rows (approximately)
DELETE FROM `roomsubtbl`;
/*!40000 ALTER TABLE `roomsubtbl` DISABLE KEYS */;
INSERT INTO `roomsubtbl` (`id`, `room_id`, `roomsub_img`, `roomsub_alt`) VALUES
	(1, 8, 'sandy/room-06.jpg', 'Bedroom'),
	(2, 8, 'sandy/room-06_bathroom.jpg', 'Bathroom'),
	(3, 8, 'sandy/room-06_balcony.jpg', 'Balcony'),
	(4, 1, 'siam/room-01_balcony.jpg', 'Bedroom'),
	(5, 1, 'siam/room-01_balcony.jpg', 'Bathroom'),
	(6, 1, 'siam/room-01_balcony.jpg', 'Balcony');
/*!40000 ALTER TABLE `roomsubtbl` ENABLE KEYS */;


-- Dumping structure for table ecomdb3.roomtbl
CREATE TABLE IF NOT EXISTS `roomtbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) DEFAULT NULL COMMENT 'Link to hoteltbl',
  `roomtype_id` int(11) DEFAULT NULL COMMENT 'Link to roomtypetbl',
  `hdesc` varchar(50) DEFAULT NULL,
  `desc` varchar(250) DEFAULT NULL,
  `room_img` varchar(50) DEFAULT NULL COMMENT 'separate by Hotel',
  `room_alt` varchar(25) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `favorite` smallint(6) DEFAULT '0' COMMENT 'favorite count when room was booked',
  `breakfast` tinyint(1) DEFAULT '0',
  `freewifi` tinyint(1) DEFAULT '0',
  `bathroom` tinyint(1) DEFAULT '0',
  `balcony` tinyint(1) DEFAULT '0',
  `seaview` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table ecomdb3.roomtbl: ~17 rows (approximately)
DELETE FROM `roomtbl`;
/*!40000 ALTER TABLE `roomtbl` DISABLE KEYS */;
INSERT INTO `roomtbl` (`id`, `hotel_id`, `roomtype_id`, `hdesc`, `desc`, `room_img`, `room_alt`, `price`, `favorite`, `breakfast`, `freewifi`, `bathroom`, `balcony`, `seaview`) VALUES
	(1, 1, 1, 'A modern hotel room in Siam Hotel', 'Nunc tempor erat in magna pulvinar fermentum. Pellentesque scelerisque at leo nec vestibulum. malesuada metus.', 'siam/room-01.jpg', 'Room 1', 1500, 1, 1, 1, 1, 0, 0),
	(2, 1, 1, 'Single Room Design for Comfortable', 'Yes tempor erat in magna pulvinar fermentum. Pellentesque scelerisque at leo nec vestibulum. malesuada metus.', 'siam/room-02.jpg', 'Room 2', 2000, 3, 1, 1, 1, 0, 0),
	(3, 1, 1, 'Siam Hotel Room a single room as heaven', 'Relax tempor erat in magna pulvinar fermentum. Pellentesque scelerisque at leo nec vestibulum. malesuada metus.', 'siam/room-03.jpg', 'Room 3', 3000, 1, 1, 1, 1, 0, 0),
	(4, 1, 2, 'Luxuary Style at Siam Hotel', 'Rest you body tempor erat in magna pulvinar fermentum. Pellentesque scelerisque at leo nec vestibulum. malesuada metus.', 'siam/droom-01.jpg', 'Double 1', 5000, 5, 1, 1, 1, 1, 1),
	(5, 1, 2, 'Superior room Style for you at Siam Hotel', 'Away from busy tempor erat in magna pulvinar fermentum. Pellentesque scelerisque at leo nec vestibulum. malesuada metus.', 'siam/droom-02.jpg', 'Double 2', 5200, 2, 1, 1, 1, 1, 1),
	(6, 2, 2, 'Modern double bedroom in Sandy Hotel', 'Very comfortatble and large style bedroom', 'sandy/room-04.jpg', 'Double 1', 9000, 8, 0, 0, 0, 0, 0),
	(7, 2, 2, 'Modern double bedroom in Sandy Hotel', 'Very comfortatble and large style bedroom', 'sandy/room-05.jpg', 'Double 2', 9000, 4, 0, 0, 0, 0, 0),
	(8, 2, 2, 'Modern double bedroom in Sandy Hotel', 'Very comfortatble and large style bedroom', 'sandy/room-06.jpg', 'Double 3', 9000, 9, 0, 0, 0, 0, 0),
	(9, 2, 2, 'Modern double bedroom in Sandy Hotel', 'Very comfortatble and large style bedroom', 'sandy/room-07.jpg', 'Double 4', 9000, 3, 0, 0, 0, 0, 0),
	(10, 2, 2, 'Modern double bedroom in Sandy Hotel', 'Very comfortatble and large style bedroom', 'sandy/room-08.jpg', 'Double 5', 9000, 2, 0, 0, 0, 0, 0),
	(11, 2, 2, 'Modern double bedroom in Sandy Hotel', 'Very comfortatble and large style bedroom', 'sandy/room-09.jpg', 'Double 6', 9000, 0, 0, 0, 0, 0, 0),
	(12, 3, 1, 'Single bedroom in Tanny Hotel', 'Very cheep and nice  style bedroom', 'tanny/single_01.jpg', 'Single 1', 2800, 0, 0, 0, 0, 0, 0),
	(13, 3, 1, 'Single bedroom in Tanny Hotel', 'Very cheep and nice  style bedroom', 'tanny/single_02.jpg', 'Single 2', 2800, 0, 0, 0, 0, 0, 0),
	(14, 3, 1, 'Single bedroom in Tanny Hotel', 'Very cheep and nice  style bedroom', 'tanny/single_03.jpg', 'Single 3', 2800, 0, 0, 0, 0, 0, 0),
	(15, 3, 2, 'Double bedroom in Tanny Hotel', 'Very cheep and nice  style bedroom', 'tanny/double_01.jpg', 'Double 1', 2800, 0, 0, 0, 0, 0, 0),
	(16, 3, 2, 'Double bedroom in Tanny Hotel', 'Very cheep and nice  style bedroom', 'tanny/double_02.jpg', 'Double 2', 2800, 0, 0, 0, 0, 0, 0),
	(17, 3, 2, 'Double bedroom in Tanny Hotel', 'Very cheep and nice  style bedroom', 'tanny/double_03.jpg', 'Double 3', 2800, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `roomtbl` ENABLE KEYS */;


-- Dumping structure for table ecomdb3.slidersubtbl
CREATE TABLE IF NOT EXISTS `slidersubtbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_id` int(11) NOT NULL DEFAULT '0',
  `msg` varchar(100) DEFAULT NULL,
  `layer` varchar(50) DEFAULT NULL,
  `data-position` varchar(25) DEFAULT NULL,
  `data-width` varchar(25) DEFAULT NULL,
  `data-horizontal` varchar(25) DEFAULT NULL,
  `data-vertical` varchar(25) DEFAULT NULL,
  `data-transition` varchar(25) DEFAULT NULL,
  `data-delay` varchar(25) DEFAULT NULL,
  `data-duration` varchar(25) DEFAULT NULL,
  `data-offset` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table ecomdb3.slidersubtbl: ~12 rows (approximately)
DELETE FROM `slidersubtbl`;
/*!40000 ALTER TABLE `slidersubtbl` DISABLE KEYS */;
INSERT INTO `slidersubtbl` (`id`, `slider_id`, `msg`, `layer`, `data-position`, `data-width`, `data-horizontal`, `data-vertical`, `data-transition`, `data-delay`, `data-duration`, `data-offset`) VALUES
	(2, 1, 'Need a slider that is...', 'layer black', NULL, NULL, '40', '40', NULL, NULL, NULL, NULL),
	(3, 1, 'responsive', 'layer white', NULL, NULL, '40', '80', 'left', '400', '300', NULL),
	(4, 1, 'touch-screen ready', 'layer black', NULL, NULL, '138', '80', 'left', '600', '300', NULL),
	(5, 1, 'and fully customizable ?', 'layer white', NULL, NULL, '300', '80', 'left', '800', '300', NULL),
	(6, 1, 'Advanced Slider includes all that, and even more...', 'layer black', NULL, NULL, '40', '122', 'up', '1200', NULL, '20'),
	(7, 2, 'Layers can be static or animated...', 'layer black static', NULL, '280', 'center', '30%', NULL, NULL, NULL, NULL),
	(8, 2, '...and you can easily customize their size, position, animation and style', 'layer white', NULL, '280', 'center', '40%', NULL, NULL, NULL, NULL),
	(9, 3, 'Layers can contain anything from simple text to complex HTML content like videos', 'layer white', 'bottomLeft', '320', '30', '70', 'down', NULL, NULL, NULL),
	(10, 3, 'Mixed content example &rarr;', 'layer white', 'bottomLeft', NULL, '30', '30', 'left', '500', NULL, NULL),
	(11, 4, 'Test myself', 'layer black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, 5, 'มีคอนเสริทมา', 'layer white', NULL, NULL, '30', '40', NULL, NULL, NULL, NULL),
	(13, 6, '66666', 'layer black', NULL, NULL, '80', '40', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `slidersubtbl` ENABLE KEYS */;


-- Dumping structure for table ecomdb3.slidertbl
CREATE TABLE IF NOT EXISTS `slidertbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_name` varchar(50) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `thumbnail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table ecomdb3.slidertbl: ~8 rows (approximately)
DELETE FROM `slidertbl`;
/*!40000 ALTER TABLE `slidertbl` DISABLE KEYS */;
INSERT INTO `slidertbl` (`id`, `slider_name`, `img`, `thumbnail`) VALUES
	(1, 'xaaa', 'images/v4/large/image1.jpg', 'images/v4/thumbnails/thumb1.jpg'),
	(2, 'xbbb', 'images/v4/large/image2.jpg', 'images/v4/thumbnails/thumb2.jpg'),
	(3, 'xccc', 'images/v4/large/image3.jpg', 'images/v4/thumbnails/thumb3.jpg'),
	(4, 'dddd', 'images/v4/large/image4.jpg', 'images/v4/thumbnails/thumb4.jpg'),
	(5, 'eee', 'images/v4/large/image5.jpg', 'images/v4/thumbnails/thumb5.jpg'),
	(6, 'ffff', 'images/v4/large/image6.jpg', 'images/v4/thumbnails/thumb6.jpg'),
	(7, 'www', 'images/v4/large/image7.jpg', 'images/v4/thumbnails/thumb7.jpg'),
	(8, 'rrr', 'images/v4/large/image8.jpg', 'images/v4/thumbnails/thumb7.jpg');
/*!40000 ALTER TABLE `slidertbl` ENABLE KEYS */;


-- Dumping structure for table ecomdb3.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสมาชิก',
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อจริง',
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'นามสกุล',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อเข้าใช้',
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสผ่าน',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'อีเมล์',
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เบอร์โทรศัพท์',
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ที่อยู่',
  `district` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'อำเภอ',
  `province` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'จังหวัด',
  `postcode` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสไปรษณีย์',
  `created` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `user_type` enum('user','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user' COMMENT 'ประเภทสมาชิก',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table ecomdb3.users: ~2 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `phone`, `address`, `district`, `province`, `postcode`, `created`, `user_type`) VALUES
	(1, 'ธวัชศักดิ์', 'แตงเอี่ยม', 'tawatsak', '09a42f34702946f456075b378253364e', 'tangeaim@hotmail.com', '0811448167', '89/30 หมู่ 17 ตำบล บึงคำพร้อย', 'ลำลูกกา', 'ปทุมธานี', '12150', '2014-09-08 22:02:36', 'admin'),
	(2, 'ทั่วไป', '', 'guest', 'guest', 'itoffside@itoffside.com', '0811448167', 'none', 'none', 'none', '12150', '2014-12-05 23:08:20', 'user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
