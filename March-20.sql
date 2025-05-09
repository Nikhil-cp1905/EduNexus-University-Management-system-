-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: univ_srm
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `srm_attendance`
--

DROP TABLE IF EXISTS `srm_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srm_attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int unsigned NOT NULL,
  `class_id` int NOT NULL,
  `section_id` int NOT NULL,
  `attendance_status` int NOT NULL,
  `attendance_date` varchar(255) NOT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srm_attendance`
--

LOCK TABLES `srm_attendance` WRITE;
/*!40000 ALTER TABLE `srm_attendance` DISABLE KEYS */;
INSERT INTO `srm_attendance` VALUES (1,1,1,1,1,'2023-01-01'),(2,2,2,2,1,'2023-01-01'),(3,3,3,3,0,'2023-01-01'),(4,4,4,4,1,'2023-01-01'),(5,5,5,5,1,'2023-01-01'),(6,6,1,1,0,'2023-01-02'),(7,7,2,2,1,'2023-01-02'),(8,8,3,3,1,'2023-01-02'),(9,9,4,4,0,'2023-01-02'),(10,10,5,5,1,'2023-01-02'),(11,11,1,1,1,'2023-01-03'),(12,12,2,2,0,'2023-01-03'),(13,13,3,3,1,'2023-01-03'),(14,14,4,4,1,'2023-01-03'),(15,15,5,5,0,'2023-01-03'),(16,16,1,1,1,'2023-01-04'),(17,1,2,2,1,'2023-01-04'),(18,2,3,3,0,'2023-01-04'),(19,3,4,4,1,'2023-01-04'),(20,4,5,5,1,'2023-01-04'),(21,5,1,1,0,'2023-01-05'),(22,6,2,2,1,'2023-01-05'),(23,7,3,3,1,'2023-01-05'),(24,8,4,4,0,'2023-01-05'),(25,9,5,5,1,'2023-01-05');
/*!40000 ALTER TABLE `srm_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srm_circular`
--

DROP TABLE IF EXISTS `srm_circular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srm_circular` (
  `circular_id` int NOT NULL AUTO_INCREMENT,
  `topic` varchar(200) NOT NULL,
  `circular_date` date DEFAULT NULL,
  PRIMARY KEY (`circular_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srm_circular`
--

LOCK TABLES `srm_circular` WRITE;
/*!40000 ALTER TABLE `srm_circular` DISABLE KEYS */;
INSERT INTO `srm_circular` VALUES (2,'The university library will be closed on March 20, 2025, for maintenance. Please plan your visits accordingly.','2025-03-18'),(3,'The Annual Sports Day will be held on March 28, 2025. All students are encouraged to participate in various events.','2025-03-18'),(4,'There will be a faculty meeting on March 22, 2025, at 10:00 AM in the seminar hall. All faculty members must attend.','2025-03-18'),(5,'New student orientation for the incoming batch will take place on April 1, 2025, at 9:00 AM in the main auditorium.','2025-03-18'),(6,'The university will remain closed on March 25, 2025, due to the national public holiday. Please plan accordingly.','2025-03-18'),(7,'Admissions for the 2025-2026 academic year are now open. Apply through the university portal before April 15, 2025.','2025-03-18'),(8,'A workshop on Research Paper Writing will be conducted on April 10, 2025. All postgraduate students are invited to attend.','2025-03-18'),(9,'The University Cultural Festival is scheduled for April 5-7, 2025. Join us for performances, food, and fun! Registration for events is open now.','2025-03-18'),(10,'All students and faculty members are reminded to follow the health and safety guidelines issued by the university. Masks are required in all indoor spaces.','2025-03-18'),(11,'The university is now accepting applications for research grants for the 2025 academic year. Submit your applications by April 20, 2025.','2025-03-18'),(12,'The University Career Fair will take place on April 12, 2025. Various companies will be recruiting students from multiple disciplines. Register on the portal.','2025-03-18'),(13,'A guest lecture on \"Climate Change and Sustainable Solutions\" will be held on March 30, 2025, at 2:00 PM in the university auditorium.','2025-03-18'),(14,'Student elections for the university clubs will be held on April 3, 2025. Nomination forms are available at the student affairs office.','2025-03-18'),(15,'All students are reminded to pay their examination fees by March 30, 2025. Late payments will incur a penalty.','2025-03-18');
/*!40000 ALTER TABLE `srm_circular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srm_classes`
--

DROP TABLE IF EXISTS `srm_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srm_classes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `section` varchar(255) NOT NULL,
  `teacher_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srm_classes`
--

LOCK TABLES `srm_classes` WRITE;
/*!40000 ALTER TABLE `srm_classes` DISABLE KEYS */;
INSERT INTO `srm_classes` VALUES (1,'Class 1','1',1),(2,'Class 2','A2',2),(3,'Class 3','B1',3),(4,'Class 4','B2',4),(5,'Class 5','C1',5),(6,'Class 6','C2',6),(7,'Class 7','D1',7),(8,'Class 8','D2',8),(9,'Class 9','E1',9),(10,'Class 10','E2',10),(11,'Class 11','F1',11),(12,'Class 12','F2',12),(13,'Class 13','G1',13),(14,'Class 14','G2',14),(15,'Class 15','H1',15),(16,'Class 16','H2',16),(17,'Class 17','I1',17),(18,'Class 18','I2',18),(19,'Class 19','J1',19),(20,'Class 20','J2',20),(21,'Class 21','K1',21),(22,'Class 22','K2',22),(23,'Class 23','L1',23),(24,'Class 24','L2',24),(25,'Class 25','M1',25);
/*!40000 ALTER TABLE `srm_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srm_courses`
--

DROP TABLE IF EXISTS `srm_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srm_courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) NOT NULL,
  `department_id` int NOT NULL,
  `credits` int NOT NULL,
  `duration` varchar(50) NOT NULL,
  PRIMARY KEY (`course_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `srm_courses_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `srm_departments` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srm_courses`
--

LOCK TABLES `srm_courses` WRITE;
/*!40000 ALTER TABLE `srm_courses` DISABLE KEYS */;
INSERT INTO `srm_courses` VALUES (1,'Mathematics 101',1,4,'1 year'),(2,'Science 101',2,4,'1 year'),(3,'English 101',3,4,'1 year'),(4,'History 101',4,4,'1 year'),(5,'Geography 101',5,4,'1 year'),(6,'Physics 101',6,4,'1 year'),(7,'Chemistry 101',7,4,'1 year'),(8,'Biology 101',8,4,'1 year'),(9,'Computer Science 101',9,4,'1 year'),(10,'Economics 101',10,4,'1 year'),(11,'Political Science 101',11,4,'1 year'),(12,'Psychology 101',12,4,'1 year'),(13,'Sociology 101',13,4,'1 year'),(14,'Philosophy 101',14,4,'1 year'),(15,'Statistics 101',15,4,'1 year'),(16,'Linguistics 101',16,4,'1 year'),(17,'Anthropology 101',17,4,'1 year'),(18,'Environmental Science 101',18,4,'1 year'),(19,'Business Administration 101',19,4,'1 year'),(20,'Law 101',20,4,'1 year'),(21,'Journalism 101',21,4,'1 year'),(22,'Mass Communication 101',22,4,'1 year'),(23,'Fine Arts 101',23,4,'1 year'),(24,'Performing Arts 101',24,4,'1 year'),(25,'Education 101',25,4,'1 year'),(26,'Advanced Data Structures',26,3,'1 Year'),(27,'Machine Learning Applications',27,5,'1 Year'),(28,'Artificial Intelligence & Robotics',28,2,'1 Year'),(29,'Big Data & Cloud Computing',29,3,'1 Year'),(30,'Blockchain and Cryptocurrency',30,5,'1 Year'),(31,'Cybersecurity Fundamentals',31,2,'1 Year'),(32,'Cloud Security and Compliance',32,3,'1 Year'),(33,'Software Development Practices',33,5,'1 Year'),(34,'Database Management & Optimization',34,3,'1 Year'),(35,'Internet of Things (IoT) Development',35,2,'1 Year'),(36,'Embedded Systems Design',36,5,'1 Year'),(37,'Microcontrollers and Applications',37,3,'1 Year'),(38,'Wireless Networks & Communication',38,2,'1 Year'),(39,'Digital Signal Processing',39,3,'1 Year'),(40,'VLSI and Chip Design',40,5,'1 Year'),(41,'Biomedical Signal Analysis',41,2,'1 Year'),(42,'Biomechanics and Rehabilitation',42,3,'1 Year'),(43,'Biomedical Instrumentation',43,5,'1 Year'),(44,'Tissue Engineering & Regenerative Medicine',44,2,'1 Year'),(45,'Medical Imaging Techniques',45,3,'1 Year'),(46,'Renewable Energy Systems',46,5,'1 Year'),(47,'Power Electronics & Smart Grids',47,3,'1 Year'),(48,'Electric Vehicle Technologies',48,2,'1 Year'),(49,'Control Systems Engineering',49,5,'1 Year'),(50,'Structural Engineering',50,3,'1 Year'),(51,'Concrete Technology and Design',51,2,'1 Year'),(52,'Transportation Engineering',52,5,'1 Year'),(53,'Environmental Engineering',53,3,'1 Year'),(54,'Geotechnical Engineering',54,2,'1 Year'),(55,'Hydraulic and Water Resource Engineering',55,5,'1 Year'),(56,'Manufacturing Engineering',56,3,'1 Year'),(57,'Mechanical System Design',57,2,'1 Year'),(58,'Automotive Engineering',58,5,'1 Year'),(59,'Aerospace Engineering',59,3,'1 Year'),(60,'Nanotechnology',60,2,'1 Year'),(61,'Textile and Fashion Technology',61,5,'1 Year'),(62,'Food Technology & Processing',62,3,'1 Year'),(63,'Chemical Engineering Principles',63,2,'1 Year'),(64,'Industrial Chemistry',64,5,'1 Year'),(65,'Pharmaceutical Sciences',65,3,'1 Year'),(66,'Biotechnology and Genetic Engineering',66,2,'1 Year'),(67,'Forensic Science',67,5,'1 Year'),(68,'Nanoscience & Nanomaterials',68,3,'1 Year'),(69,'Marine and Ocean Engineering',69,2,'1 Year'),(70,'Agricultural Engineering',70,5,'1 Year'),(71,'Horticulture Science',71,3,'1 Year'),(72,'Forestry and Wildlife Science',72,2,'1 Year'),(73,'Meteorology & Climate Science',73,5,'1 Year'),(74,'Geospatial Science and Remote Sensing',74,3,'1 Year'),(75,'Astronomy and Space Sciences',75,2,'1 Year'),(76,'Legal Studies and Cyber Law',76,5,'1 Year'),(77,'Political Science and Governance',77,3,'1 Year'),(78,'Psychology and Behavioral Sciences',78,2,'1 Year'),(79,'Sociology and Social Work',79,5,'1 Year'),(80,'Business Analytics',80,3,'1 Year'),(81,'Entrepreneurship & Startup Management',81,2,'1 Year'),(82,'Human Resource Management',82,5,'1 Year'),(83,'Marketing and Digital Media',83,3,'1 Year'),(84,'Finance and Investment Analysis',84,2,'1 Year'),(85,'International Business',85,5,'1 Year'),(86,'Accounting and Taxation',86,3,'1 Year'),(87,'Hospitality and Tourism Management',87,2,'1 Year'),(88,'Sports Management',88,5,'1 Year'),(89,'Performing Arts and Music',89,3,'1 Year'),(90,'Fine Arts and Design',90,2,'1 Year'),(91,'Culinary Arts and Nutrition',91,5,'1 Year'),(92,'Philosophy and Ethics',92,3,'1 Year'),(93,'History and Cultural Studies',93,2,'1 Year'),(94,'Linguistics and Language Studies',94,5,'1 Year'),(95,'Library and Information Science',95,3,'1 Year'),(96,'Journalism and Mass Communication',96,2,'1 Year'),(97,'Film and Media Production',97,5,'1 Year'),(98,'Animation and Visual Effects',98,3,'1 Year'),(99,'Game Development and Design',99,2,'1 Year'),(100,'E-Sports and Digital Gaming',100,5,'1 Year'),(101,'E-Sports and Digital Gaming',101,3,'1 Year'),(102,'Virtual Reality and Augmented Reality',102,5,'1 Year'),(103,'Human-Computer Interaction',103,2,'1 Year'),(104,'Cyber-Physical Systems',104,3,'1 Year'),(105,'Autonomous Systems and Robotics',105,5,'1 Year'),(106,'Quantum Computing and Cryptography',106,2,'1 Year'),(107,'AI Ethics and Governance',107,3,'1 Year'),(108,'Cognitive Science and Neural Networks',108,5,'1 Year'),(109,'Bioinformatics and Computational Biology',109,2,'1 Year'),(110,'Digital Forensics and Incident Response',110,3,'1 Year'),(111,'Cloud-native Applications and DevOps',111,5,'1 Year'),(112,'Edge Computing and IoT Security',112,2,'1 Year'),(113,'Data Science and Predictive Analytics',113,3,'1 Year'),(114,'Sustainable and Green Computing',114,5,'1 Year'),(115,'Smart City Technologies',115,2,'1 Year'),(116,'Electric Vehicle Powertrains',116,3,'1 Year'),(117,'Hybrid and Hydrogen Fuel Technologies',117,5,'1 Year'),(118,'Battery Management Systems',118,2,'1 Year'),(119,'Aerospace Propulsion and Space Systems',119,3,'1 Year'),(120,'Hypersonic Flight Technologies',120,5,'1 Year'),(121,'Renewable Energy Storage Solutions',121,2,'1 Year'),(122,'AI-driven Drug Discovery',122,3,'1 Year'),(123,'Biomedical AI and Diagnostics',123,5,'1 Year'),(124,'Neuroscience and Brain-Machine Interfaces',124,2,'1 Year'),(125,'Synthetic Biology and Genetic Engineering',125,3,'1 Year'),(126,'Advanced Materials and Nanotechnology',126,5,'1 Year'),(127,'Smart Manufacturing and Industry 4.0',127,2,'1 Year'),(128,'Automation and Robotics in Manufacturing',128,3,'1 Year'),(129,'Advanced Welding and Additive Manufacturing',129,5,'1 Year'),(130,'Precision Agriculture and AgriTech',130,2,'1 Year'),(131,'Climate Change and Sustainable Development',131,3,'1 Year'),(132,'Geoengineering and Climate Modeling',132,5,'1 Year'),(133,'Marine Technology and Ocean Engineering',133,2,'1 Year'),(134,'Deep-Sea Exploration and Underwater Robotics',134,3,'1 Year'),(135,'Astronomy and Astrophysics',135,5,'1 Year'),(136,'Space Habitats and Colonization',136,2,'1 Year'),(137,'Philosophy of Science and Technology',137,3,'1 Year'),(138,'Ethical AI and Decision-Making',138,5,'1 Year'),(139,'Global Political Economy',139,2,'1 Year'),(140,'Media Psychology and Digital Influence',140,3,'1 Year'),(141,'Fashion Technology and Textile Science',141,5,'1 Year'),(142,'Culinary Science and Gastronomy',142,2,'1 Year'),(143,'Luxury Brand Management',143,3,'1 Year'),(144,'Music Production and Sound Engineering',144,5,'1 Year'),(145,'Film Direction and Cinematography',145,2,'1 Year'),(146,'Animation and VFX Technologies',146,3,'1 Year'),(147,'Sports Science and Performance Analysis',147,5,'1 Year'),(148,'Holistic Wellness and Alternative Medicine',148,2,'1 Year'),(149,'Psychotherapy and Counseling Techniques',149,3,'1 Year'),(150,'AI in Humanities and Creative Arts',150,5,'1 Year');
/*!40000 ALTER TABLE `srm_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srm_departments`
--

DROP TABLE IF EXISTS `srm_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srm_departments` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) NOT NULL,
  `head_of_department` varchar(255) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srm_departments`
--

LOCK TABLES `srm_departments` WRITE;
/*!40000 ALTER TABLE `srm_departments` DISABLE KEYS */;
INSERT INTO `srm_departments` VALUES (1,'Mathematics','Mr. Sharma'),(2,'Science','Ms. Patel'),(3,'English','Mr. Verma'),(4,'History','Ms. Iyer'),(5,'Geography','Mr. Nair'),(6,'Physics','Dr. Rao'),(7,'Chemistry','Ms. Banerjee'),(8,'Biology','Dr. Singh'),(9,'Computer Science','Ms. Khan'),(10,'Economics','Mr. Bose'),(11,'Political Science','Dr. Gupta'),(12,'Psychology','Ms. Mehta'),(13,'Sociology','Mr. Deshmukh'),(14,'Philosophy','Dr. Menon'),(15,'Statistics','Ms. Reddy'),(16,'Linguistics','Mr. Joshi'),(17,'Anthropology','Dr. Chatterjee'),(18,'Environmental Science','Ms. Saxena'),(19,'Business Administration','Mr. Kulkarni'),(20,'Law','Dr. Krishnan'),(21,'Journalism','Ms. Ghosh'),(22,'Mass Communication','Mr. Thakur'),(23,'Fine Arts','Dr. Pillai'),(24,'Performing Arts','Ms. Kapoor'),(25,'Education','Mr. Srivastava'),(26,'Mechanical Engineering','Dr. A. Ramesh'),(27,'Electrical Engineering','Ms. S. Mehta'),(28,'Civil Engineering','Mr. P. Sharma'),(29,'Chemical Engineering','Dr. K. Banerjee'),(30,'Biotechnology','Ms. N. Iyer'),(31,'Aerospace Engineering','Dr. J. Nair'),(32,'Automobile Engineering','Mr. R. Verma'),(33,'Biomedical Engineering','Dr. S. Gupta'),(34,'Environmental Engineering','Ms. L. Rao'),(35,'Industrial Engineering','Mr. D. Pillai'),(36,'Instrumentation Engineering','Dr. H. Thakur'),(37,'Marine Engineering','Ms. K. Deshmukh'),(38,'Mining Engineering','Dr. P. Saxena'),(39,'Petroleum Engineering','Mr. B. Joshi'),(40,'Textile Engineering','Dr. C. Krishnan'),(41,'Architecture','Ms. M. Kapoor'),(42,'Urban Planning','Dr. R. Menon'),(43,'Law & Governance','Mr. T. Ghosh'),(44,'Psychology','Dr. S. Kulkarni'),(45,'Sociology','Ms. U. Chatterjee'),(46,'Philosophy','Dr. V. Srivastava'),(47,'Linguistics','Mr. A. Reddy'),(48,'History','Dr. N. Singh'),(49,'Political Science','Ms. B. Banerjee'),(50,'Journalism & Mass Comm','Dr. P. Kumar'),(51,'Fine Arts','Ms. T. Malhotra'),(52,'Performing Arts','Dr. J. Bose'),(53,'Music','Mr. G. Patel'),(54,'Dance','Ms. K. Ramesh'),(55,'Library Science','Dr. M. Sharma'),(56,'Fashion Technology','Ms. A. Nair'),(57,'Hotel Management','Dr. B. Iyer'),(58,'Tourism Management','Mr. S. Saxena'),(59,'Food Technology','Dr. H. Verma'),(60,'Microbiology','Ms. P. Deshmukh'),(61,'Zoology','Dr. R. Thakur'),(62,'Botany','Mr. L. Joshi'),(63,'Genetics','Dr. C. Krishnan'),(64,'Forensic Science','Ms. D. Kapoor'),(65,'Criminology','Dr. K. Menon'),(66,'Agricultural Science','Mr. V. Gupta'),(67,'Horticulture','Dr. T. Chatterjee'),(68,'Forestry','Ms. P. Srivastava'),(69,'Marine Biology','Dr. N. Reddy'),(70,'Oceanography','Mr. A. Singh'),(71,'Meteorology','Dr. B. Banerjee'),(72,'Geology','Ms. P. Kumar'),(73,'Astronomy','Dr. G. Malhotra'),(74,'Astrophysics','Mr. J. Bose'),(75,'Material Science','Dr. K. Patel'),(76,'Quantum Physics','Ms. A. Ramesh'),(77,'Robotics','Dr. T. Iyer'),(78,'Artificial Intelligence','Mr. S. Saxena'),(79,'Data Science','Dr. P. Verma'),(80,'Cyber Security','Ms. H. Deshmukh'),(81,'Cloud Computing','Dr. R. Thakur'),(82,'Software Engineering','Mr. L. Joshi'),(83,'Game Development','Dr. C. Krishnan'),(84,'Blockchain Technology','Ms. D. Kapoor'),(85,'Business Administration','Dr. K. Menon'),(86,'E-Commerce','Mr. V. Gupta'),(87,'Finance & Accounting','Dr. T. Chatterjee'),(88,'Marketing','Ms. P. Srivastava'),(89,'Human Resources','Dr. N. Reddy'),(90,'Entrepreneurship','Mr. A. Singh'),(91,'Hospital Administration','Dr. B. Banerjee'),(92,'Sports Management','Ms. P. Kumar'),(93,'Event Management','Dr. G. Malhotra'),(94,'Actuarial Science','Mr. J. Bose'),(95,'Supply Chain Management','Dr. K. Patel'),(96,'Operations Research','Ms. A. Ramesh'),(97,'Econometrics','Dr. T. Iyer'),(98,'Industrial Psychology','Mr. S. Saxena'),(99,'Statistics','Dr. P. Verma'),(100,'Quantitative Finance','Ms. H. Deshmukh'),(101,'Environmental Science','Dr. R. Thakur'),(102,'Energy Studies','Mr. L. Joshi'),(103,'Sustainable Development','Dr. C. Krishnan'),(104,'Social Work','Ms. D. Kapoor'),(105,'Cultural Studies','Dr. K. Menon'),(106,'Gender Studies','Mr. V. Gupta'),(107,'Disaster Management','Dr. T. Chatterjee'),(108,'Public Health','Ms. P. Srivastava'),(109,'Pharmaceutical Sciences','Dr. N. Reddy'),(110,'Veterinary Science','Mr. A. Singh'),(111,'Dentistry','Dr. B. Banerjee'),(112,'Nursing','Ms. P. Kumar'),(113,'Medical Lab Technology','Dr. G. Malhotra'),(114,'Radiology','Mr. J. Bose'),(115,'Physiotherapy','Dr. K. Patel'),(116,'Occupational Therapy','Ms. A. Ramesh'),(117,'Speech Therapy','Dr. T. Iyer'),(118,'Optometry','Mr. S. Saxena'),(119,'Audiology','Dr. P. Verma'),(120,'Rehabilitation Studies','Ms. H. Deshmukh'),(121,'Yoga & Naturopathy','Dr. R. Thakur'),(122,'Ayurveda','Mr. L. Joshi'),(123,'Homeopathy','Dr. C. Krishnan'),(124,'Unani Medicine','Ms. D. Kapoor'),(125,'Sanskrit Studies','Dr. K. Menon'),(126,'Indian Culture & Heritage','Mr. V. Gupta'),(127,'Arabic Studies','Dr. T. Chatterjee'),(128,'French Studies','Ms. P. Srivastava'),(129,'German Studies','Dr. N. Reddy'),(130,'Russian Studies','Mr. A. Singh'),(131,'Spanish Studies','Dr. B. Banerjee'),(132,'Korean Studies','Ms. P. Kumar'),(133,'Japanese Studies','Dr. G. Malhotra'),(134,'Chinese Studies','Mr. J. Bose'),(135,'Islamic Studies','Dr. K. Patel'),(136,'Comparative Literature','Ms. A. Ramesh'),(137,'Ethnomusicology','Dr. T. Iyer'),(138,'Archaeology','Mr. S. Saxena'),(139,'Museology','Dr. P. Verma'),(140,'Library Science','Ms. H. Deshmukh'),(141,'Archival Studies','Dr. R. Thakur'),(142,'Publishing','Mr. L. Joshi'),(143,'Digital Humanities','Dr. C. Krishnan'),(144,'Media Studies','Ms. D. Kapoor'),(145,'Religious Studies','Dr. K. Menon'),(146,'Cognitive Science','Mr. V. Gupta'),(147,'Educational Psychology','Dr. T. Chatterjee'),(148,'Artificial Intelligence Ethics','Ms. P. Srivastava'),(149,'Bioinformatics','Dr. N. Reddy'),(150,'Mathematical Modelling','Mr. A. Singh');
/*!40000 ALTER TABLE `srm_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srm_enrollments`
--

DROP TABLE IF EXISTS `srm_enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srm_enrollments` (
  `enrollment_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int unsigned NOT NULL,
  `course_id` int NOT NULL,
  `enrollment_date` varchar(255) NOT NULL,
  PRIMARY KEY (`enrollment_id`),
  KEY `student_id` (`student_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `srm_enrollments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `srm_students` (`id`),
  CONSTRAINT `srm_enrollments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `srm_courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srm_enrollments`
--

LOCK TABLES `srm_enrollments` WRITE;
/*!40000 ALTER TABLE `srm_enrollments` DISABLE KEYS */;
INSERT INTO `srm_enrollments` VALUES (1,1,1,'2023-01-01'),(2,2,2,'2023-01-01'),(3,3,3,'2023-01-01'),(4,4,4,'2023-01-01'),(5,5,5,'2023-01-01'),(6,6,6,'2023-01-02'),(7,7,7,'2023-01-02'),(8,8,8,'2023-01-02'),(9,9,9,'2023-01-02'),(10,10,10,'2023-01-02'),(11,11,1,'2023-01-03'),(12,12,2,'2023-01-03'),(13,13,3,'2023-01-03'),(14,14,4,'2023-01-03'),(15,15,5,'2023-01-03'),(16,16,6,'2023-01-04'),(17,17,7,'2023-01-04'),(18,18,8,'2023-01-04'),(19,19,9,'2023-01-04'),(20,20,10,'2023-01-04'),(21,21,1,'2023-01-05'),(22,22,2,'2023-01-05'),(23,23,3,'2023-01-05'),(24,23,4,'2023-01-05'),(25,25,5,'2023-01-05');
/*!40000 ALTER TABLE `srm_enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srm_exams`
--

DROP TABLE IF EXISTS `srm_exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srm_exams` (
  `exam_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `exam_date` varchar(255) NOT NULL,
  `total_marks` int NOT NULL,
  PRIMARY KEY (`exam_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `srm_exams_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `srm_courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srm_exams`
--

LOCK TABLES `srm_exams` WRITE;
/*!40000 ALTER TABLE `srm_exams` DISABLE KEYS */;
INSERT INTO `srm_exams` VALUES (1,1,'2023-06-01',100),(2,2,'2023-06-02',100),(3,3,'2023-06-03',100),(4,4,'2023-06-04',100),(5,5,'2023-06-05',100),(6,6,'2023-06-06',100),(7,7,'2023-06-07',100),(8,8,'2023-06-08',100),(9,9,'2023-06-09',100),(10,10,'2023-06-10',100),(11,11,'2023-06-11',100),(12,12,'2023-06-12',100),(13,13,'2023-06-13',100),(14,14,'2023-06-14',100),(15,15,'2023-06-15',100),(16,16,'2023-06-16',100),(17,17,'2023-06-17',100),(18,18,'2023-06-18',100),(19,19,'2023-06-19',100),(20,20,'2023-06-20',100),(21,21,'2023-06-21',100),(22,22,'2023-06-22',100),(23,23,'2023-06-23',100),(24,24,'2023-06-24',100),(25,25,'2023-06-25',100),(27,7,'2025-03-27',224);
/*!40000 ALTER TABLE `srm_exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srm_issues`
--

DROP TABLE IF EXISTS `srm_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srm_issues` (
  `issue_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int unsigned NOT NULL,
  `book_id` int NOT NULL,
  `issue_date` varchar(255) NOT NULL,
  `return_date` varchar(255) NOT NULL,
  PRIMARY KEY (`issue_id`),
  KEY `student_id` (`student_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `srm_issues_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `srm_students` (`id`),
  CONSTRAINT `srm_issues_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `srm_library` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srm_issues`
--

LOCK TABLES `srm_issues` WRITE;
/*!40000 ALTER TABLE `srm_issues` DISABLE KEYS */;
INSERT INTO `srm_issues` VALUES (1,1,1,'2023-01-01','2023-01-15'),(2,2,2,'2023-01-02','2023-01-16'),(3,3,3,'2023-01-03','2023-01-17'),(4,4,4,'2023-01-04','2023-01-18'),(5,5,5,'2023-01-05','2023-01-19'),(6,6,6,'2023-01-06','2023-01-20'),(7,7,7,'2023-01-07','2023-01-21'),(8,8,8,'2023-01-08','2023-01-22'),(9,9,9,'2023-01-09','2023-01-23'),(10,10,10,'2023-01-10','2023-01-24'),(11,11,11,'2023-01-11','2023-01-25'),(12,12,12,'2023-01-12','2023-01-26'),(13,13,13,'2023-01-13','2023-01-27'),(14,14,14,'2023-01-14','2023-01-28'),(15,15,15,'2023-01-15','2023-01-29'),(16,16,16,'2023-01-16','2023-01-30'),(17,17,17,'2023-01-17','2023-01-31'),(18,18,18,'2023-01-18','2023-02-01'),(19,19,19,'2023-01-19','2023-02-02'),(20,20,20,'2023-01-20','2023-02-03'),(21,21,21,'2023-01-21','2023-02-04'),(22,22,22,'2023-01-22','2023-02-05'),(23,23,23,'2023-01-23','2023-02-06'),(24,24,24,'2023-01-24','2023-02-07'),(25,25,25,'2023-01-25','2023-02-08');
/*!40000 ALTER TABLE `srm_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srm_library`
--

DROP TABLE IF EXISTS `srm_library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srm_library` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `availability` enum('available','issued') NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srm_library`
--

LOCK TABLES `srm_library` WRITE;
/*!40000 ALTER TABLE `srm_library` DISABLE KEYS */;
INSERT INTO `srm_library` VALUES (1,'Mathematics Basics','C.N. Radhakrishnan','ISBN001','issued'),(2,'Science Basics','Satyendra Nath Bose','ISBN002','available'),(3,'English Basics','R.K. Narayan','ISBN003','issued'),(4,'History Essentials','Romila Thapar','ISBN004','available'),(5,'Geography Guide','K.K. Aziz','ISBN005','issued'),(6,'Physics for Beginners','HJ Bhabha','ISBN006','available'),(7,'Chemistry Fundamentals','C.V. Raman','ISBN007','available'),(8,'Biology Handbook','P.M. Bhargava','ISBN008','issued'),(9,'Computer Science 101','B.N. Jain','ISBN009','available'),(10,'Artificial Intelligence','N. Chandrasekaran','ISBN010','available'),(11,'Machine Learning Basics','Pradeep K. Sinha','ISBN011','issued'),(12,'Data Science Handbook','Santosh S. Kumar','ISBN012','available'),(13,'Web Development','Shyam Sundar','ISBN013','available'),(14,'Software Engineering','Sandeep Joshi','ISBN014','issued'),(15,'Digital Marketing','Parul Gupta','ISBN015','available'),(16,'Cybersecurity Guide','Ravi Shankar','ISBN016','available'),(17,'Networking Essentials','Arvind Kumar','ISBN017','issued'),(18,'Database Management','Nitin Kumar','ISBN018','available'),(19,'Cloud Computing','Shweta Kapoor','ISBN019','available'),(20,'Blockchain Technology','Anil Agarwal','ISBN020','issued'),(21,'IoT and Automation','Rajeev Kumar','ISBN021','available'),(22,'Robotics and AI','Kiran Mazumdar-Shaw','ISBN022','available'),(23,'Big Data Analytics','Ajay Agarwal','ISBN023','issued'),(24,'Business Intelligence','Suresh Kumar','ISBN024','available'),(25,'Psychology 101','Sudhir Kakar','ISBN025','available'),(28,'Test','Test','123456','available');
/*!40000 ALTER TABLE `srm_library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srm_results`
--

DROP TABLE IF EXISTS `srm_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srm_results` (
  `result_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int unsigned NOT NULL,
  `exam_id` int NOT NULL,
  `marks_obtained` int NOT NULL,
  `grade` varchar(5) NOT NULL,
  PRIMARY KEY (`result_id`),
  KEY `student_id` (`student_id`),
  KEY `exam_id` (`exam_id`),
  CONSTRAINT `srm_results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `srm_students` (`id`),
  CONSTRAINT `srm_results_ibfk_2` FOREIGN KEY (`exam_id`) REFERENCES `srm_exams` (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srm_results`
--

LOCK TABLES `srm_results` WRITE;
/*!40000 ALTER TABLE `srm_results` DISABLE KEYS */;
INSERT INTO `srm_results` VALUES (1,1,1,95,'A'),(2,2,2,85,'B'),(3,3,3,75,'C'),(4,4,4,65,'D'),(5,5,5,55,'E'),(6,6,6,88,'B'),(7,7,7,92,'A'),(8,8,8,77,'C'),(9,9,9,69,'D'),(10,10,10,80,'B'),(11,11,11,97,'A'),(12,12,12,62,'D'),(13,13,13,45,'F'),(14,14,14,59,'E'),(15,15,15,91,'A'),(16,16,16,73,'C'),(17,17,17,85,'B'),(18,18,18,52,'E'),(19,19,19,68,'D'),(20,20,20,99,'A'),(21,21,21,78,'C'),(22,22,22,89,'B'),(23,23,23,34,'F'),(24,24,24,95,'A'),(25,25,25,61,'D');
/*!40000 ALTER TABLE `srm_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srm_section`
--

DROP TABLE IF EXISTS `srm_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srm_section` (
  `section_id` int NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srm_section`
--

LOCK TABLES `srm_section` WRITE;
/*!40000 ALTER TABLE `srm_section` DISABLE KEYS */;
INSERT INTO `srm_section` VALUES (1,'A1'),(2,'A2'),(3,'B1'),(4,'B2'),(5,'C1'),(6,'C2'),(7,'D1'),(8,'D2'),(9,'E1'),(10,'E2'),(11,'F1'),(12,'F2'),(13,'G1'),(14,'G2'),(15,'H1'),(16,'H2'),(17,'I1'),(18,'I2'),(19,'J1'),(20,'J2'),(21,'K1'),(22,'K2'),(23,'L1'),(24,'L2'),(25,'M1'),(26,'M2'),(27,'N1'),(28,'N2'),(29,'O1'),(30,'O2'),(31,'P1'),(32,'P2'),(33,'Q1'),(34,'Q2'),(35,'R1'),(36,'R2'),(37,'S1'),(38,'S2'),(39,'T1'),(40,'T2'),(41,'U1'),(42,'U2'),(43,'V1'),(44,'V2'),(45,'W1'),(46,'W2'),(47,'X1'),(48,'X2'),(49,'Y1'),(50,'Y2'),(51,'Z1'),(52,'Z2'),(53,'AA1'),(54,'AA2'),(55,'AB1'),(56,'AB2'),(57,'AC1'),(58,'AC2'),(59,'AD1'),(60,'AD2'),(61,'AE1'),(62,'AE2'),(63,'AF1'),(64,'AF2'),(65,'AG1'),(66,'AG2'),(67,'AH1'),(68,'AH2'),(69,'AI1'),(70,'AI2'),(71,'AJ1'),(72,'AJ2'),(73,'AK1'),(74,'AK2'),(75,'AL1'),(76,'AL2'),(77,'AM1'),(78,'AM2'),(79,'AN1'),(80,'AN2'),(81,'AO1'),(82,'AO2'),(83,'AP1'),(84,'AP2'),(85,'AQ1'),(86,'AQ2'),(87,'AR1'),(88,'AR2'),(89,'AS1'),(90,'AS2'),(91,'AT1'),(92,'AT2'),(93,'AU1'),(94,'AU2'),(95,'AV1'),(96,'AV2'),(97,'AW1'),(98,'AW2'),(99,'AX1'),(100,'AX2'),(101,'AY1'),(102,'AY2'),(103,'AZ1'),(104,'AZ2'),(105,'BA1'),(106,'BA2'),(107,'BB1'),(108,'BB2'),(109,'BC1'),(110,'BC2'),(111,'BD1'),(112,'BD2'),(113,'BE1'),(114,'BE2'),(115,'BF1'),(116,'BF2'),(117,'BG1'),(118,'BG2'),(119,'BH1'),(120,'BH2'),(121,'BI1'),(122,'BI2'),(123,'BJ1'),(124,'BJ2'),(125,'BK1'),(126,'BK2'),(127,'BL1'),(128,'BL2'),(129,'BM1'),(130,'BM2'),(131,'BN1'),(132,'BN2'),(133,'BO1'),(134,'BO2'),(135,'BP1'),(136,'BP2'),(137,'BQ1'),(138,'BQ2'),(139,'BR1'),(140,'BR2'),(141,'BS1'),(142,'BS2'),(143,'BT1'),(144,'BT2'),(145,'BU1'),(146,'BU2'),(147,'BV1'),(148,'BV2'),(149,'BW1'),(150,'BW2');
/*!40000 ALTER TABLE `srm_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srm_students`
--

DROP TABLE IF EXISTS `srm_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srm_students` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `photo` varchar(40) DEFAULT NULL,
  `mobile` bigint unsigned DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `current_address` varchar(40) DEFAULT NULL,
  `permanent_address` varchar(40) DEFAULT NULL,
  `father_name` varchar(255) NOT NULL,
  `father_mobile` bigint unsigned DEFAULT NULL,
  `father_occupation` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `mother_mobile` bigint unsigned DEFAULT NULL,
  `admission_no` int NOT NULL,
  `roll_no` int NOT NULL,
  `class` int unsigned NOT NULL,
  `section` varchar(12) DEFAULT NULL,
  `stream` varchar(12) DEFAULT NULL,
  `hostel` varchar(12) DEFAULT NULL,
  `admission_date` varchar(255) NOT NULL,
  `category` varchar(12) DEFAULT NULL,
  `academic_year` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srm_students`
--

LOCK TABLES `srm_students` WRITE;
/*!40000 ALTER TABLE `srm_students` DISABLE KEYS */;
INSERT INTO `srm_students` VALUES (1,'Aarav Sharma','male','2005-01-01',NULL,9876543210,'aarav@example.com','Mumbai','Mumbai','Rahul Sharma',9876543211,'Engineer','Priya Sharma',9876543212,1001,1,1,'A','Science','No','2023-01-01','General',2023),(2,'Ishita Patel','female','2005-02-02',NULL,9876543220,'ishita@example.com','Delhi','Delhi','Raj Patel',9876543221,'Doctor','Mira Patel',9876543222,1002,2,1,'B','Commerce','No','2023-01-01','OBC',2023),(3,'Rohan Verma','male','2005-03-03',NULL,9876543230,'rohan@example.com','Bangalore','Bangalore','Vikram Verma',9876543231,'Teacher','Anita Verma',9876543232,1003,3,2,'A','Arts','Yes','2023-01-01','General',2023),(4,'Meera Iyer','female','2005-04-04',NULL,9876543240,'meera@example.com','Chennai','Chennai','Suresh Iyer',9876543241,'Lawyer','Lakshmi Iyer',9876543242,1004,4,2,'B','Science','No','2023-01-01','SC',2023),(5,'Aditya Nair','male','2005-05-05',NULL,9876543250,'aditya@example.com','Kolkata','Kolkata','Krishna Nair',9876543251,'Businessman','Radha Nair',9876543252,1005,5,3,'A','Commerce','Yes','2023-01-01','ST',2023),(6,'Sneha Reddy','female','2005-06-06',NULL,9876543260,'sneha@example.com','Hyderabad','Hyderabad','Ramesh Reddy',9876543261,'Scientist','Uma Reddy',9876543262,1006,6,3,'B','Arts','No','2023-01-01','General',2023),(7,'Karan Gupta','male','2005-07-07',NULL,9876543270,'karan@example.com','Pune','Pune','Harish Gupta',9876543271,'Engineer','Sunita Gupta',9876543272,1007,7,4,'A','Science','No','2023-01-01','OBC',2023),(8,'Ananya Das','female','2005-08-08',NULL,9876543280,'ananya@example.com','Lucknow','Lucknow','Subodh Das',9876543281,'Professor','Rekha Das',9876543282,1008,8,4,'B','Commerce','Yes','2023-01-01','General',2023),(9,'Vikas Choudhary','male','2005-09-09',NULL,9876543290,'vikas@example.com','Jaipur','Jaipur','Naresh Choudhary',9876543291,'Lawyer','Kiran Choudhary',9876543292,1009,9,5,'A','Arts','No','2023-01-01','SC',2023),(10,'Pooja Mehta','female','2005-10-10',NULL,9876543300,'pooja@example.com','Bhopal','Bhopal','Dinesh Mehta',9876543301,'Banker','Neeta Mehta',9876543302,1010,10,5,'B','Science','No','2023-01-01','General',2023),(11,'Rahul Thakur','male','2005-11-11',NULL,9876543310,'rahul@example.com','Patna','Patna','Sanjay Thakur',9876543311,'Shopkeeper','Alka Thakur',9876543312,1011,11,6,'A','Commerce','Yes','2023-01-01','OBC',2023),(12,'Simran Kaur','female','2005-12-12',NULL,9876543320,'simran@example.com','Amritsar','Amritsar','Gurpreet Kaur',9876543321,'Farmer','Harjit Kaur',9876543322,1012,12,6,'B','Arts','No','2023-01-01','General',2023),(13,'Arjun Sen','male','2005-01-13',NULL,9876543330,'arjun@example.com','Kolkata','Kolkata','Dibakar Sen',9876543331,'Doctor','Indrani Sen',9876543332,1013,13,7,'A','Science','No','2023-01-01','ST',2023),(14,'Neha Bajpai','female','2005-02-14',NULL,9876543340,'neha@example.com','Lucknow','Lucknow','Vijay Bajpai',9876543341,'Engineer','Meena Bajpai',9876543342,1014,14,7,'B','Commerce','Yes','2023-01-01','General',2023),(15,'Ravi Jha','male','2005-03-15',NULL,9876543350,'ravi@example.com','Delhi','Delhi','Suresh Jha',9876543351,'Businessman','Sunita Jha',9876543352,1015,15,8,'A','Arts','No','2023-01-01','OBC',2023),(16,'Tanvi Sharma','female','2005-04-16',NULL,9876543360,'tanvi@example.com','Mumbai','Mumbai','Amit Sharma',9876543361,'Scientist','Rekha Sharma',9876543362,1016,16,8,'B','Science','Yes','2023-01-01','General',2023),(17,'Amit Desai','male','2005-05-17',NULL,9876543370,'amit@example.com','Ahmedabad','Ahmedabad','Ramesh Desai',9876543371,'Lawyer','Seema Desai',9876543372,1017,17,9,'A','Commerce','No','2023-01-01','SC',2023),(18,'Riya Kapoor','female','2005-06-18',NULL,9876543380,'riya@example.com','Chandigarh','Chandigarh','Anil Kapoor',9876543381,'Doctor','Suman Kapoor',9876543382,1018,18,9,'B','Arts','Yes','2023-01-01','General',2023),(19,'Soham Bose','male','2005-07-19',NULL,9876543390,'soham@example.com','Kolkata','Kolkata','Subhash Bose',9876543391,'Banker','Indira Bose',9876543392,1019,19,10,'A','Science','No','2023-01-01','OBC',2023),(20,'Ishaan Dutta','male','2005-08-20',NULL,9876543400,'ishaan@example.com','Delhi','Delhi','Prakash Dutta',9876543401,'Professor','Leela Dutta',9876543402,1020,20,10,'B','Commerce','Yes','2023-01-01','General',2023),(21,'Nisha Pillai','female','2005-09-21',NULL,9876543410,'nisha@example.com','Bangalore','Bangalore','Sundar Pillai',9876543411,'Businessman','Vandana Pillai',9876543412,1021,21,11,'A','Arts','No','2023-01-01','ST',2023),(22,'Raghav Malhotra','male','2005-10-22',NULL,9876543420,'raghav@example.com','Mumbai','Mumbai','Naresh Malhotra',9876543421,'Engineer','Neetu Malhotra',9876543422,1022,22,11,'B','Science','Yes','2023-01-01','General',2023),(23,'Priya Sinha','female','2005-11-23',NULL,9876543430,'priya@example.com','Patna','Patna','Vinod Sinha',9876543431,'Lawyer','Kusum Sinha',9876543432,1023,23,12,'A','Commerce','No','2023-01-01','SC',2023),(24,'Harsh Tiwari','male','2005-12-24',NULL,9876543440,'harsh@example.com','Lucknow','Lucknow','Mohan Tiwari',9876543441,'Scientist','Alka Tiwari',9876543442,1024,24,12,'B','Arts','Yes','2023-01-01','OBC',2023),(25,'Anjali Verma','female','2005-01-25',NULL,9876543450,'anjali@example.com','Jaipur','Jaipur','Rakesh Verma',9876543451,'Doctor','Lata Verma',9876543452,1025,25,13,'A','Science','No','2023-01-01','General',2023),(26,'Rahul Mehta','male','2005-02-26',NULL,9876543460,'rahul@example.com','Pune','Pune','Suresh Mehta',9876543461,'Engineer','Meena Mehta',9876543462,1026,26,13,'B','Commerce','Yes','2023-01-01','OBC',2023),(27,'Kavya Sharma','female','2005-03-27',NULL,9876543470,'kavya@example.com','Indore','Indore','Manoj Sharma',9876543471,'Teacher','Sunita Sharma',9876543472,1027,27,14,'A','Arts','No','2023-01-01','General',2023),(28,'Arjun Gupta','male','2005-04-28',NULL,9876543480,'arjun@example.com','Bhopal','Bhopal','Rajesh Gupta',9876543481,'Banker','Neha Gupta',9876543482,1028,28,14,'B','Science','Yes','2023-01-01','SC',2023),(29,'Sneha Joshi','female','2005-05-29',NULL,9876543490,'sneha@example.com','Nagpur','Nagpur','Shankar Joshi',9876543491,'Professor','Geeta Joshi',9876543492,1029,29,15,'A','Commerce','No','2023-01-01','General',2023),(30,'Vikram Yadav','male','2005-06-30',NULL,9876543500,'vikram@example.com','Kanpur','Kanpur','Satish Yadav',9876543501,'Doctor','Lalita Yadav',9876543502,1030,30,15,'B','Arts','Yes','2023-01-01','ST',2023),(31,'Aisha Khan','female','2005-07-31',NULL,9876543510,'aisha@example.com','Hyderabad','Hyderabad','Tariq Khan',9876543511,'Lawyer','Nagma Khan',9876543512,1031,31,16,'A','Science','No','2023-01-01','General',2023),(32,'Rohan Reddy','male','2005-08-01',NULL,9876543520,'rohan@example.com','Vijayawada','Vijayawada','Venkatesh Reddy',9876543521,'Businessman','Radha Reddy',9876543522,1032,32,16,'B','Commerce','Yes','2023-01-01','OBC',2023),(33,'Pooja Agarwal','female','2005-09-02',NULL,9876543530,'pooja@example.com','Surat','Surat','Dinesh Agarwal',9876543531,'Teacher','Kamla Agarwal',9876543532,1033,33,17,'A','Arts','No','2023-01-01','General',2023),(34,'Ankit Saxena','male','2005-10-03',NULL,9876543540,'ankit@example.com','Varanasi','Varanasi','Hari Saxena',9876543541,'Scientist','Alka Saxena',9876543542,1034,34,17,'B','Science','Yes','2023-01-01','SC',2023),(35,'Swati Mishra','female','2005-11-04',NULL,9876543550,'swati@example.com','Jodhpur','Jodhpur','Kailash Mishra',9876543551,'Professor','Rekha Mishra',9876543552,1035,35,18,'A','Commerce','No','2023-01-01','General',2023),(36,'Aryan Pandey','male','2005-12-05',NULL,9876543560,'aryan@example.com','Raipur','Raipur','Bhaskar Pandey',9876543561,'Banker','Vimla Pandey',9876543562,1036,36,18,'B','Arts','Yes','2023-01-01','ST',2023),(37,'Megha Das','female','2005-01-06',NULL,9876543570,'megha@example.com','Kochi','Kochi','Ravi Das',9876543571,'Engineer','Sunita Das',9876543572,1037,37,19,'A','Science','No','2023-01-01','General',2023),(38,'Vivek Saini','male','2005-02-07',NULL,9876543580,'vivek@example.com','Dehradun','Dehradun','Mahesh Saini',9876543581,'Doctor','Laxmi Saini',9876543582,1038,38,19,'B','Commerce','Yes','2023-01-01','OBC',2023),(39,'Tanya Bhatia','female','2005-03-08',NULL,9876543590,'tanya@example.com','Shimla','Shimla','Gopal Bhatia',9876543591,'Businessman','Meera Bhatia',9876543592,1039,39,20,'A','Arts','No','2023-01-01','General',2023),(40,'Siddharth Chatterjee','male','2005-04-09',NULL,9876543600,'siddharth@example.com','Gangtok','Gangtok','Amit Chatterjee',9876543601,'Scientist','Rekha Chatterjee',9876543602,1040,40,20,'B','Science','Yes','2023-01-01','SC',2023),(41,'Neha Rajput','female','2005-05-10',NULL,9876543610,'neha@example.com','Ranchi','Ranchi','Ratan Rajput',9876543611,'Engineer','Kusum Rajput',9876543612,1041,41,21,'A','Commerce','No','2023-01-01','General',2023),(42,'Tarun Bhardwaj','male','2005-06-11',NULL,9876543620,'tarun@example.com','Panaji','Panaji','Yash Bhardwaj',9876543621,'Doctor','Lata Bhardwaj',9876543622,1042,42,21,'B','Arts','Yes','2023-01-01','ST',2023),(43,'Ritika Sen','female','2005-07-12',NULL,9876543630,'ritika@example.com','Imphal','Imphal','Suraj Sen',9876543631,'Lawyer','Suman Sen',9876543632,1043,43,22,'A','Science','No','2023-01-01','General',2023),(44,'Manoj Kulkarni','male','2005-08-13',NULL,9876543640,'manoj@example.com','Shillong','Shillong','Madan Kulkarni',9876543641,'Banker','Nandini Kulkarni',9876543642,1044,44,22,'B','Commerce','Yes','2023-01-01','OBC',2023),(45,'Priya Malhotra','female','2005-09-14',NULL,9876543650,'priya@example.com','Guwahati','Guwahati','Deepak Malhotra',9876543651,'Professor','Seema Malhotra',9876543652,1045,45,12,'A','Science','No','2023-01-01','General',2023),(46,'Varun Mehra','male','2005-10-15',NULL,9876543660,'varun@example.com','Bhubaneswar','Bhubaneswar','Dinesh Mehra',9876543661,'Businessman','Asha Mehra',9876543662,1046,46,12,'B','Arts','Yes','2023-01-01','SC',2023),(47,'Divya Chauhan','female','2005-11-16',NULL,9876543670,'divya@example.com','Agartala','Agartala','Ramesh Chauhan',9876543671,'Engineer','Poonam Chauhan',9876543672,1047,47,13,'A','Commerce','No','2023-01-01','General',2023),(48,'Ajay Nair','male','2005-12-17',NULL,9876543680,'ajay@example.com','Gandhinagar','Gandhinagar','Sudhir Nair',9876543681,'Doctor','Anita Nair',9876543682,1048,48,13,'B','Science','Yes','2023-01-01','ST',2023),(49,'Riya Kapoor','female','2006-01-18',NULL,9876543690,'riya@example.com','Chandigarh','Chandigarh','Vishal Kapoor',9876543691,'Lawyer','Maya Kapoor',9876543692,1049,49,14,'A','Arts','No','2023-01-01','General',2023),(50,'Kunal Patel','male','2006-02-19',NULL,9876543700,'kunal@example.com','Jammu','Jammu','Haresh Patel',9876543701,'Businessman','Kavita Patel',9876543702,1050,50,14,'B','Commerce','Yes','2023-01-01','OBC',2023),(51,'Anjali Desai','female','2006-03-20',NULL,9876543710,'anjali@example.com','Srinagar','Srinagar','Prakash Desai',9876543711,'Professor','Jyoti Desai',9876543712,1051,51,15,'A','Science','No','2023-01-01','General',2023),(52,'Gaurav Menon','male','2006-04-21',NULL,9876543720,'gaurav@example.com','Thiruvananthapuram','Thiruvananthapuram','Mohan Menon',9876543721,'Teacher','Sreeja Menon',9876543722,1052,52,15,'B','Arts','Yes','2023-01-01','SC',2023),(53,'Shreya Choudhary','female','2006-05-22',NULL,9876543730,'shreya@example.com','Patna','Patna','Avinash Choudhary',9876543731,'Engineer','Preeti Choudhary',9876543732,1053,53,16,'A','Commerce','No','2023-01-01','General',2023),(54,'Ishan Singh','male','2006-06-23',NULL,9876543740,'ishan@example.com','Lucknow','Lucknow','Manjeet Singh',9876543741,'Doctor','Ranjana Singh',9876543742,1054,54,16,'B','Science','Yes','2023-01-01','ST',2023),(55,'Tanvi Verma','female','2006-07-24',NULL,9876543750,'tanvi@example.com','Bhopal','Bhopal','Rajeev Verma',9876543751,'Banker','Shalini Verma',9876543752,1055,55,17,'A','Arts','No','2023-01-01','General',2023),(56,'Dhruv Kumar','male','2006-08-25',NULL,9876543760,'dhruv@example.com','Jaipur','Jaipur','Vijay Kumar',9876543761,'Businessman','Kiran Kumar',9876543762,1056,56,17,'B','Commerce','Yes','2023-01-01','OBC',2023),(57,'Nisha Iyer','female','2006-09-26',NULL,9876543770,'nisha@example.com','Chennai','Chennai','Ganesh Iyer',9876543771,'Professor','Lata Iyer',9876543772,1057,57,18,'A','Science','No','2023-01-01','General',2023),(58,'Rahul Srivastava','male','2006-10-27',NULL,9876543780,'rahuls@example.com','Delhi','Delhi','Rakesh Srivastava',9876543781,'Teacher','Mamta Srivastava',9876543782,1058,58,18,'B','Arts','Yes','2023-01-01','SC',2023),(59,'Kavita Jain','female','2006-11-28',NULL,9876543790,'kavitaj@example.com','Mumbai','Mumbai','Sanjay Jain',9876543791,'Engineer','Sudha Jain',9876543792,1059,59,19,'A','Commerce','No','2023-01-01','General',2023),(60,'Arjun Negi','male','2006-12-29',NULL,9876543800,'arjunn@example.com','Dehradun','Dehradun','Sunil Negi',9876543801,'Doctor','Parvati Negi',9876543802,1060,60,19,'B','Science','Yes','2023-01-01','ST',2023),(61,'Meera Thakur','female','2007-01-30',NULL,9876543810,'meera@example.com','Shimla','Shimla','Vijay Thakur',9876543811,'Banker','Savita Thakur',9876543812,1061,61,20,'A','Arts','No','2023-01-01','General',2023),(62,'Aditya Goyal','male','2007-02-01',NULL,9876543820,'aditya@example.com','Jaipur','Jaipur','Manoj Goyal',9876543821,'Businessman','Madhu Goyal',9876543822,1062,62,20,'B','Commerce','Yes','2023-01-01','OBC',2023),(63,'Ritika Puri','female','2007-03-02',NULL,9876543830,'ritikap@example.com','Kolkata','Kolkata','Ashok Puri',9876543831,'Professor','Neeta Puri',9876543832,1063,63,21,'A','Science','No','2023-01-01','General',2023),(64,'Karan Mahajan','male','2007-04-03',NULL,9876543840,'karan@example.com','Chandigarh','Chandigarh','Ravi Mahajan',9876543841,'Teacher','Rani Mahajan',9876543842,1064,64,21,'B','Arts','Yes','2023-01-01','SC',2023),(65,'Ananya Rathore','female','2007-05-04',NULL,9876543850,'ananya@example.com','Udaipur','Udaipur','Bharat Rathore',9876543851,'Engineer','Sarita Rathore',9876543852,1065,65,22,'A','Commerce','No','2023-01-01','General',2023),(66,'Vihan Bajaj','male','2007-06-05',NULL,9876543860,'vihan@example.com','Ahmedabad','Ahmedabad','Chetan Bajaj',9876543861,'Doctor','Anjali Bajaj',9876543862,1066,66,22,'B','Science','Yes','2023-01-01','ST',2023),(67,'Aditi Mathur','female','2007-07-06',NULL,9876543870,'aditi@example.com','Lucknow','Lucknow','Rajiv Mathur',9876543871,'Banker','Shweta Mathur',9876543872,1067,67,12,'A','Arts','No','2023-01-01','General',2023),(68,'Siddharth Gupta','male','2007-08-07',NULL,9876543880,'siddharthg@example.com','Delhi','Delhi','Ramesh Gupta',9876543881,'Businessman','Sunita Gupta',9876543882,1068,68,12,'B','Commerce','Yes','2023-01-01','OBC',2023),(69,'Sneha Shetty','female','2007-09-08',NULL,9876543890,'snehas@example.com','Mangalore','Mangalore','Keshav Shetty',9876543891,'Professor','Deepa Shetty',9876543892,1069,69,13,'A','Science','No','2023-01-01','General',2023),(70,'Nikhil Reddy','male','2007-10-09',NULL,9876543900,'nikhil@example.com','Hyderabad','Hyderabad','Srinivas Reddy',9876543901,'Teacher','Lakshmi Reddy',9876543902,1070,70,13,'B','Arts','Yes','2023-01-01','SC',2023),(71,'Trisha Khanna','female','2007-11-10',NULL,9876543910,'trisha@example.com','Amritsar','Amritsar','Ajay Khanna',9876543911,'Engineer','Ritu Khanna',9876543912,1071,71,14,'A','Commerce','No','2023-01-01','General',2023),(72,'Yash Tiwari','male','2007-12-11',NULL,9876543920,'yash@example.com','Bhopal','Bhopal','Ritesh Tiwari',9876543921,'Doctor','Suman Tiwari',9876543922,1072,72,14,'B','Science','Yes','2023-01-01','ST',2023),(73,'Ishita Sharma','female','2008-01-12',NULL,9876543930,'ishita@example.com','Kanpur','Kanpur','Vinod Sharma',9876543931,'Banker','Anita Sharma',9876543932,1073,73,15,'A','Arts','No','2023-01-01','General',2023),(74,'Vishal Arora','male','2008-02-13',NULL,9876543940,'vishal@example.com','Delhi','Delhi','Sanjeev Arora',9876543941,'Businessman','Geeta Arora',9876543942,1074,74,15,'B','Commerce','Yes','2023-01-01','OBC',2023),(75,'Sana Verma','female','2008-03-14',NULL,9876543950,'sana@example.com','Chandigarh','Chandigarh','Rakesh Verma',9876543951,'Professor','Manju Verma',9876543952,1075,75,16,'A','Science','No','2023-01-01','General',2023),(76,'Vivaan Bose','male','2008-04-15',NULL,9876543960,'vivaan@example.com','Kolkata','Kolkata','Debashish Bose',9876543961,'Teacher','Malini Bose',9876543962,1076,76,16,'B','Arts','Yes','2023-01-01','SC',2023),(77,'Diya Banerjee','female','2008-05-16',NULL,9876543970,'diya@example.com','Kolkata','Kolkata','Samar Banerjee',9876543971,'Engineer','Aparna Banerjee',9876543972,1077,77,17,'A','Commerce','No','2023-01-01','General',2023),(78,'Reyansh Kapoor','male','2008-06-17',NULL,9876543980,'reyansh@example.com','Mumbai','Mumbai','Rohit Kapoor',9876543981,'Doctor','Ekta Kapoor',9876543982,1078,78,17,'B','Science','Yes','2023-01-01','ST',2023),(79,'Kriti Singh','female','2008-07-18',NULL,9876543990,'kriti@example.com','Lucknow','Lucknow','Anoop Singh',9876543991,'Banker','Neha Singh',9876543992,1079,79,18,'A','Arts','No','2023-01-01','General',2023),(80,'Dev Malhotra','male','2008-08-19',NULL,9876544000,'dev@example.com','Chandigarh','Chandigarh','Tarun Malhotra',9876544001,'Businessman','Smita Malhotra',9876544002,1080,80,18,'B','Commerce','Yes','2023-01-01','OBC',2023),(81,'Anika Garg','female','2008-09-20',NULL,9876544010,'anika@example.com','Delhi','Delhi','Harsh Garg',9876544011,'Professor','Renu Garg',9876544012,1081,81,19,'A','Science','No','2023-01-01','General',2023),(82,'Kabir Joshi','male','2008-10-21',NULL,9876544020,'kabir@example.com','Pune','Pune','Nitin Joshi',9876544021,'Teacher','Jaya Joshi',9876544022,1082,82,19,'B','Arts','Yes','2023-01-01','SC',2023),(83,'Khushi Mehra','female','2008-11-22',NULL,9876544030,'khushi@example.com','Ghaziabad','Ghaziabad','Siddharth Mehra',9876544031,'Engineer','Nidhi Mehra',9876544032,1083,83,20,'A','Commerce','No','2023-01-01','General',2023),(84,'Arnav Verma','male','2008-12-23',NULL,9876544040,'arnav@example.com','Noida','Noida','Pankaj Verma',9876544041,'Doctor','Asha Verma',9876544042,1084,84,20,'B','Science','Yes','2023-01-01','ST',2023),(85,'Anushka Mehta','female','2009-01-24',NULL,9876544050,'anushka@example.com','Ahmedabad','Ahmedabad','Rajesh Mehta',9876544051,'Banker','Vidya Mehta',9876544052,1085,85,21,'A','Arts','No','2023-01-01','General',2023),(86,'Rudra Sharma','male','2009-02-25',NULL,9876544060,'rudra@example.com','Jaipur','Jaipur','Naveen Sharma',9876544061,'Businessman','Shobha Sharma',9876544062,1086,86,21,'B','Commerce','Yes','2023-01-01','OBC',2023),(87,'Saanvi Agarwal','female','2009-03-26',NULL,9876544070,'saanvi@example.com','Delhi','Delhi','Manish Agarwal',9876544071,'Professor','Monika Agarwal',9876544072,1087,87,22,'A','Science','No','2023-01-01','General',2023),(88,'Aarav Kumar','male','2009-04-27',NULL,9876544080,'aarav@example.com','Mumbai','Mumbai','Vivek Kumar',9876544081,'Teacher','Radhika Kumar',9876544082,1088,88,22,'B','Arts','Yes','2023-01-01','SC',2023),(89,'Pari Singh','female','2009-05-28',NULL,9876544090,'pari@example.com','Chandigarh','Chandigarh','Prabhat Singh',9876544091,'Engineer','Prachi Singh',9876544092,1089,89,12,'A','Commerce','No','2023-01-01','General',2023),(90,'Virat Khanna','male','2009-06-29',NULL,9876544100,'virat@example.com','Gurgaon','Gurgaon','Alok Khanna',9876544101,'Doctor','Neha Khanna',9876544102,1090,90,12,'B','Science','Yes','2023-01-01','ST',2023),(91,'Anvi Chauhan','female','2009-07-30',NULL,9876544110,'anvi@example.com','Indore','Indore','Deepak Chauhan',9876544111,'Banker','Sheetal Chauhan',9876544112,1091,91,13,'A','Arts','No','2023-01-01','General',2023),(92,'Aryan Chawla','male','2009-08-31',NULL,9876544120,'aryanc@example.com','Gwalior','Gwalior','Rajeev Chawla',9876544121,'Businessman','Ruchi Chawla',9876544122,1092,92,13,'B','Commerce','Yes','2023-01-01','OBC',2023),(93,'Avni Tiwari','female','2009-09-01',NULL,9876544130,'avni@example.com','Varanasi','Varanasi','Sandeep Tiwari',9876544131,'Professor','Vineeta Tiwari',9876544132,1093,93,14,'A','Science','No','2023-01-01','General',2023),(94,'Vedant Jain','male','2009-10-02',NULL,9876544140,'vedant@example.com','Udaipur','Udaipur','Mayank Jain',9876544141,'Teacher','Rupali Jain',9876544142,1094,94,14,'B','Arts','Yes','2023-01-01','SC',2023),(95,'Aanya Sharma','female','2009-11-03',NULL,9876544150,'aanya@example.com','Jodhpur','Jodhpur','Ashish Sharma',9876544151,'Engineer','Preeti Sharma',9876544152,1095,95,15,'A','Commerce','No','2023-01-01','General',2023),(96,'Advait Patel','male','2009-12-04',NULL,9876544160,'advait@example.com','Surat','Surat','Mukesh Patel',9876544161,'Doctor','Nisha Patel',9876544162,1096,96,15,'B','Science','Yes','2023-01-01','ST',2023),(97,'Myra Mittal','female','2010-01-05',NULL,9876544170,'myra@example.com','Delhi','Delhi','Rahul Mittal',9876544171,'Banker','Sonia Mittal',9876544172,1097,97,16,'A','Arts','No','2023-01-01','General',2023),(98,'Vihaan Reddy','male','2010-02-06',NULL,9876544180,'vihaan@example.com','Hyderabad','Hyderabad','Krishna Reddy',9876544181,'Businessman','Rekha Reddy',9876544182,1098,98,16,'B','Commerce','Yes','2023-01-01','OBC',2023),(99,'Sara Malhotra','female','2010-03-07',NULL,9876544190,'sara@example.com','Chandigarh','Chandigarh','Akshay Malhotra',9876544191,'Professor','Neha Malhotra',9876544192,1099,99,17,'A','Science','No','2023-01-01','General',2023),(100,'Shaurya Kapoor','male','2010-04-08',NULL,9876544200,'shaurya@example.com','Mumbai','Mumbai','Rahul Kapoor',9876544201,'Teacher','Pooja Kapoor',9876544202,1100,100,17,'B','Arts','Yes','2023-01-01','SC',2023),(101,'Navya Saxena','female','2010-05-09',NULL,9876544210,'navya@example.com','Lucknow','Lucknow','Amit Saxena',9876544211,'Engineer','Richa Saxena',9876544212,1101,101,18,'A','Commerce','No','2023-01-01','General',2023),(102,'Dhruv Bansal','male','2010-06-10',NULL,9876544220,'dhruvb@example.com','Delhi','Delhi','Anil Bansal',9876544221,'Doctor','Seema Bansal',9876544222,1102,102,18,'B','Science','Yes','2023-01-01','ST',2023),(103,'Misha Gupta','female','2010-07-11',NULL,9876544230,'misha@example.com','Kanpur','Kanpur','Rajan Gupta',9876544231,'Banker','Swati Gupta',9876544232,1103,103,19,'A','Arts','No','2023-01-01','General',2023),(104,'Atharv Choudhury','male','2010-08-12',NULL,9876544240,'atharv@example.com','Kolkata','Kolkata','Rajat Choudhury',9876544241,'Businessman','Shilpa Choudhury',9876544242,1104,104,19,'B','Commerce','Yes','2023-01-01','OBC',2023),(105,'Anaisha Singh','female','2010-09-13',NULL,9876544250,'anaisha@example.com','Lucknow','Lucknow','Arjun Singh',9876544251,'Professor','Mala Singh',9876544252,1105,105,20,'A','Science','No','2023-01-01','General',2023),(106,'Rahul Sharma','male','2006-01-01',NULL,9876544106,'rahul@example.com','Delhi','Delhi','Amit Sharma',9876544107,'Engineer','Sunita Sharma',9876544108,1106,106,11,'A','Science','No','2023-01-01','General',2023),(107,'Sneha Reddy','female','2006-02-02',NULL,9876544109,'sneha@example.com','Hyderabad','Hyderabad','Rajesh Reddy',9876544110,'Doctor','Lakshmi Reddy',9876544111,1107,107,11,'B','Commerce','Yes','2023-01-01','OBC',2023),(108,'Amit Verma','male','2006-03-03',NULL,9876544112,'amitv@example.com','Bangalore','Bangalore','Suresh Verma',9876544113,'Businessman','Kiran Verma',9876544114,1108,108,11,'C','Arts','No','2023-01-01','SC',2023),(109,'Pooja Nair','female','2006-04-04',NULL,9876544115,'pooja@example.com','Mumbai','Mumbai','Vikram Nair',9876544116,'Lawyer','Anita Nair',9876544117,1109,109,11,'A','Science','Yes','2023-01-01','ST',2023),(110,'Kunal Das','male','2006-05-05',NULL,9876544118,'kunal@example.com','Kolkata','Kolkata','Subhash Das',9876544119,'Professor','Indira Das',9876544120,1110,110,11,'B','Commerce','No','2023-01-01','General',2023),(111,'Riya Sen','female','2006-06-06',NULL,9876544121,'riya@example.com','Chennai','Chennai','Arun Sen',9876544122,'Scientist','Meena Sen',9876544123,1111,111,11,'C','Arts','Yes','2023-01-01','OBC',2023),(112,'Manoj Joshi','male','2006-07-07',NULL,9876544124,'manoj@example.com','Pune','Pune','Vikas Joshi',9876544125,'Doctor','Sarla Joshi',9876544126,1112,112,11,'A','Science','No','2023-01-01','SC',2023),(113,'Tanya Kapoor','female','2006-08-08',NULL,9876544127,'tanya@example.com','Ahmedabad','Ahmedabad','Vinod Kapoor',9876544128,'Engineer','Leela Kapoor',9876544129,1113,113,11,'B','Commerce','Yes','2023-01-01','ST',2023),(114,'Vikram Khanna','male','2006-09-09',NULL,9876544130,'vikram@example.com','Chandigarh','Chandigarh','Dilip Khanna',9876544131,'Businessman','Madhuri Khanna',9876544132,1114,114,11,'C','Arts','No','2023-01-01','General',2023),(115,'Ananya Rao','female','2006-10-10',NULL,9876544133,'ananya@example.com','Goa','Goa','Sanjay Rao',9876544134,'Scientist','Renu Rao',9876544135,1115,115,11,'A','Science','Yes','2023-01-01','OBC',2023),(116,'Yash Mehta','male','2006-11-11',NULL,9876544136,'yash@example.com','Indore','Indore','Ramesh Mehta',9876544137,'Professor','Sushma Mehta',9876544138,1116,116,11,'B','Commerce','No','2023-01-01','SC',2023),(117,'Isha Arora','female','2006-12-12',NULL,9876544139,'isha@example.com','Nagpur','Nagpur','Narendra Arora',9876544140,'Lawyer','Rekha Arora',9876544141,1117,117,11,'C','Arts','Yes','2023-01-01','ST',2023),(118,'Aditya Roy','male','2006-01-13',NULL,9876544142,'aditya@example.com','Bhopal','Bhopal','Suraj Roy',9876544143,'Doctor','Preeti Roy',9876544144,1118,118,11,'A','Science','No','2023-01-01','General',2023),(119,'Kavya Iyer','female','2006-02-14',NULL,9876544145,'kavya@example.com','Coimbatore','Coimbatore','Prakash Iyer',9876544146,'Engineer','Sita Iyer',9876544147,1119,119,11,'B','Commerce','Yes','2023-01-01','OBC',2023),(120,'Arjun Bhatt','male','2006-03-15',NULL,9876544148,'arjun@example.com','Raipur','Raipur','Mahesh Bhatt',9876544149,'Businessman','Laxmi Bhatt',9876544150,1120,120,11,'C','Arts','No','2023-01-01','SC',2023),(121,'Neha Pillai','female','2006-04-16',NULL,9876544151,'neha@example.com','Lucknow','Lucknow','Rajiv Pillai',9876544152,'Doctor','Meera Pillai',9876544153,1121,121,11,'A','Science','Yes','2023-01-01','ST',2023),(122,'Rohan Tiwari','male','2006-05-17',NULL,9876544154,'rohan@example.com','Patna','Patna','Sandeep Tiwari',9876544155,'Professor','Kamini Tiwari',9876544156,1122,122,11,'B','Commerce','No','2023-01-01','General',2023),(123,'Megha Kapoor','female','2006-06-18',NULL,9876544157,'megha@example.com','Jaipur','Jaipur','Dilip Kapoor',9876544158,'Engineer','Nandini Kapoor',9876544159,1123,123,11,'C','Arts','Yes','2023-01-01','OBC',2023),(124,'Vikas Sharma','male','2006-07-19',NULL,9876544160,'vikas@example.com','Dehradun','Dehradun','Anil Sharma',9876544161,'Lawyer','Radha Sharma',9876544162,1124,124,11,'A','Science','No','2023-01-01','SC',2023),(125,'Aditi Rao','female','2006-08-20',NULL,9876544163,'aditi@example.com','Shimla','Shimla','Manoj Rao',9876544164,'Scientist','Savita Rao',9876544165,1125,125,11,'B','Commerce','Yes','2023-01-01','ST',2023),(126,'Kabir Khanna','male','2006-09-21',NULL,9876544166,'kabir@example.com','Agra','Agra','Vinay Khanna',9876544167,'Businessman','Geeta Khanna',9876544168,1126,126,11,'C','Arts','No','2023-01-01','General',2023),(127,'Pallavi Sen','female','2006-10-22',NULL,9876544169,'pallavi@example.com','Mysore','Mysore','Raghav Sen',9876544170,'Doctor','Ritika Sen',9876544171,1127,127,11,'A','Science','Yes','2023-01-01','OBC',2023),(128,'Rajat Mehta','male','2006-11-23',NULL,9876544172,'rajat@example.com','Gandhinagar','Gandhinagar','Jitendra Mehta',9876544173,'Engineer','Sangeeta Mehta',9876544174,1128,128,11,'B','Commerce','No','2023-01-01','SC',2023),(129,'Swati Das','female','2006-12-24',NULL,9876544175,'swati@example.com','Ranchi','Ranchi','Ajay Das',9876544176,'Lawyer','Sunita Das',9876544177,1129,129,11,'C','Arts','Yes','2023-01-01','ST',2023),(130,'Ankur Joshi','male','2006-01-25',NULL,9876544178,'ankur@example.com','Jodhpur','Jodhpur','Kailash Joshi',9876544179,'Professor','Aruna Joshi',9876544180,1130,130,11,'A','Science','No','2023-01-01','General',2023),(131,'Simran Nair','female','2006-02-26',NULL,9876544181,'simran@example.com','Trivandrum','Trivandrum','Shankar Nair',9876544182,'Scientist','Madhavi Nair',9876544183,1131,131,11,'B','Commerce','Yes','2023-01-01','OBC',2023),(132,'Harsh Kapoor','male','2006-03-27',NULL,9876544184,'harsh@example.com','Vadodara','Vadodara','Ramesh Kapoor',9876544185,'Doctor','Neeta Kapoor',9876544186,1132,132,11,'C','Arts','No','2023-01-01','SC',2023),(133,'Divya Iyer','female','2006-04-28',NULL,9876544187,'divya@example.com','Bhubaneswar','Bhubaneswar','Surendra Iyer',9876544188,'Engineer','Gayatri Iyer',9876544189,1133,133,11,'A','Science','Yes','2023-01-01','ST',2023),(134,'Nishant Reddy','male','2006-05-29',NULL,9876544190,'nishant@example.com','Shillong','Shillong','Vivek Reddy',9876544191,'Businessman','Lalita Reddy',9876544192,1134,134,11,'B','Commerce','No','2023-01-01','General',2023),(135,'Priyanka Das','female','2006-06-30',NULL,9876544193,'priyanka@example.com','Panaji','Panaji','Sudhir Das',9876544194,'Lawyer','Manju Das',9876544195,1135,135,11,'C','Arts','Yes','2023-01-01','OBC',2023),(136,'Aarav Jain','male','2006-07-31',NULL,9876544196,'aarav@example.com','Gwalior','Gwalior','Yogesh Jain',9876544197,'Doctor','Savita Jain',9876544198,1136,136,11,'A','Science','No','2023-01-01','SC',2023),(137,'Sanya Verma','female','2006-08-01',NULL,9876544199,'sanya@example.com','Bhopal','Bhopal','Ashok Verma',9876544200,'Engineer','Renu Verma',9876544201,1137,137,11,'B','Commerce','Yes','2023-01-01','ST',2023),(138,'Yash Patel','male','2006-09-02',NULL,9876544202,'yash@example.com','Chandigarh','Chandigarh','Rajesh Patel',9876544203,'Businessman','Sunita Patel',9876544204,1138,138,11,'C','Arts','No','2023-01-01','General',2023),(139,'Ishita Roy','female','2006-10-03',NULL,9876544205,'ishita@example.com','Kolkata','Kolkata','Suman Roy',9876544206,'Doctor','Shalini Roy',9876544207,1139,139,11,'A','Science','Yes','2023-01-01','OBC',2023),(140,'Rohan Agarwal','male','2006-11-04',NULL,9876544208,'rohan.agarwal@example.com','Mumbai','Mumbai','Amit Agarwal',9876544209,'Lawyer','Priya Agarwal',9876544210,1140,140,11,'B','Commerce','No','2023-01-01','SC',2023),(141,'Aarushi Malhotra','female','2006-12-05',NULL,9876544211,'aarushi@example.com','Delhi','Delhi','Vivek Malhotra',9876544212,'Scientist','Poonam Malhotra',9876544213,1141,141,11,'C','Arts','Yes','2023-01-01','ST',2023),(142,'Kunal Saxena','male','2006-01-06',NULL,9876544214,'kunal@example.com','Pune','Pune','Suresh Saxena',9876544215,'Professor','Anjali Saxena',9876544216,1142,142,11,'A','Science','No','2023-01-01','General',2023),(143,'Tanya Sharma','female','2006-02-07',NULL,9876544217,'tanya@example.com','Nagpur','Nagpur','Dev Sharma',9876544218,'Engineer','Meena Sharma',9876544219,1143,143,11,'B','Commerce','Yes','2023-01-01','OBC',2023),(144,'Amit Trivedi','male','2006-03-08',NULL,9876544220,'amit@example.com','Surat','Surat','Harish Trivedi',9876544221,'Lawyer','Rekha Trivedi',9876544222,1144,144,11,'C','Arts','No','2023-01-01','SC',2023),(145,'Shreya Nanda','female','2006-04-09',NULL,9876544223,'shreya@example.com','Bengaluru','Bengaluru','Kiran Nanda',9876544224,'Doctor','Asha Nanda',9876544225,1145,145,11,'A','Science','Yes','2023-01-01','ST',2023),(146,'Rahul Deshmukh','male','2006-05-10',NULL,9876544226,'rahul@example.com','Hyderabad','Hyderabad','Ravindra Deshmukh',9876544227,'Businessman','Neelam Deshmukh',9876544228,1146,146,11,'B','Commerce','No','2023-01-01','General',2023),(147,'Ananya Ghosh','female','2006-06-11',NULL,9876544229,'ananya@example.com','Indore','Indore','Sandeep Ghosh',9876544230,'Scientist','Kavita Ghosh',9876544231,1147,147,11,'C','Arts','Yes','2023-01-01','OBC',2023),(148,'Devansh Choudhary','male','2006-07-12',NULL,9876544232,'devansh@example.com','Guwahati','Guwahati','Prakash Choudhary',9876544233,'Professor','Sujata Choudhary',9876544234,1148,148,11,'A','Science','No','2023-01-01','SC',2023),(149,'Ritika Yadav','female','2006-08-13',NULL,9876544235,'ritika@example.com','Patiala','Patiala','Dinesh Yadav',9876544236,'Engineer','Swati Yadav',9876544237,1149,149,11,'B','Commerce','Yes','2023-01-01','ST',2023),(150,'Siddharth Bajaj','male','2006-09-14',NULL,9876544238,'siddharth@example.com','Varanasi','Varanasi','Narendra Bajaj',9876544239,'Businessman','Manisha Bajaj',9876544240,1150,150,11,'C','Arts','No','2023-01-01','General',2023);
/*!40000 ALTER TABLE `srm_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srm_subjects`
--

DROP TABLE IF EXISTS `srm_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srm_subjects` (
  `subject_id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `code` int NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srm_subjects`
--

LOCK TABLES `srm_subjects` WRITE;
/*!40000 ALTER TABLE `srm_subjects` DISABLE KEYS */;
INSERT INTO `srm_subjects` VALUES (1,'Mathematics','Theory',101),(2,'Science','Theory',102),(3,'English','Theory',103),(4,'History','Theory',104),(5,'Geography','Theory',105),(6,'Physics','Theory',106),(7,'Chemistry','Theory',107),(8,'Biology','Theory',108),(9,'Computer Science','Theory',109),(10,'Economics','Theory',110),(11,'Political Science','Theory',111),(12,'Psychology','Theory',112),(13,'Sociology','Theory',113),(14,'Business Studies','Theory',114),(15,'Accountancy','Theory',115),(16,'Environmental Science','Theory',116),(17,'Physical Education','Practical',117),(18,'Music','Practical',118),(19,'Fine Arts','Practical',119),(20,'Home Science','Theory',120),(21,'Philosophy','Theory',121),(22,'Statistics','Theory',122),(23,'Astronomy','Theory',123),(24,'Anthropology','Theory',124),(25,'Legal Studies','Theory',125);
/*!40000 ALTER TABLE `srm_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srm_teacher`
--

DROP TABLE IF EXISTS `srm_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srm_teacher` (
  `teacher_id` int NOT NULL AUTO_INCREMENT,
  `teacher` varchar(255) NOT NULL,
  `subject_id` int NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srm_teacher`
--

LOCK TABLES `srm_teacher` WRITE;
/*!40000 ALTER TABLE `srm_teacher` DISABLE KEYS */;
INSERT INTO `srm_teacher` VALUES (1,'Mr. Sharma',1),(2,'Ms. Patel',2),(3,'Mr. Verma',3),(4,'Ms. Iyer',4),(5,'Mr. Nair',5),(6,'Mr. Reddy',6),(7,'Ms. Gupta',7),(8,'Mr. Das',8),(9,'Ms. Choudhary',9),(10,'Mr. Mehta',10),(11,'Ms. Thakur',11),(12,'Mr. Kaur',12),(13,'Ms. Sen',13),(14,'Mr. Bajpai',14),(15,'Ms. Jha',15),(16,'Mr. Sharma',16),(17,'Ms. Patel',17),(18,'Mr. Verma',18),(19,'Ms. Iyer',19),(20,'Mr. Nair',20),(21,'Mr. Reddy',21),(22,'Ms. Gupta',22),(23,'Mr. Das',23),(24,'Ms. Choudhary',24),(25,'Mr. Mehta',25),(26,'Dr. Rajesh Verma',101),(27,'Ms. Pooja Sharma',102),(28,'Mr. Aditya Mehta',103),(29,'Dr. Anjali Nair',104),(30,'Mr. Vivek Choudhary',105),(31,'Ms. Sneha Kapoor',106),(32,'Dr. Ramesh Iyer',107),(33,'Mr. Sanjay Kumar',108),(34,'Ms. Nidhi Joshi',109),(35,'Dr. Anurag Sen',110),(36,'Ms. Priyanka Das',111),(37,'Mr. Varun Saxena',112),(38,'Dr. Meenal Pandey',113),(39,'Mr. Rohit Malhotra',114),(40,'Ms. Kavita Roy',115),(41,'Dr. Vishal Tiwari',116),(42,'Mr. Alok Desai',117),(43,'Ms. Ritu Arora',118),(44,'Dr. Sandeep Mishra',119),(45,'Mr. Harish Yadav',120),(46,'Ms. Deepa Kaushik',121),(47,'Dr. Nilesh Agarwal',122),(48,'Mr. Rajat Khanna',123),(49,'Ms. Swati Menon',124),(50,'Dr. Amit Trivedi',125),(51,'Mr. Manoj Bhatia',126),(52,'Ms. Sunita Paul',127),(53,'Dr. Chetan Joshi',128),(54,'Mr. Rahul Sinha',129),(55,'Ms. Neha Khatri',130),(56,'Dr. Girish Patil',131),(57,'Mr. Abhishek Kapoor',132),(58,'Ms. Bhavna Reddy',133),(59,'Dr. Shalini Gupta',134),(60,'Mr. Pradeep Malhotra',135),(61,'Ms. Jyoti Ranjan',136),(62,'Dr. Anil Saxena',137),(63,'Mr. Kiran Rao',138),(64,'Ms. Snehal Jadhav',139),(65,'Dr. Deepak Tyagi',140),(66,'Mr. Arvind Nair',141),(67,'Ms. Namita Sharma',142),(68,'Dr. Sudhir Choudhary',143),(69,'Mr. Hemant Mehta',144),(70,'Ms. Rekha Das',145),(71,'Dr. Raghav Menon',146),(72,'Mr. Ujjwal Singh',147),(73,'Ms. Pallavi Bose',148),(74,'Dr. Suraj Malhotra',149),(75,'Mr. Tushar Patel',150),(76,'Ms. Shreya Kapoor',101),(77,'Dr. Arvind Joshi',102),(78,'Mr. Nitin Verma',103),(79,'Ms. Kavya Sharma',104),(80,'Dr. Pankaj Mehta',105),(81,'Mr. Rohan Choudhary',106),(82,'Ms. Sanya Nair',107),(83,'Dr. Vikram Patel',108),(84,'Mr. Nishant Yadav',109),(85,'Ms. Deepika Malhotra',110),(86,'Dr. Ramesh Tiwari',111),(87,'Mr. Alok Sharma',112),(88,'Ms. Shruti Desai',113),(89,'Dr. Kunal Reddy',114),(90,'Mr. Tarun Bhatia',115),(91,'Ms. Priyanka Iyer',116),(92,'Dr. Manish Agarwal',117),(93,'Mr. Ajay Saxena',118),(94,'Ms. Neetu Sen',119),(95,'Dr. Rajeev Pandey',120),(96,'Mr. Varun Menon',121),(97,'Ms. Sonali Paul',122),(98,'Dr. Raghav Tyagi',123),(99,'Mr. Shubham Rao',124),(100,'Ms. Vandana Roy',125),(101,'Dr. Chetan Malhotra',126),(102,'Mr. Gaurav Jadhav',127),(103,'Ms. Rachna Kaushik',128),(104,'Dr. Suresh Tandon',129),(105,'Mr. Vikrant Mishra',130),(106,'Ms. Juhi Joshi',131),(107,'Dr. Prakash Verma',132),(108,'Mr. Yash Trivedi',133),(109,'Ms. Sneha Patel',134),(110,'Dr. Gopal Khanna',135),(111,'Mr. Hemant Gupta',136),(112,'Ms. Anushka Das',137),(113,'Dr. Rakesh Choudhary',138),(114,'Mr. Mohit Saxena',139),(115,'Ms. Tanvi Mehra',140),(116,'Dr. Amitabh Menon',141),(117,'Mr. Jayesh Rao',142),(118,'Ms. Ritu Sharma',143),(119,'Dr. Sunil Pandey',144),(120,'Mr. Ankur Bhatia',145),(121,'Ms. Megha Sen',146),(122,'Dr. Prem Verma',147),(123,'Mr. Chetan Joshi',148),(124,'Ms. Ritika Nair',149),(125,'Dr. Sameer Malhotra',150),(126,'Mr. Sandeep Iyer',101),(127,'Ms. Nisha Paul',102),(128,'Dr. Vikas Sharma',103),(129,'Mr. Abhishek Mehta',104),(130,'Ms. Komal Yadav',105),(131,'Dr. Shashank Desai',106),(132,'Mr. Raj Malhotra',107),(133,'Ms. Poonam Kapoor',108),(134,'Dr. Gaurav Reddy',109),(135,'Mr. Sudhir Agarwal',110),(136,'Ms. Shraddha Roy',111),(137,'Dr. Nishant Tyagi',112),(138,'Mr. Raghav Jadhav',113),(139,'Ms. Tanisha Kaushik',114),(140,'Dr. Pranav Mishra',115),(141,'Mr. Hardik Verma',116),(142,'Ms. Rashi Trivedi',117),(143,'Dr. Akash Khanna',118),(144,'Mr. Rohan Gupta',119),(145,'Ms. Simran Das',120),(146,'Dr. Aditya Choudhary',121),(147,'Mr. Mohan Saxena',122),(148,'Ms. Preeti Mehra',123),(149,'Dr. Ujjwal Menon',124),(150,'Mr. Saurabh Rao',125);
/*!40000 ALTER TABLE `srm_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srm_transport`
--

DROP TABLE IF EXISTS `srm_transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srm_transport` (
  `transport_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int unsigned NOT NULL,
  `bus_number` varchar(20) NOT NULL,
  `route` varchar(255) NOT NULL,
  `pickup_time` varchar(255) NOT NULL,
  `drop_time` varchar(255) NOT NULL,
  PRIMARY KEY (`transport_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `srm_transport_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `srm_students` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srm_transport`
--

LOCK TABLES `srm_transport` WRITE;
/*!40000 ALTER TABLE `srm_transport` DISABLE KEYS */;
INSERT INTO `srm_transport` VALUES (1,1,'BUS001','Route 1','08:00','16:00'),(2,2,'BUS002','Route 2','08:15','16:15'),(3,3,'BUS003','Route 3','08:30','16:30'),(4,4,'BUS004','Route 4','08:45','16:45'),(5,5,'BUS005','Route 5','09:00','17:00'),(6,6,'BUS006','Route 6','08:10','16:10'),(7,7,'BUS007','Route 7','08:20','16:20'),(8,8,'BUS008','Route 8','08:35','16:35'),(9,9,'BUS009','Route 9','08:50','16:50'),(10,10,'BUS010','Route 10','09:05','17:05'),(11,11,'BUS011','Route 11','08:05','16:05'),(12,12,'BUS012','Route 12','08:25','16:25'),(13,13,'BUS013','Route 13','08:40','16:40'),(14,14,'BUS014','Route 14','08:55','16:55'),(15,15,'BUS015','Route 15','09:10','17:10'),(16,16,'BUS016','Route 16','08:12','16:12'),(17,17,'BUS017','Route 17','08:27','16:27'),(18,18,'BUS018','Route 18','08:42','16:42'),(19,19,'BUS019','Route 19','08:57','16:57'),(20,20,'BUS020','Route 20','09:15','17:15'),(21,21,'BUS021','Route 21','08:07','16:07'),(22,22,'BUS022','Route 22','08:22','16:22'),(23,23,'BUS023','Route 23','08:37','16:37'),(24,24,'BUS024','Route 24','08:52','16:52'),(25,25,'BUS025','Route 25','09:20','17:20');
/*!40000 ALTER TABLE `srm_transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srm_user`
--

DROP TABLE IF EXISTS `srm_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srm_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` enum('male','female') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `image` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL DEFAULT 'general',
  `status` enum('active','pending','deleted','') NOT NULL DEFAULT 'pending',
  `authtoken` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srm_user`
--

LOCK TABLES `srm_user` WRITE;
/*!40000 ALTER TABLE `srm_user` DISABLE KEYS */;
INSERT INTO `srm_user` VALUES (1,'Admin','User','admin@srmist.com','admin123','male','9876543210','Administrator','','administrator','active',''),(2,'John','Doe','john.doe@example.com','password123','male','9876543211','Teacher','','teacher','active',''),(3,'Jane','Smith','jane.smith@example.com','password123','female','9876543212','Teacher','','teacher','active',''),(4,'Robert','Brown','robert.brown@example.com','password123','male','9876543213','Teacher','','teacher','active',''),(5,'Emily','Davis','emily.davis@example.com','password123','female','9876543214','Student','','student','active',''),(6,'Michael','Wilson','michael.wilson@example.com','password123','male','9876543215','Student','','student','active',''),(7,'Sophia','Moore','sophia.moore@example.com','password123','female','9876543216','Student','','student','active',''),(8,'William','Taylor','william.taylor@example.com','password123','male','9876543217','Parent','','parent','active',''),(9,'Olivia','Anderson','olivia.anderson@example.com','password123','female','9876543218','Parent','','parent','active',''),(10,'James','Thomas','james.thomas@example.com','password123','male','9876543219','Librarian','','librarian','active','');
/*!40000 ALTER TABLE `srm_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-20  9:20:07
