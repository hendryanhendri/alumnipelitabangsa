CREATE DATABASE  IF NOT EXISTS `mahasiswa` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mahasiswa`;
-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: mahasiswa
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `t_histori_masuk`
--

DROP TABLE IF EXISTS `t_histori_masuk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_histori_masuk` (
  `id_histori` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `login_date` date DEFAULT NULL,
  `login_time` time DEFAULT NULL,
  `host_name` varchar(100) DEFAULT NULL,
  `login_id_mahasiswa` varchar(45) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_histori`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_histori_masuk`
--

LOCK TABLES `t_histori_masuk` WRITE;
/*!40000 ALTER TABLE `t_histori_masuk` DISABLE KEYS */;
INSERT INTO `t_histori_masuk` VALUES (1,'hendrisudiyantosttpb@gmail.com','2019-10-19','07:17:35','Hendri-Sudiyanto',NULL,'::1'),(2,'hendrisudiyantosttpb@gmail.com','2019-10-19','07:18:18','Hendri-Sudiyanto',NULL,'::1'),(3,'afafaf','2019-10-19','07:48:05','Hendri-Sudiyanto',NULL,'::1'),(4,'hendrisudiyantosttpb@gmail.com','2019-10-19','07:49:13','Hendri-Sudiyanto',NULL,'::1'),(5,'sfsfs','2019-10-19','07:50:02','Hendri-Sudiyanto',NULL,'::1'),(6,'hendrisudiyantosttpb@gmail.com','2019-10-19','07:50:09','Hendri-Sudiyanto',NULL,'::1'),(7,'hendrisudiyantosttpb@gmail.com','2019-10-19','07:52:28','Hendri-Sudiyanto',NULL,'::1'),(8,'hendrisudiyantosttpb@gmail.com','2019-10-19','07:53:17','Hendri-Sudiyanto',NULL,'::1'),(9,'hendrisudiyantosttpb@gmail.com','2019-10-19','07:55:51','Hendri-Sudiyanto',NULL,'::1'),(10,'hendrisudiyantosttpb@gmail.com','2019-10-19','08:27:25','Hendri-Sudiyanto',NULL,'::1'),(11,'hendrisudiyantosttpb@gmail.com','2019-10-19','08:36:51','Hendri-Sudiyanto',NULL,'::1'),(12,'hendrisudiyantosttpb@gmail.com','2019-10-19','08:48:11','Hendri-Sudiyanto',NULL,'::1'),(13,'hendrisudiyantosttpb@gmail.com','2019-10-19','08:53:25','Hendri-Sudiyanto',NULL,'::1');
/*!40000 ALTER TABLE `t_histori_masuk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_jurusan`
--

DROP TABLE IF EXISTS `t_jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_jurusan` (
  `id_jurusan` varchar(45) NOT NULL,
  `id_kategori_jurusan` varchar(45) DEFAULT NULL,
  `jurusan` varchar(45) DEFAULT NULL,
  `createddate` varchar(45) DEFAULT NULL,
  `updateddate` datetime DEFAULT NULL,
  `updatedby` datetime DEFAULT NULL,
  `createdby` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_jurusan`
--

