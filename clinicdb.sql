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
-- Dumping data for table `appointment`
--

LOCK TABLES appointment WRITE;
/*!40000 ALTER TABLE appointment DISABLE KEYS */;
/*!40000 ALTER TABLE appointment ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `category`
--

LOCK TABLES category WRITE;
/*!40000 ALTER TABLE category DISABLE KEYS */;
INSERT INTO category VALUES (1,'Kháng sinh'),(2,'Kháng viêm'),(3,'Giảm đau'),(4,'Dị ứng'),(5,'Hạ sốt'),(6,'Tim mạch'),(7,'Tiêu hóa'),(8,'Sát trùng');
/*!40000 ALTER TABLE category ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `doctor`
--

LOCK TABLES doctor WRITE;
/*!40000 ALTER TABLE doctor DISABLE KEYS */;
INSERT INTO doctor VALUES (4,1,'Nguyễn Thanh Thái','Nam','20/5/1983','0926781294','thanhthai@gmail.com',4);
/*!40000 ALTER TABLE doctor ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medicine`
--

LOCK TABLES medicine WRITE;
/*!40000 ALTER TABLE medicine DISABLE KEYS */;
/*!40000 ALTER TABLE medicine ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medicines_in_prescription`
--

LOCK TABLES medicines_in_prescription WRITE;
/*!40000 ALTER TABLE medicines_in_prescription DISABLE KEYS */;
/*!40000 ALTER TABLE medicines_in_prescription ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `nurse`
--

LOCK TABLES nurse WRITE;
/*!40000 ALTER TABLE nurse DISABLE KEYS */;
INSERT INTO nurse VALUES (1,'Trần Ngọc Trang','Nữ','5/3/1993','0982716592','ngoctrang@gmail.com',5);
/*!40000 ALTER TABLE nurse ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `patient`
--

LOCK TABLES patient WRITE;
/*!40000 ALTER TABLE patient DISABLE KEYS */;
INSERT INTO patient VALUES (1,'Bùi Quang Lan','Nữ','15/8/1975','0372183291','quanglan@gmail.com',6);
/*!40000 ALTER TABLE patient ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES payment_method WRITE;
/*!40000 ALTER TABLE payment_method DISABLE KEYS */;
INSERT INTO payment_method VALUES (1,'Tiền mặt'),(2,'Momo'),(3,'Zalo Pay');
/*!40000 ALTER TABLE payment_method ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `prescription`
--

LOCK TABLES prescription WRITE;
/*!40000 ALTER TABLE prescription DISABLE KEYS */;
/*!40000 ALTER TABLE prescription ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `receipt`
--

LOCK TABLES receipt WRITE;
/*!40000 ALTER TABLE receipt DISABLE KEYS */;
/*!40000 ALTER TABLE receipt ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `schedule`
--

LOCK TABLES schedule WRITE;
/*!40000 ALTER TABLE schedule DISABLE KEYS */;
/*!40000 ALTER TABLE schedule ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `schedule_doctor`
--

LOCK TABLES schedule_doctor WRITE;
/*!40000 ALTER TABLE schedule_doctor DISABLE KEYS */;
/*!40000 ALTER TABLE schedule_doctor ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `schedule_nurse`
--

LOCK TABLES schedule_nurse WRITE;
/*!40000 ALTER TABLE schedule_nurse DISABLE KEYS */;
/*!40000 ALTER TABLE schedule_nurse ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `speciality`
--

LOCK TABLES speciality WRITE;
/*!40000 ALTER TABLE speciality DISABLE KEYS */;
INSERT INTO speciality VALUES (1,'Tim mạch','Chuyên khoa Tim mạch tập trung vào việc chẩn đoán và điều trị các bệnh liên quan đến tim và hệ tuần hoàn. Các bác sĩ tim mạch điều trị các tình trạng như bệnh mạch vành, suy tim, loạn nhịp tim, và tăng huyết áp. Các phương pháp chẩn đoán thường sử dụng bao gồm điện tâm đồ (ECG), siêu âm tim và chụp mạch vành.','https://res.cloudinary.com/dgcezbyyd/image/upload/v1716802465/pexels-karolina-grabowska-4386467_bn5bo3.jpg'),(2,'Hô hấp','Chuyên khoa Hô hấp chuyên về các bệnh liên quan đến hệ hô hấp, bao gồm phổi và đường hô hấp. Các bác sĩ chuyên khoa này điều trị các bệnh như viêm phổi, hen suyễn, bệnh phổi tắc nghẽn mãn tính (COPD), và lao phổi. Các phương pháp chẩn đoán bao gồm đo chức năng hô hấp, X-quang phổi, và CT scan phổi.','https://res.cloudinary.com/dgcezbyyd/image/upload/v1716802632/pexels-karolina-grabowska-5206922_bjojqu.jpg'),(3,'Thần kinh','Chuyên khoa Thần kinh tập trung vào việc chẩn đoán và điều trị các bệnh liên quan đến hệ thần kinh, bao gồm não, tủy sống, và các dây thần kinh ngoại biên. Các bác sĩ thần kinh điều trị các tình trạng như đột quỵ, động kinh, Parkinson, đau đầu, và bệnh Alzheimer. Các phương pháp chẩn đoán thường sử dụng bao gồm MRI, CT scan, và điện não đồ (EEG).','https://res.cloudinary.com/dgcezbyyd/image/upload/v1716802632/pexels-karolina-grabowska-5206922_bjojqu.jpg'),(4,'Tai mũi họng','Chuyên khoa Tai Mũi Họng chuyên về các bệnh và rối loạn liên quan đến tai, mũi, họng, cũng như các cấu trúc liên quan ở đầu và cổ. Các bác sĩ tai mũi họng điều trị các bệnh như viêm tai giữa, viêm xoang, viêm họng, và các vấn đề về giọng nói. Các phương pháp chẩn đoán thường sử dụng bao gồm nội soi, đo thính lực và chụp CT.','https://res.cloudinary.com/dgcezbyyd/image/upload/v1716802632/pexels-karolina-grabowska-5206922_bjojqu.jpg'),(5,'Cơ xương khớp','Chuyên khoa Cơ Xương Khớp tập trung vào việc chẩn đoán và điều trị các bệnh lý liên quan đến xương, khớp và các mô liên kết. Các bác sĩ chuyên khoa này điều trị các bệnh như viêm khớp dạng thấp, lupus, bệnh gút, và loãng xương. Các phương pháp chẩn đoán bao gồm xét nghiệm máu, X-quang, và MRI.','https://res.cloudinary.com/dgcezbyyd/image/upload/v1716802632/pexels-karolina-grabowska-5206922_bjojqu.jpg'),(6,'Tiêu hóa','Chuyên khoa Tiêu hóa chuyên về các bệnh lý liên quan đến hệ tiêu hóa, bao gồm dạ dày, ruột, gan, và tụy. Các bác sĩ tiêu hóa điều trị các bệnh như viêm loét dạ dày, hội chứng ruột kích thích, viêm gan, và bệnh Crohn. Các phương pháp chẩn đoán thường sử dụng bao gồm nội soi dạ dày, nội soi đại tràng và siêu âm bụng.','https://res.cloudinary.com/dgcezbyyd/image/upload/v1716802632/pexels-karolina-grabowska-5206922_bjojqu.jpg'),(7,'Thận','Chuyên khoa Thận tập trung vào việc chẩn đoán và điều trị các bệnh lý liên quan đến thận và hệ tiết niệu. Các bác sĩ thận điều trị các bệnh như suy thận, viêm cầu thận, sỏi thận và tăng huyết áp liên quan đến thận. Các phương pháp chẩn đoán bao gồm xét nghiệm máu, xét nghiệm nước tiểu, siêu âm thận và sinh thiết thận.','https://res.cloudinary.com/dgcezbyyd/image/upload/v1716802632/pexels-karolina-grabowska-5206922_bjojqu.jpg'),(8,'Nội tiết','Chuyên khoa Nội tiết chuyên về các bệnh lý liên quan đến hệ thống nội tiết và các tuyến hormone, như tuyến giáp, tuyến thượng thận, tuyến tụy và tuyến yên. Các bác sĩ nội tiết điều trị các bệnh như tiểu đường, suy giáp, cường giáp, và các rối loạn hormone khác. Các phương pháp chẩn đoán bao gồm xét nghiệm máu, siêu âm tuyến giáp và các xét nghiệm chức năng hormone.\n\n\n\n\n\n\n','https://res.cloudinary.com/dgcezbyyd/image/upload/v1716802632/pexels-karolina-grabowska-5206922_bjojqu.jpg');
/*!40000 ALTER TABLE speciality ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES user WRITE;
/*!40000 ALTER TABLE user DISABLE KEYS */;
INSERT INTO user VALUES (3,'admin','$2a$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_ADMIN','abc'),(4,'doctor1','$2a$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_DOCTOR','abc'),(5,'nurse1','$2a$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_NURSE','abc'),(6,'patient1','$2a$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_PATIENT','abc');
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

-- Dump completed on 2024-06-20 22:02:59
