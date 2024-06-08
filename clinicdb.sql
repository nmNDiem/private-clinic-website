-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: clinicdb
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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS appointment;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE appointment (
  id int NOT NULL AUTO_INCREMENT,
  patient_id int DEFAULT NULL,
  speciality_id int DEFAULT NULL,
  doctor_id int DEFAULT NULL,
  reason text COLLATE utf8mb4_unicode_ci,
  appointment_time datetime DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  confirm_time datetime DEFAULT NULL,
  email_sent tinyint DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_appointment_patient_idx (patient_id),
  KEY fk_appointment_doctor_idx (doctor_id),
  KEY fk_appointment_speciality_idx (speciality_id),
  CONSTRAINT fk_appointment_doctor FOREIGN KEY (doctor_id) REFERENCES doctor (id),
  CONSTRAINT fk_appointment_patient FOREIGN KEY (patient_id) REFERENCES `user` (id),
  CONSTRAINT fk_appointment_speciality FOREIGN KEY (speciality_id) REFERENCES speciality (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES appointment WRITE;
/*!40000 ALTER TABLE appointment DISABLE KEYS */;
/*!40000 ALTER TABLE appointment ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS category;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE category (
  id int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES category WRITE;
/*!40000 ALTER TABLE category DISABLE KEYS */;
INSERT INTO category VALUES (1,'Kháng sinh'),(2,'Kháng viêm'),(3,'Giảm đau'),(4,'Dị ứng'),(5,'Hạ sốt'),(6,'Tim mạch'),(7,'Tiêu hóa'),(8,'Sát trùng');
/*!40000 ALTER TABLE category ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS doctor;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE doctor (
  id int NOT NULL AUTO_INCREMENT,
  speciality_id int DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_doctor_speciality_idx (speciality_id),
  CONSTRAINT fk_doctor_speciality FOREIGN KEY (speciality_id) REFERENCES speciality (id),
  CONSTRAINT fk_doctor_user FOREIGN KEY (id) REFERENCES `user` (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES doctor WRITE;
/*!40000 ALTER TABLE doctor DISABLE KEYS */;
/*!40000 ALTER TABLE doctor ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS medicine;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE medicine (
  id int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  price double NOT NULL,
  quantity int DEFAULT NULL,
  category_id int NOT NULL,
  PRIMARY KEY (id),
  KEY fk_medicine_category_idx (category_id),
  CONSTRAINT fk_medicine_category FOREIGN KEY (category_id) REFERENCES category (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES medicine WRITE;
/*!40000 ALTER TABLE medicine DISABLE KEYS */;
/*!40000 ALTER TABLE medicine ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicines_in_prescription`
--

DROP TABLE IF EXISTS medicines_in_prescription;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE medicines_in_prescription (
  id int NOT NULL AUTO_INCREMENT,
  medicine_id int NOT NULL,
  quantity int DEFAULT NULL,
  dosage varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  prescription_id int NOT NULL,
  note varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_medicines_medicine_idx (medicine_id),
  KEY fk_medicines_prescription_idx (prescription_id),
  CONSTRAINT fk_medicines_medicine FOREIGN KEY (medicine_id) REFERENCES medicine (id),
  CONSTRAINT fk_medicines_prescription FOREIGN KEY (prescription_id) REFERENCES prescription (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines_in_prescription`
--

LOCK TABLES medicines_in_prescription WRITE;
/*!40000 ALTER TABLE medicines_in_prescription DISABLE KEYS */;
/*!40000 ALTER TABLE medicines_in_prescription ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS payment_method;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE payment_method (
  id int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES payment_method WRITE;
/*!40000 ALTER TABLE payment_method DISABLE KEYS */;
INSERT INTO payment_method VALUES (1,'Tiền mặt'),(2,'Momo'),(3,'Zalo Pay');
/*!40000 ALTER TABLE payment_method ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS prescription;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE prescription (
  id int NOT NULL AUTO_INCREMENT,
  symptoms varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  diagnosis varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  appointment_id int NOT NULL,
  note varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  created_date datetime NOT NULL,
  PRIMARY KEY (id),
  KEY fk_prescription_appointment_idx (appointment_id),
  CONSTRAINT fk_prescription_appointment FOREIGN KEY (appointment_id) REFERENCES appointment (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES prescription WRITE;
/*!40000 ALTER TABLE prescription DISABLE KEYS */;
/*!40000 ALTER TABLE prescription ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS receipt;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE receipt (
  id int NOT NULL AUTO_INCREMENT,
  appointment_id int NOT NULL,
  medical_cost double DEFAULT NULL,
  medicine_cost double DEFAULT NULL,
  payment_method_id int DEFAULT NULL,
  payment_time datetime DEFAULT NULL,
  nurse_id int NOT NULL,
  PRIMARY KEY (id),
  KEY fk_receipt_appointment_idx (appointment_id),
  KEY fk_receipt_payment_method_idx (payment_method_id),
  KEY fk_receipt_nurse_idx (nurse_id),
  CONSTRAINT fk_receipt_appointment FOREIGN KEY (appointment_id) REFERENCES appointment (id),
  CONSTRAINT fk_receipt_nurse FOREIGN KEY (nurse_id) REFERENCES `user` (id),
  CONSTRAINT fk_receipt_payment_method FOREIGN KEY (payment_method_id) REFERENCES payment_method (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES receipt WRITE;
/*!40000 ALTER TABLE receipt DISABLE KEYS */;
/*!40000 ALTER TABLE receipt ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS schedule;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  id int NOT NULL AUTO_INCREMENT,
  user_id int NOT NULL,
  work_date date NOT NULL,
  shift varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  note varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_schedule_user_idx (user_id),
  CONSTRAINT fk_schedule_user FOREIGN KEY (user_id) REFERENCES `user` (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES schedule WRITE;
/*!40000 ALTER TABLE schedule DISABLE KEYS */;
/*!40000 ALTER TABLE schedule ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speciality`
--

DROP TABLE IF EXISTS speciality;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE speciality (
  id int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  image varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speciality`
--

LOCK TABLES speciality WRITE;
/*!40000 ALTER TABLE speciality DISABLE KEYS */;
/*!40000 ALTER TABLE speciality ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS user;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  id int NOT NULL AUTO_INCREMENT,
  username varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  user_role varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  avatar varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  gender varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  birthday date DEFAULT NULL,
  phone_number varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  email varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES user WRITE;
/*!40000 ALTER TABLE user DISABLE KEYS */;
/*!40000 ALTER TABLE user ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-08 22:28:03