LOCK TABLES `t_jurusan` WRITE;
/*!40000 ALTER TABLE `t_jurusan` DISABLE KEYS */;
INSERT INTO `t_jurusan` VALUES ('JRSN-0001','KTGJRS-00001','S1 Manajemen',NULL,NULL,NULL,NULL),('JRSN-0002','KTGJRS-00001','D3 Akutansi',NULL,NULL,NULL,NULL),('JRSN-0003','KTGJRS-00001','S1 Hukum',NULL,NULL,NULL,NULL),('JRSN-0004','KTGJRS-00001','S1 Pendidikan Guru Sekolah Dasar (PGSD)',NULL,NULL,NULL,NULL),('JRSN-0005','KTGJRS-00001','S1 Pendidikan Guru PAUD(PG PAUD)',NULL,NULL,NULL,NULL),('JRSN-0006','KTGJRS-00002','S1 Ekonomi Syariah',NULL,NULL,NULL,NULL),('JRSN-0007','KTGJRS-00003','Teknik Informatika',NULL,NULL,NULL,NULL),('JRSN-0008','KTGJRS-00003','Teknik Lingkungan',NULL,NULL,NULL,NULL),('JRSN-0009','KTGJRS-00003','Arsitektur',NULL,NULL,NULL,NULL),('JRSN-0010','KTGJRS-00003','Teknik Sipil',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_jurusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_kategori_jurusan`
--

DROP TABLE IF EXISTS `t_kategori_jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_kategori_jurusan` (
  `id_kategori_jurusan` varchar(100) NOT NULL,
  `kategori_jurusan` varchar(200) DEFAULT NULL,
  `createddate` varchar(45) DEFAULT NULL,
  `createdby` varchar(100) DEFAULT NULL,
  `updateddate` datetime DEFAULT NULL,
  `updatedby` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_kategori_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_kategori_jurusan`
--

LOCK TABLES `t_kategori_jurusan` WRITE;
/*!40000 ALTER TABLE `t_kategori_jurusan` DISABLE KEYS */;
INSERT INTO `t_kategori_jurusan` VALUES ('KTGJRS-00001','FEBIS | Fakultas Ekonomi Bisnis dan Ilmu Sosial',NULL,NULL,NULL,NULL),('KTGJRS-00002','STAI | Sekolah Tinggi Agama Islam',NULL,NULL,NULL,NULL),('KTGJRS-00003','FT| Fakultas Teknik',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_kategori_jurusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_kegiatan`
--

DROP TABLE IF EXISTS `t_kegiatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `id_kategori_kegiatan` varchar(45) DEFAULT NULL,
  `id_mahasiswa` varchar(45) DEFAULT NULL,
  `judul_kegiatan` varchar(255) DEFAULT NULL,
  `isi_kegiatan` longtext,
  `createdby` varchar(45) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `updateddate` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_kegiatan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_kegiatan`
--

LOCK TABLES `t_kegiatan` WRITE;
/*!40000 ALTER TABLE `t_kegiatan` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_kegiatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_komentar`
--

DROP TABLE IF EXISTS `t_komentar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_komentar` (
  `id_komentar` varchar(45) NOT NULL,
  `id_postingan` varchar(45) DEFAULT NULL,
  `komentar` varchar(45) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_komentar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_komentar`
--

LOCK TABLES `t_komentar` WRITE;
/*!40000 ALTER TABLE `t_komentar` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_komentar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mahasiswa`
--

DROP TABLE IF EXISTS `t_mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_mahasiswa` (
  `id_mahasiswa` varchar(45) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `id_jurusan` varchar(45) DEFAULT NULL,
  `nama_lengkap` varchar(150) DEFAULT NULL,
  `jenis_kelamin` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telp` int(11) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `updateddate` datetime DEFAULT NULL,
  `updatedby` varchar(45) DEFAULT NULL,
  `kota_lahir` varchar(100) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `kewarganegaraan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_mahasiswa`,`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mahasiswa`
--

LOCK TABLES `t_mahasiswa` WRITE;
/*!40000 ALTER TABLE `t_mahasiswa` DISABLE KEYS */;
INSERT INTO `t_mahasiswa` VALUES ('MHSPLTB-0000001','31141234','21232f297a57a5a743894a0e4a801fc3','JRSN-0007','hendri s','laki-laki','hendrisudiyantosttpb@gmail.com',21045555,'Bekasi',NULL,NULL,NULL,NULL,'Kebumen','hen.png','Indonesia');
/*!40000 ALTER TABLE `t_mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_postingan`
--

DROP TABLE IF EXISTS `t_postingan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_postingan` (
  `id_postingan` varchar(100) NOT NULL,
  `id_komentar` varchar(45) DEFAULT NULL,
  `id_sukai` varchar(45) DEFAULT NULL,
  `judul_postingan` varchar(255) DEFAULT NULL,
  `isi_postingan` longtext,
  `tanggal_posting` datetime DEFAULT NULL,
  `diposting_oleh` varchar(100) DEFAULT NULL,
  `posting_diubah` varchar(100) DEFAULT NULL,
  `tanggal_diubah` datetime DEFAULT NULL,
  PRIMARY KEY (`id_postingan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_postingan`
--

LOCK TABLES `t_postingan` WRITE;
/*!40000 ALTER TABLE `t_postingan` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_postingan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sukai`
--

DROP TABLE IF EXISTS `t_sukai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_sukai` (
  `id_sukai` int(11) NOT NULL,
  `id_postingan` varchar(45) DEFAULT NULL,
  `status_suka` varchar(45) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id_sukai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sukai`
--

LOCK TABLES `t_sukai` WRITE;
/*!40000 ALTER TABLE `t_sukai` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sukai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_mahasiswa`
--

DROP TABLE IF EXISTS `view_mahasiswa`;
/*!50001 DROP VIEW IF EXISTS `view_mahasiswa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_mahasiswa` AS SELECT 
 1 AS `id_mahasiswa`,
 1 AS `nim`,
 1 AS `password`,
 1 AS `nama_lengkap`,
 1 AS `jenis_kelamin`,
 1 AS `email`,
 1 AS `telp`,
 1 AS `alamat`,
 1 AS `kota_lahir`,
 1 AS `photo`,
 1 AS `kewarganegaraan`,
 1 AS `jurusan`,
 1 AS `kategori_jurusan`,
 1 AS `createdby`,
 1 AS `createddate`,
 1 AS `updatedby`,
 1 AS `updateddate`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'mahasiswa'
--

--
-- Dumping routines for database 'mahasiswa'
--

--
-- Final view structure for view `view_mahasiswa`
--

/*!50001 DROP VIEW IF EXISTS `view_mahasiswa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_mahasiswa` AS select `a`.`id_mahasiswa` AS `id_mahasiswa`,`a`.`nim` AS `nim`,`a`.`password` AS `password`,`a`.`nama_lengkap` AS `nama_lengkap`,`a`.`jenis_kelamin` AS `jenis_kelamin`,`a`.`email` AS `email`,`a`.`telp` AS `telp`,`a`.`alamat` AS `alamat`,`a`.`kota_lahir` AS `kota_lahir`,`a`.`photo` AS `photo`,`a`.`kewarganegaraan` AS `kewarganegaraan`,`b`.`jurusan` AS `jurusan`,`c`.`kategori_jurusan` AS `kategori_jurusan`,`a`.`createdby` AS `createdby`,`a`.`createddate` AS `createddate`,`a`.`updatedby` AS `updatedby`,`a`.`updateddate` AS `updateddate` from ((`t_mahasiswa` `a` join `t_jurusan` `b` on((`a`.`id_jurusan` = `b`.`id_jurusan`))) join `t_kategori_jurusan` `c` on((`b`.`id_kategori_jurusan` = `c`.`id_kategori_jurusan`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-19  9:34:42
