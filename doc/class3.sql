-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.23


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema class3
--

CREATE DATABASE IF NOT EXISTS class3;
USE class3;

--
-- Definition of table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `CID` varchar(45) NOT NULL,
  `Cname` varchar(45) DEFAULT NULL,
  `Tid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

/*!40000 ALTER TABLE `course` DISABLE KEYS */;
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


--
-- Definition of table `sc`
--

DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `SID` varchar(45) NOT NULL,
  `CID` varchar(45) NOT NULL,
  `Score` int(11) NOT NULL,
  PRIMARY KEY (`SID`,`CID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sc`
--

/*!40000 ALTER TABLE `sc` DISABLE KEYS */;
INSERT INTO `sc` (`SID`,`CID`,`Score`) VALUES 
 ('1','1',100),
 ('1','2',100),
 ('1','3',90),
 ('1','5',70),
 ('1','6',80),
 ('4','3',90);
/*!40000 ALTER TABLE `sc` ENABLE KEYS */;


--
-- Definition of table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `Sid` varchar(45) NOT NULL,
  `Sname` varchar(45) DEFAULT NULL,
  `Sage` varchar(45) DEFAULT NULL,
  `Ssex` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Sid`),
  KEY `Index_name` (`Sname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`Sid`,`Sname`,`Sage`,`Ssex`) VALUES 
 ('1','Mike','15','Male'),
 ('3','Tom','16','Female');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


--
-- Definition of table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tid` varchar(45) NOT NULL,
  `tname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher`
--

/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;


--
-- Definition of table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(64) NOT NULL,
  `pwd` varchar(64) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `remark` longtext,
  `test` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_info`
--

/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` (`id`,`login_name`,`pwd`,`user_name`,`remark`,`test`) VALUES 
 (1,'张宏','aaa','张宏',NULL,NULL),
 (2,'刘洪','bbb','刘洪',NULL,NULL),
 (3,'小王','bbb','小李',NULL,NULL);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;


--
-- Definition of table `userinfo1`
--

DROP TABLE IF EXISTS `userinfo1`;
CREATE TABLE `userinfo1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userinfo1`
--

/*!40000 ALTER TABLE `userinfo1` DISABLE KEYS */;
INSERT INTO `userinfo1` (`id`,`username`,`password`) VALUES 
 (1,'aa',NULL);
/*!40000 ALTER TABLE `userinfo1` ENABLE KEYS */;


--
-- Definition of procedure `SHOW_STUDENT`
--

DROP PROCEDURE IF EXISTS `SHOW_STUDENT`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SHOW_STUDENT`(IN id varchar(45))
begin
   DECLARE vsid CHAR(45);
   SET vsid = id;
   select * from student where sid=vsid;
end $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
