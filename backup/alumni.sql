# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 07:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------


#
# Delete any existing table `tblact`
#

DROP TABLE IF EXISTS `tblact`;


#
# Table structure of table `tblact`
#

CREATE TABLE `tblact` (
  `na_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(50) NOT NULL,
  `date_from` date DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  PRIMARY KEY (`na_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblact (3 records)
#
 
INSERT INTO `tblact` VALUES (2, 'BSIT 4A Thesis Defense LAST', '2017-03-09', '08:00:00', '2017-03-09', '16:00:00') ; 
INSERT INTO `tblact` VALUES (4, 'Final Technical Review', '2017-03-02', '08:00:00', '2017-03-02', '17:00:00') ; 
INSERT INTO `tblact` VALUES (7, 'JS PROM 2k17', '2017-02-17', NULL, '2017-02-17', NULL) ;
#
# End of data contents of table tblact
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 07:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------


#
# Delete any existing table `tblalbums`
#

DROP TABLE IF EXISTS `tblalbums`;


#
# Table structure of table `tblalbums`
#

CREATE TABLE `tblalbums` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `albumName` varchar(255) DEFAULT NULL,
  `album_status` varchar(40) NOT NULL,
  PRIMARY KEY (`album_id`),
  UNIQUE KEY `albumName` (`albumName`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalbums (4 records)
#
 
INSERT INTO `tblalbums` VALUES (37, '2k17', 'Approved') ; 
INSERT INTO `tblalbums` VALUES (45, 'MENTOR\'S CIRCLE', 'Approved') ; 
INSERT INTO `tblalbums` VALUES (49, 'RANDOM stuff', 'Pending') ; 
INSERT INTO `tblalbums` VALUES (50, 'Bisan ano pagid', 'Approved') ;
#
# End of data contents of table tblalbums
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 07:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------


#
# Delete any existing table `tblalum_photos`
#

DROP TABLE IF EXISTS `tblalum_photos`;


#
# Table structure of table `tblalum_photos`
#

CREATE TABLE `tblalum_photos` (
  `img_id` int(155) NOT NULL AUTO_INCREMENT,
  `imageName` varchar(255) NOT NULL,
  `imageSize` int(155) NOT NULL,
  `imageType` varchar(255) NOT NULL,
  `album_id` int(11) NOT NULL,
  `imageDesc` varchar(255) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalum_photos (12 records)
#
 
INSERT INTO `tblalum_photos` VALUES (7, 'IMG_2694.JPG', 6389066, 'image/jpeg', 37, '') ; 
INSERT INTO `tblalum_photos` VALUES (8, 'IMG_2727.JPG', 7819475, 'image/jpeg', 0, 'TURNEDoff') ; 
INSERT INTO `tblalum_photos` VALUES (9, 'IMG_2733.JPG', 6952046, 'image/jpeg', 0, 'TURNEDoff') ; 
INSERT INTO `tblalum_photos` VALUES (10, 'IMG_2734.JPG', 7386693, 'image/jpeg', 0, 'TURNEDoff') ; 
INSERT INTO `tblalum_photos` VALUES (11, 'IMG_2696.JPG', 6948367, 'image/jpeg', 0, 'wewe') ; 
INSERT INTO `tblalum_photos` VALUES (12, 'IMG_2700.JPG', 8306760, 'image/jpeg', 0, 'wewe') ; 
INSERT INTO `tblalum_photos` VALUES (13, 'IMG_2696.JPG', 6948367, 'image/jpeg', 0, 'wewewe') ; 
INSERT INTO `tblalum_photos` VALUES (14, 'IMG_2700.JPG', 8306760, 'image/jpeg', 0, 'wewewe') ; 
INSERT INTO `tblalum_photos` VALUES (15, 'IMG_2694.JPG', 6389066, 'image/jpeg', 40, '') ; 
INSERT INTO `tblalum_photos` VALUES (16, 'IMG_2694.JPG', 6389066, 'image/jpeg', 41, '') ; 
INSERT INTO `tblalum_photos` VALUES (17, 'IMG_2694.JPG', 6389066, 'image/jpeg', 41, '') ; 
INSERT INTO `tblalum_photos` VALUES (18, 'IMG_2693.JPG', 6086401, 'image/jpeg', 41, '') ;
#
# End of data contents of table tblalum_photos
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 07:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------


#
# Delete any existing table `tblalumni`
#

DROP TABLE IF EXISTS `tblalumni`;


#
# Table structure of table `tblalumni`
#

CREATE TABLE `tblalumni` (
  `alum_id` int(155) NOT NULL,
  `fname` varchar(150) DEFAULT NULL,
  `mname` varchar(150) DEFAULT NULL,
  `lname` varchar(150) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `civilstat` varchar(100) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `telnum` varchar(20) DEFAULT NULL,
  `mobnum` varchar(20) DEFAULT NULL,
  `emailadd` varchar(100) DEFAULT NULL,
  `yeargrad` int(25) DEFAULT NULL,
  `department` varchar(180) DEFAULT NULL,
  `course` varchar(180) DEFAULT NULL,
  `awards` varchar(200) DEFAULT NULL,
  `scholarships` varchar(200) DEFAULT NULL,
  `attainment` varchar(200) DEFAULT NULL,
  `employed` varchar(10) DEFAULT NULL,
  `empstatus` varchar(20) DEFAULT NULL,
  `presoccup` varchar(100) DEFAULT NULL,
  `workadd` varchar(200) DEFAULT NULL,
  `gradstud` varchar(10) DEFAULT NULL,
  `advstud` varchar(10) DEFAULT NULL,
  `participated` varchar(100) DEFAULT NULL,
  `assist` varchar(10) DEFAULT NULL,
  `programs` varchar(100) DEFAULT NULL,
  `cts` int(10) DEFAULT NULL,
  `solvecomplexprob` int(10) DEFAULT NULL,
  `workwithother` int(10) DEFAULT NULL,
  `learnind` int(10) DEFAULT NULL,
  `writtencommskills` int(10) DEFAULT NULL,
  `spokencommskills` int(10) DEFAULT NULL,
  `knowfield` int(10) DEFAULT NULL,
  `workrelatedknow` int(10) DEFAULT NULL,
  `relevantdegree` varchar(10) DEFAULT NULL,
  `norelevant` varchar(255) DEFAULT NULL,
  `impfctr` varchar(100) DEFAULT NULL,
  `overall` varchar(10) DEFAULT NULL,
  `alum_status` int(10) DEFAULT NULL,
  PRIMARY KEY (`alum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalumni (11 records)
#
 
INSERT INTO `tblalumni` VALUES (4, 'Jonah ', 'Palomar', 'Gafate', 'Female', 'Married', '2017-02-01', 'Brgy. Cabugao, Roxas City', 'zxc', '09107534422', '', 2002, 'College of Computer Studies', 'Bachelor of Science in Computer Science', 'model student', 'none', 'zxc', 'Yes', 'Regular', 'Teacher', 'FCU-CCS', 'Yes', 'Yes', 'Related to your profession', 'Yes', 'IT Courses', 2, 3, 3, 3, 4, 2, 4, 3, 'Yes', '', 'University Ranking', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (49, 'Rommel', 'Berino', 'Sario', 'Male', 'Married', '1976-11-03', NULL, NULL, NULL, NULL, 1997, 'College of Computer Studies', 'Bachelor of Science in Computer Science', 'Academic Awardee', NULL, 'Master\'s Degree', 'Yes', 'Regular', 'Teacher', 'Filamer Christian UNiversity, Roxas Avenue, Roxas City', 'Yes', 'Yes', 'Related to your profession', 'Yes', 'IT Courses', 4, 4, 4, 5, 5, 5, 5, 4, 'Yes', '', 'IT Skills', 'Yes', 1) ; 
INSERT INTO `tblalumni` VALUES (52, 'Mylene', 'Reyes', 'Chu', 'Female', 'Married', '1975-11-18', 'Milibili Heights,Roxas City', '620z2167', '3445dasdas', 'chu@yahoo.com', 1997, 'College of Computer Studies', 'Bachelor of Science in Computer Science', 'zx', 'zxc', 'Bachelor\'s Degree', 'Yes', 'Regular', 'Teacher', 'FCU, Roxas Avenue, Roxas City', 'Yes', 'Yes', 'Related to your profession', 'Yes', 'IT Courses', 4, 4, 4, 4, 4, 4, 4, 3, 'Yes', '', 'IT Skills', 'Yes', 1) ; 
INSERT INTO `tblalumni` VALUES (54, 'Louchin Var', 'Carias', 'Cejar', NULL, NULL, '1996-08-23', NULL, NULL, NULL, NULL, 2016, 'College of Computer Studies', 'Bachelor of Science in Information Technology', '', NULL, NULL, NULL, NULL, NULL, NULL, 'No', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'No', 2) ; 
INSERT INTO `tblalumni` VALUES (55, 'Keith Francis', 'Falco', 'Tipon', NULL, NULL, '1996-07-23', NULL, NULL, NULL, NULL, 2000, 'College of Computer Studies', 'Bachelor of Science in Information Technology', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 2) ; 
INSERT INTO `tblalumni` VALUES (56, 'Crystal Mae', 'Deita', 'Contreras', NULL, NULL, '1997-01-13', NULL, NULL, NULL, NULL, 2009, 'College of Computer Studies', 'Bachelor of Science in Information Technology', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 2) ; 
INSERT INTO `tblalumni` VALUES (57, 'Jovelyn', 'Miranda', 'Demausa', NULL, NULL, '1997-02-08', NULL, NULL, NULL, NULL, 2011, 'College of Computer Studies', 'Bachelor of Science in Information Technology', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 2) ; 
INSERT INTO `tblalumni` VALUES (58, 'Mechelyn', 'Alarcon', 'Villanueva', NULL, NULL, '1996-05-20', NULL, NULL, NULL, NULL, 2015, 'College of Computer Studies', 'Bachelor of Science in Information Technology', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 2) ; 
INSERT INTO `tblalumni` VALUES (60, 'Vincent Von Niño', 'Besana', 'Dapiton', NULL, NULL, '1996-08-30', NULL, NULL, NULL, NULL, 2014, 'College of Computer Studies', 'Bachelor of Science in Information Technology', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 2) ; 
INSERT INTO `tblalumni` VALUES (61, 'Kay', 'Acedre', 'Destor', 'Male', 'Single', '1992-01-19', 'Estancia, Iloilo', '443543', '2432432', 'kaay@yahoo.com', 2012, 'College of Computer Studies', 'Associate in Computer Science', '', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Hokage', NULL, 'Yes', 'No', NULL, 'Yes', 'Others', 2, 3, 3, 4, 4, 4, 3, 4, 'Yes', '', 'Language Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (62, 'Jonah', 'Palomar', 'Gafate', NULL, NULL, '1973-06-13', NULL, NULL, NULL, NULL, 2001, NULL, 'Bachelor of Science in Computer Science', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 2) ;
#
# End of data contents of table tblalumni
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 07:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------


#
# Delete any existing table `tblalumni_list_all`
#

DROP TABLE IF EXISTS `tblalumni_list_all`;


#
# Table structure of table `tblalumni_list_all`
#

CREATE TABLE `tblalumni_list_all` (
  `alumni_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(150) DEFAULT NULL,
  `mname` varchar(150) DEFAULT NULL,
  `lname` varchar(150) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `yeargrad` int(25) DEFAULT NULL,
  `course` varchar(180) DEFAULT NULL,
  `department` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`alumni_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalumni_list_all (12 records)
#
 
INSERT INTO `tblalumni_list_all` VALUES (1, 'Louchin Var', 'Carias', 'Cejar', '1996-08-23', 2017, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (2, 'Keith Francis', 'Falco', 'Tipon', '1996-07-23', 2000, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (5, 'Mechelyn', 'Alarcon', 'Villanueva', '1996-05-20', 2015, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (6, 'Jovelyn', 'Miranda', 'Demausa', '1997-02-08', 2011, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (7, 'Crystal Mae', 'Deita', 'Contreras', '1997-01-13', 2009, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (8, 'Vincent Von Niño', 'Besana', 'Dapiton', '1996-08-30', 2014, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (9, 'Ronn Daniel', 'Bargo', 'Delos Santos', '1995-07-10', 2013, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'unregistered') ; 
INSERT INTO `tblalumni_list_all` VALUES (10, 'Gizylle Ann', 'Manong', 'Lago', '1997-05-10', 2012, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'unregistered') ; 
INSERT INTO `tblalumni_list_all` VALUES (11, 'Rejane', 'Bolivar', 'Asignacion', '1996-11-22', 2011, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'unregistered') ; 
INSERT INTO `tblalumni_list_all` VALUES (12, 'Kay', 'Acedre', 'Destor', '1992-01-19', 2012, 'Associate in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (13, 'Ma. Almira', 'Caldeo', 'Lim', '1997-03-10', 2015, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'unregistered') ; 
INSERT INTO `tblalumni_list_all` VALUES (15, 'Jonah', 'Palomar', 'Gafate', '1973-06-13', 2001, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ;
#
# End of data contents of table tblalumni_list_all
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 07:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------


#
# Delete any existing table `tblalumni_past_o`
#

DROP TABLE IF EXISTS `tblalumni_past_o`;


#
# Table structure of table `tblalumni_past_o`
#

CREATE TABLE `tblalumni_past_o` (
  `past_id` int(11) NOT NULL AUTO_INCREMENT,
  `pastoccu` varchar(100) NOT NULL,
  `alum_id` int(100) NOT NULL,
  PRIMARY KEY (`past_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalumni_past_o (10 records)
#
 
INSERT INTO `tblalumni_past_o` VALUES (1, 'Teacher', 4) ; 
INSERT INTO `tblalumni_past_o` VALUES (2, 'Sub', 4) ; 
INSERT INTO `tblalumni_past_o` VALUES (3, '', 56) ; 
INSERT INTO `tblalumni_past_o` VALUES (4, '', 56) ; 
INSERT INTO `tblalumni_past_o` VALUES (5, '', 57) ; 
INSERT INTO `tblalumni_past_o` VALUES (6, '', 58) ; 
INSERT INTO `tblalumni_past_o` VALUES (7, 'w', 59) ; 
INSERT INTO `tblalumni_past_o` VALUES (8, '', 53) ; 
INSERT INTO `tblalumni_past_o` VALUES (9, 'asdasdsadasdasddasdasdsd', 66) ; 
INSERT INTO `tblalumni_past_o` VALUES (10, 'Semi Hokage', 61) ;
#
# End of data contents of table tblalumni_past_o
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 07:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------


#
# Delete any existing table `tblfeatured`
#

DROP TABLE IF EXISTS `tblfeatured`;


#
# Table structure of table `tblfeatured`
#

CREATE TABLE `tblfeatured` (
  `id_alum` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `course` varchar(50) NOT NULL,
  `yeargrad` varchar(50) NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `image1` varchar(255) NOT NULL,
  `description` text,
  `description2` text,
  PRIMARY KEY (`id_alum`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblfeatured (2 records)
#
 
INSERT INTO `tblfeatured` VALUES (41, 'Keith Francis F. Tipon', 'Bachelor of Science in Information Technology', '1995', 'CEO-Tipon Industries', 'keith.JPG', 'Hashahahh\\r\\n\\r\\n\\r\\nasdas\\r\\n\\r\\nasdasd\\r\\nasdasdasd', 'asdasd\\r\\n\\r\\nsadasdas') ; 
INSERT INTO `tblfeatured` VALUES (42, 'Louchin Var Cejar', 'Bachelor of Science in Computer Science', '1995', 'NETWORK ADMINISTRATOR', 'louch4.JPG', 'hello\\\'\\r\\nasdasdas\\r\\n\\r\\nasdsadas\\r\\n\\r\\n\\r\\n\\\'asdasd', 'adWaaaa\\r\\n\\r\\nWaaa') ;
#
# End of data contents of table tblfeatured
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 07:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------


#
# Delete any existing table `tbljoba`
#

DROP TABLE IF EXISTS `tbljoba`;


#
# Table structure of table `tbljoba`
#

CREATE TABLE `tbljoba` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(50) NOT NULL,
  `job_desc` varchar(255) NOT NULL,
  `job_qualifications` varchar(255) NOT NULL,
  `cont_name` varchar(50) NOT NULL,
  `contact_info` varchar(59) NOT NULL,
  `employer_email` varchar(100) NOT NULL,
  `date_submitted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `job_status` varchar(100) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tbljoba (5 records)
#
 
INSERT INTO `tbljoba` VALUES (8, 'SYSTEM ANALYSIS', 'To analyze what', 'sdhshshsh
2
3', 'contact', '09104573805', 'asdjsajl@yahoo.com', 2017-02-26 00:00:00, 'approved') ; 
INSERT INTO `tbljoba` VALUES (9, 'SWEEPER', 'To sweep my room', 'To be a pro
20 years old and above
To have a pleasing personality', 'Louchin', '09104573805', 'cejarlouchin@yahoo.com', 2017-02-27 00:00:00, 'approved') ; 
INSERT INTO `tbljoba` VALUES (22, 'Web Developer', 'To develop programs', '1
sadasasdasdasdasdasdasdasdasd
sadasasdasdasdasdasdas', 'Louchin', '09104573805', 'louzh23@yahoo.com', 2017-03-04 18:32:25, 'pending') ; 
INSERT INTO `tbljoba` VALUES (23, 'Web Developer', 'To develop ....', 'aszf
sadasdas', 'asdasdsa', '3123214253', 'asdas@yahoo.com', 2017-03-05 14:26:45, 'approved') ; 
INSERT INTO `tbljoba` VALUES (24, 'Software Developer', 'To develop software...', 'BSCS/BSIT Graduate
', 'Von', '312236', 'von@yahoo.com', 2017-03-06 14:40:35, 'approved') ;
#
# End of data contents of table tbljoba
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 07:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblmessages`
# --------------------------------------------------------


#
# Delete any existing table `tblmessages`
#

DROP TABLE IF EXISTS `tblmessages`;


#
# Table structure of table `tblmessages`
#

CREATE TABLE `tblmessages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email_ad` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `date_submitted` datetime NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblmessages (3 records)
#
 
INSERT INTO `tblmessages` VALUES (10, 'una', 'ads@yahoo.com', 'unadapat', 'nako nako
', '2017-02-12 17:15:23') ; 
INSERT INTO `tblmessages` VALUES (14, 'Mylene ', 'mylene@yahoo.com', 'Inquiry about alumni homecoming 2k17', 'I would like to know if there is payment to attend in the alumni, ...', '2017-02-23 16:32:40') ; 
INSERT INTO `tblmessages` VALUES (23, 'KeithTIpon', 'keith@yahoo.com', 'Thesis', 'Omg', '2017-03-05 14:24:33') ;
#
# End of data contents of table tblmessages
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 07:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblmessages`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblphotos`
# --------------------------------------------------------


#
# Delete any existing table `tblphotos`
#

DROP TABLE IF EXISTS `tblphotos`;


#
# Table structure of table `tblphotos`
#

CREATE TABLE `tblphotos` (
  `img_id` int(155) NOT NULL AUTO_INCREMENT,
  `imageName` varchar(255) NOT NULL,
  `imageSize` int(155) NOT NULL,
  `imageType` varchar(255) NOT NULL,
  `album_id` int(11) NOT NULL,
  `imageDesc` varchar(255) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblphotos (33 records)
#
 
INSERT INTO `tblphotos` VALUES (11, 'IMG_2703.JPG', 8321653, 'image/jpeg', 40, '') ; 
INSERT INTO `tblphotos` VALUES (12, 'IMG_2700.JPG', 8306760, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (14, 'IMG_2702.JPG', 8184189, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (15, 'IMG_2703.JPG', 8321653, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (16, 'IMG_2704.JPG', 7574419, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (17, '16996415_1253367861385165_3559347221526378383_n.jpg', 83951, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (18, '16997827_1253317188056899_2075271930102134696_n.jpg', 78430, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (19, '16997875_1253307431391208_5966908654291832465_n.jpg', 83364, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (20, '16998054_1253380761383875_7517102865004703770_n.jpg', 94878, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (21, '16998731_1253241884731096_537775372261670183_n.jpg', 63360, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (22, '16998765_1253309341391017_3381775148397839145_n.jpg', 76976, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (23, '16998859_1253250164730268_8389928518291112420_n.jpg', 63298, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (24, '16998918_1253323074722977_6392809316828028826_n.jpg', 85043, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (25, '16998956_1253419928046625_4179195577923724710_n.jpg', 85410, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (26, '16998973_1253381798050438_4909427074680216738_n.jpg', 84382, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (27, '16999114_1253363068052311_1025423555609257552_n.jpg', 84038, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (29, '16999164_1253319111390040_8967456363723339657_n.jpg', 90501, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (30, '17022478_1253420978046520_2185910032814609742_n.jpg', 90500, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (31, '17038949_1253627364692548_5839970018029220171_o.jpg', 64190, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (32, '16996415_1253367861385165_3559347221526378383_n.jpg', 83951, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (33, '16997827_1253317188056899_2075271930102134696_n.jpg', 78430, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (34, '16997875_1253307431391208_5966908654291832465_n.jpg', 83364, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (35, '16998054_1253380761383875_7517102865004703770_n.jpg', 94878, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (37, 'IMG_2694.JPG', 6389066, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (38, 'IMG_2696.JPG', 6948367, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (39, 'IMG_3039.JPG', 8568824, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (40, 'IMG_3040.JPG', 8281276, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (41, 'IMG_3041.JPG', 8298307, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (42, 'IMG_3042.JPG', 8338054, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (43, 'IMG_3043.JPG', 8640048, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (45, 'IMG_2774.JPG', 7092716, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (46, 'IMG_2775.JPG', 7802569, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (47, 'IMG_2776.JPG', 7729597, 'image/jpeg', 51, '') ;
#
# End of data contents of table tblphotos
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 07:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblmessages`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblphotos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblusers`
# --------------------------------------------------------


#
# Delete any existing table `tblusers`
#

DROP TABLE IF EXISTS `tblusers`;


#
# Table structure of table `tblusers`
#

CREATE TABLE `tblusers` (
  `id_no` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `account_stat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_no`),
  UNIQUE KEY `id_no` (`id_no`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblusers (2 records)
#
 
INSERT INTO `tblusers` VALUES (20, 'admin', 'admin', 'admin', 'Administrator') ; 
INSERT INTO `tblusers` VALUES (21, 'MILO', 'milo', 'milo', 'Administrator') ;
#
# End of data contents of table tblusers
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 08:00 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------


#
# Delete any existing table `tblact`
#

DROP TABLE IF EXISTS `tblact`;


#
# Table structure of table `tblact`
#

CREATE TABLE `tblact` (
  `na_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(50) NOT NULL,
  `date_from` date DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  PRIMARY KEY (`na_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblact (3 records)
#
 
INSERT INTO `tblact` VALUES (2, 'BSIT 4A Thesis Defense LAST', '2017-03-09', '08:00:00', '2017-03-09', '16:00:00') ; 
INSERT INTO `tblact` VALUES (4, 'Final Technical Review', '2017-03-02', '08:00:00', '2017-03-02', '17:00:00') ; 
INSERT INTO `tblact` VALUES (7, 'JS PROM 2k17', '2017-02-17', NULL, '2017-02-17', NULL) ;
#
# End of data contents of table tblact
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 08:00 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------


#
# Delete any existing table `tblalbums`
#

DROP TABLE IF EXISTS `tblalbums`;


#
# Table structure of table `tblalbums`
#

CREATE TABLE `tblalbums` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `albumName` varchar(255) DEFAULT NULL,
  `album_status` varchar(40) NOT NULL,
  PRIMARY KEY (`album_id`),
  UNIQUE KEY `albumName` (`albumName`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalbums (4 records)
#
 
INSERT INTO `tblalbums` VALUES (37, '2k17', 'Approved') ; 
INSERT INTO `tblalbums` VALUES (45, 'MENTOR\'S CIRCLE', 'Approved') ; 
INSERT INTO `tblalbums` VALUES (49, 'RANDOM stuff', 'Pending') ; 
INSERT INTO `tblalbums` VALUES (50, 'Bisan ano pagid', 'Approved') ;
#
# End of data contents of table tblalbums
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 08:00 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------


#
# Delete any existing table `tblalum_photos`
#

DROP TABLE IF EXISTS `tblalum_photos`;


#
# Table structure of table `tblalum_photos`
#

CREATE TABLE `tblalum_photos` (
  `img_id` int(155) NOT NULL AUTO_INCREMENT,
  `imageName` varchar(255) NOT NULL,
  `imageSize` int(155) NOT NULL,
  `imageType` varchar(255) NOT NULL,
  `album_id` int(11) NOT NULL,
  `imageDesc` varchar(255) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalum_photos (12 records)
#
 
INSERT INTO `tblalum_photos` VALUES (7, 'IMG_2694.JPG', 6389066, 'image/jpeg', 37, '') ; 
INSERT INTO `tblalum_photos` VALUES (8, 'IMG_2727.JPG', 7819475, 'image/jpeg', 0, 'TURNEDoff') ; 
INSERT INTO `tblalum_photos` VALUES (9, 'IMG_2733.JPG', 6952046, 'image/jpeg', 0, 'TURNEDoff') ; 
INSERT INTO `tblalum_photos` VALUES (10, 'IMG_2734.JPG', 7386693, 'image/jpeg', 0, 'TURNEDoff') ; 
INSERT INTO `tblalum_photos` VALUES (11, 'IMG_2696.JPG', 6948367, 'image/jpeg', 0, 'wewe') ; 
INSERT INTO `tblalum_photos` VALUES (12, 'IMG_2700.JPG', 8306760, 'image/jpeg', 0, 'wewe') ; 
INSERT INTO `tblalum_photos` VALUES (13, 'IMG_2696.JPG', 6948367, 'image/jpeg', 0, 'wewewe') ; 
INSERT INTO `tblalum_photos` VALUES (14, 'IMG_2700.JPG', 8306760, 'image/jpeg', 0, 'wewewe') ; 
INSERT INTO `tblalum_photos` VALUES (15, 'IMG_2694.JPG', 6389066, 'image/jpeg', 40, '') ; 
INSERT INTO `tblalum_photos` VALUES (16, 'IMG_2694.JPG', 6389066, 'image/jpeg', 41, '') ; 
INSERT INTO `tblalum_photos` VALUES (17, 'IMG_2694.JPG', 6389066, 'image/jpeg', 41, '') ; 
INSERT INTO `tblalum_photos` VALUES (18, 'IMG_2693.JPG', 6086401, 'image/jpeg', 41, '') ;
#
# End of data contents of table tblalum_photos
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 08:00 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------


#
# Delete any existing table `tblalumni`
#

DROP TABLE IF EXISTS `tblalumni`;


#
# Table structure of table `tblalumni`
#

CREATE TABLE `tblalumni` (
  `alum_id` int(155) NOT NULL,
  `fname` varchar(150) DEFAULT NULL,
  `mname` varchar(150) DEFAULT NULL,
  `lname` varchar(150) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `civilstat` varchar(100) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `telnum` varchar(20) DEFAULT NULL,
  `mobnum` varchar(20) DEFAULT NULL,
  `emailadd` varchar(100) DEFAULT NULL,
  `yeargrad` int(25) DEFAULT NULL,
  `department` varchar(180) DEFAULT NULL,
  `course` varchar(180) DEFAULT NULL,
  `awards` varchar(200) DEFAULT NULL,
  `scholarships` varchar(200) DEFAULT NULL,
  `attainment` varchar(200) DEFAULT NULL,
  `employed` varchar(10) DEFAULT NULL,
  `empstatus` varchar(20) DEFAULT NULL,
  `presoccup` varchar(100) DEFAULT NULL,
  `workadd` varchar(200) DEFAULT NULL,
  `gradstud` varchar(10) DEFAULT NULL,
  `advstud` varchar(10) DEFAULT NULL,
  `participated` varchar(100) DEFAULT NULL,
  `assist` varchar(10) DEFAULT NULL,
  `programs` varchar(100) DEFAULT NULL,
  `cts` int(10) DEFAULT NULL,
  `solvecomplexprob` int(10) DEFAULT NULL,
  `workwithother` int(10) DEFAULT NULL,
  `learnind` int(10) DEFAULT NULL,
  `writtencommskills` int(10) DEFAULT NULL,
  `spokencommskills` int(10) DEFAULT NULL,
  `knowfield` int(10) DEFAULT NULL,
  `workrelatedknow` int(10) DEFAULT NULL,
  `relevantdegree` varchar(10) DEFAULT NULL,
  `norelevant` varchar(255) DEFAULT NULL,
  `impfctr` varchar(100) DEFAULT NULL,
  `overall` varchar(10) DEFAULT NULL,
  `alum_status` int(10) DEFAULT NULL,
  PRIMARY KEY (`alum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalumni (11 records)
#
 
INSERT INTO `tblalumni` VALUES (4, 'Jonah ', 'Palomar', 'Gafate', 'Female', 'Married', '2017-02-01', 'Brgy. Cabugao, Roxas City', 'zxc', '09107534422', '', 2002, 'College of Computer Studies', 'Bachelor of Science in Computer Science', 'model student', 'none', 'zxc', 'Yes', 'Regular', 'Teacher', 'FCU-CCS', 'Yes', 'Yes', 'Related to your profession', 'Yes', 'IT Courses', 2, 3, 3, 3, 4, 2, 4, 3, 'Yes', '', 'University Ranking', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (49, 'Rommel', 'Berino', 'Sario', 'Male', 'Married', '1976-11-03', NULL, NULL, NULL, NULL, 1997, 'College of Computer Studies', 'Bachelor of Science in Computer Science', 'Academic Awardee', NULL, 'Master\'s Degree', 'Yes', 'Regular', 'Teacher', 'Filamer Christian UNiversity, Roxas Avenue, Roxas City', 'Yes', 'Yes', 'Related to your profession', 'Yes', 'IT Courses', 4, 4, 4, 5, 5, 5, 5, 4, 'Yes', '', 'IT Skills', 'Yes', 1) ; 
INSERT INTO `tblalumni` VALUES (52, 'Mylene', 'Reyes', 'Chu', 'Female', 'Married', '1975-11-18', 'Milibili Heights,Roxas City', '620z2167', '3445dasdas', 'chu@yahoo.com', 1997, 'College of Computer Studies', 'Bachelor of Science in Computer Science', 'zx', 'zxc', 'Bachelor\'s Degree', 'Yes', 'Regular', 'Teacher', 'FCU, Roxas Avenue, Roxas City', 'Yes', 'Yes', 'Related to your profession', 'Yes', 'IT Courses', 4, 4, 4, 4, 4, 4, 4, 3, 'Yes', '', 'IT Skills', 'Yes', 1) ; 
INSERT INTO `tblalumni` VALUES (54, 'Louchin Var', 'Carias', 'Cejar', NULL, NULL, '1996-08-23', NULL, NULL, NULL, NULL, 2016, 'College of Computer Studies', 'Bachelor of Science in Information Technology', '', NULL, NULL, NULL, NULL, NULL, NULL, 'No', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'No', 2) ; 
INSERT INTO `tblalumni` VALUES (55, 'Keith Francis', 'Falco', 'Tipon', NULL, NULL, '1996-07-23', NULL, NULL, NULL, NULL, 2000, 'College of Computer Studies', 'Bachelor of Science in Information Technology', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 2) ; 
INSERT INTO `tblalumni` VALUES (56, 'Crystal Mae', 'Deita', 'Contreras', NULL, NULL, '1997-01-13', NULL, NULL, NULL, NULL, 2009, 'College of Computer Studies', 'Bachelor of Science in Information Technology', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 2) ; 
INSERT INTO `tblalumni` VALUES (57, 'Jovelyn', 'Miranda', 'Demausa', NULL, NULL, '1997-02-08', NULL, NULL, NULL, NULL, 2011, 'College of Computer Studies', 'Bachelor of Science in Information Technology', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 2) ; 
INSERT INTO `tblalumni` VALUES (58, 'Mechelyn', 'Alarcon', 'Villanueva', NULL, NULL, '1996-05-20', NULL, NULL, NULL, NULL, 2015, 'College of Computer Studies', 'Bachelor of Science in Information Technology', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 2) ; 
INSERT INTO `tblalumni` VALUES (60, 'Vincent Von Niño', 'Besana', 'Dapiton', NULL, NULL, '1996-08-30', NULL, NULL, NULL, NULL, 2014, 'College of Computer Studies', 'Bachelor of Science in Information Technology', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 2) ; 
INSERT INTO `tblalumni` VALUES (61, 'Kay', 'Acedre', 'Destor', 'Male', 'Single', '1992-01-19', 'Estancia, Iloilo', '443543', '2432432', 'kaay@yahoo.com', 2012, 'College of Computer Studies', 'Associate in Computer Science', '', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Hokage', NULL, 'Yes', 'No', NULL, 'Yes', 'Others', 2, 3, 3, 4, 4, 4, 3, 4, 'Yes', '', 'Language Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (62, 'Jonah', 'Palomar', 'Gafate', NULL, NULL, '1973-06-13', NULL, NULL, NULL, NULL, 2001, NULL, 'Bachelor of Science in Computer Science', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 2) ;
#
# End of data contents of table tblalumni
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 08:00 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------


#
# Delete any existing table `tblalumni_list_all`
#

DROP TABLE IF EXISTS `tblalumni_list_all`;


#
# Table structure of table `tblalumni_list_all`
#

CREATE TABLE `tblalumni_list_all` (
  `alumni_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(150) DEFAULT NULL,
  `mname` varchar(150) DEFAULT NULL,
  `lname` varchar(150) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `yeargrad` int(25) DEFAULT NULL,
  `course` varchar(180) DEFAULT NULL,
  `department` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`alumni_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalumni_list_all (12 records)
#
 
INSERT INTO `tblalumni_list_all` VALUES (1, 'Louchin Var', 'Carias', 'Cejar', '1996-08-23', 2017, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (2, 'Keith Francis', 'Falco', 'Tipon', '1996-07-23', 2000, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (5, 'Mechelyn', 'Alarcon', 'Villanueva', '1996-05-20', 2015, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (6, 'Jovelyn', 'Miranda', 'Demausa', '1997-02-08', 2011, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (7, 'Crystal Mae', 'Deita', 'Contreras', '1997-01-13', 2009, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (8, 'Vincent Von Niño', 'Besana', 'Dapiton', '1996-08-30', 2014, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (9, 'Ronn Daniel', 'Bargo', 'Delos Santos', '1995-07-10', 2013, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'unregistered') ; 
INSERT INTO `tblalumni_list_all` VALUES (10, 'Gizylle Ann', 'Manong', 'Lago', '1997-05-10', 2012, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'unregistered') ; 
INSERT INTO `tblalumni_list_all` VALUES (11, 'Rejane', 'Bolivar', 'Asignacion', '1996-11-22', 2011, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'unregistered') ; 
INSERT INTO `tblalumni_list_all` VALUES (12, 'Kay', 'Acedre', 'Destor', '1992-01-19', 2012, 'Associate in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (13, 'Ma. Almira', 'Caldeo', 'Lim', '1997-03-10', 2015, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'unregistered') ; 
INSERT INTO `tblalumni_list_all` VALUES (15, 'Jonah', 'Palomar', 'Gafate', '1973-06-13', 2001, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ;
#
# End of data contents of table tblalumni_list_all
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 08:00 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------


#
# Delete any existing table `tblalumni_past_o`
#

DROP TABLE IF EXISTS `tblalumni_past_o`;


#
# Table structure of table `tblalumni_past_o`
#

CREATE TABLE `tblalumni_past_o` (
  `past_id` int(11) NOT NULL AUTO_INCREMENT,
  `pastoccu` varchar(100) NOT NULL,
  `alum_id` int(100) NOT NULL,
  PRIMARY KEY (`past_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalumni_past_o (10 records)
#
 
INSERT INTO `tblalumni_past_o` VALUES (1, 'Teacher', 4) ; 
INSERT INTO `tblalumni_past_o` VALUES (2, 'Sub', 4) ; 
INSERT INTO `tblalumni_past_o` VALUES (3, '', 56) ; 
INSERT INTO `tblalumni_past_o` VALUES (4, '', 56) ; 
INSERT INTO `tblalumni_past_o` VALUES (5, '', 57) ; 
INSERT INTO `tblalumni_past_o` VALUES (6, '', 58) ; 
INSERT INTO `tblalumni_past_o` VALUES (7, 'w', 59) ; 
INSERT INTO `tblalumni_past_o` VALUES (8, '', 53) ; 
INSERT INTO `tblalumni_past_o` VALUES (9, 'asdasdsadasdasddasdasdsd', 66) ; 
INSERT INTO `tblalumni_past_o` VALUES (10, 'Semi Hokage', 61) ;
#
# End of data contents of table tblalumni_past_o
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 08:00 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------


#
# Delete any existing table `tblfeatured`
#

DROP TABLE IF EXISTS `tblfeatured`;


#
# Table structure of table `tblfeatured`
#

CREATE TABLE `tblfeatured` (
  `id_alum` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `course` varchar(50) NOT NULL,
  `yeargrad` varchar(50) NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `image1` varchar(255) NOT NULL,
  `description` text,
  `description2` text,
  PRIMARY KEY (`id_alum`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblfeatured (2 records)
#
 
INSERT INTO `tblfeatured` VALUES (41, 'Keith Francis F. Tipon', 'Bachelor of Science in Information Technology', '1995', 'CEO-Tipon Industries', 'keith.JPG', 'Hashahahh\\r\\n\\r\\n\\r\\nasdas\\r\\n\\r\\nasdasd\\r\\nasdasdasd', 'asdasd\\r\\n\\r\\nsadasdas') ; 
INSERT INTO `tblfeatured` VALUES (42, 'Louchin Var Cejar', 'Bachelor of Science in Computer Science', '1995', 'NETWORK ADMINISTRATOR', 'louch4.JPG', 'hello\\\'\\r\\nasdasdas\\r\\n\\r\\nasdsadas\\r\\n\\r\\n\\r\\n\\\'asdasd', 'adWaaaa\\r\\n\\r\\nWaaa') ;
#
# End of data contents of table tblfeatured
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 08:00 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------


#
# Delete any existing table `tbljoba`
#

DROP TABLE IF EXISTS `tbljoba`;


#
# Table structure of table `tbljoba`
#

CREATE TABLE `tbljoba` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(50) NOT NULL,
  `job_desc` varchar(255) NOT NULL,
  `job_qualifications` varchar(255) NOT NULL,
  `cont_name` varchar(50) NOT NULL,
  `contact_info` varchar(59) NOT NULL,
  `employer_email` varchar(100) NOT NULL,
  `date_submitted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `job_status` varchar(100) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tbljoba (5 records)
#
 
INSERT INTO `tbljoba` VALUES (8, 'SYSTEM ANALYSIS', 'To analyze what', 'sdhshshsh
2
3', 'contact', '09104573805', 'asdjsajl@yahoo.com', 2017-02-26 00:00:00, 'approved') ; 
INSERT INTO `tbljoba` VALUES (9, 'SWEEPER', 'To sweep my room', 'To be a pro
20 years old and above
To have a pleasing personality', 'Louchin', '09104573805', 'cejarlouchin@yahoo.com', 2017-02-27 00:00:00, 'approved') ; 
INSERT INTO `tbljoba` VALUES (22, 'Web Developer', 'To develop programs', '1
sadasasdasdasdasdasdasdasdasd
sadasasdasdasdasdasdas', 'Louchin', '09104573805', 'louzh23@yahoo.com', 2017-03-04 18:32:25, 'pending') ; 
INSERT INTO `tbljoba` VALUES (23, 'Web Developer', 'To develop ....', 'aszf
sadasdas', 'asdasdsa', '3123214253', 'asdas@yahoo.com', 2017-03-05 14:26:45, 'approved') ; 
INSERT INTO `tbljoba` VALUES (24, 'Software Developer', 'To develop software...', 'BSCS/BSIT Graduate
', 'Von', '312236', 'von@yahoo.com', 2017-03-06 14:40:35, 'approved') ;
#
# End of data contents of table tbljoba
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 08:00 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblmessages`
# --------------------------------------------------------


#
# Delete any existing table `tblmessages`
#

DROP TABLE IF EXISTS `tblmessages`;


#
# Table structure of table `tblmessages`
#

CREATE TABLE `tblmessages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email_ad` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `date_submitted` datetime NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblmessages (3 records)
#
 
INSERT INTO `tblmessages` VALUES (10, 'una', 'ads@yahoo.com', 'unadapat', 'nako nako
', '2017-02-12 17:15:23') ; 
INSERT INTO `tblmessages` VALUES (14, 'Mylene ', 'mylene@yahoo.com', 'Inquiry about alumni homecoming 2k17', 'I would like to know if there is payment to attend in the alumni, ...', '2017-02-23 16:32:40') ; 
INSERT INTO `tblmessages` VALUES (23, 'KeithTIpon', 'keith@yahoo.com', 'Thesis', 'Omg', '2017-03-05 14:24:33') ;
#
# End of data contents of table tblmessages
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 08:00 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblmessages`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblphotos`
# --------------------------------------------------------


#
# Delete any existing table `tblphotos`
#

DROP TABLE IF EXISTS `tblphotos`;


#
# Table structure of table `tblphotos`
#

CREATE TABLE `tblphotos` (
  `img_id` int(155) NOT NULL AUTO_INCREMENT,
  `imageName` varchar(255) NOT NULL,
  `imageSize` int(155) NOT NULL,
  `imageType` varchar(255) NOT NULL,
  `album_id` int(11) NOT NULL,
  `imageDesc` varchar(255) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblphotos (33 records)
#
 
INSERT INTO `tblphotos` VALUES (11, 'IMG_2703.JPG', 8321653, 'image/jpeg', 40, '') ; 
INSERT INTO `tblphotos` VALUES (12, 'IMG_2700.JPG', 8306760, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (14, 'IMG_2702.JPG', 8184189, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (15, 'IMG_2703.JPG', 8321653, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (16, 'IMG_2704.JPG', 7574419, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (17, '16996415_1253367861385165_3559347221526378383_n.jpg', 83951, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (18, '16997827_1253317188056899_2075271930102134696_n.jpg', 78430, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (19, '16997875_1253307431391208_5966908654291832465_n.jpg', 83364, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (20, '16998054_1253380761383875_7517102865004703770_n.jpg', 94878, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (21, '16998731_1253241884731096_537775372261670183_n.jpg', 63360, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (22, '16998765_1253309341391017_3381775148397839145_n.jpg', 76976, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (23, '16998859_1253250164730268_8389928518291112420_n.jpg', 63298, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (24, '16998918_1253323074722977_6392809316828028826_n.jpg', 85043, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (25, '16998956_1253419928046625_4179195577923724710_n.jpg', 85410, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (26, '16998973_1253381798050438_4909427074680216738_n.jpg', 84382, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (27, '16999114_1253363068052311_1025423555609257552_n.jpg', 84038, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (29, '16999164_1253319111390040_8967456363723339657_n.jpg', 90501, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (30, '17022478_1253420978046520_2185910032814609742_n.jpg', 90500, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (31, '17038949_1253627364692548_5839970018029220171_o.jpg', 64190, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (32, '16996415_1253367861385165_3559347221526378383_n.jpg', 83951, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (33, '16997827_1253317188056899_2075271930102134696_n.jpg', 78430, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (34, '16997875_1253307431391208_5966908654291832465_n.jpg', 83364, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (35, '16998054_1253380761383875_7517102865004703770_n.jpg', 94878, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (37, 'IMG_2694.JPG', 6389066, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (38, 'IMG_2696.JPG', 6948367, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (39, 'IMG_3039.JPG', 8568824, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (40, 'IMG_3040.JPG', 8281276, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (41, 'IMG_3041.JPG', 8298307, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (42, 'IMG_3042.JPG', 8338054, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (43, 'IMG_3043.JPG', 8640048, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (45, 'IMG_2774.JPG', 7092716, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (46, 'IMG_2775.JPG', 7802569, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (47, 'IMG_2776.JPG', 7729597, 'image/jpeg', 51, '') ;
#
# End of data contents of table tblphotos
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Monday 6. March 2017 08:00 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblmessages`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblphotos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblusers`
# --------------------------------------------------------


#
# Delete any existing table `tblusers`
#

DROP TABLE IF EXISTS `tblusers`;


#
# Table structure of table `tblusers`
#

CREATE TABLE `tblusers` (
  `id_no` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `account_stat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_no`),
  UNIQUE KEY `id_no` (`id_no`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblusers (2 records)
#
 
INSERT INTO `tblusers` VALUES (20, 'admin', 'admin', 'admin', 'Administrator') ; 
INSERT INTO `tblusers` VALUES (21, 'MILO', 'milo', 'milo', 'Administrator') ;
#
# End of data contents of table tblusers
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 7. March 2017 10:14 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------


#
# Delete any existing table `tblact`
#

DROP TABLE IF EXISTS `tblact`;


#
# Table structure of table `tblact`
#

CREATE TABLE `tblact` (
  `na_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(50) NOT NULL,
  `date_from` date DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`na_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblact (4 records)
#
 
INSERT INTO `tblact` VALUES (2, 'BSIT 4A Thesis Defense LAST', '2017-03-09', '08:00:00', '2017-03-09', '16:00:00', 'Final Oral Defense of BSIT 4 2017', 'FCU, Tech Bldg., Lab A') ; 
INSERT INTO `tblact` VALUES (4, 'Final Technical Review', '2017-03-02', '08:00:00', '2017-03-02', '17:00:00', 'BSIT Final Technical Review for finalization of proposed system', 'FCU, Tech Bldg., Lab A') ; 
INSERT INTO `tblact` VALUES (7, 'JS PROM 2k17', '2017-02-17', NULL, '2017-02-17', NULL, 'Theme: God\'s and Goddesses', 'Pueblo De Panay, El Circulo Convention Center') ; 
INSERT INTO `tblact` VALUES (8, 'BSCS Batch 2005 Reunion', '2017-03-31', NULL, '2017-03-31', NULL, 'Contact #0910473805 or Email juandelacruz@yahoo.com for more details.', 'FCU, Roblee Hall') ;
#
# End of data contents of table tblact
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 7. March 2017 10:14 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------


#
# Delete any existing table `tblalbums`
#

DROP TABLE IF EXISTS `tblalbums`;


#
# Table structure of table `tblalbums`
#

CREATE TABLE `tblalbums` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `albumName` varchar(255) DEFAULT NULL,
  `album_status` varchar(40) NOT NULL,
  PRIMARY KEY (`album_id`),
  UNIQUE KEY `albumName` (`albumName`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalbums (4 records)
#
 
INSERT INTO `tblalbums` VALUES (37, '2k17', 'Approved') ; 
INSERT INTO `tblalbums` VALUES (45, 'MENTOR\'S CIRCLE', 'Approved') ; 
INSERT INTO `tblalbums` VALUES (52, 'FCU BSCS Batch 2008', 'Pending') ; 
INSERT INTO `tblalbums` VALUES (53, 'FCU BSCS Batch 2010', 'Approved') ;
#
# End of data contents of table tblalbums
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 7. March 2017 10:14 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------


#
# Delete any existing table `tblalum_photos`
#

DROP TABLE IF EXISTS `tblalum_photos`;


#
# Table structure of table `tblalum_photos`
#

CREATE TABLE `tblalum_photos` (
  `img_id` int(155) NOT NULL AUTO_INCREMENT,
  `imageName` varchar(255) NOT NULL,
  `imageSize` int(155) NOT NULL,
  `imageType` varchar(255) NOT NULL,
  `album_id` int(11) NOT NULL,
  `imageDesc` varchar(255) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalum_photos (12 records)
#
 
INSERT INTO `tblalum_photos` VALUES (7, 'IMG_2694.JPG', 6389066, 'image/jpeg', 37, '') ; 
INSERT INTO `tblalum_photos` VALUES (8, 'IMG_2727.JPG', 7819475, 'image/jpeg', 0, 'TURNEDoff') ; 
INSERT INTO `tblalum_photos` VALUES (9, 'IMG_2733.JPG', 6952046, 'image/jpeg', 0, 'TURNEDoff') ; 
INSERT INTO `tblalum_photos` VALUES (10, 'IMG_2734.JPG', 7386693, 'image/jpeg', 0, 'TURNEDoff') ; 
INSERT INTO `tblalum_photos` VALUES (11, 'IMG_2696.JPG', 6948367, 'image/jpeg', 0, 'wewe') ; 
INSERT INTO `tblalum_photos` VALUES (12, 'IMG_2700.JPG', 8306760, 'image/jpeg', 0, 'wewe') ; 
INSERT INTO `tblalum_photos` VALUES (13, 'IMG_2696.JPG', 6948367, 'image/jpeg', 0, 'wewewe') ; 
INSERT INTO `tblalum_photos` VALUES (14, 'IMG_2700.JPG', 8306760, 'image/jpeg', 0, 'wewewe') ; 
INSERT INTO `tblalum_photos` VALUES (15, 'IMG_2694.JPG', 6389066, 'image/jpeg', 40, '') ; 
INSERT INTO `tblalum_photos` VALUES (16, 'IMG_2694.JPG', 6389066, 'image/jpeg', 41, '') ; 
INSERT INTO `tblalum_photos` VALUES (17, 'IMG_2694.JPG', 6389066, 'image/jpeg', 41, '') ; 
INSERT INTO `tblalum_photos` VALUES (18, 'IMG_2693.JPG', 6086401, 'image/jpeg', 41, '') ;
#
# End of data contents of table tblalum_photos
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 7. March 2017 10:14 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------


#
# Delete any existing table `tblalumni`
#

DROP TABLE IF EXISTS `tblalumni`;


#
# Table structure of table `tblalumni`
#

CREATE TABLE `tblalumni` (
  `alum_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(150) DEFAULT NULL,
  `mname` varchar(150) DEFAULT NULL,
  `lname` varchar(150) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `civilstat` varchar(100) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `telnum` varchar(20) DEFAULT NULL,
  `mobnum` varchar(20) DEFAULT NULL,
  `emailadd` varchar(100) DEFAULT NULL,
  `yeargrad` int(25) DEFAULT NULL,
  `department` varchar(180) DEFAULT NULL,
  `course` varchar(180) DEFAULT NULL,
  `awards` varchar(255) DEFAULT NULL,
  `scholarships` varchar(200) DEFAULT NULL,
  `attainment` varchar(200) DEFAULT NULL,
  `employed` varchar(10) DEFAULT NULL,
  `empstatus` varchar(20) DEFAULT NULL,
  `presoccup` varchar(100) DEFAULT NULL,
  `workadd` varchar(200) DEFAULT NULL,
  `gradstud` varchar(10) DEFAULT NULL,
  `advstud` varchar(10) DEFAULT NULL,
  `participated` varchar(100) DEFAULT NULL,
  `assist` varchar(10) DEFAULT NULL,
  `programs` varchar(100) DEFAULT NULL,
  `cts` int(10) DEFAULT NULL,
  `solvecomplexprob` int(10) DEFAULT NULL,
  `workwithother` int(10) DEFAULT NULL,
  `learnind` int(10) DEFAULT NULL,
  `writtencommskills` int(10) DEFAULT NULL,
  `spokencommskills` int(10) DEFAULT NULL,
  `knowfield` int(10) DEFAULT NULL,
  `workrelatedknow` int(10) DEFAULT NULL,
  `relevantdegree` varchar(10) DEFAULT NULL,
  `norelevant` varchar(255) DEFAULT NULL,
  `impfctr` varchar(100) DEFAULT NULL,
  `overall` varchar(10) DEFAULT NULL,
  `alum_status` int(10) DEFAULT NULL,
  PRIMARY KEY (`alum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalumni (11 records)
#
 
INSERT INTO `tblalumni` VALUES (3, 'Louchin Var', 'Carias', 'Cejar', 'Male', 'Single', '1996-08-23', 'Roxas City', '6202167', '09104573805', 'cejarlouchin@yahoo.com', 2016, 'College of Computer Studies', 'Bachelor of Science in Information Technology', 'Best in Visual Graphics,Best in Java Programming,Academic Awardee,Leadership Awardee,Socio-Cultural Awardee,Loyalty Awardee,', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Software Engineer, ITech', NULL, 'Yes', 'Yes', 'Related to my profession', 'Yes', 'IT Courses', 4, 4, 3, 4, 4, 4, 4, 4, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (4, 'Keith Francis', 'Falco', 'Tipon', 'Male', 'Single', '1996-07-23', 'Brgy. X, Roxas City', '6202144', '09124674827', 'kftipon23@gmail.com', 2000, 'College of Computer Studies', 'Bachelor of Science in Information Technology', 'Best in Visual Graphics,Best in Java Programming,Academic Awardee,Leadership Awardee,Sports Awardee,Loyalty Awardee,', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Application Programmer Analyst, Joe Riley & Associates Inc.', NULL, 'No', 'No', NULL, 'Yes', 'IT Courses', 4, 4, 3, 4, 3, 4, 4, 4, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (5, 'Vincent Von Niño', 'Besana', 'Dapiton', 'Male', 'Single', '1996-08-30', 'Fuentes Subd., Roxas City', '6209586', '09072871628', 'vondapiton@gmail.com', 2014, 'College of Computer Studies', 'Bachelor of Science in Information Technology', 'Best in Visual Graphics,Best in Java Programming,Socio-Cultural Awardee,Best in Research Paper', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Hardware & Software Technician, Clipdata Computer Center', NULL, 'Yes', 'No', 'Related to my profession', 'Yes', 'IT Courses', 4, 4, 4, 4, 3, 4, 3, 3, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (6, 'mechelyn', 'Alarcon', 'Villanueva', 'Female', 'Single', '1996-05-20', NULL, NULL, NULL, NULL, 2015, 'College of Computer Studies', 'Bachelor of Science in Computer Science', '', NULL, 'Bachelor\'s Degree', 'No', NULL, NULL, NULL, 'No', 'No', NULL, 'Yes', 'IT Courses', 4, 4, 3, 4, 3, 3, 3, 3, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (7, 'Jovelyn', 'Miranda', 'Demausa', 'Female', 'Single', '1997-02-08', 'Maayon, Capiz', '6209484', '0957949393939', 'jovelyn@yahoo.com', 2011, 'College of Computer Studies', 'Bachelor of Science in Computer Science', '', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Associate Software Engineer, BigO', NULL, 'No', 'Yes', 'Related to my profession', 'Yes', 'IT Courses', 4, 4, 4, 4, 4, 3, 4, 4, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (8, 'Crystal Mae', 'Deita', 'Contreras', 'Female', 'Single', '1997-01-13', 'Brgy. Bolo, Roxas City', '6204848', '0948482894931', 'crystal@yahoo.com', 2009, 'College of Computer Studies', 'Bachelor of Science in Computer Science', '', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Call Center Agent, BPO', NULL, 'No', 'No', NULL, 'Yes', 'Internship', 4, 4, 4, 3, 3, 3, 3, 4, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (9, 'Ronn Daniel', 'Bargo', 'Delos Santos', 'Male', 'Single', '1995-07-10', 'Pilar, Capiz', NULL, '093737474747', 'ronn@yahoo.com', 2013, 'College of Computer Studies', 'Bachelor of Science in Computer Science', '', NULL, 'Bachelor\'s Degree', 'No', NULL, NULL, NULL, 'No', 'No', NULL, 'No', NULL, 4, 3, 3, 3, 3, 3, 3, 3, 'No', '', 'IT Skills', 'No', 2) ; 
INSERT INTO `tblalumni` VALUES (10, 'Gizylle Ann', 'Manong', 'Lago', 'Female', 'Single', '1997-05-10', 'Sigma, Capiz', '6204848', '094848484858', 'giz@yahoo.com', 2012, 'College of Computer Studies', 'Associate in Computer Science', 'Academic Awardee,Sports Awardee,Socio-Cultural Awardee,', NULL, 'Bachelor\'s Degree', 'Yes', 'Probationary', 'Sales Manager, KFC', NULL, 'No', 'No', NULL, 'Yes', 'Occupational Skills/Practical Exercises', 4, 4, 3, 4, 3, 3, 4, 4, 'Yes', '', 'Occupational Skill', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (11, 'Rejane', 'Bolivar', 'Asignacion', 'Female', 'Single', '1996-11-22', 'Balasan, Iloilo', '6209494', '0958383939393', 'jane@yahoo.com', 2011, 'College of Computer Studies', 'Associate in Computer Science', 'Academic Awardee,Sports Awardee,Socio-Cultural Awardee,', NULL, 'Bachelor\'s Degree', 'Yes', 'Contractual', 'Data Encoder, R&J Enterprise', NULL, 'No', 'No', NULL, 'Yes', 'IT Courses', 4, 3, 3, 3, 4, 3, 2, 3, 'Yes', '', 'Occupational Skill', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (12, 'Kay', 'Acedre', 'Destor', 'Male', 'Single', '1992-01-19', 'Estancia, Iloilo', '6204094', '0948938485823', 'kdestor@cloud.com', 2012, 'College of Computer Studies', 'Associate in Computer Science', '', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Technician, Oxord Computer Solutions', NULL, 'No', 'No', NULL, 'No', NULL, 3, 2, 2, 2, 3, 2, 2, 3, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (13, 'Ma. Almira', 'Caldeo', 'Lim', 'Female', 'Single', '1997-03-10', 'Brgy. Bolo, Roxas City', '6208492', '09392739574', 'mal@yahoo.com', 2011, 'College of Computer Studies', 'Bachelor of Science in Information Technology', 'Best in Visual Graphics,Best in Java Programming,Academic Awardee,Leadership Awardee,Sports Awardee,Model Student,', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Dean, FCU-CCS', NULL, 'Yes', 'Yes', 'Related to my profession', 'Yes', 'IT Courses', 5, 4, 5, 4, 5, 5, 5, 4, 'Yes', '', 'Occupational Skill', 'Yes', 2) ;
#
# End of data contents of table tblalumni
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 7. March 2017 10:14 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------


#
# Delete any existing table `tblalumni_list_all`
#

DROP TABLE IF EXISTS `tblalumni_list_all`;


#
# Table structure of table `tblalumni_list_all`
#

CREATE TABLE `tblalumni_list_all` (
  `alumni_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(150) DEFAULT NULL,
  `mname` varchar(150) DEFAULT NULL,
  `lname` varchar(150) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `yeargrad` int(25) DEFAULT NULL,
  `course` varchar(180) DEFAULT NULL,
  `department` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`alumni_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalumni_list_all (14 records)
#
 
INSERT INTO `tblalumni_list_all` VALUES (1, 'Louchin Var ', 'Carias', 'Cejar', '1996-08-23', 2016, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (2, 'Keith Francis', 'Falco', 'Tipon', '1996-07-23', 2000, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (5, 'Mechelyn', 'Alarcon', 'Villanueva', '1996-05-20', 2015, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (6, 'Jovelyn', 'Miranda', 'Demausa', '1997-02-08', 2011, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (7, 'Crystal Mae', 'Deita', 'Contreras', '1997-01-13', 2009, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (8, 'Vincent Von Niño', 'Besana', 'Dapiton', '1996-08-30', 2014, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (9, 'Ronn Daniel', 'Bargo', 'Delos Santos', '1995-07-10', 2013, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (10, 'Gizylle Ann', 'Manong', 'Lago', '1997-05-10', 2012, 'Associate in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (11, 'Rejane', 'Bolivar', 'Asignacion', '1996-11-22', 2011, 'Associate in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (12, 'Kay', 'Acedre', 'Destor', '1992-01-19', 2012, 'Associate in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (13, 'Ma. Almira', 'Caldeo', 'Lim', '1997-03-10', 2011, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (15, 'Jonah', 'Palomar', 'Gafate', '1973-06-13', 2001, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'unregistered') ; 
INSERT INTO `tblalumni_list_all` VALUES (16, 'Rommel', 'Berino', 'Sario', '1976-11-03', 1997, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'unregistered') ; 
INSERT INTO `tblalumni_list_all` VALUES (17, 'Mylene', 'Reyes', 'Chu', '1975-11-18', 1997, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'unregistered') ;
#
# End of data contents of table tblalumni_list_all
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 7. March 2017 10:14 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------


#
# Delete any existing table `tblalumni_past_o`
#

DROP TABLE IF EXISTS `tblalumni_past_o`;


#
# Table structure of table `tblalumni_past_o`
#

CREATE TABLE `tblalumni_past_o` (
  `past_id` int(11) NOT NULL AUTO_INCREMENT,
  `pastoccu` varchar(100) NOT NULL,
  `alum_id` int(100) NOT NULL,
  PRIMARY KEY (`past_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalumni_past_o (0 records)
#

#
# End of data contents of table tblalumni_past_o
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 7. March 2017 10:14 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------


#
# Delete any existing table `tblfeatured`
#

DROP TABLE IF EXISTS `tblfeatured`;


#
# Table structure of table `tblfeatured`
#

CREATE TABLE `tblfeatured` (
  `id_alum` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `course` varchar(50) NOT NULL,
  `yeargrad` varchar(50) NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `image1` varchar(255) NOT NULL,
  `description` text,
  `description2` text,
  PRIMARY KEY (`id_alum`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblfeatured (2 records)
#
 
INSERT INTO `tblfeatured` VALUES (41, 'Pedro De Juan', 'Bachelor of Science in Information Technology', '1995', 'CEO-Tipon Industries', 'keith.JPG', 'Life saver. Risk-taker. True friend. Brilliant leader. These are just some words used by people to describe him. He is our featured alumnus of the week. He is not only one of Filamer Christian University\'s distinguished alumnus, but also, one of the pillars of the institution. He is Pedro De Juan.', '') ; 
INSERT INTO `tblfeatured` VALUES (42, 'Juan Dela Cruz', 'Bachelor of Science in Computer Science', '1995', 'Web Developer - Spring Valley, PDP', '13692287_1237455086288410_1089362291_o.jpg', 'He rose as one of the best programmer. He is our featured alumnus. He is Juan Dela Cruz\\r\\n\\r\\nMr. Dela Cruz was born and raised at Hipona, Pontevedra, Capiz, by his parents, Mr. Mamerto Aposin (deceased) and Mrs. Gloria Aposin. He has finished his elementary and secondary education also at his hometown. He then proceeded to Filamer Christian College (now Filamer Christian University) and took up Bachelor of Science in College of Computer Studies. Halfway through his college, his father died; and being the eldest and the only son in the family, he has to find ways to sustain and finish his college education. He became a work student and was assigned at the snack counter of the high school IGP. While doing his chores at the high school canteen, he learned the value of service and discipline. In his speech delivered before Filamerians two years ago, he recalled his experiences during those times. Here is an excerpt:', '\\"It’s not enough that we know what we wanted.  We must pursue it with patience and persistence.  In other words, don’t give up easily.  It wasn’t easy to be assigned in the canteen.  I had to balance work and studies, especially so because the work in the canteen was mostly during the day.  It required discipline and being organized.  At 6 am, we had to open the canteen and my first task was to clean the whole area inside and outside.  Filling the cooler with bottles of soft drinks follows next, and so on.  It’s here where I learned to wash piles and piles of dishes in a systematic manner.  I applied the same discipline when I worked as a professional.  Things are not earned the easy way.  Success is sweeter when attained through hard work and perseverance,\\" Mr. Dela Cruz emphasized.  ') ;
#
# End of data contents of table tblfeatured
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 7. March 2017 10:14 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------


#
# Delete any existing table `tbljoba`
#

DROP TABLE IF EXISTS `tbljoba`;


#
# Table structure of table `tbljoba`
#

CREATE TABLE `tbljoba` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(50) NOT NULL,
  `job_desc` varchar(255) NOT NULL,
  `job_qualifications` varchar(255) NOT NULL,
  `cont_name` varchar(50) NOT NULL,
  `contact_info` varchar(59) NOT NULL,
  `employer_email` varchar(100) NOT NULL,
  `date_submitted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `job_status` varchar(100) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tbljoba (5 records)
#
 
INSERT INTO `tbljoba` VALUES (8, 'SYSTEM ANALYSIS', 'To analyze what', 'sdhshshsh
2
3', 'contact', '09104573805', 'asdjsajl@yahoo.com', 2017-02-26 00:00:00, 'approved') ; 
INSERT INTO `tbljoba` VALUES (9, 'SWEEPER', 'To sweep my room', 'To be a pro
20 years old and above
To have a pleasing personality', 'Louchin', '09104573805', 'cejarlouchin@yahoo.com', 2017-02-27 00:00:00, 'approved') ; 
INSERT INTO `tbljoba` VALUES (22, 'Web Developer', 'To develop programs', 'BSCS/BSIT Graduates
Work Experience 5 years
20-35 years old', 'Louchin Var Cejar', '09104573805', 'louzh23@yahoo.com', 2017-03-04 18:32:25, 'pending') ; 
INSERT INTO `tbljoba` VALUES (23, 'Web Developer', 'To develop ....', 'aszf
sadasdas', 'asdasdsa', '3123214253', 'asdas@yahoo.com', 2017-03-05 14:26:45, 'approved') ; 
INSERT INTO `tbljoba` VALUES (24, 'Software Developer', 'To develop software...', 'BSCS/BSIT Graduate
', 'Von', '312236', 'von@yahoo.com', 2017-03-06 14:40:35, 'approved') ;
#
# End of data contents of table tbljoba
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 7. March 2017 10:14 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblmessages`
# --------------------------------------------------------


#
# Delete any existing table `tblmessages`
#

DROP TABLE IF EXISTS `tblmessages`;


#
# Table structure of table `tblmessages`
#

CREATE TABLE `tblmessages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email_ad` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `date_submitted` datetime NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblmessages (3 records)
#
 
INSERT INTO `tblmessages` VALUES (10, 'una', 'ads@yahoo.com', 'unadapat', 'nako nako
', '2017-02-12 17:15:23') ; 
INSERT INTO `tblmessages` VALUES (14, 'Mylene ', 'mylene@yahoo.com', 'Inquiry about alumni homecoming 2k17', 'I would like to know if there is payment to attend in the alumni, ...', '2017-02-23 16:32:40') ; 
INSERT INTO `tblmessages` VALUES (23, 'KeithTIpon', 'keith@yahoo.com', 'Thesis', 'Omg', '2017-03-05 14:24:33') ;
#
# End of data contents of table tblmessages
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 7. March 2017 10:14 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblmessages`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblphotos`
# --------------------------------------------------------


#
# Delete any existing table `tblphotos`
#

DROP TABLE IF EXISTS `tblphotos`;


#
# Table structure of table `tblphotos`
#

CREATE TABLE `tblphotos` (
  `img_id` int(155) NOT NULL AUTO_INCREMENT,
  `imageName` varchar(255) NOT NULL,
  `imageSize` int(155) NOT NULL,
  `imageType` varchar(255) NOT NULL,
  `album_id` int(11) NOT NULL,
  `imageDesc` varchar(255) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblphotos (75 records)
#
 
INSERT INTO `tblphotos` VALUES (11, 'IMG_2703.JPG', 8321653, 'image/jpeg', 40, '') ; 
INSERT INTO `tblphotos` VALUES (12, 'IMG_2700.JPG', 8306760, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (14, 'IMG_2702.JPG', 8184189, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (15, 'IMG_2703.JPG', 8321653, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (16, 'IMG_2704.JPG', 7574419, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (17, '16996415_1253367861385165_3559347221526378383_n.jpg', 83951, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (18, '16997827_1253317188056899_2075271930102134696_n.jpg', 78430, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (19, '16997875_1253307431391208_5966908654291832465_n.jpg', 83364, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (20, '16998054_1253380761383875_7517102865004703770_n.jpg', 94878, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (21, '16998731_1253241884731096_537775372261670183_n.jpg', 63360, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (22, '16998765_1253309341391017_3381775148397839145_n.jpg', 76976, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (23, '16998859_1253250164730268_8389928518291112420_n.jpg', 63298, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (24, '16998918_1253323074722977_6392809316828028826_n.jpg', 85043, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (25, '16998956_1253419928046625_4179195577923724710_n.jpg', 85410, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (26, '16998973_1253381798050438_4909427074680216738_n.jpg', 84382, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (27, '16999114_1253363068052311_1025423555609257552_n.jpg', 84038, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (29, '16999164_1253319111390040_8967456363723339657_n.jpg', 90501, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (30, '17022478_1253420978046520_2185910032814609742_n.jpg', 90500, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (31, '17038949_1253627364692548_5839970018029220171_o.jpg', 64190, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (32, '16996415_1253367861385165_3559347221526378383_n.jpg', 83951, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (33, '16997827_1253317188056899_2075271930102134696_n.jpg', 78430, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (34, '16997875_1253307431391208_5966908654291832465_n.jpg', 83364, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (35, '16998054_1253380761383875_7517102865004703770_n.jpg', 94878, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (37, 'IMG_2694.JPG', 6389066, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (38, 'IMG_2696.JPG', 6948367, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (39, 'IMG_3039.JPG', 8568824, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (40, 'IMG_3040.JPG', 8281276, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (41, 'IMG_3041.JPG', 8298307, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (42, 'IMG_3042.JPG', 8338054, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (43, 'IMG_3043.JPG', 8640048, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (45, 'IMG_2774.JPG', 7092716, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (46, 'IMG_2775.JPG', 7802569, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (47, 'IMG_2776.JPG', 7729597, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (48, 'IMG_2709.JPG', 5892455, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (49, 'IMG_2710.JPG', 5777665, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (50, 'IMG_2711.JPG', 6207374, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (51, 'IMG_2712.JPG', 5928738, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (52, '1919667_1535821483324603_3478804027487844867_n.jpg', 112638, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (53, '10470217_1535822103324541_8238189314622385250_n.jpg', 75127, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (54, '10484453_1535821989991219_185204077361580387_n.jpg', 75009, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (55, '10522562_1535824439990974_4659093066038996293_n.jpg', 52671, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (56, '10522740_1535823879991030_5235440974718372536_n.jpg', 66203, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (57, '10552421_1535824526657632_4966710352566300388_n.jpg', 53806, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (58, '10592884_1535826159990802_2541807082154070224_n.jpg', 55112, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (59, '10599148_1535823623324389_5221626145593851260_n.jpg', 75337, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (60, '10600448_1535826813324070_4561644053630171117_n.jpg', 54004, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (61, '10609429_1535823786657706_1460926624241777806_n.jpg', 66419, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (62, '10616426_1535821389991279_4731135657810136253_n.jpg', 114487, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (63, '10624668_1535824579990960_5492240051139506062_n.jpg', 44418, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (64, '10624875_1535821566657928_1831457406540841022_n.jpg', 99823, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (65, '10636224_1535823919991026_2789471216018698126_n.jpg', 74416, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (66, '10645300_1535826826657402_7238266664535772314_n.jpg', 53478, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (67, '10649541_1535827399990678_739189734424669042_n.jpg', 65335, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (68, '10649915_1535822139991204_5070190516810323131_n.jpg', 76965, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (69, '10659293_1535823603324391_2683060096111844952_n.jpg', 69455, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (70, '10659312_1535823906657694_7533136432494065291_n.jpg', 73078, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (71, '10665270_1535823796657705_7270603778234038203_n.jpg', 60770, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (73, '14089119_1816298848610197_3174129525997231880_n (1).jpg', 100431, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (74, '14089119_1816298848610197_3174129525997231880_n.jpg', 100431, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (75, '14089241_1816326731940742_8251488098930284653_n.jpg', 77512, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (76, '14095720_1816305698609512_1511540433019436464_n.jpg', 68623, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (77, '14095727_1816333161940099_2510901256329504067_n.jpg', 88641, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (78, '14095739_1816315061941909_5060829540373758783_n.jpg', 79042, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (79, '14095758_1816335205273228_2032270567205798722_n.jpg', 98780, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (80, '14095971_1816317808608301_8480675797626370791_n.jpg', 103083, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (82, '14100288_1816307215276027_2583955776892275849_n.jpg', 59977, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (83, '14100376_1816303345276414_2407749182463236207_n.jpg', 59638, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (84, '14100406_1816300185276730_1820716075829742090_n.jpg', 89444, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (85, '14100411_1816313095275439_2593092048527452925_n.jpg', 84797, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (86, '14100471_1816335845273164_3101728423709562402_n.jpg', 99400, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (87, '14100487_1816314238608658_6576385800778301420_n.jpg', 96841, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (88, '14100525_1816329645273784_3170118605400444899_n.jpg', 79468, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (89, '14102209_1816313581942057_636850634282556374_n.jpg', 85748, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (90, '14102319_1816335705273178_2163227438990623951_n.jpg', 74961, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (91, '14102388_1816302771943138_6469689189620358632_n.jpg', 77089, 'image/jpeg', 53, '') ;
#
# End of data contents of table tblphotos
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 7. March 2017 10:14 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblmessages`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblphotos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblusers`
# --------------------------------------------------------


#
# Delete any existing table `tblusers`
#

DROP TABLE IF EXISTS `tblusers`;


#
# Table structure of table `tblusers`
#

CREATE TABLE `tblusers` (
  `id_no` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `account_stat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_no`),
  UNIQUE KEY `id_no` (`id_no`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblusers (4 records)
#
 
INSERT INTO `tblusers` VALUES (20, 'admin', 'admin', 'admin', 'Administrator') ; 
INSERT INTO `tblusers` VALUES (21, 'MILO', 'milo', 'milo', 'Administrator') ; 
INSERT INTO `tblusers` VALUES (22, 'Keith', 'keith', 'tipon', 'Administrator') ; 
INSERT INTO `tblusers` VALUES (24, 'User', 'user', 'user', 'Administrator') ;
#
# End of data contents of table tblusers
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 8. March 2017 08:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------


#
# Delete any existing table `tblact`
#

DROP TABLE IF EXISTS `tblact`;


#
# Table structure of table `tblact`
#

CREATE TABLE `tblact` (
  `na_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(50) NOT NULL,
  `date_from` date DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`na_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblact (4 records)
#
 
INSERT INTO `tblact` VALUES (2, 'BSIT 4A Thesis Defense LAST', '2017-03-09', '08:00:00', '2017-03-09', '16:00:00', 'Final Oral Defense of BSIT 4 2017', 'FCU, Tech Bldg., Lab A') ; 
INSERT INTO `tblact` VALUES (4, 'Final Technical Review', '2017-03-02', '08:00:00', '2017-03-02', '17:00:00', 'BSIT Final Technical Review for finalization of proposed system', 'FCU, Tech Bldg., Lab A') ; 
INSERT INTO `tblact` VALUES (7, 'JS PROM 2k17', '2017-02-17', NULL, '2017-02-17', NULL, 'Theme: God\'s and Goddesses', 'Pueblo De Panay, El Circulo Convention Center') ; 
INSERT INTO `tblact` VALUES (8, 'BSCS Batch 2005 Reunion', '2017-03-31', NULL, '2017-03-31', NULL, 'Contact #0910473805 or Email juandelacruz@yahoo.com for more details.', 'FCU, Roblee Hall') ;
#
# End of data contents of table tblact
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 8. March 2017 08:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------


#
# Delete any existing table `tblalbums`
#

DROP TABLE IF EXISTS `tblalbums`;


#
# Table structure of table `tblalbums`
#

CREATE TABLE `tblalbums` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `albumName` varchar(255) DEFAULT NULL,
  `album_status` varchar(40) NOT NULL,
  PRIMARY KEY (`album_id`),
  UNIQUE KEY `albumName` (`albumName`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalbums (6 records)
#
 
INSERT INTO `tblalbums` VALUES (37, 'FCU BSCS Batch 2000 Reunion', 'Approved') ; 
INSERT INTO `tblalbums` VALUES (45, 'FCU BSCS Batch 2004 Reunion', 'Approved') ; 
INSERT INTO `tblalbums` VALUES (52, 'FCU BSCS Batch 2008 Reunion', 'Approved') ; 
INSERT INTO `tblalbums` VALUES (53, 'FCU BSCS Batch 2010 Reunion', 'Approved') ; 
INSERT INTO `tblalbums` VALUES (55, 'FCU BSCS Batch 1999', 'Pending') ; 
INSERT INTO `tblalbums` VALUES (56, 'FCU Basdas', 'Pending') ;
#
# End of data contents of table tblalbums
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 8. March 2017 08:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------


#
# Delete any existing table `tblalum_photos`
#

DROP TABLE IF EXISTS `tblalum_photos`;


#
# Table structure of table `tblalum_photos`
#

CREATE TABLE `tblalum_photos` (
  `img_id` int(155) NOT NULL AUTO_INCREMENT,
  `imageName` varchar(255) NOT NULL,
  `imageSize` int(155) NOT NULL,
  `imageType` varchar(255) NOT NULL,
  `album_id` int(11) NOT NULL,
  `imageDesc` varchar(255) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalum_photos (12 records)
#
 
INSERT INTO `tblalum_photos` VALUES (7, 'IMG_2694.JPG', 6389066, 'image/jpeg', 37, '') ; 
INSERT INTO `tblalum_photos` VALUES (8, 'IMG_2727.JPG', 7819475, 'image/jpeg', 0, 'TURNEDoff') ; 
INSERT INTO `tblalum_photos` VALUES (9, 'IMG_2733.JPG', 6952046, 'image/jpeg', 0, 'TURNEDoff') ; 
INSERT INTO `tblalum_photos` VALUES (10, 'IMG_2734.JPG', 7386693, 'image/jpeg', 0, 'TURNEDoff') ; 
INSERT INTO `tblalum_photos` VALUES (11, 'IMG_2696.JPG', 6948367, 'image/jpeg', 0, 'wewe') ; 
INSERT INTO `tblalum_photos` VALUES (12, 'IMG_2700.JPG', 8306760, 'image/jpeg', 0, 'wewe') ; 
INSERT INTO `tblalum_photos` VALUES (13, 'IMG_2696.JPG', 6948367, 'image/jpeg', 0, 'wewewe') ; 
INSERT INTO `tblalum_photos` VALUES (14, 'IMG_2700.JPG', 8306760, 'image/jpeg', 0, 'wewewe') ; 
INSERT INTO `tblalum_photos` VALUES (15, 'IMG_2694.JPG', 6389066, 'image/jpeg', 40, '') ; 
INSERT INTO `tblalum_photos` VALUES (16, 'IMG_2694.JPG', 6389066, 'image/jpeg', 41, '') ; 
INSERT INTO `tblalum_photos` VALUES (17, 'IMG_2694.JPG', 6389066, 'image/jpeg', 41, '') ; 
INSERT INTO `tblalum_photos` VALUES (18, 'IMG_2693.JPG', 6086401, 'image/jpeg', 41, '') ;
#
# End of data contents of table tblalum_photos
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 8. March 2017 08:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------


#
# Delete any existing table `tblalumni`
#

DROP TABLE IF EXISTS `tblalumni`;


#
# Table structure of table `tblalumni`
#

CREATE TABLE `tblalumni` (
  `alum_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(150) DEFAULT NULL,
  `mname` varchar(150) DEFAULT NULL,
  `lname` varchar(150) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `civilstat` varchar(100) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `telnum` varchar(20) DEFAULT NULL,
  `mobnum` varchar(100) DEFAULT NULL,
  `emailadd` varchar(100) DEFAULT NULL,
  `yeargrad` int(25) DEFAULT NULL,
  `department` varchar(180) DEFAULT NULL,
  `course` varchar(180) DEFAULT NULL,
  `awards` varchar(255) DEFAULT NULL,
  `scholarships` varchar(200) DEFAULT NULL,
  `attainment` varchar(200) DEFAULT NULL,
  `employed` varchar(10) DEFAULT NULL,
  `empstatus` varchar(20) DEFAULT NULL,
  `presoccup` varchar(100) DEFAULT NULL,
  `workadd` varchar(200) DEFAULT NULL,
  `gradstud` varchar(10) DEFAULT NULL,
  `advstud` varchar(10) DEFAULT NULL,
  `participated` varchar(100) DEFAULT NULL,
  `assist` varchar(10) DEFAULT NULL,
  `programs` varchar(100) DEFAULT NULL,
  `cts` int(10) DEFAULT NULL,
  `solvecomplexprob` int(10) DEFAULT NULL,
  `workwithother` int(10) DEFAULT NULL,
  `learnind` int(10) DEFAULT NULL,
  `writtencommskills` int(10) DEFAULT NULL,
  `spokencommskills` int(10) DEFAULT NULL,
  `knowfield` int(10) DEFAULT NULL,
  `workrelatedknow` int(10) DEFAULT NULL,
  `relevantdegree` varchar(10) DEFAULT NULL,
  `norelevant` varchar(255) DEFAULT NULL,
  `impfctr` varchar(100) DEFAULT NULL,
  `overall` varchar(10) DEFAULT NULL,
  `alum_status` int(10) DEFAULT NULL,
  PRIMARY KEY (`alum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalumni (11 records)
#
 
INSERT INTO `tblalumni` VALUES (3, 'Louchin Var', 'Carias', 'Cejar', 'Male', 'Single', '1996-08-23', 'Roxas City', '6202167', '09104573805', 'cejarlouchin@yahoo.com', 2016, 'College of Computer Studies', 'Bachelor of Science in Information Technology', 'Best in Visual Graphics,Best in Java Programming,Academic Awardee,Leadership Awardee,Socio-Cultural Awardee,Loyalty Awardee,', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Software Engineer, ITech', NULL, 'Yes', 'Yes', 'Related to my profession', 'Yes', 'IT Courses', 4, 4, 3, 4, 4, 4, 4, 4, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (4, 'Keith Francis', 'Falco', 'Tipon', 'Male', 'Single', '1996-07-23', 'Brgy. X, Roxas City', '6202144', '09124758282', 'kftipon23@gmail.com', 2000, 'College of Computer Studies', 'Bachelor of Science in Information Technology', 'Best in Visual Graphics,Best in Java Programming,Academic Awardee,Leadership Awardee,Sports Awardee,Loyalty Awardee,', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Application Programmer Analyst, Joe Riley & Associates Inc.', NULL, 'No', 'No', NULL, 'Yes', 'IT Courses', 4, 4, 3, 4, 3, 4, 4, 4, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (5, 'Vincent Von Niño', 'Besana', 'Dapiton', 'Male', 'Single', '1996-08-30', 'Fuentes Subd., Roxas City', '6209586', '09384859629', 'vondapiton@gmail.com', 2014, 'College of Computer Studies', 'Bachelor of Science in Information Technology', 'Best in Visual Graphics,Best in Java Programming,Socio-Cultural Awardee,Best in Research Paper', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Hardware & Software Technician, Clipdata Computer Center', NULL, 'Yes', 'No', 'Related to my profession', 'Yes', 'IT Courses', 4, 4, 4, 4, 3, 4, 3, 3, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (6, 'Mechelyn', 'Alarcon', 'Villanueva', 'Female', 'Single', '1996-05-20', NULL, NULL, '09477575728', NULL, 2015, 'College of Computer Studies', 'Bachelor of Science in Computer Science', '', NULL, 'Bachelor\'s Degree', 'No', NULL, NULL, NULL, 'No', 'No', NULL, 'Yes', 'IT Courses', 4, 4, 3, 4, 3, 3, 3, 3, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (7, 'Jovelyn', 'Miranda', 'Demausa', 'Female', 'Single', '1997-02-08', 'Maayon, Capiz', '6209484', '09475968274', 'jovelyn@yahoo.com', 2011, 'College of Computer Studies', 'Bachelor of Science in Computer Science', '', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Associate Software Engineer, BigO', NULL, 'No', 'Yes', 'Related to my profession', 'Yes', 'IT Courses', 4, 4, 4, 4, 4, 3, 4, 4, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (8, 'Crystal Mae', 'Deita', 'Contreras', 'Female', 'Single', '1997-01-13', 'Brgy. Bolo, Roxas City', '6204848', '09384857291', 'crystal@yahoo.com', 2009, 'College of Computer Studies', 'Bachelor of Science in Computer Science', '', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Call Center Agent, BPO', NULL, 'No', 'No', NULL, 'Yes', 'Internship', 4, 4, 4, 3, 3, 3, 3, 4, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (9, 'Ronn Daniel', 'Bargo', 'Delos Santos', 'Male', 'Single', '1995-07-10', 'Pilar, Capiz', NULL, '09487227572', 'ronn@yahoo.com', 2013, 'College of Computer Studies', 'Bachelor of Science in Computer Science', '', NULL, 'Bachelor\'s Degree', 'No', NULL, NULL, NULL, 'No', 'No', NULL, 'No', NULL, 4, 3, 3, 3, 3, 3, 3, 3, 'No', '', 'IT Skills', 'No', 2) ; 
INSERT INTO `tblalumni` VALUES (10, 'Gizylle Ann', 'Manong', 'Lago', 'Female', 'Single', '1997-05-10', 'Sigma, Capiz', '6204848', '09475729492', 'giz@yahoo.com', 2012, 'College of Computer Studies', 'Associate in Computer Science', 'Academic Awardee,Sports Awardee,Socio-Cultural Awardee,', NULL, 'Bachelor\'s Degree', 'Yes', 'Probationary', 'Sales Manager, KFC', NULL, 'No', 'No', NULL, 'Yes', 'Occupational Skills/Practical Exercises', 4, 4, 3, 4, 3, 3, 4, 4, 'Yes', '', 'Occupational Skill', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (11, 'Rejane', 'Bolivar', 'Asignacion', 'Female', 'Single', '1996-11-22', 'Balasan, Iloilo', '6209494', '09471827382', 'jane@yahoo.com', 2011, 'College of Computer Studies', 'Associate in Computer Science', 'Academic Awardee,Sports Awardee,Socio-Cultural Awardee,', NULL, 'Bachelor\'s Degree', 'Yes', 'Contractual', 'Data Encoder, R&J Enterprise', NULL, 'No', 'No', NULL, 'Yes', 'IT Courses', 4, 3, 3, 3, 4, 3, 2, 3, 'Yes', '', 'Occupational Skill', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (12, 'Kay', 'Acedre', 'Destor', 'Male', 'Single', '1992-01-19', 'Estancia, Iloilo', '6204094', '09184726374', 'kdestor@cloud.com', 2012, 'College of Computer Studies', 'Associate in Computer Science', '', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Technician, Oxord Computer Solutions', NULL, 'No', 'No', NULL, 'No', NULL, 3, 2, 2, 2, 3, 2, 2, 3, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (13, 'Ma. Almira', 'Caldeo', 'Lim', 'Female', 'Single', '1997-03-10', 'Brgy. Bolo, Roxas City', '6208492', '09104857242', 'mal@yahoo.com', 2011, 'College of Computer Studies', 'Bachelor of Science in Information Technology', 'Best in Visual Graphics,Best in Java Programming,Academic Awardee,Leadership Awardee,Sports Awardee,Model Student,', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Dean, FCU-CCS', NULL, 'Yes', 'Yes', 'Related to my profession', 'Yes', 'IT Courses', 5, 4, 5, 4, 5, 5, 5, 4, 'Yes', '', 'Occupational Skill', 'Yes', 2) ;
#
# End of data contents of table tblalumni
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 8. March 2017 08:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------


#
# Delete any existing table `tblalumni_list_all`
#

DROP TABLE IF EXISTS `tblalumni_list_all`;


#
# Table structure of table `tblalumni_list_all`
#

CREATE TABLE `tblalumni_list_all` (
  `alumni_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(150) DEFAULT NULL,
  `mname` varchar(150) DEFAULT NULL,
  `lname` varchar(150) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `yeargrad` int(25) DEFAULT NULL,
  `course` varchar(180) DEFAULT NULL,
  `department` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`alumni_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalumni_list_all (14 records)
#
 
INSERT INTO `tblalumni_list_all` VALUES (1, 'Louchin Var ', 'Carias', 'Cejar', '1996-08-23', 2016, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (2, 'Keith Francis', 'Falco', 'Tipon', '1996-07-23', 2000, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (5, 'Mechelyn', 'Alarcon', 'Villanueva', '1996-05-20', 2015, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (6, 'Jovelyn', 'Miranda', 'Demausa', '1997-02-08', 2011, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (7, 'Crystal Mae', 'Deita', 'Contreras', '1997-01-13', 2009, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (8, 'Vincent Von Niño', 'Besana', 'Dapiton', '1996-08-30', 2014, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (9, 'Ronn Daniel', 'Bargo', 'Delos Santos', '1995-07-10', 2013, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (10, 'Gizylle Ann', 'Manong', 'Lago', '1997-05-10', 2012, 'Associate in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (11, 'Rejane', 'Bolivar', 'Asignacion', '1996-11-22', 2011, 'Associate in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (12, 'Kay', 'Acedre', 'Destor', '1992-01-19', 2012, 'Associate in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (13, 'Ma. Almira', 'Caldeo', 'Lim', '1997-03-10', 2011, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (15, 'Jonah', 'Palomar', 'Gafate', '1973-06-13', 2001, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'unregistered') ; 
INSERT INTO `tblalumni_list_all` VALUES (16, 'Rommel', 'Berino', 'Sario', '1976-11-03', 1997, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'unregistered') ; 
INSERT INTO `tblalumni_list_all` VALUES (17, 'Mylene', 'Reyes', 'Chu', '1975-11-18', 1997, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'unregistered') ;
#
# End of data contents of table tblalumni_list_all
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 8. March 2017 08:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------


#
# Delete any existing table `tblalumni_past_o`
#

DROP TABLE IF EXISTS `tblalumni_past_o`;


#
# Table structure of table `tblalumni_past_o`
#

CREATE TABLE `tblalumni_past_o` (
  `past_id` int(11) NOT NULL AUTO_INCREMENT,
  `pastoccu` varchar(100) NOT NULL,
  `alum_id` int(100) NOT NULL,
  PRIMARY KEY (`past_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalumni_past_o (2 records)
#
 
INSERT INTO `tblalumni_past_o` VALUES (1, 'ohmy', 4) ; 
INSERT INTO `tblalumni_past_o` VALUES (2, 'sadsadas', 4) ;
#
# End of data contents of table tblalumni_past_o
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 8. March 2017 08:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------


#
# Delete any existing table `tblfeatured`
#

DROP TABLE IF EXISTS `tblfeatured`;


#
# Table structure of table `tblfeatured`
#

CREATE TABLE `tblfeatured` (
  `id_alum` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `course` varchar(50) NOT NULL,
  `yeargrad` varchar(50) NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `image1` varchar(255) NOT NULL,
  `description` text,
  `description2` text,
  PRIMARY KEY (`id_alum`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblfeatured (2 records)
#
 
INSERT INTO `tblfeatured` VALUES (41, 'Pedro De Juan', 'Bachelor of Science in Information Technology', '1995', 'CEO-Tipon Industries', 'keith.JPG', 'Life saver. Risk-taker. True friend. Brilliant leader. These are just some words used by people to describe him. He is our featured alumnus of the week. He is not only one of Filamer Christian University\'s distinguished alumnus, but also, one of the pillars of the institution. He is Pedro De Juan.', '') ; 
INSERT INTO `tblfeatured` VALUES (42, 'Juan Dela Cruz', 'Bachelor of Science in Computer Science', '1995', 'Web Developer - Spring Valley, PDP', '13692287_1237455086288410_1089362291_o.jpg', 'He rose as one of the best programmer. He is our featured alumnus. He is Juan Dela Cruz\\r\\n\\r\\nMr. Dela Cruz was born and raised at Hipona, Pontevedra, Capiz, by his parents, Mr. Mamerto Aposin (deceased) and Mrs. Gloria Aposin. He has finished his elementary and secondary education also at his hometown. He then proceeded to Filamer Christian College (now Filamer Christian University) and took up Bachelor of Science in College of Computer Studies. Halfway through his college, his father died; and being the eldest and the only son in the family, he has to find ways to sustain and finish his college education. He became a work student and was assigned at the snack counter of the high school IGP. While doing his chores at the high school canteen, he learned the value of service and discipline. In his speech delivered before Filamerians two years ago, he recalled his experiences during those times. Here is an excerpt:', '\\"It’s not enough that we know what we wanted.  We must pursue it with patience and persistence.  In other words, don’t give up easily.  It wasn’t easy to be assigned in the canteen.  I had to balance work and studies, especially so because the work in the canteen was mostly during the day.  It required discipline and being organized.  At 6 am, we had to open the canteen and my first task was to clean the whole area inside and outside.  Filling the cooler with bottles of soft drinks follows next, and so on.  It’s here where I learned to wash piles and piles of dishes in a systematic manner.  I applied the same discipline when I worked as a professional.  Things are not earned the easy way.  Success is sweeter when attained through hard work and perseverance,\\" Mr. Dela Cruz emphasized.  ') ;
#
# End of data contents of table tblfeatured
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 8. March 2017 08:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------


#
# Delete any existing table `tbljoba`
#

DROP TABLE IF EXISTS `tbljoba`;


#
# Table structure of table `tbljoba`
#

CREATE TABLE `tbljoba` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(50) NOT NULL,
  `job_desc` varchar(255) NOT NULL,
  `job_qualifications` varchar(255) NOT NULL,
  `cont_name` varchar(50) NOT NULL,
  `contact_info` varchar(59) NOT NULL,
  `employer_email` varchar(100) NOT NULL,
  `date_submitted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `job_status` varchar(100) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tbljoba (5 records)
#
 
INSERT INTO `tbljoba` VALUES (8, 'SYSTEM ANALYSIS', 'To analyze what', 'sdhshshsh
2
3', 'contact', '09104573805', 'asdjsajl@yahoo.com', 2017-02-26 00:00:00, 'approved') ; 
INSERT INTO `tbljoba` VALUES (9, 'SWEEPER', 'To sweep my room', 'To be a pro
20 years old and above
To have a pleasing personality', 'Louchin', '09104573805', 'cejarlouchin@yahoo.com', 2017-02-27 00:00:00, 'approved') ; 
INSERT INTO `tbljoba` VALUES (22, 'Web Developer', 'To develop programs', 'BSCS/BSIT Graduates
Work Experience 5 years
20-35 years old', 'Louchin Var Cejar', '09104573805', 'louzh23@yahoo.com', 2017-03-04 18:32:25, 'pending') ; 
INSERT INTO `tbljoba` VALUES (23, 'Web Developer', 'To develop ....', 'aszf
sadasdas', 'asdasdsa', '3123214253', 'asdas@yahoo.com', 2017-03-05 14:26:45, 'approved') ; 
INSERT INTO `tbljoba` VALUES (24, 'Software Developer', 'To develop software...', 'BSCS/BSIT Graduate
', 'Von', '312236', 'von@yahoo.com', 2017-03-06 14:40:35, 'approved') ;
#
# End of data contents of table tbljoba
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 8. March 2017 08:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblmessages`
# --------------------------------------------------------


#
# Delete any existing table `tblmessages`
#

DROP TABLE IF EXISTS `tblmessages`;


#
# Table structure of table `tblmessages`
#

CREATE TABLE `tblmessages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email_ad` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `date_submitted` datetime NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblmessages (3 records)
#
 
INSERT INTO `tblmessages` VALUES (10, 'una', 'ads@yahoo.com', 'unadapat', 'nako nako
', '2017-02-12 17:15:23') ; 
INSERT INTO `tblmessages` VALUES (14, 'Mylene ', 'mylene@yahoo.com', 'Inquiry about alumni homecoming 2k17', 'I would like to know if there is payment to attend in the alumni, ...', '2017-02-23 16:32:40') ; 
INSERT INTO `tblmessages` VALUES (23, 'KeithTIpon', 'keith@yahoo.com', 'Thesis', 'Omg', '2017-03-05 14:24:33') ;
#
# End of data contents of table tblmessages
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 8. March 2017 08:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblmessages`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblphotos`
# --------------------------------------------------------


#
# Delete any existing table `tblphotos`
#

DROP TABLE IF EXISTS `tblphotos`;


#
# Table structure of table `tblphotos`
#

CREATE TABLE `tblphotos` (
  `img_id` int(155) NOT NULL AUTO_INCREMENT,
  `imageName` varchar(255) NOT NULL,
  `imageSize` int(155) NOT NULL,
  `imageType` varchar(255) NOT NULL,
  `album_id` int(11) NOT NULL,
  `imageDesc` varchar(255) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblphotos (80 records)
#
 
INSERT INTO `tblphotos` VALUES (11, 'IMG_2703.JPG', 8321653, 'image/jpeg', 40, '') ; 
INSERT INTO `tblphotos` VALUES (12, 'IMG_2700.JPG', 8306760, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (14, 'IMG_2702.JPG', 8184189, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (15, 'IMG_2703.JPG', 8321653, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (16, 'IMG_2704.JPG', 7574419, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (17, '16996415_1253367861385165_3559347221526378383_n.jpg', 83951, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (18, '16997827_1253317188056899_2075271930102134696_n.jpg', 78430, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (19, '16997875_1253307431391208_5966908654291832465_n.jpg', 83364, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (20, '16998054_1253380761383875_7517102865004703770_n.jpg', 94878, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (21, '16998731_1253241884731096_537775372261670183_n.jpg', 63360, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (22, '16998765_1253309341391017_3381775148397839145_n.jpg', 76976, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (23, '16998859_1253250164730268_8389928518291112420_n.jpg', 63298, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (24, '16998918_1253323074722977_6392809316828028826_n.jpg', 85043, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (25, '16998956_1253419928046625_4179195577923724710_n.jpg', 85410, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (26, '16998973_1253381798050438_4909427074680216738_n.jpg', 84382, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (27, '16999114_1253363068052311_1025423555609257552_n.jpg', 84038, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (29, '16999164_1253319111390040_8967456363723339657_n.jpg', 90501, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (30, '17022478_1253420978046520_2185910032814609742_n.jpg', 90500, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (31, '17038949_1253627364692548_5839970018029220171_o.jpg', 64190, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (32, '16996415_1253367861385165_3559347221526378383_n.jpg', 83951, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (33, '16997827_1253317188056899_2075271930102134696_n.jpg', 78430, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (34, '16997875_1253307431391208_5966908654291832465_n.jpg', 83364, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (35, '16998054_1253380761383875_7517102865004703770_n.jpg', 94878, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (37, 'IMG_2694.JPG', 6389066, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (38, 'IMG_2696.JPG', 6948367, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (39, 'IMG_3039.JPG', 8568824, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (40, 'IMG_3040.JPG', 8281276, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (41, 'IMG_3041.JPG', 8298307, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (42, 'IMG_3042.JPG', 8338054, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (43, 'IMG_3043.JPG', 8640048, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (45, 'IMG_2774.JPG', 7092716, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (46, 'IMG_2775.JPG', 7802569, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (47, 'IMG_2776.JPG', 7729597, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (48, 'IMG_2709.JPG', 5892455, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (49, 'IMG_2710.JPG', 5777665, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (50, 'IMG_2711.JPG', 6207374, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (51, 'IMG_2712.JPG', 5928738, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (52, '1919667_1535821483324603_3478804027487844867_n.jpg', 112638, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (53, '10470217_1535822103324541_8238189314622385250_n.jpg', 75127, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (54, '10484453_1535821989991219_185204077361580387_n.jpg', 75009, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (55, '10522562_1535824439990974_4659093066038996293_n.jpg', 52671, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (56, '10522740_1535823879991030_5235440974718372536_n.jpg', 66203, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (57, '10552421_1535824526657632_4966710352566300388_n.jpg', 53806, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (58, '10592884_1535826159990802_2541807082154070224_n.jpg', 55112, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (59, '10599148_1535823623324389_5221626145593851260_n.jpg', 75337, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (60, '10600448_1535826813324070_4561644053630171117_n.jpg', 54004, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (61, '10609429_1535823786657706_1460926624241777806_n.jpg', 66419, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (62, '10616426_1535821389991279_4731135657810136253_n.jpg', 114487, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (63, '10624668_1535824579990960_5492240051139506062_n.jpg', 44418, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (64, '10624875_1535821566657928_1831457406540841022_n.jpg', 99823, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (65, '10636224_1535823919991026_2789471216018698126_n.jpg', 74416, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (66, '10645300_1535826826657402_7238266664535772314_n.jpg', 53478, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (67, '10649541_1535827399990678_739189734424669042_n.jpg', 65335, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (68, '10649915_1535822139991204_5070190516810323131_n.jpg', 76965, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (69, '10659293_1535823603324391_2683060096111844952_n.jpg', 69455, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (70, '10659312_1535823906657694_7533136432494065291_n.jpg', 73078, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (71, '10665270_1535823796657705_7270603778234038203_n.jpg', 60770, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (73, '14089119_1816298848610197_3174129525997231880_n (1).jpg', 100431, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (74, '14089119_1816298848610197_3174129525997231880_n.jpg', 100431, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (75, '14089241_1816326731940742_8251488098930284653_n.jpg', 77512, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (76, '14095720_1816305698609512_1511540433019436464_n.jpg', 68623, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (77, '14095727_1816333161940099_2510901256329504067_n.jpg', 88641, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (78, '14095739_1816315061941909_5060829540373758783_n.jpg', 79042, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (79, '14095758_1816335205273228_2032270567205798722_n.jpg', 98780, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (80, '14095971_1816317808608301_8480675797626370791_n.jpg', 103083, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (82, '14100288_1816307215276027_2583955776892275849_n.jpg', 59977, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (83, '14100376_1816303345276414_2407749182463236207_n.jpg', 59638, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (84, '14100406_1816300185276730_1820716075829742090_n.jpg', 89444, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (85, '14100411_1816313095275439_2593092048527452925_n.jpg', 84797, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (86, '14100471_1816335845273164_3101728423709562402_n.jpg', 99400, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (87, '14100487_1816314238608658_6576385800778301420_n.jpg', 96841, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (88, '14100525_1816329645273784_3170118605400444899_n.jpg', 79468, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (89, '14102209_1816313581942057_636850634282556374_n.jpg', 85748, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (90, '14102319_1816335705273178_2163227438990623951_n.jpg', 74961, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (91, '14102388_1816302771943138_6469689189620358632_n.jpg', 77089, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (92, 'batch_feat.png', 596727, 'image/png', 54, '') ; 
INSERT INTO `tblphotos` VALUES (93, '14079826_1816299665276782_653093244729483734_n.jpg', 78549, 'image/jpeg', 56, '') ; 
INSERT INTO `tblphotos` VALUES (94, '14079919_1816310728609009_3139588896720939693_n.jpg', 56688, 'image/jpeg', 56, '') ; 
INSERT INTO `tblphotos` VALUES (95, '14088465_1816315548608527_5898912246416848053_n.jpg', 76978, 'image/jpeg', 56, '') ; 
INSERT INTO `tblphotos` VALUES (96, '14089081_1816328955273853_1085810422469769552_n.jpg', 84924, 'image/jpeg', 56, '') ;
#
# End of data contents of table tblphotos
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 8. March 2017 08:57 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblmessages`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblphotos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblusers`
# --------------------------------------------------------


#
# Delete any existing table `tblusers`
#

DROP TABLE IF EXISTS `tblusers`;


#
# Table structure of table `tblusers`
#

CREATE TABLE `tblusers` (
  `id_no` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `account_stat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_no`),
  UNIQUE KEY `id_no` (`id_no`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblusers (4 records)
#
 
INSERT INTO `tblusers` VALUES (20, 'admin', 'admin', 'admin', 'Administrator') ; 
INSERT INTO `tblusers` VALUES (21, 'MILO', 'milo', 'milo', 'Administrator') ; 
INSERT INTO `tblusers` VALUES (22, 'Keith', 'keith', 'tipon', 'Administrator') ; 
INSERT INTO `tblusers` VALUES (24, 'User', 'user', 'user', 'Administrator') ;
#
# End of data contents of table tblusers
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Thursday 9. March 2017 02:03 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------


#
# Delete any existing table `tblact`
#

DROP TABLE IF EXISTS `tblact`;


#
# Table structure of table `tblact`
#

CREATE TABLE `tblact` (
  `na_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(50) NOT NULL,
  `date_from` date DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`na_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblact (4 records)
#
 
INSERT INTO `tblact` VALUES (2, 'BSIT 4A Thesis Defense LAST', '2017-03-09', '08:00:00', '2017-03-09', '16:00:00', 'Final Oral Defense of BSIT 4 2017', 'FCU, Tech Bldg., Lab A') ; 
INSERT INTO `tblact` VALUES (4, 'Final Technical Review', '2017-03-02', '08:00:00', '2017-03-02', '17:00:00', 'BSIT Final Technical Review for finalization of proposed system', 'FCU, Tech Bldg., Lab A') ; 
INSERT INTO `tblact` VALUES (7, 'JS PROM 2k17', '2017-02-17', NULL, '2017-02-17', NULL, 'Theme: God\'s and Goddesses', 'Pueblo De Panay, El Circulo Convention Center') ; 
INSERT INTO `tblact` VALUES (8, 'BSCS Batch 2005 Reunion', '2017-03-31', NULL, '2017-03-31', NULL, 'Contact #0910473805 or Email juandelacruz@yahoo.com for more details.', 'FCU, Roblee Hall') ;
#
# End of data contents of table tblact
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Thursday 9. March 2017 02:03 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------


#
# Delete any existing table `tblalbums`
#

DROP TABLE IF EXISTS `tblalbums`;


#
# Table structure of table `tblalbums`
#

CREATE TABLE `tblalbums` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `albumName` varchar(255) DEFAULT NULL,
  `album_status` varchar(40) NOT NULL,
  PRIMARY KEY (`album_id`),
  UNIQUE KEY `albumName` (`albumName`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalbums (7 records)
#
 
INSERT INTO `tblalbums` VALUES (37, 'FCU BSCS Batch 2000 Reunion', 'Approved') ; 
INSERT INTO `tblalbums` VALUES (45, 'FCU BSCS Batch 2004 Reunion', 'Approved') ; 
INSERT INTO `tblalbums` VALUES (52, 'FCU BSCS Batch 2008 Reunion', 'Approved') ; 
INSERT INTO `tblalbums` VALUES (53, 'FCU BSCS Batch 2010 Reunion', 'Approved') ; 
INSERT INTO `tblalbums` VALUES (55, 'FCU BSCS Batch 1999', 'Pending') ; 
INSERT INTO `tblalbums` VALUES (57, 'THESIS', 'Approved') ; 
INSERT INTO `tblalbums` VALUES (58, 'alumin 2006', 'Pending') ;
#
# End of data contents of table tblalbums
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Thursday 9. March 2017 02:03 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------


#
# Delete any existing table `tblalum_photos`
#

DROP TABLE IF EXISTS `tblalum_photos`;


#
# Table structure of table `tblalum_photos`
#

CREATE TABLE `tblalum_photos` (
  `img_id` int(155) NOT NULL AUTO_INCREMENT,
  `imageName` varchar(255) NOT NULL,
  `imageSize` int(155) NOT NULL,
  `imageType` varchar(255) NOT NULL,
  `album_id` int(11) NOT NULL,
  `imageDesc` varchar(255) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalum_photos (12 records)
#
 
INSERT INTO `tblalum_photos` VALUES (7, 'IMG_2694.JPG', 6389066, 'image/jpeg', 37, '') ; 
INSERT INTO `tblalum_photos` VALUES (8, 'IMG_2727.JPG', 7819475, 'image/jpeg', 0, 'TURNEDoff') ; 
INSERT INTO `tblalum_photos` VALUES (9, 'IMG_2733.JPG', 6952046, 'image/jpeg', 0, 'TURNEDoff') ; 
INSERT INTO `tblalum_photos` VALUES (10, 'IMG_2734.JPG', 7386693, 'image/jpeg', 0, 'TURNEDoff') ; 
INSERT INTO `tblalum_photos` VALUES (11, 'IMG_2696.JPG', 6948367, 'image/jpeg', 0, 'wewe') ; 
INSERT INTO `tblalum_photos` VALUES (12, 'IMG_2700.JPG', 8306760, 'image/jpeg', 0, 'wewe') ; 
INSERT INTO `tblalum_photos` VALUES (13, 'IMG_2696.JPG', 6948367, 'image/jpeg', 0, 'wewewe') ; 
INSERT INTO `tblalum_photos` VALUES (14, 'IMG_2700.JPG', 8306760, 'image/jpeg', 0, 'wewewe') ; 
INSERT INTO `tblalum_photos` VALUES (15, 'IMG_2694.JPG', 6389066, 'image/jpeg', 40, '') ; 
INSERT INTO `tblalum_photos` VALUES (16, 'IMG_2694.JPG', 6389066, 'image/jpeg', 41, '') ; 
INSERT INTO `tblalum_photos` VALUES (17, 'IMG_2694.JPG', 6389066, 'image/jpeg', 41, '') ; 
INSERT INTO `tblalum_photos` VALUES (18, 'IMG_2693.JPG', 6086401, 'image/jpeg', 41, '') ;
#
# End of data contents of table tblalum_photos
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Thursday 9. March 2017 02:03 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------


#
# Delete any existing table `tblalumni`
#

DROP TABLE IF EXISTS `tblalumni`;


#
# Table structure of table `tblalumni`
#

CREATE TABLE `tblalumni` (
  `alum_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(150) DEFAULT NULL,
  `mname` varchar(150) DEFAULT NULL,
  `lname` varchar(150) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `civilstat` varchar(100) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `telnum` varchar(20) DEFAULT NULL,
  `mobnum` varchar(100) DEFAULT NULL,
  `emailadd` varchar(100) DEFAULT NULL,
  `yeargrad` int(25) DEFAULT NULL,
  `department` varchar(180) DEFAULT NULL,
  `course` varchar(180) DEFAULT NULL,
  `awards` varchar(255) DEFAULT NULL,
  `scholarships` varchar(200) DEFAULT NULL,
  `attainment` varchar(200) DEFAULT NULL,
  `employed` varchar(10) DEFAULT NULL,
  `empstatus` varchar(20) DEFAULT NULL,
  `presoccup` varchar(100) DEFAULT NULL,
  `workadd` varchar(200) DEFAULT NULL,
  `gradstud` varchar(10) DEFAULT NULL,
  `advstud` varchar(10) DEFAULT NULL,
  `participated` varchar(100) DEFAULT NULL,
  `assist` varchar(10) DEFAULT NULL,
  `programs` varchar(100) DEFAULT NULL,
  `cts` int(10) DEFAULT NULL,
  `solvecomplexprob` int(10) DEFAULT NULL,
  `workwithother` int(10) DEFAULT NULL,
  `learnind` int(10) DEFAULT NULL,
  `writtencommskills` int(10) DEFAULT NULL,
  `spokencommskills` int(10) DEFAULT NULL,
  `knowfield` int(10) DEFAULT NULL,
  `workrelatedknow` int(10) DEFAULT NULL,
  `relevantdegree` varchar(10) DEFAULT NULL,
  `norelevant` varchar(255) DEFAULT NULL,
  `impfctr` varchar(100) DEFAULT NULL,
  `overall` varchar(10) DEFAULT NULL,
  `alum_status` int(10) DEFAULT NULL,
  PRIMARY KEY (`alum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalumni (19 records)
#
 
INSERT INTO `tblalumni` VALUES (3, 'Louchin Var', 'Carias', 'Cejar', 'Male', 'Single', '1996-08-23', 'Roxas City', '6202167', '09104573805', 'cejarlouchin@yahoo.com', 2016, 'College of Computer Studies', 'Bachelor of Science in Information Technology', 'Best in Visual Graphics,Best in Java Programming,Academic Awardee,Leadership Awardee,Socio-Cultural Awardee,Loyalty Awardee,', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Software Engineer, ITech', NULL, 'Yes', 'Yes', 'Related to my profession', 'Yes', 'IT Courses', 4, 4, 3, 4, 4, 4, 4, 4, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (4, 'Keith Francis', 'Falco', 'Tipon', 'Male', 'Single', '1996-07-23', 'Brgy. X, Roxas City', '6202144', '09124758282', 'kftipon23@gmail.com', 2000, 'College of Computer Studies', 'Bachelor of Science in Information Technology', 'Best in Visual Graphics,Best in Java Programming,Academic Awardee,Leadership Awardee,Sports Awardee,Loyalty Awardee,', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Application Programmer Analyst, Joe Riley & Associates Inc.', NULL, 'No', 'No', NULL, 'Yes', 'IT Courses', 4, 4, 3, 4, 3, 4, 4, 4, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (5, 'Vincent Von Niño', 'Besana', 'Dapiton', 'Male', 'Single', '1996-08-30', 'Fuentes Subd., Roxas City', '6209586', '09384859629', 'vondapiton@gmail.com', 2014, 'College of Computer Studies', 'Bachelor of Science in Information Technology', 'Best in Visual Graphics,Best in Java Programming,Socio-Cultural Awardee,Best in Research Paper', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Hardware & Software Technician, Clipdata Computer Center', NULL, 'Yes', 'No', 'Related to my profession', 'Yes', 'IT Courses', 4, 4, 4, 4, 3, 4, 3, 3, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (6, 'Mechelyn', 'Alarcon', 'Villanueva', 'Female', 'Single', '1996-05-20', NULL, NULL, '09477575728', NULL, 2015, 'College of Computer Studies', 'Bachelor of Science in Computer Science', '', NULL, 'Bachelor\'s Degree', 'No', NULL, NULL, NULL, 'No', 'No', NULL, 'Yes', 'IT Courses', 4, 4, 3, 4, 3, 3, 3, 3, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (7, 'Jovelyn', 'Miranda', 'Demausa', 'Female', 'Single', '1997-02-08', 'Maayon, Capiz', '6209484', '09475968274', 'jovelyn@yahoo.com', 2011, 'College of Computer Studies', 'Bachelor of Science in Computer Science', '', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Associate Software Engineer, BigO', NULL, 'No', 'Yes', 'Related to my profession', 'Yes', 'IT Courses', 4, 4, 4, 4, 4, 3, 4, 4, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (8, 'Crystal Mae', 'Deita', 'Contreras', 'Female', 'Single', '1997-01-13', 'Brgy. Bolo, Roxas City', '6204848', '09384857291', 'crystal@yahoo.com', 2009, 'College of Computer Studies', 'Bachelor of Science in Computer Science', '', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Call Center Agent, BPO', NULL, 'No', 'No', NULL, 'Yes', 'Internship', 4, 4, 4, 3, 3, 3, 3, 4, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (9, 'Ronn Daniel', 'Bargo', 'Delos Santos', 'Male', 'Single', '1995-07-10', 'Pilar, Capiz', NULL, '09487227572', 'ronn@yahoo.com', 2013, 'College of Computer Studies', 'Bachelor of Science in Computer Science', '', NULL, 'Bachelor\'s Degree', 'No', NULL, NULL, NULL, 'No', 'No', NULL, 'No', NULL, 4, 3, 3, 3, 3, 3, 3, 3, 'No', '', 'IT Skills', 'No', 2) ; 
INSERT INTO `tblalumni` VALUES (10, 'Gizylle Ann', 'Manong', 'Lago', 'Female', 'Single', '1997-05-10', 'Sigma, Capiz', '6204848', '09475729492', 'giz@yahoo.com', 2012, 'College of Computer Studies', 'Associate in Computer Science', 'Academic Awardee,Sports Awardee,Socio-Cultural Awardee,', NULL, 'Bachelor\'s Degree', 'Yes', 'Probationary', 'Sales Manager, KFC', NULL, 'No', 'No', NULL, 'Yes', 'Occupational Skills/Practical Exercises', 4, 4, 3, 4, 3, 3, 4, 4, 'Yes', '', 'Occupational Skill', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (11, 'Rejane', 'Bolivar', 'Asignacion', 'Female', 'Single', '1996-11-22', 'Balasan, Iloilo', '6209494', '09471827382', 'jane@yahoo.com', 2011, 'College of Computer Studies', 'Associate in Computer Science', 'Academic Awardee,Sports Awardee,Socio-Cultural Awardee,', NULL, 'Bachelor\'s Degree', 'Yes', 'Contractual', 'Data Encoder, R&J Enterprise', NULL, 'No', 'No', NULL, 'Yes', 'IT Courses', 4, 3, 3, 3, 4, 3, 2, 3, 'Yes', '', 'Occupational Skill', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (12, 'Kay', 'Acedre', 'Destor', 'Male', 'Single', '1992-01-19', 'Estancia, Iloilo', '6204094', '09184726374', 'kdestor@cloud.com', 2012, 'College of Computer Studies', 'Associate in Computer Science', '', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Technician, Oxord Computer Solutions', NULL, 'No', 'No', NULL, 'No', NULL, 3, 2, 2, 2, 3, 2, 2, 3, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (13, 'Ma. Almira', 'Caldeo', 'Lim', 'Female', 'Single', '1997-03-10', 'Brgy. Bolo, Roxas City', '6208492', '09104857242', 'mal@yahoo.com', 2011, 'College of Computer Studies', 'Bachelor of Science in Information Technology', 'Best in Visual Graphics,Best in Java Programming,Academic Awardee,Leadership Awardee,Sports Awardee,Model Student,', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Dean, FCU-CCS', NULL, 'Yes', 'Yes', 'Related to my profession', 'Yes', 'IT Courses', 5, 4, 5, 4, 5, 5, 5, 4, 'Yes', '', 'Occupational Skill', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (14, 'Juan', 'Dela', 'Cruz', 'Male', 'Single', '2000-01-01', 'Roxas City', '6204849', '09464727372', 'juan@yahoo.com', 2008, 'College of Computer Studies', 'Bachelor of Science in Computer Science', 'Loyalty Awardee,', 'CHED, WSPO', 'Bachelor\'s Degree', 'Yes', 'Contractual', 'Data Encoder', NULL, 'Yes', 'No', NULL, 'Yes', 'IT Courses', 3, 3, 4, 3, 3, 4, 4, 4, 'Yes', '', 'Occupational Skill', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (15, 'Shelalane', 'Buendia', 'Bayhon', 'Female', 'Single', '1995-11-14', 'Burgos, Ilawod, Roxas City', '6204849', '09479382749', 'she@yahoo.com', 2016, 'College of Computer Studies', 'Bachelor of Science in Computer Science', 'Best in Visual Graphics, Best in Java Programming, Academic Awardee, Leadership Awardee, Sports Awardee, Socio-Cultural Awardee, Loyalty Awardee, Model Student, ', NULL, 'Bachelor\'s Degree', 'Yes', 'Others', 'Teacher', NULL, 'No', 'Yes', 'Related to my profession', 'No', NULL, 3, 3, 4, 4, 3, 4, 3, 3, 'Yes', '', 'Personal Connection', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (16, 'Lyndon Carl', 'Laraño', 'Alarba', 'Male', 'Single', '1996-10-01', 'Brgy. X, Roxas City', '6204848', '09463784950', 'lca@gmail.com', 2013, 'College of Computer Studies', 'Bachelor of Science in Information Technology', 'Best in Visual Graphics, Best in Java Programming, Academic Awardee, Socio-Cultural Awardee, Loyalty Awardee, ', NULL, 'Bachelor\'s Degree', 'Yes', 'Contractual', 'Part time employee, KFC', NULL, 'No', 'No', NULL, 'No', NULL, 3, 5, 4, 3, 4, 4, 3, 3, 'No', '', 'Work Experience', 'No', 2) ; 
INSERT INTO `tblalumni` VALUES (17, 'Angelicka', 'Adriguez', 'Mercado', 'Female', 'Single', '1996-01-18', 'Nasagud,Roxas City', NULL, NULL, 'angelicka.m@yahoo.com', 2011, 'College of Computer Studies', 'Bachelor of Science in Information Technology', 'Best in Visual Graphics, Best in Java Programming, ', NULL, 'Bachelor\'s Degree', 'Yes', 'Regular', 'Application Developer', NULL, 'Yes', 'Yes', 'Related to my profession', 'No', NULL, 4, 3, 3, 4, 4, 4, 3, 3, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (18, 'Rick Austin', 'Raz', 'Balasa', 'Male', 'Single', '1996-12-28', 'Roxas City', '62048484', '09494938382', 'rick@yahoo.com', 1995, 'College of Computer Studies', 'Bachelor of Science in Computer Science', '', NULL, 'Bachelor\'s Degree', 'Yes', 'Probationary', 'CEO, RazTech, Inc.', NULL, 'Yes', 'Yes', 'To obtain other professional skills', 'No', NULL, 4, 3, 4, 3, 4, 4, 4, 4, 'Yes', '', 'IT Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (19, 'Jarvin Jay', 'Cervales', 'Bibiano', 'Male', 'Single', '1996-05-17', '3434343', '4343343', '09384757571', 'asdsa@yahoo.com', 1996, 'College of Computer Studies', 'Associate in Computer Science', 'Best in Visual Graphics, Best in Java Programming, Leadership Awardee, Socio-Cultural Awardee, ', NULL, 'Bachelor\'s Degree', 'Yes', 'Probationary', NULL, NULL, 'No', 'Yes', 'To obtain other professional skills', 'No', 'Language Courses', 3, 4, 4, 3, 4, 4, 4, 3, 'Yes', '', 'Language Skills', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (20, 'Jonah', 'Palomar', 'Gafate', 'Female', 'Married', '1973-06-13', 'Roxas City', '09107534422', '09107534422', 'jonahgafate2003@gmail.com', 2001, 'College of Computer Studies', 'Bachelor of Science in Computer Science', 'Sports Awardee, ', NULL, 'Master\'s Degree', 'Yes', 'Regular', 'Teacher-FCU', NULL, 'Yes', 'Yes', 'Related to my profession', 'Yes', 'Occupational Skills/Practical Exercises', 5, 5, 5, 5, 5, 5, 5, 5, 'Yes', '', 'Work Experience', 'Yes', 2) ; 
INSERT INTO `tblalumni` VALUES (21, 'Rommel', 'Berino', 'Sario', 'Male', 'Married', '1976-11-03', 'Culasi, Roxas City', '5224952', '09399234507', 'rommelsario.fcu@gmail.com', 1997, 'College of Computer Studies', 'Bachelor of Science in Computer Science', 'Academic Awardee, Leadership Awardee, Model Student, Best in Thesis Presentation', 'Academic Scholar', 'Master\'s Degree', 'Yes', 'Regular', 'Faculty, Filamer Christian University', NULL, 'Yes', 'Yes', 'Related to my profession', 'Yes', 'IT Courses', 5, 4, 4, 4, 4, 4, 4, 5, 'Yes', '', 'IT Skills', 'Yes', 2) ;
#
# End of data contents of table tblalumni
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Thursday 9. March 2017 02:03 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------


#
# Delete any existing table `tblalumni_list_all`
#

DROP TABLE IF EXISTS `tblalumni_list_all`;


#
# Table structure of table `tblalumni_list_all`
#

CREATE TABLE `tblalumni_list_all` (
  `alumni_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(150) DEFAULT NULL,
  `mname` varchar(150) DEFAULT NULL,
  `lname` varchar(150) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `yeargrad` int(25) DEFAULT NULL,
  `course` varchar(180) DEFAULT NULL,
  `department` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`alumni_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalumni_list_all (23 records)
#
 
INSERT INTO `tblalumni_list_all` VALUES (1, 'Louchin Var ', 'Carias', 'Cejar', '1996-08-23', 2016, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (2, 'Keith Francis', 'Falco', 'Tipon', '1996-07-23', 2000, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (5, 'Mechelyn', 'Alarcon', 'Villanueva', '1996-05-20', 2015, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (6, 'Jovelyn', 'Miranda', 'Demausa', '1997-02-08', 2011, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (7, 'Crystal Mae', 'Deita', 'Contreras', '1997-01-13', 2009, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (8, 'Vincent Von Niño', 'Besana', 'Dapiton', '1996-08-30', 2014, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (9, 'Ronn Daniel', 'Bargo', 'Delos Santos', '1995-07-10', 2013, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (10, 'Gizylle Ann', 'Manong', 'Lago', '1997-05-10', 2012, 'Associate in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (11, 'Rejane', 'Bolivar', 'Asignacion', '1996-11-22', 2011, 'Associate in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (12, 'Kay', 'Acedre', 'Destor', '1992-01-19', 2012, 'Associate in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (13, 'Ma. Almira', 'Caldeo', 'Lim', '1997-03-10', 2011, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (15, 'Jonah  ', 'Palomar', 'Gafate', '1973-06-13', 2001, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (16, 'Rommel', 'Berino', 'Sario', '1976-11-03', 1997, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (17, 'Mylene', 'Reyes', 'Chu', '1975-11-18', 1997, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'unregistered') ; 
INSERT INTO `tblalumni_list_all` VALUES (18, 'Juan', 'Dela', 'Cruz', '2000-01-01', 2008, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (19, 'Shelalane ', 'Buendia', 'Bayhon', '1995-11-14', 2016, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (20, 'Lyndon Carl', 'Laraño', 'Alarba', '1996-10-01', 2013, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (21, 'Rick Austin', 'Raz', 'Balasa', '1996-12-28', 1995, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (22, 'Jarvin Jay', 'Cervales', 'Bibiano', '1996-05-17', 1996, 'Associate in Computer Science', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (23, 'Joana Joyce', 'Blanco', 'Bofill', '1996-11-17', 2007, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'Unregistered') ; 
INSERT INTO `tblalumni_list_all` VALUES (24, 'Lorraine Rose', 'Marquez', 'Dunton', '1995-10-10', 2016, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'Unregistered') ; 
INSERT INTO `tblalumni_list_all` VALUES (25, 'Angelicka ', 'Adriguez', 'Mercado', '1996-01-18', 2011, 'Bachelor of Science in Information Technology', 'College of Computer Studies', 'registered') ; 
INSERT INTO `tblalumni_list_all` VALUES (26, 'Peter ', 'John', 'Legaste', '1998-01-01', 2007, 'Bachelor of Science in Computer Science', 'College of Computer Studies', 'Unregistered') ;
#
# End of data contents of table tblalumni_list_all
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Thursday 9. March 2017 02:03 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------


#
# Delete any existing table `tblalumni_past_o`
#

DROP TABLE IF EXISTS `tblalumni_past_o`;


#
# Table structure of table `tblalumni_past_o`
#

CREATE TABLE `tblalumni_past_o` (
  `past_id` int(11) NOT NULL AUTO_INCREMENT,
  `pastoccu` varchar(100) NOT NULL,
  `alum_id` int(100) NOT NULL,
  PRIMARY KEY (`past_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblalumni_past_o (1 records)
#
 
INSERT INTO `tblalumni_past_o` VALUES (1, 'Security Guard', 4) ;
#
# End of data contents of table tblalumni_past_o
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Thursday 9. March 2017 02:03 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------


#
# Delete any existing table `tblfeatured`
#

DROP TABLE IF EXISTS `tblfeatured`;


#
# Table structure of table `tblfeatured`
#

CREATE TABLE `tblfeatured` (
  `id_alum` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `course` varchar(50) NOT NULL,
  `yeargrad` varchar(50) NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `image1` varchar(255) NOT NULL,
  `description` text,
  `description2` text,
  PRIMARY KEY (`id_alum`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblfeatured (2 records)
#
 
INSERT INTO `tblfeatured` VALUES (41, 'Pedro De Juan', 'Bachelor of Science in Information Technology', '1995', 'CEO-Tipon Industries', 'keith.JPG', 'Life saver. Risk-taker. True friend. Brilliant leader. These are just some words used by people to describe him. He is our featured alumnus of the week. He is not only one of Filamer Christian University\'s distinguished alumnus, but also, one of the pillars of the institution. He is Pedro De Juan.', '') ; 
INSERT INTO `tblfeatured` VALUES (42, 'Juan Dela Cruz', 'Bachelor of Science in Computer Science', '1995', 'Web Developer - Spring Valley, PDP', '13692287_1237455086288410_1089362291_o.jpg', 'He rose as one of the best programmer. He is our featured alumnus. He is Juan Dela Cruz\\r\\n\\r\\nMr. Dela Cruz was born and raised at Hipona, Pontevedra, Capiz, by his parents, Mr. Mamerto Aposin (deceased) and Mrs. Gloria Aposin. He has finished his elementary and secondary education also at his hometown. He then proceeded to Filamer Christian College (now Filamer Christian University) and took up Bachelor of Science in College of Computer Studies. Halfway through his college, his father died; and being the eldest and the only son in the family, he has to find ways to sustain and finish his college education. He became a work student and was assigned at the snack counter of the high school IGP. While doing his chores at the high school canteen, he learned the value of service and discipline. In his speech delivered before Filamerians two years ago, he recalled his experiences during those times. Here is an excerpt:', '\\"It’s not enough that we know what we wanted.  We must pursue it with patience and persistence.  In other words, don’t give up easily.  It wasn’t easy to be assigned in the canteen.  I had to balance work and studies, especially so because the work in the canteen was mostly during the day.  It required discipline and being organized.  At 6 am, we had to open the canteen and my first task was to clean the whole area inside and outside.  Filling the cooler with bottles of soft drinks follows next, and so on.  It’s here where I learned to wash piles and piles of dishes in a systematic manner.  I applied the same discipline when I worked as a professional.  Things are not earned the easy way.  Success is sweeter when attained through hard work and perseverance,\\" Mr. Dela Cruz emphasized.  ') ;
#
# End of data contents of table tblfeatured
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Thursday 9. March 2017 02:03 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------


#
# Delete any existing table `tbljoba`
#

DROP TABLE IF EXISTS `tbljoba`;


#
# Table structure of table `tbljoba`
#

CREATE TABLE `tbljoba` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(50) NOT NULL,
  `job_desc` varchar(255) NOT NULL,
  `job_qualifications` varchar(255) NOT NULL,
  `cont_name` varchar(50) NOT NULL,
  `contact_info` varchar(59) NOT NULL,
  `employer_email` varchar(100) NOT NULL,
  `date_submitted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `job_status` varchar(100) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tbljoba (2 records)
#
 
INSERT INTO `tbljoba` VALUES (24, 'Software Developer', 'To develop software...', 'BSCS/BSIT Graduate
', 'Von', '312236', 'von@yahoo.com', 2017-03-06 14:40:35, 'approved') ; 
INSERT INTO `tbljoba` VALUES (25, 'System Programmer', 'To program. ...', 'BSIT/BSCS graduate
20-25yrs old', 'Keith', '091473374783', 'kft@yahoo.com', 2017-03-09 08:48:39, 'approved') ;
#
# End of data contents of table tbljoba
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Thursday 9. March 2017 02:03 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblmessages`
# --------------------------------------------------------


#
# Delete any existing table `tblmessages`
#

DROP TABLE IF EXISTS `tblmessages`;


#
# Table structure of table `tblmessages`
#

CREATE TABLE `tblmessages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email_ad` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `date_submitted` datetime NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblmessages (5 records)
#
 
INSERT INTO `tblmessages` VALUES (10, 'una', 'ads@yahoo.com', 'unadapat', 'nako nako
', '2017-02-12 17:15:23') ; 
INSERT INTO `tblmessages` VALUES (14, 'Mylene ', 'mylene@yahoo.com', 'Inquiry about alumni homecoming 2k17', 'I would like to know if there is payment to attend in the alumni, ...', '2017-02-23 16:32:40') ; 
INSERT INTO `tblmessages` VALUES (24, 'Louchin', 'cejarlouchin@yahoo.com', 'THESIS', 'march 9 ,2017', '2017-03-09 08:46:26') ; 
INSERT INTO `tblmessages` VALUES (25, 'CLAESSAN JOHN HERRERA', 'cjoh.cjh@gmail.com', 'complaint', 'ayos', '2017-03-09 08:46:39') ; 
INSERT INTO `tblmessages` VALUES (27, NULL, NULL, NULL, NULL, '2017-03-09 09:01:08') ;
#
# End of data contents of table tblmessages
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Thursday 9. March 2017 02:03 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblmessages`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblphotos`
# --------------------------------------------------------


#
# Delete any existing table `tblphotos`
#

DROP TABLE IF EXISTS `tblphotos`;


#
# Table structure of table `tblphotos`
#

CREATE TABLE `tblphotos` (
  `img_id` int(155) NOT NULL AUTO_INCREMENT,
  `imageName` varchar(255) NOT NULL,
  `imageSize` int(155) NOT NULL,
  `imageType` varchar(255) NOT NULL,
  `album_id` int(11) NOT NULL,
  `imageDesc` varchar(255) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblphotos (103 records)
#
 
INSERT INTO `tblphotos` VALUES (11, 'IMG_2703.JPG', 8321653, 'image/jpeg', 40, '') ; 
INSERT INTO `tblphotos` VALUES (12, 'IMG_2700.JPG', 8306760, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (14, 'IMG_2702.JPG', 8184189, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (15, 'IMG_2703.JPG', 8321653, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (16, 'IMG_2704.JPG', 7574419, 'image/jpeg', 45, '') ; 
INSERT INTO `tblphotos` VALUES (17, '16996415_1253367861385165_3559347221526378383_n.jpg', 83951, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (18, '16997827_1253317188056899_2075271930102134696_n.jpg', 78430, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (19, '16997875_1253307431391208_5966908654291832465_n.jpg', 83364, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (20, '16998054_1253380761383875_7517102865004703770_n.jpg', 94878, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (21, '16998731_1253241884731096_537775372261670183_n.jpg', 63360, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (22, '16998765_1253309341391017_3381775148397839145_n.jpg', 76976, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (23, '16998859_1253250164730268_8389928518291112420_n.jpg', 63298, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (24, '16998918_1253323074722977_6392809316828028826_n.jpg', 85043, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (25, '16998956_1253419928046625_4179195577923724710_n.jpg', 85410, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (26, '16998973_1253381798050438_4909427074680216738_n.jpg', 84382, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (27, '16999114_1253363068052311_1025423555609257552_n.jpg', 84038, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (29, '16999164_1253319111390040_8967456363723339657_n.jpg', 90501, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (30, '17022478_1253420978046520_2185910032814609742_n.jpg', 90500, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (31, '17038949_1253627364692548_5839970018029220171_o.jpg', 64190, 'image/jpeg', 37, '') ; 
INSERT INTO `tblphotos` VALUES (32, '16996415_1253367861385165_3559347221526378383_n.jpg', 83951, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (33, '16997827_1253317188056899_2075271930102134696_n.jpg', 78430, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (34, '16997875_1253307431391208_5966908654291832465_n.jpg', 83364, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (35, '16998054_1253380761383875_7517102865004703770_n.jpg', 94878, 'image/jpeg', 49, '') ; 
INSERT INTO `tblphotos` VALUES (37, 'IMG_2694.JPG', 6389066, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (38, 'IMG_2696.JPG', 6948367, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (39, 'IMG_3039.JPG', 8568824, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (40, 'IMG_3040.JPG', 8281276, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (41, 'IMG_3041.JPG', 8298307, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (42, 'IMG_3042.JPG', 8338054, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (43, 'IMG_3043.JPG', 8640048, 'image/jpeg', 50, '') ; 
INSERT INTO `tblphotos` VALUES (45, 'IMG_2774.JPG', 7092716, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (46, 'IMG_2775.JPG', 7802569, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (47, 'IMG_2776.JPG', 7729597, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (48, 'IMG_2709.JPG', 5892455, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (49, 'IMG_2710.JPG', 5777665, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (50, 'IMG_2711.JPG', 6207374, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (51, 'IMG_2712.JPG', 5928738, 'image/jpeg', 51, '') ; 
INSERT INTO `tblphotos` VALUES (52, '1919667_1535821483324603_3478804027487844867_n.jpg', 112638, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (53, '10470217_1535822103324541_8238189314622385250_n.jpg', 75127, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (54, '10484453_1535821989991219_185204077361580387_n.jpg', 75009, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (55, '10522562_1535824439990974_4659093066038996293_n.jpg', 52671, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (56, '10522740_1535823879991030_5235440974718372536_n.jpg', 66203, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (57, '10552421_1535824526657632_4966710352566300388_n.jpg', 53806, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (58, '10592884_1535826159990802_2541807082154070224_n.jpg', 55112, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (59, '10599148_1535823623324389_5221626145593851260_n.jpg', 75337, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (60, '10600448_1535826813324070_4561644053630171117_n.jpg', 54004, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (61, '10609429_1535823786657706_1460926624241777806_n.jpg', 66419, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (62, '10616426_1535821389991279_4731135657810136253_n.jpg', 114487, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (63, '10624668_1535824579990960_5492240051139506062_n.jpg', 44418, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (64, '10624875_1535821566657928_1831457406540841022_n.jpg', 99823, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (65, '10636224_1535823919991026_2789471216018698126_n.jpg', 74416, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (66, '10645300_1535826826657402_7238266664535772314_n.jpg', 53478, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (67, '10649541_1535827399990678_739189734424669042_n.jpg', 65335, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (68, '10649915_1535822139991204_5070190516810323131_n.jpg', 76965, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (69, '10659293_1535823603324391_2683060096111844952_n.jpg', 69455, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (70, '10659312_1535823906657694_7533136432494065291_n.jpg', 73078, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (71, '10665270_1535823796657705_7270603778234038203_n.jpg', 60770, 'image/jpeg', 52, '') ; 
INSERT INTO `tblphotos` VALUES (73, '14089119_1816298848610197_3174129525997231880_n (1).jpg', 100431, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (74, '14089119_1816298848610197_3174129525997231880_n.jpg', 100431, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (75, '14089241_1816326731940742_8251488098930284653_n.jpg', 77512, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (76, '14095720_1816305698609512_1511540433019436464_n.jpg', 68623, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (77, '14095727_1816333161940099_2510901256329504067_n.jpg', 88641, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (78, '14095739_1816315061941909_5060829540373758783_n.jpg', 79042, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (79, '14095758_1816335205273228_2032270567205798722_n.jpg', 98780, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (80, '14095971_1816317808608301_8480675797626370791_n.jpg', 103083, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (82, '14100288_1816307215276027_2583955776892275849_n.jpg', 59977, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (83, '14100376_1816303345276414_2407749182463236207_n.jpg', 59638, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (84, '14100406_1816300185276730_1820716075829742090_n.jpg', 89444, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (85, '14100411_1816313095275439_2593092048527452925_n.jpg', 84797, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (86, '14100471_1816335845273164_3101728423709562402_n.jpg', 99400, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (87, '14100487_1816314238608658_6576385800778301420_n.jpg', 96841, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (88, '14100525_1816329645273784_3170118605400444899_n.jpg', 79468, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (89, '14102209_1816313581942057_636850634282556374_n.jpg', 85748, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (90, '14102319_1816335705273178_2163227438990623951_n.jpg', 74961, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (91, '14102388_1816302771943138_6469689189620358632_n.jpg', 77089, 'image/jpeg', 53, '') ; 
INSERT INTO `tblphotos` VALUES (92, 'batch_feat.png', 596727, 'image/png', 54, '') ; 
INSERT INTO `tblphotos` VALUES (93, '14079826_1816299665276782_653093244729483734_n.jpg', 78549, 'image/jpeg', 56, '') ; 
INSERT INTO `tblphotos` VALUES (94, '14079919_1816310728609009_3139588896720939693_n.jpg', 56688, 'image/jpeg', 56, '') ; 
INSERT INTO `tblphotos` VALUES (95, '14088465_1816315548608527_5898912246416848053_n.jpg', 76978, 'image/jpeg', 56, '') ; 
INSERT INTO `tblphotos` VALUES (96, '14089081_1816328955273853_1085810422469769552_n.jpg', 84924, 'image/jpeg', 56, '') ; 
INSERT INTO `tblphotos` VALUES (99, '10484453_1535821989991219_185204077361580387_n.jpg', 75009, 'image/jpeg', 57, '') ; 
INSERT INTO `tblphotos` VALUES (100, '10522562_1535824439990974_4659093066038996293_n.jpg', 52671, 'image/jpeg', 57, '') ; 
INSERT INTO `tblphotos` VALUES (101, '10522740_1535823879991030_5235440974718372536_n.jpg', 66203, 'image/jpeg', 57, '') ; 
INSERT INTO `tblphotos` VALUES (102, '10552421_1535824526657632_4966710352566300388_n.jpg', 53806, 'image/jpeg', 57, '') ; 
INSERT INTO `tblphotos` VALUES (103, '10592884_1535826159990802_2541807082154070224_n.jpg', 55112, 'image/jpeg', 57, '') ; 
INSERT INTO `tblphotos` VALUES (104, '10599148_1535823623324389_5221626145593851260_n.jpg', 75337, 'image/jpeg', 57, '') ; 
INSERT INTO `tblphotos` VALUES (105, '10600448_1535826813324070_4561644053630171117_n.jpg', 54004, 'image/jpeg', 57, '') ; 
INSERT INTO `tblphotos` VALUES (106, '10609429_1535823786657706_1460926624241777806_n.jpg', 66419, 'image/jpeg', 57, '') ; 
INSERT INTO `tblphotos` VALUES (107, '10616426_1535821389991279_4731135657810136253_n.jpg', 114487, 'image/jpeg', 57, '') ; 
INSERT INTO `tblphotos` VALUES (108, '10624668_1535824579990960_5492240051139506062_n.jpg', 44418, 'image/jpeg', 57, '') ; 
INSERT INTO `tblphotos` VALUES (109, '1919667_1535821483324603_3478804027487844867_n.jpg', 112638, 'image/jpeg', 57, '') ; 
INSERT INTO `tblphotos` VALUES (110, '10470217_1535822103324541_8238189314622385250_n.jpg', 75127, 'image/jpeg', 57, '') ; 
INSERT INTO `tblphotos` VALUES (111, '10484453_1535821989991219_185204077361580387_n.jpg', 75009, 'image/jpeg', 57, '') ; 
INSERT INTO `tblphotos` VALUES (112, '10522562_1535824439990974_4659093066038996293_n.jpg', 52671, 'image/jpeg', 57, '') ; 
INSERT INTO `tblphotos` VALUES (113, '10522740_1535823879991030_5235440974718372536_n.jpg', 66203, 'image/jpeg', 57, '') ; 
INSERT INTO `tblphotos` VALUES (114, 'Chrysanthemum.jpg', 879394, 'image/jpeg', 58, '') ; 
INSERT INTO `tblphotos` VALUES (115, 'Desert.jpg', 845941, 'image/jpeg', 58, '') ; 
INSERT INTO `tblphotos` VALUES (116, 'Hydrangeas.jpg', 595284, 'image/jpeg', 58, '') ; 
INSERT INTO `tblphotos` VALUES (117, 'Jellyfish.jpg', 775702, 'image/jpeg', 58, '') ; 
INSERT INTO `tblphotos` VALUES (118, 'Koala.jpg', 780831, 'image/jpeg', 58, '') ; 
INSERT INTO `tblphotos` VALUES (119, 'Lighthouse.jpg', 561276, 'image/jpeg', 58, '') ; 
INSERT INTO `tblphotos` VALUES (120, 'Penguins.jpg', 777835, 'image/jpeg', 58, '') ; 
INSERT INTO `tblphotos` VALUES (121, 'Tulips.jpg', 620888, 'image/jpeg', 58, '') ;
#
# End of data contents of table tblphotos
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Thursday 9. March 2017 02:03 CET
# Hostname: localhost
# Database: `alumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblact`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalbums`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalum_photos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_list_all`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblalumni_past_o`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfeatured`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbljoba`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblmessages`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblphotos`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblusers`
# --------------------------------------------------------


#
# Delete any existing table `tblusers`
#

DROP TABLE IF EXISTS `tblusers`;


#
# Table structure of table `tblusers`
#

CREATE TABLE `tblusers` (
  `id_no` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `account_stat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_no`),
  UNIQUE KEY `id_no` (`id_no`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblusers (5 records)
#
 
INSERT INTO `tblusers` VALUES (20, 'admin', 'admin', 'admin', 'Administrator') ; 
INSERT INTO `tblusers` VALUES (21, 'MILO', 'milo', 'milo', 'Administrator') ; 
INSERT INTO `tblusers` VALUES (22, 'Keith', 'keith', 'tipon', 'Administrator') ; 
INSERT INTO `tblusers` VALUES (24, 'User', 'user', 'user', 'Administrator') ; 
INSERT INTO `tblusers` VALUES (25, 'Louchin', 'louch', 'louch', 'Administrator') ;
#
# End of data contents of table tblusers
# --------------------------------------------------------

