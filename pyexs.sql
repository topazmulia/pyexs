-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2022 at 02:09 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pyexs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator'),
('admin01', '21232f297a57a5a743894a0e4a801fc3', 'Topaz Mulia Abadi');

-- --------------------------------------------------------

--
-- Table structure for table `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `kode_pengetahuan` int(11) NOT NULL,
  `kode_penyakit` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL,
  `mb` double(11,1) NOT NULL,
  `md` double(11,1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`kode_pengetahuan`, `kode_penyakit`, `kode_gejala`, `mb`, `md`) VALUES
(1, 1, 3, 0.7, 0.3),
(2, 1, 2, 0.6, 0.4),
(3, 1, 1, 0.7, 0.3),
(4, 1, 25, 0.8, 0.2),
(5, 2, 6, 0.9, 0.1),
(6, 2, 4, 0.7, 0.3),
(7, 2, 5, 0.9, 0.1),
(8, 2, 13, 0.6, 0.3),
(9, 3, 7, 0.8, 0.2),
(10, 3, 8, 0.9, 0.1),
(11, 3, 9, 0.9, 0.1),
(12, 3, 1, 0.6, 0.3),
(13, 4, 12, 0.9, 0.1),
(14, 4, 11, 0.7, 0.3),
(15, 4, 23, 0.7, 0.3),
(16, 5, 10, 0.9, 0.1),
(17, 5, 11, 0.8, 0.2),
(18, 5, 23, 0.8, 0.2),
(19, 5, 13, 0.8, 0.2),
(20, 6, 23, 0.7, 0.3),
(21, 6, 14, 0.9, 0.1),
(22, 6, 24, 0.7, 0.3),
(23, 6, 15, 0.7, 0.3),
(24, 6, 16, 0.8, 0.2),
(25, 6, 17, 0.8, 0.2),
(27, 6, 18, 0.8, 0.2),
(28, 7, 19, 0.8, 0.2),
(29, 7, 20, 0.9, 0.1),
(30, 7, 21, 0.9, 0.1),
(31, 7, 22, 0.6, 0.4);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` int(11) NOT NULL,
  `nama_gejala` varchar(110) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
(1, 'Pendarahan Ringan'),
(2, 'Hamil (+)'),
(3, 'Nyeri pada bahu'),
(4, 'Perdarahan yang biasanya disertai kram pada perut bagian bawah'),
(5, 'Keluarnya cairan atau jaringan (gumpalan darah) dari vagina'),
(6, 'Hilangnya tanda-tanda kehamilan seperti mual atau payudara yang sensitive / Hamil (-)'),
(7, 'Mual dan muntah yang parah'),
(8, 'Keluarnya kista berbentuk anggur dari vagina.'),
(9, 'Besar rahim tidak sesuai usia kehamilan.'),
(10, 'Perdarahan tanpa disertai rasa sakit khususnya 3 bulan terakhir masa kehamilan'),
(11, 'Nyeri punggung'),
(12, 'Perdarahan disertai rasa sakit khususnya 3 bulan terakhir masa kehamilan'),
(13, 'Gerakan bayi dalam kandungan yang kurang aktif atau tidak seperti biasanya.'),
(14, 'Tekanan darah lebih dari normal (>140/90 mHg)'),
(15, 'Sakit kepala parah.'),
(16, 'Berkurangnya volume urine.'),
(17, 'Gangguan penglihatan, misalnya pandangan hilang secara sementara, menjadi kabur, atau sensitif terhadap cahaya'),
(18, 'Kejang-kejang'),
(19, 'Rasa ingin selalu buang air kecil'),
(20, 'Nyeri atau perih saat buang air kecil'),
(21, 'Warna urine yang keruh'),
(22, 'Demam'),
(23, 'Nyeri perut'),
(24, 'Sesak nafas'),
(25, 'Lemah, pusing, hingga pingsan.');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL DEFAULT '0',
  `penyakit` text NOT NULL,
  `gejala` text NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `hasil_nilai` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `tanggal`, `penyakit`, `gejala`, `hasil_id`, `hasil_nilai`) VALUES
(1, '2022-01-15 17:17:04', 'a:1:{i:2;s:6:\"0.9599\";}', 'a:4:{i:4;s:1:\"2\";i:5;s:1:\"1\";i:6;s:1:\"2\";i:13;s:1:\"3\";}', 2, '0.9599'),
(2, '2022-01-15 18:12:31', 'a:1:{i:7;s:6:\"0.4995\";}', 'a:4:{i:19;s:1:\"3\";i:20;s:1:\"5\";i:21;s:1:\"4\";i:22;s:1:\"4\";}', 7, '0.4995'),
(3, '2022-01-15 18:13:23', 'a:1:{i:3;s:6:\"0.4832\";}', 'a:3:{i:7;s:1:\"6\";i:8;s:1:\"3\";i:9;s:1:\"4\";}', 3, '0.4832'),
(4, '2022-01-15 18:13:50', 'a:3:{i:5;s:6:\"0.6000\";i:6;s:6:\"0.4000\";i:4;s:6:\"0.4000\";}', 'a:1:{i:23;s:1:\"1\";}', 5, '0.6000'),
(5, '2022-02-04 15:25:38', 'a:2:{i:1;s:6:\"0.4893\";i:3;s:6:\"0.1800\";}', 'a:3:{i:1;s:1:\"3\";i:2;s:1:\"1\";i:3;s:1:\"4\";}', 1, '0.4893'),
(6, '2022-02-04 15:26:07', 'a:2:{i:1;s:6:\"0.6253\";i:3;s:6:\"0.2400\";}', 'a:4:{i:1;s:1:\"2\";i:2;s:1:\"1\";i:3;s:1:\"4\";i:25;s:1:\"3\";}', 1, '0.6253'),
(7, '2022-02-04 15:29:50', 'a:3:{i:3;s:6:\"0.6672\";i:6;s:6:\"0.6464\";i:5;s:6:\"0.6400\";}', 'a:5:{i:7;s:1:\"3\";i:9;s:1:\"3\";i:10;s:1:\"2\";i:14;s:1:\"3\";i:15;s:1:\"2\";}', 3, '0.6672'),
(8, '2022-02-12 09:24:30', 'a:2:{i:3;s:6:\"0.6048\";i:1;s:6:\"0.5430\";}', 'a:4:{i:1;s:1:\"2\";i:2;s:1:\"1\";i:3;s:1:\"4\";i:7;s:1:\"2\";}', 3, '0.6048'),
(9, '2022-02-14 23:16:22', 'a:1:{i:2;s:6:\"0.8000\";}', 'a:1:{i:5;s:1:\"1\";}', 2, '0.8000'),
(10, '2022-02-15 00:27:09', 'a:2:{i:1;s:6:\"0.7984\";i:3;s:6:\"0.3000\";}', 'a:4:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:25;s:1:\"1\";}', 1, '0.7984'),
(11, '2022-02-15 00:28:18', 'a:4:{i:3;s:6:\"0.9720\";i:5;s:6:\"0.6000\";i:1;s:6:\"0.5800\";i:2;s:6:\"0.3000\";}', 'a:5:{i:1;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";i:13;s:1:\"1\";i:25;s:1:\"1\";}', 3, '0.9720'),
(12, '2022-02-15 01:41:48', 'a:2:{i:1;s:6:\"0.8848\";i:3;s:6:\"0.3000\";}', 'a:4:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:25;s:1:\"1\";}', 1, '0.8848'),
(13, '2022-02-15 02:26:07', 'a:2:{i:1;s:6:\"0.8502\";i:3;s:6:\"0.3000\";}', 'a:4:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:25;s:1:\"2\";}', 1, '0.8502'),
(14, '2022-02-15 02:34:13', 'a:2:{i:3;s:6:\"0.3000\";i:1;s:6:\"0.1840\";}', 'a:4:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"6\";i:25;s:1:\"6\";}', 3, '0.3000'),
(15, '2022-02-15 02:37:32', 'a:1:{i:2;s:6:\"0.6960\";}', 'a:4:{i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"6\";i:13;s:1:\"6\";}', 2, '0.6960'),
(16, '2022-02-15 15:36:53', 'a:3:{i:1;s:6:\"0.7228\";i:2;s:6:\"0.4800\";i:3;s:6:\"0.3000\";}', 'a:4:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"3\";i:25;s:1:\"4\";}', 1, '0.7228'),
(17, '2022-02-15 18:23:19', 'a:0:{}', 'a:0:{}', 0, ''),
(18, '2022-02-15 22:26:35', 'a:3:{i:5;s:6:\"0.9488\";i:4;s:6:\"0.7840\";i:2;s:6:\"0.1800\";}', 'a:4:{i:10;s:1:\"1\";i:11;s:1:\"1\";i:12;s:1:\"2\";i:13;s:1:\"3\";}', 5, '0.9488'),
(19, '2022-02-15 22:31:52', 'a:1:{i:7;s:6:\"0.7437\";}', 'a:4:{i:19;s:1:\"1\";i:20;s:1:\"5\";i:21;s:1:\"3\";i:22;s:1:\"3\";}', 7, '0.7437'),
(20, '2022-02-16 00:46:43', 'a:3:{i:3;s:6:\"0.8560\";i:5;s:6:\"0.4800\";i:4;s:6:\"0.3200\";}', 'a:3:{i:7;s:1:\"1\";i:9;s:1:\"2\";i:11;s:1:\"2\";}', 3, '0.8560'),
(21, '2022-03-01 16:37:00', 'a:2:{i:3;s:6:\"0.7048\";i:1;s:6:\"0.2400\";}', 'a:2:{i:1;s:1:\"3\";i:8;s:1:\"2\";}', 3, '0.7048'),
(22, '2022-03-01 17:32:15', 'a:2:{i:1;s:6:\"0.6464\";i:3;s:6:\"0.2400\";}', 'a:2:{i:1;s:1:\"2\";i:25;s:1:\"2\";}', 1, '0.6464'),
(23, '2022-03-01 17:41:24', 'a:2:{i:1;s:6:\"0.6464\";i:3;s:6:\"0.2400\";}', 'a:2:{i:1;s:1:\"2\";i:25;s:1:\"2\";}', 1, '0.6464'),
(24, '2022-03-01 17:47:02', 'a:3:{i:6;s:6:\"0.6464\";i:5;s:6:\"0.4800\";i:4;s:6:\"0.3200\";}', 'a:2:{i:14;s:1:\"3\";i:23;s:1:\"2\";}', 6, '0.6464'),
(25, '2022-03-01 17:49:43', 'a:5:{i:3;s:6:\"0.7264\";i:6;s:6:\"0.6464\";i:1;s:6:\"0.6464\";i:5;s:6:\"0.4800\";i:4;s:6:\"0.3200\";}', 'a:5:{i:1;s:1:\"2\";i:8;s:1:\"2\";i:14;s:1:\"3\";i:23;s:1:\"2\";i:25;s:1:\"2\";}', 3, '0.7264'),
(26, '2022-03-01 17:54:58', 'a:5:{i:3;s:6:\"0.7048\";i:6;s:6:\"0.6464\";i:1;s:6:\"0.6048\";i:5;s:6:\"0.4800\";i:4;s:6:\"0.3200\";}', 'a:5:{i:1;s:1:\"3\";i:8;s:1:\"2\";i:14;s:1:\"3\";i:23;s:1:\"2\";i:25;s:1:\"2\";}', 3, '0.7048');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `kondisi` varchar(64) NOT NULL,
  `ket` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kondisi`
--

INSERT INTO `kondisi` (`id`, `kondisi`, `ket`) VALUES
(1, 'Pasti ya', ''),
(2, 'Hampir pasti ya', ''),
(3, 'Kemungkinan besar ya', ''),
(4, 'Mungkin ya', ''),
(5, 'Tidak tahu', ''),
(6, 'Mungkin tidak', ''),
(7, 'Kemungkinan besar tidak', ''),
(8, 'Hampir pasti tidak', ''),
(9, 'Pasti tidak', '');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` int(11) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `det_penyakit` varchar(500) NOT NULL,
  `srn_penyakit` varchar(5000) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `det_penyakit`, `srn_penyakit`, `gambar`) VALUES
(1, 'Kehamilan Ektropik', 'Kehamilan yang terjadi ketika telur yang dibuahi diimplan di luar uterus.\r\n\r\nTelur yang telah dibuahi tidak dapat bertahan hidup di luar uterus.', 'Sebaiknya Anda segera ke rumah sakit jika mengalami gejala-gejala tersebut. Umumnya penyakit ini ditangani dengan suntikan methotrexate untuk menghentikan pertumbuhan sekaligus menghancurkan sel-sel yang sudah terbentuk. atau dengan cara operasi. Kehamilan ektopik tidak bisa dicegah sepenuhnya. \r\n\r\nAgar terhindar dari kondisi ini, Anda harus menghindari atau mengurangi faktor risikonya. Contohnya adalah dengan menjalani tes darah dan USG sebagai pendeteksian awal atau memantau perkembangan kehamilan. Terutama bagi wanita yang pernah mengalami kehamilan ektopik.', '095239700_1615263956-Kehamilan_ektopik.jpg'),
(2, 'Abortus', 'Kehilangan spontan kehamilan seorang wanita sebelum minggu ke-20 yang dapat menyakitkan secara fisik dan emosional.\r\n\r\nKeguguran adalah jenis keguguran yang paling umum dan sering terjadi karena janin tidak berkembang secara normal.', 'Jika mengalami gejala-gejala tersebut segera ke rumah sakit untuk pemeriksaan lebih lanjut. Setelah memastikan diagnosis keguguran, Anda dapat memilih untuk menunggu sampai seluruh jaringan luruh dan keluar secara alami dari rahim atau dengan penanganan obat dan operasi. Karena penyebabnya yang belum diketahui secara pasti, keguguran umumnya tidak dapat dicegah. \r\n\r\nTetapi, ada beberapa langkah yang bisa dilakukan guna menurunkan risiko keguguran. Langkah-langkah tersebut meliputi: \r\n1. Menerapkan pola makan sehat dan seimbang, terutama meningkatkan konsumsi makanan dengan kandungan serat tinggi. \r\n2. Tidak merokok, mengonsumsi minuman keras, dan menggunakan obat-obatan terlarang selama masa kehamilan. \r\n3. Mencegah infeksi-infeksi tertentu selama masa kehamilan, misalnya dengan menerima vaksin sesuai anjuran dokter. \r\n4. Menjaga berat badan yang sehat sebelum dan saat hamil. \r\n5. Menangani penyebab keguguran yang bisa dideteksi, seperti otot serviks yang lemah. \r\n\r\nKelainan ini dapat diatasi melalui operasi pengencangan otot serviks, sehingga dapat menurunkan risiko keguguran.', '4. abortus.jpg'),
(3, 'Mola Hidatidosa (Hamil Anggur)', 'Tumor non-kanker yang berkembang di rahim akibat kehamilan nonviable.\r\n\r\nEmbrio atau jaringan plasenta bisa ada atau tidak. Sayangnya, jika ada embrio, tidak akan mampu bertahan.', 'Plasenta atau ari-ari yang terbentuk pada penderita hamil anggur tidak normal dan terbentuk seperti sekumpulan anggur. Sering kali janin sama sekali tidak terbentuk, hanya jaringan plasenta yang abnormal.\r\n\r\nSebagian besar penderita hamil anggur (mola hydatidosa) akan mengalami keguguran spontan. Keguguran tersebut biasanya mengeluarkan jaringan yang berbentuk gumpalan-gumpalan yang menyerupai sekumpulan buah anggur.\r\n\r\nKarena kemiripan gejalanya dengan kehamilan biasa, hamil anggur cenderung tidak disadari oleh penderita. Konsultasi pada dokter sebaiknya segera dilakukan oleh wanita hamil apabila dirinya merasakan kejanggalan, terutama pada awal masa kehamilan. Jika positif didiagnosis mengalami hamil anggur, dokter akan menganjurkan penderita untuk menjalani penanganan secepatnya seperti operasi pengangkatan jaringan abnormal. Langkah ini dapat dilakukan melalui beberapa prosedur yang meliputi Kuret atau Histerektomi (pengangkatan Rahim) jika penderita tidak ingin memiliki keturunan lagi.', '5..jpg'),
(4, 'Plasenta Previa', 'Plasenta previa adalah kondisi ketika ari-ari atau plasenta berada di bagian bawah rahim, sehingga menutupi sebagian atau seluruh jalan lahir. Selain menutupi jalan lahir, plasenta previa dapat menyebabkan perdarahan hebat, baik sebelum maupun saat persalinan.', 'Pada ibu hamil yang tidak mengalami perdarahan atau hanya mengalami perdarahan ringan, biasanya dokter akan memperbolehkan ibu hamil melakukan perawatan secara mandiri di rumah, yang berupa:\r\n\r\n-Banyak berbaring\r\n-Menghindari olahraga\r\n-Menghindari hubungan intim\r\n\r\nMeskipun tidak membutuhkan perawatan di rumah sakit, pasien tetap harus waspada dan segera mencari pertolongan medis apabila perdarahan memburuk atau tidak berhenti.\r\n\r\nBila ibu hamil mengalami perdarahan hebat apalagi berulang, dokter kandungan akan menyarankan agar bayi dilahirkan secepatnya melalui operasi caesar. Namun jika usia kandungannya kurang dari 36 minggu, ibu hamil akan diberikan suntikan obat kortikosteroid terlebih dahulu untuk mempercepat pematangan paru-paru janin. Bila perlu, ibu hamil juga akan diberikan transfusi darah untuk mengganti darah yang hilang.\r\n\r\nIbu hamil yang mengalami plasenta previa sebenarnya masih dapat melahirkan normal, asalkan letak plasenta tidak menutupi jalan lahir atau hanya menutupi sebagian. Tetapi jika plasenta menutupi seluruh jalan lahir, dokter akan menyarankan operasi caesar', 'plasenta-previa.jpg'),
(5, 'Solusio Plasenta', 'Solusio Plasenta adalah lepasnya plasenta dari dinding rahim bagian dalam sebelum proses persalinan, baik seluruhnya maupun sebagian.', 'Konsultasi pada dokter sebaiknya segera dilakukan apabila seorang wanita hamil mengalami gejala seperti yang disebutkan untuk pemeriksaan lebih lanjut. Meskipun rawan terjadi di trimester ketiga, solusio plasenta juga bisa terjadi kapan saja setelah usia kandungan memasuki minggu ke-20.\r\n\r\n Kondisi ini tidak dapat dicegah secara langsung, namun ibu hamil dapat menurunkan risikonya dengan cara: \r\n1. Mengonsumsi suplemen asam folat sesuai petunjuk dokter. \r\n2. Memeriksakan kondisi kandungan secara rutin selama masa kehamilan. \r\n3. Mengobati tekanan darah tinggi bila ada sesuai petunjuk dokter. \r\n4. Tidak menggunakan narkoba. \r\n5. Berhenti merokok.', 'solusio-plasenta.jpg'),
(6, 'Preklampsia ( Pre-eclampsia )', 'Komplikasi kehamilan berpotensi berbahaya yang ditandai dengan tekanan darah tinggi.', 'Karena penyebab preeklamsia dan eklamsia tidak diketahui secara pasti, maka langkah pencegahan cukup sulit dilakukan. Namun, dokter dapat menyarankan sejumlah hal kepada ibu hamil untuk meminimalisasi risiko terjadinya kedua kondisi tersebut beserta komplikasinya. Di antaranya adalah: \r\n1. Mengonsumsi aspirin dosis rendah. \r\n2. Menjaga tekanan darah. \r\n3. Mengonsumsi obat antioksidan atau Obat antihipertensi, Obat kortikosteroid, dan Obat MgSO4', 'Pre-eclampsia-Pathophysiology.jpg'),
(7, 'Infeksi Saluran Kemih (ISK)', 'ISK adalah infeksi bakteri yang menyerang saluran kemih atau kencing dan organ di sekitarnya.\r\n\r\nBakteri dapat masuk lewat uretra (lubang kencing) kemudian menginfeksi saluran kencing (ureter), kandung kemih, dan bahkan mungkin ginjal.', 'Penyembuhan ISK dapat dilakukan dengan menggunakan obat-obatan antibiotik . Selain antibiotik, obat pereda nyeri seperti parasetamol juga mungkin diperlukan untuk meredakan demam atau rasa sakit yang ada.\r\n\r\nBerbagai kebiasaan sehat ini dapat membantu terhindar dari risiko infeksi saluran kemih saat hamil. Termasuk juga efektif untuk mengatasi ISK yang sudah telanjur muncul.\r\n\r\nBerikut pengobatan yang bisa Anda dilakukan di rumah:\r\n1. Perbanyak minum air\r\n2. Penuhi asupan gizi\r\n3. Hindari menahan kencing saat hamil\r\n4. Jaga kebersihan saluran kencing\r\n5. Jus cranberry\r\n6. Konsumsi lebih banyak vitamin C', 'Cara-Cegah-Infeksi-Saluran-Kemih.original.jpegquality-90.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `kode_post` int(11) NOT NULL,
  `nama_post` varchar(50) NOT NULL,
  `det_post` varchar(15000) NOT NULL,
  `srn_post` varchar(15000) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`kode_post`, `nama_post`, `det_post`, `srn_post`, `gambar`) VALUES
(2, 'Kehamilan Ektropik', '<p><strong>Kehamilan Ektropik</strong> adalah hamil di luar kandungan atau rahim. Kondisi ini menyebabkan perdarahan dari vagina dan nyeri hebat di panggul atau perut bawah. Kehamilan ektopik harus segera ditangani karena dapat berbahaya, dan janin juga tidak akan berkembang dengan normal.</p>\r\n\r\n<p>Kehamilan ektopik cenderung tidak menunjukkan gejala pada tahap awal. Tanda awal kehamilan ektopik mirip dengan kehamilan biasa, seperti mual, payudara mengeras, dan menstruasi&nbsp;terhenti.</p>\r\n\r\n<p>Sedangkan pada tahap lanjut, ada beberapa gejala yang sering dirasakan penderita kehamilan ektopik, yaitu nyeri perut dan pendarahan dari vagina. Gejala-gejala tersebut akan terasa semakin parah seiring waktu.&nbsp;Terkadang, gejala nyeri perut karena kehamilan ektopik juga bisa mirip dengan gejala usus buntu.</p>\r\n\r\n<p><strong>Penyebab Kehamilan Ektropik</strong></p>\r\n\r\n<p>Meskipun belum diketahui secara pasti apa yang menyebabkan kehamilan ektopik, namun kondisi ini sering kali dikaitkan dengan kerusakan pada tuba falopi, yaitu saluran yang menghubungkan indung telur dan rahim.</p>\r\n\r\n<p>Kerusakan tuba falopi dapat disebabkan oleh:</p>\r\n\r\n<ul>\r\n	<li>Faktor genetik.</li>\r\n	<li>Bawaan lahir.</li>\r\n	<li>Ketidakseimbangan hormon.</li>\r\n	<li>Peradangan akibat infeksi atau prosedur medis.</li>\r\n	<li>Perkembangan organ reproduksi yang tidak normal.</li>\r\n</ul>\r\n\r\n<p><strong>Faktor Resiko Kehamilan Ektropik</strong></p>\r\n\r\n<p>Kehamilan ektopik dapat dialami oleh setiap wanita yang telah aktif berhubungan intim. Ada beberapa faktor yang dapat meningkatkan risiko terjadinya kehamilan ektopik, yaitu:</p>\r\n\r\n<ul>\r\n	<li>Berusia 35 tahun atau lebih saat hamil.</li>\r\n	<li>Memiliki riwayat radang panggul dan&nbsp;<em>endometriosis</em></li>\r\n	<li>Menderita penyakit menular seksual, seperti gonore dan <em>chlamydia</em><em>.</em></li>\r\n	<li>Mengalami kehamilan ektopik pada kehamilan sebelumnya.</li>\r\n	<li>Mengalami keguguran berulang</li>\r\n	<li>Pernah menjalani operasi pada area perut dan panggul.</li>\r\n	<li>Pernah menjalani pengobatan terkait masalah kesuburan.</li>\r\n	<li>Menggunakan alat kontrasepsi jenis spiral.</li>\r\n	<li>Memiliki kebiasaan merokok.</li>\r\n</ul>\r\n', '<p><strong>Saran&nbsp;</strong></p>\r\n\r\n<p>Melakukan pemeriksaan dengan&nbsp;<em>USG Transvaginal</em>&nbsp;untuk memastikan terjadinya kehamilan ektopik. Selain membantu&nbsp;melihat kondisi organ reproduksi pasien, prosedur ini dapat memastikan lokasi kehamilan secara akurat.</p>\r\n\r\n<p>Tes lain yang dapat dilakukan adalah tes darah, untuk memeriksa hormon kehamilan,&nbsp;misalnya hormon <em>hCG</em> dan <em>progesteron</em>. Pada kehamilan ektopik, kadar kedua hormon tersebut cenderung lebih rendah dibandingkan kehamilan normal.</p>\r\n\r\n<p><strong>Pencegahan :</strong></p>\r\n\r\n<p>Kehamilan ektopik tidak bisa dicegah, tetapi risiko untuk mengalami kondisi ini dapat diturunkan. Ada sejumlah cara yang bisa dilakukan, di antaranya:</p>\r\n\r\n<ul>\r\n	<li>Hindari perilaku seks yang berisiko, misalnya bergonta-ganti pasangan seks dengan tidak menggunakan kondom.</li>\r\n	<li>Hindari merokok, sejak sebelum hamil.</li>\r\n</ul>\r\n\r\n<p><strong>Pengobatan</strong><strong>&nbsp;Kehamilan Ektopik</strong></p>\r\n\r\n<p>Sel telur yang telah dibuahi tidak akan bisa tumbuh normal jika berada di luar rahim. Oleh karena itu, jaringan ektopik harus segera diangkat, agar pasien terhindar dari komplikasi serius.</p>\r\n\r\n<p>Ada beberapa pilihan pengobatan yang dapat dilakukan untuk menangani kehamilan ektopik, antara lain:</p>\r\n\r\n<ul>\r\n	<li><strong>Suntik&nbsp;<em>methotrexate</em></strong></li>\r\n</ul>\r\n\r\n<p>Kehamilan ektopik tahap awal dapat diatasi dengan suntik&nbsp;<em>methotrexate</em>. Obat ini akan menghentikan pertumbuhan sel ektopik, sekaligus menghancurkan sel yang sudah terbentuk. Setelah pemberian suntikan, dokter akan memantau kadar hormon <em>hCG</em> dalam darah tiap 2-3 hari, sampai kadarnya menurun. Menurunnya kadar <em>hCG</em> menandakan kehamilan sudah tidak lagi berkembang.</p>\r\n\r\n<ul>\r\n	<li><strong>Operasi laparoskopi</strong></li>\r\n</ul>\r\n\r\n<p>Pilihan lain untuk mengatasi kehamilan ektopik adalah dengan operasi lubang kunci atau&nbsp;<em>laparoskopi</em>. Melalui prosedur ini, dokter kandungan akan mengangkat jaringan ektopik dan bagian tuba falopi tempat jaringan ektopik menempel.</p>\r\n\r\n<p>Namun bila memungkinkan, bagian tuba falopi tersebut cukup diperbaiki tanpa harus diangkat.&nbsp;Hal ini bisa dilakukan untuk meningkatkan peluang hamil&nbsp;di kemudian hari</p>\r\n\r\n<ul>\r\n	<li><strong>Operasi laparotomi</strong></li>\r\n</ul>\r\n\r\n<p>Untuk menangani pasien yang mengalami perdarahan berat akibat kehamilan ektopik, dokter kandungan&nbsp;akan melakukan tindakan darurat berupa laparotomi. Dalam <em>laparotomi</em>, dokter akan membuat sayatan besar di perut sebagai jalan untuk mengangkat jaringan ektopik dan tuba falopi yang pecah.</p>\r\n', '095239700_1615263956-Kehamilan_ektopik.jpg'),
(3, 'Abortus', '<p><strong>Abortus</strong> atau yang lebih sering disebut keguguran adalah kematian janin dalam kandungan sebelum usia kehamilan mencapai 20 minggu.</p>\r\n\r\n<p>Umumnya, abortus dianggap terjadi karena terdapat kesalahan pada kehamilan atau kesehatan ibu. Faktanya, 2 dari 3 abortus terjadi karena adanya kelainan pada kromosom janin yang membuat ia tidak bisa tumbuh dan akhirnya gugur dari kandungan.</p>\r\n\r\n<p>Penyebab abortus belum diketahui dengan pasti, namun diduga berkaitan dengan kelainan kromosom janin. Kelainan kromosom menyebabkan kegagalan implantasi akibat peningkatan reaksi sistem imun ibu terhadap janin dan terganggunya perkembangan plasenta sehingga terjadi apoptosis.</p>\r\n\r\n<p><strong>Macam-Macam Abortus</strong></p>\r\n\r\n<p>Di dunia medis, abortus atau keguguran dibedakan menjadi beberapa macam, antara lain:</p>\r\n\r\n<p><strong>1. Abortus komplet</strong></p>\r\n\r\n<p>Pada jenis keguguran ini, mulut rahim terbuka lebar dan seluruh jaringan janin keluar dari rahim. Ibu hamil yang mengalami ini akan mengalami perdarahan vagina serta nyeri perut seperti sedang melahirkan. Biasanya, abortus komplet terjadi pada usia kehamilan kurang dari 12 minggu.</p>\r\n\r\n<p><strong>2. Abortus inkomplet</strong></p>\r\n\r\n<p>Pada keadaan ini, jaringan janin sudah keluar sebagian. Umumnya, perdarahan serta nyeri perut akan berlangsung lama dan baru bisa berhenti setelah seluruh jaringan telah keluar atau dilakukan kuretase.&nbsp;</p>\r\n\r\n<p><strong>3. Abortus insipiens</strong></p>\r\n\r\n<p>Pada abortus insipiens terjadi perdarahan disertai nyeri perut, tetapi jaringan janin masih utuh berada di dalam rahim. Meski begitu, keguguran tetap tidak dapat dihindari karena mulut rahim sudah terbuka.</p>\r\n\r\n<p><strong>4. Ancaman abortus</strong></p>\r\n\r\n<p>Ancaman abortus sebenarnya bukan keguguran. Pada kondisi ini, mulut rahim masih tertutup dan janin masih hidup di dalam rahim. Perdarahan dari vagina dan nyeri perut yang dialami pun masih tergolong ringan. Risiko terjadinya keguguran memang lebih besar. Namun, biasanya kehamilan masih mungkin dilanjutkan.</p>\r\n\r\n<p><strong>5. Abortus tak terduga</strong></p>\r\n\r\n<p>Pada abortus tak terduga, janin telah meninggal namun ibu tidak menyadarinya karena tidak ada keluhan. Kemungkinan lain, bakal janin memang tidak berkembang sejak awal (<em>blighted ovum</em>). Kondisi ini biasanya baru disadari ketika ibu kontrol dan denyut jantung janin tidak terlihat pada pemeriksaan&nbsp;<em>ultrasonography</em>.</p>\r\n\r\n<p><strong>6. Abortus berulang</strong></p>\r\n\r\n<p>Abortus berulang merupakan diagnosis untuk keguguran yang terjadi sebanyak 3 kali atau lebih secara berturut-turut. Kemungkinan terjadinya abortus berulang sangat kecil. Oleh karena itu, konsultasikan kejadian ini kepada dokter kandungan untuk mencari tahu penyebabnya.</p>\r\n', '<p><strong>Saran :</strong></p>\r\n\r\n<p>Macam-macam abortus di atas bisa terjadi pada siapa saja selama kehamilan trimester pertama. Agar terhindar dari keguguran, jaga kehamilan&nbsp;agar tetap sehat dengan mengonsumsi makanan bergizi seimbang, menghindari asap rokok dan konsumsi minuman beralkohol, membiasakan olahraga ringan, dan mengelola stres dengan baik.</p>\r\n\r\n<p><strong>Pencegahan :</strong></p>\r\n\r\n<p>Jika mengalami gejala-gejala tersebut segera ke rumah sakit untuk pemeriksaan lebih lanjut. Setelah memastikan diagnosis keguguran, Anda dapat memilih untuk menunggu sampai seluruh jaringan luruh dan keluar secara alami dari rahim atau dengan penanganan obat dan operasi. Karena penyebabnya yang belum diketahui secara pasti, keguguran umumnya tidak dapat dicegah. Tetapi, ada beberapa langkah yang bisa dilakukan guna menurunkan risiko keguguran. Langkah-langkah tersebut meliputi:</p>\r\n\r\n<p>1. Menerapkan pola makan sehat dan seimbang, terutama meningkatkan konsumsi makanan dengan kandungan serat tinggi.</p>\r\n\r\n<p>2. Tidak merokok, mengonsumsi minuman keras, dan menggunakan obat-obatan terlarang selama masa kehamilan.</p>\r\n\r\n<p>3. Mencegah infeksi-infeksi tertentu selama masa kehamilan, misalnya dengan menerima vaksin sesuai anjuran dokter.</p>\r\n\r\n<p>4. Menjaga berat badan yang sehat sebelum dan saat hamil.</p>\r\n\r\n<p>5. Menangani penyebab keguguran yang bisa dideteksi, seperti otot serviks yang lemah.</p>\r\n\r\n<p>Kelainan ini dapat diatasi melalui operasi pengencangan otot serviks, sehingga dapat menurunkan risiko keguguran.</p>\r\n', '4. abortus.jpg'),
(4, 'Mola Hidatidosa (Hamil Anggur)', '<p><strong><em>Mola hydatidosa</em>&nbsp;</strong>atau yang dikenal juga sebagai hamil anggur adalah kelainan kehamilan yang jarang terjadi. Kondisi ini terjadi ketika sel telur yang sudah dibuahi dan plasenta tidak berkembang secara normal. Akibatnya, sel-sel abnormal tersebut akan membentuk sekumpulan kista yang bentuknya menyerupai anggur putih.</p>\r\n\r\n<p>Hamil anggur dibagi menjadi dua jenis, yaitu hamil anggur parsial dan hamil anggur lengkap. Pada hamil anggur lengkap, jaringan plasenta tidak normal dan membengkak, serta tampak membentuk kista berisi cairan. Selain itu, tidak ada juga pembentukan jaringan janin. Pada hamil anggur parsial, mungkin ada jaringan plasenta normal bersama dengan jaringan plasenta tidak normal. Mungkin juga ada janin yang terbentuk, tapi janin tidak mampu bertahan hidup dan biasanya gugur di awal kehamilan.</p>\r\n\r\n<p><strong>Faktor Resiko Hamil Anggur</strong></p>\r\n\r\n<p>Ada sekitar 1 dari 1000 kehamilan yang didiagnosis sebagai hamil anggur. Berikut beberapa faktor terkait dengan hamil anggur:</p>\r\n\r\n<ul>\r\n	<li>Usia ibu. Wanita yang hamil di usia di atas 35 tahun atau di bawah 20 tahun lebih berisiko mengalami hamil anggur.</li>\r\n	<li>Memiliki riwayat hamil anggur. Bila kamu sudah pernah mengalami hamil anggur, kemungkinan besar kamu akan mengalaminya lagi di kemudian hari. Hamil anggur berulang rata-rata terjadi pada 1 dari 100 wanita.</li>\r\n</ul>\r\n\r\n<p><strong>Penyebab Hamil Anggur</strong></p>\r\n\r\n<p>Hamil anggur (<em>mola hydatidosa</em>) terjadi karena awal proses pembuahan yang tidak normal. Bisa karena sperma yang membuahi sel telur kosong atau terdapat 2 sperma yang membuahi satu sel telur.</p>\r\n\r\n<p>Pada kondisi sel sperma yang membuahi sel telur kosong disebut dengan hamil anggur lengkap. Pada hamil anggur lengkap, sel terbentuk hanya dari gen ayah sehingga janin tidak terbentuk. Namun, plasenta atau ari-ari tetap tumbuh dan tumbuh menjadi tidak normal.</p>\r\n\r\n<p>Pada kondisi 2 sel sperma yang membuahi 1 sel telur disebut dengan hamil anggur sebagian. Pada kondisi ini terdapat tambahan genetik dari ayah, sehingga hasil pembuahan tidak bisa bertahan lama atau mati dalam beberapa minggu.</p>\r\n\r\n<p><strong>Faktor Risiko Hamil Anggur</strong></p>\r\n\r\n<p>Terdapat beberapa faktor yang diduga bisa meningkatkan risiko seorang wanita mengalami hamil anggur (<em>mola hydatidosa</em>), di antaranya:</p>\r\n\r\n<ul>\r\n	<li><strong>Berusia lebih dari 35 tahun</strong><strong>&nbsp;saat hamil</strong><br />\r\n	Risiko hamil anggur cenderung lebih tinggi pada wanita yang hamil di atas usia 35 tahun, dibanding mereka yang hamil di bawah 30 tahun.</li>\r\n	<li><strong>Pernah mengalami hamil anggur</strong><br />\r\n	Seseorang yang pernah mengalami hamil anggur sebelumnya juga berisiko mengalami hamil anggur pada kehamilan berikutnya.</li>\r\n	<li><strong>Pernah&nbsp;</strong><strong>mengalami&nbsp;</strong><strong>keguguran</strong><br />\r\n	Seorang wanita yang pernah keguguran&nbsp;lebih berisiko mengalami hamil anggur dibanding mereka yang tidak.</li>\r\n</ul>\r\n', '<p><strong>Saran :</strong></p>\r\n\r\n<p>Apabila ibu hamil&nbsp;mencurigai terjadinya hamil anggur, maka disarankan untuk melakukan tes darah, termasuk tes kehamilan untuk mengukur tingkat&nbsp;<em>human chorionic gonadotropin</em>&nbsp;(HCG), yaitu hormon kehamilan dalam darah. Selain itu, direkomendasikan pemeriksaan USG. Prosedur tersebut dilakukan dengan mengarahkan gelombang suara berfrekuensi tinggi ke jaringan di daerah perut dan panggul.</p>\r\n\r\n<p>Jika terjadi hamil anggur lengkap, maka USG akan menunjukkan tanda-tanda berikut:</p>\r\n\r\n<ul>\r\n	<li>Tidak ada embrio atau janin.</li>\r\n	<li>Tidak ada cairan ketuban.</li>\r\n	<li>Plasenta kistik tebal sampai memenuhi rahim.</li>\r\n	<li>Terdapat kista ovarium.</li>\r\n</ul>\r\n\r\n<p><strong>Penanganan Hamil Anggur</strong></p>\r\n\r\n<p>Sebagian besar penderita hamil anggur (<em>mola hydatidosa</em>) akan mengalami keguguran spontan. Keguguran tersebut biasanya mengeluarkan jaringan yang berbentuk gumpalan-gumpalan yang menyerupai sekumpulan buah anggur.</p>\r\n\r\n<p>Jika tidak mengalami keguguran, dokter akan melakukan tindakan penanganan secepatnya guna mencegah terjadinya komplikasi yang lebih buruk. Tindakan yang dapat dilakukan dokter kandungan antara lain:</p>\r\n\r\n<ul>\r\n	<li><strong>Kuret</strong></li>\r\n</ul>\r\n\r\n<p>Dalam melakukan kuret, dokter akan melebarkan serviks dan mengangkat jaringan abornmal dengan alat khusus. Prosedur ini merupakan pilihan paling baik jika penderita berencana untuk hamil kembali.</p>\r\n\r\n<ul>\r\n	<li><strong>Histerektomi</strong></li>\r\n</ul>\r\n\r\n<p>Histerektomi&nbsp;merupakan tindakan pengangkatan rahim. Prosedur ini hanya dilakukan pada penderita yang tidak berencana hamil lagi atau berisiko tinggi mengalami penyakit berbahaya&nbsp;<em>gestational trophoblastic neoplasia</em>.</p>\r\n\r\n<ul>\r\n	<li><strong>Pemulihan</strong></li>\r\n</ul>\r\n\r\n<p>Sel abnormal bisa saja masih tertinggal di dalam rahim setelah kuret. Sel tersebut biasanya akan menghilang dalam beberapa bulan. Namun pada beberapa kasus, dibutuhkan penanganan lebih lanjut untuk menghilangkannya.</p>\r\n\r\n<p>Untuk memastikan sel abnormal sudah hilang, penderita perlu menjalani pemeriksaan kadar HCG, melalui tes darah dan urine. Kadar hormon tersebut seharusnya kembali normal setelah pengangkatan jaringan abnormal.</p>\r\n\r\n<p>Jika kadar hormon tetap tinggi, berarti masih ada sel yang abnormal tersisa dalam rahim. Pemeriksaan ini dilakukan selama 6 bulan hingga satu tahun pasca mengalami hamil anggur.</p>\r\n\r\n<p>Di samping itu, penderita juga disarankan tidak hamil dulu dalam waktu satu tahun setelah mengalami hamil anggur.</p>\r\n\r\n<p><strong>Pencegahan Hamil Anggur</strong></p>\r\n\r\n<p>Hamil anggur terjadi karena kesalahan gen dalam proses pembuahan. Oleh karena itu, kondisi ini sulit dicegah. Kendati demikian, terdapat beberapa upaya&nbsp;yang bisa dilakukan pada penderita hamil anggur untuk mengurangi kemungkinan terjadinya hal serupa di kehamilan selanjutnya.</p>\r\n\r\n<p>Salah satu upaya untuk mengurangi risiko kembali mengalami hamil anggur (<em>mola hydatidosa</em>) adalah menunda kehamilan, setidaknya setahun setelah kuret. Untuk&nbsp;mencegah kehamilan, gunakan alat kontrasepsi. Semua alat kontrasepsi dapat digunakan, kecuali KB spiral.&nbsp;</p>\r\n', '5..jpg'),
(5, 'Plasenta Previa', '<p><em><strong>Plasenta previa </strong></em>adalah kondisi ketika ari-ari atau plasenta berada di bagian bawah rahim, sehingga menutupi sebagian atau seluruh jalan lahir. Selain menutupi jalan lahir, plasenta previa dapat menyebabkan perdarahan hebat, baik sebelum maupun saat persalinan.</p>\r\n\r\n<p>Plasenta previa terjadi saat plasenta terletak rendah pada rahim sehingga menutup leher rahim, baik sebagian maupun sepenuhnya. Pada plasenta previa, pembukaan leher rahim saat mendekati kelahiran menyebabkan lepasnya plasenta dari dinding rahim.</p>\r\n\r\n<p>Normalnya, plasenta memang berada di bagian bawah rahim pada awal masa kehamilan, namun seiring pertambahan usia kehamilan dan perkembangan rahim, plasenta akan bergerak ke atas. Pada kasus plasenta previa, posisi plasenta tidak bergerak dari bawah rahim hingga mendekati waktu persalinan.</p>\r\n\r\n<p><strong>Penyebab dan Faktor Risiko Plasenta Previa</strong></p>\r\n\r\n<p>Belum diketahui apa penyebab utama dari plasenta previa, tetapi terdapat beberapa faktor risiko seperti berikut:</p>\r\n\r\n<ul>\r\n	<li>Bukan kehamilan pertama.</li>\r\n	<li>Rahim memiliki jaringan parut yang disebabkan karena operasi sebelumnya, termasuk operasi&nbsp;<em>seksio cesarean</em>&nbsp;dan dilatasi kuretase.</li>\r\n	<li>Riwayat Plasenta Previa sebelumnya.</li>\r\n	<li>Bayi kembar.</li>\r\n	<li>Usia ibu lebih dari 34 tahun.</li>\r\n	<li>Ras selain Kaukasia.</li>\r\n	<li>Merokok.</li>\r\n	<li>Penggunaan narkotika dan obat terlarang.</li>\r\n</ul>\r\n', '<p><strong>Saran dan Pencegahan :</strong></p>\r\n\r\n<p>Plasenta previa dapat&nbsp;didiagnosis pasti&nbsp;melalui&nbsp;<em>ultrasound</em>, baik selama pemeriksaan prenatal rutin atau setelah episode perdarahan Miss V. Sebagian besar kasus plasenta previa didiagnosis selama pemeriksaan USG trimester kedua.&nbsp;Memerlukan kombinasi&nbsp;<em>ultrasound&nbsp;</em>abdomen dan&nbsp;<em>ultrasound&nbsp;</em>transvaginal yang harus dilakukan secara hati-hati agar tidak mengganggu plasenta atau menyebabkan perdarahan.</p>\r\n\r\n<p>Jika dicurigai adanya plasenta previa, disarankan menghindari pemeriksaan Miss V rutin untuk mengurangi risiko pendarahan hebat. Diperlukan&nbsp;<em>ultrasound&nbsp;</em>tambahan untuk memeriksa lokasi plasenta selama kehamilan untuk melihat plasenta previa sudah hilang atau belum.</p>\r\n\r\n<p>Tidak&nbsp;ada perawatan medis atau tindakan bedah apa pun untuk menyembuhkan plasenta previa, tetapi ada beberapa pilihan untuk mengelola perdarahan yang disebabkan oleh penyakit ini.</p>\r\n\r\n<p>Tata laksana perdarahan tergantung pada berbagai faktor, termasuk:</p>\r\n\r\n<ul>\r\n	<li>Jumlah perdarahan.</li>\r\n	<li>Apakah pendarahan telah berhenti.</li>\r\n	<li>Usia kehamilan.</li>\r\n	<li>Kondisi kesehatan ibu.</li>\r\n	<li>Kesehatan bayi .</li>\r\n	<li>Posisi plasenta dan bayi.</li>\r\n	<li>Jika plasenta previa tidak hilang selama kehamilan, tujuan perawatan untuk membantu kelahiran agar bisa sedekat mungkin dengan tanggal taksiran kelahiran. Hampir semua perempuan dengan plasenta previa yang belum terselesaikan membutuhkan kelahiran dengan cara&nbsp;<em>seksio cesarean</em>.</li>\r\n</ul>\r\n\r\n<p>Pada kasus saat terjadi perdarahan sedikit atau tidak ada perdarahan, direkomendasikan istirahat dan menghindari kegiatan yang dapat memicu pendarahan, seperti seks dan olahraga. Jika plasenta rendah tetapi tidak menutupi serviks, kelahiran secara normal masih mungkin dilakukan.</p>\r\n\r\n<p>Pendarahan berat membutuhkan penanganan medis segera dan membutuhkan transfusi darah. Pada beberapa kasus perdarahan yang masih bisa dikendalikan, kemungkinan melakukan bedah&nbsp;<em>caesar&nbsp;</em>segera setelah bayi dapat dilahirkan dengan aman, idealnya setelah 36 minggu kehamilan.</p>\r\n\r\n<p>Namun, jika pendarahan hebat berlanjut atau jika terjadi beberapa episode perdarahan, mungkin disarankan untuk&nbsp; merencanakan bedah&nbsp;<em>caesar&nbsp;</em>secepatnya. Jika persalinan dilakukan sebelum usia kehamilan 34 minggu, serta memberikan&nbsp;<em>corticosteroids</em>&nbsp;untuk membantu paru-paru bayi berkembang. Jika pendarahan tidak dapat dikendalikan atau bayi mengalami&nbsp;<em>distress</em>, perlu dilakukan operasi&nbsp;<em>caesar&nbsp;</em>darurat, dengan risiko bayi lahir prematur.</p>\r\n', 'plasenta-previa.jpg'),
(6, 'Solusio Plasenta', '<p><em><strong>Abruptio plasenta</strong></em> atau <em><strong>solusio plasenta</strong></em> adalah komplikasi kehamilan&nbsp;di mana&nbsp;plasenta terlepas dari dinding rahim bagian dalam sebelum proses persalinan. Lepasnya plasenta ini dapat menyebabkan pasokan nutrisi dan oksigen pada&nbsp;bayi dapat menurun atau terhambat.</p>\r\n\r\n<p>Solusio plasenta termasuk kondisi yang berbahaya. Selain menghambat pasokan nutrisi dan oksigen, kondisi ini juga dapat menyebabkan ibu mengalami perdarahan hebat. Solusio plasenta menyebabkan banyak kematian pada ibu atau bayi.</p>\r\n\r\n<p>Solusio plasenta sering kali terjadi secara tiba-tiba. Pada banyak kasus, lepasnya plasenta ini kerap terjadi pada trimester ketiga kehamilan atau beberapa minggu menjelang waktu persalinan tiba.</p>\r\n\r\n<p><strong>Penyebab&nbsp;Solusio Plasenta</strong></p>\r\n\r\n<p>Penyebab solusio plasenta seringkali tidak ditemukan, tapi kemungkinan trauma atau cedera pada perut karena kecelakaan misalnya, berperan dalam terjadinya kondisi tersebut. Namun, hingga saat ini, penyebab pasti terjadinya solusio plasenta belum diketahui. Namun, ada beberapa faktor&nbsp;yang dapat meningkatkan risiko wanita hamil mengalami solusio plasenta atau abruptio plasenta, yaitu:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Hamil di usia 40 tahun ke atas</p>\r\n	</li>\r\n	<li>\r\n	<p>Merokok saat hamil atau memakai narkoba saat hamil&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Memiliki riwayat solusio plasenta sebelumnya</p>\r\n	</li>\r\n	<li>\r\n	<p>Menderita&nbsp;&nbsp;preeklamsia atau eklamsia</p>\r\n	</li>\r\n	<li>\r\n	<p>&nbsp;Ketuban pecah dini</p>\r\n	</li>\r\n	<li>\r\n	<p>Mengalami cedera pada perut saat hamil</p>\r\n	</li>\r\n	<li>\r\n	<p>Mengandung bayi kembar</p>\r\n	</li>\r\n	<li>\r\n	<p>Mengalami&nbsp;&nbsp;<em>polihidramnion</em></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Selain diatas, ada beberapa kondisi yang bisa memicu terjadinya kondisi ini, yaitu:</p>\r\n\r\n<ul>\r\n	<li>Trauma langsung pada daerah perut (karena jatuh, kecelakaan mobil, terpukul atau jatuh saat bekerja).</li>\r\n	<li>Trauma luka jarum suntik di plasenta pada tempat yang salah, perdarahan, hematoma terbentuk setelah saling mengelupas.</li>\r\n	<li>Jika&nbsp;<em>external cephalic version</em>&nbsp;(ECV) dari dokter kandungan dan petugas kesehatan tidak tepat, hal ini juga menyebabkan risiko solusio plasenta.</li>\r\n	<li><em>External Cephalic Version</em>&nbsp;(ECV) merupakan cara untuk mengubah posisi bayi sungsang. Caranya dengan menekan perut dan mengarahkan kepala bayi ke bawah dengan panduan USG. hal ini dapat memicu risiko solusio plasenta</li>\r\n</ul>\r\n\r\n<p><strong>Komplikasi Solusio Plasenta</strong></p>\r\n\r\n<p>Solusio plasenta dapat menyebabkan masalah yang berakibat fatal bagi ibu dan bayi. Bagi ibu, solusio plasenta dapat menyebabkan komplikasi berikut:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Syok karena kehilangan darah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Gangguan pembekuan darah (koagulasi intravascular diseminata).</p>\r\n	</li>\r\n	<li>\r\n	<p>Kebutuhan akan transfusi darah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Gagal ginjal atau organ lainnya akibat kehilangan darah yang signifikan.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Bagi bayi, solusio plasenta bisa menyebabkan masalah:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Gangguan pertumbuhan karena tidak mendapatkan nutrisi yang cukup.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lahir prematur.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tidak mendapatkan oksigen yang cukup.</p>\r\n	</li>\r\n	<li>\r\n	<p>Meninggal saat dilahirkan.</p>\r\n	</li>\r\n</ul>\r\n', '<p><strong>Saran dan Penanganan :</strong></p>\r\n\r\n<p>Penanganan <em><strong>solusio plasenta</strong></em> tergantung pada kondisi janin dan ibu hamil, usia kehamilan, dan tingkat keparahan solusio plasenta. Plasenta yang sudah terlepas dari dinding rahim tidak bisa ditempelkan kembali. Pengobatan lebih bertujuan untuk menyelamatkan nyawa ibu hamil dan janin yang dikandungnya.</p>\r\n\r\n<p>Jika <em><strong>abruptio plasenta</strong></em> atau <em><strong>solusio plasenta</strong></em> terjadi saat kehamilan belum mencapai 34 minggu, disarankan&nbsp;meminta ibu hamil dirawat di rumah sakit agar kondisinya bisa&nbsp;diamati secara saksama. Jika detak jantung janin normal dan perdarahan pada ibu hamil berhenti, berarti solusio plasenta tidak terlalu parah dan ibu hamil bisa pulang.</p>\r\n\r\n<p>Meski demikian,&nbsp;umumnya akan memberikan suntikan <em>kortikosteroid</em>&nbsp;untuk mempercepat pertumbuhan paru-paru janin. Hal ini dilakukan&nbsp;sebagai antisipasi jika kondisi lepasnya plasenta memburuk, sehingga persalinan harus segera dilakukan meski belum memasuki waktunya.</p>\r\n\r\n<p>Jika solusio plasenta terjadi saat usia kehamilan sudah lebih dari 34 minggu,diupayakan proses persalinan yang tidak membahayakan ibu dan bayi.&nbsp;Jika solusio plasenta tidak parah, ibu hamil masih dapat melahirkan normal. Namun jika tidak memungkinkan, disarankan melakukan operasi caesar.</p>\r\n\r\n<p>Selama persalinan, ibu hamil yang mengalami perdarahan hebat mungkin perlu dibantu dengan transfusi darah. Hal ini dilakukan untuk mencegah ibu hamil mengalami kekurangan darah.</p>\r\n\r\n<p>Solusio plasenta atau abruptio plasenta tidak dapat dicegah. Dua gaya hidup tidak sehat yang mesti dihentikan untuk mencegah solusio plasenta adalah merokok dan penyalahgunaan narkotika Masyarakat juga perlu diberi edukasi mengenai faktor risiko, program penghentian, atau rehabilitasi guna mencegah berulangnya solusio plasenta di masa depan.</p>\r\n\r\n<p>Pasien yang ditemukan memiliki trombofilia dan mengalami solusio berat atau awal, terutama dengan kematian janin, biasanya diobati dengan terapi antikoagulasi heparin selama kehamilan berikutnya dan selama 6 minggu pasca persalinan. Walau begitu, sedikit bukti menunjukkan tindakan ini mengurangi risiko kekambuhan.</p>\r\n\r\n<p>Kendati demikian, ada beberapa hal yang bisa dilakukan untuk mengurangi risiko dan mengantisipasi lepasnya plasenta. Upaya tersebut antara lain:</p>\r\n\r\n<ul>\r\n	<li>Tidak merokok dan tidak mengonsumsi narkoba, terutama saat hamil.</li>\r\n	<li>Menghindari aktivitas fisik berat saat hamil.</li>\r\n	<li>Rutin memeriksakan diri ke dokter kandungan selama hamil, apalagi jika hamil di atas usia 40 tahun.</li>\r\n	<li>Mengonsumsi makanan dengan kandungan gizi yang seimbang.</li>\r\n</ul>\r\n', 'solusio-plasenta.jpg'),
(7, 'Preklampsia ( Pre-eclampsia )', '<p><em><strong>Preeklamsia</strong></em> adalah kondisi yang terjadi dan akibat dari tekanan darah tinggi yang tidak terkontrol pada ibu hamil. Kondisi preeklamsia pada ibu hamil harus segera ditangani. Jika tidak, kondisi preeklamsia dapat berkembang menjadi<em><strong> eklampsia</strong></em> dan memiliki komplikasi yang fatal baik bagi ibu maupun bagi janinnya.</p>\r\n\r\n<p>Preeklamsia harus diberikan penanganan untuk mencegah komplikasi dan mencegahnya berkembang menjadi <strong><em>eklamsia</em></strong>&nbsp;yang dapat mengancam nyawa ibu hamil dan janin. Salah satu faktor yang dapat meningkatkan risiko terjadinya preeklampsia adalah ibu hamil berusia lebih dari 40 tahun atau&nbsp; dibawah 20 tahun.</p>\r\n\r\n<p><em><strong>Preeklampsia</strong></em> dan <em><strong>eklampsia</strong></em> yang terjadi saat atau sesaat setelah kehamilan dapat mengakibatkan masalah kesehatan yang serius bagi ibu, bahkan bisa mengakibatkan kematian. Wanita hamil dengan tekanan darah normal pun dapat mengalami preeklampsia. Umumnya gejala preeklampsia bisa terlihat saat memasuki usia kehamilan 20 minggu.</p>\r\n\r\n<p><strong>Penyebab Preeklamsia</strong></p>\r\n\r\n<p>Penyebab <em><strong>preeklamsia</strong></em> masih belum diketahui secara pasti. Meski demikian, ada dugaan bahwa kondisi ini disebabkan oleh kelainan perkembangan dan fungsi plasenta, yaitu organ yang berfungsi menyalurkan darah dan nutrisi untuk janin.</p>\r\n\r\n<p>Kelainan tersebut menyebabkan pembuluh darah menyempit dan timbulnya reaksi yang berbeda dari tubuh ibu hamil terhadap perubahan hormon. Akibatnya, timbul gangguan pada ibu hamil dan janin.</p>\r\n\r\n<p>Meskipun penyebabnya belum diketahui, sejumlah faktor berikut ini dinilai dapat memicu gangguan pada plasenta:</p>\r\n\r\n<ul>\r\n	<li>Pernah atau sedang menderita diabetes, hipertensi, penyakit ginjal, penyakit autoimun, dan gangguan darah.&nbsp;</li>\r\n	<li>Pernah mengalami preeklamsia pada kehamilan sebelumnya</li>\r\n	<li>Baru pertama kali hamil</li>\r\n	<li>Hamil lagi setelah jeda 10 tahun dengan kehamilan sebelumnya</li>\r\n	<li>Hamil di usia kurang dari 20 tahun atau lebih dari 40 tahun</li>\r\n	<li>Mengandung lebih lebih dari satu janin</li>\r\n	<li>Mengalami obesitas saat hamil, yang ditandai dengan indeks massa tubuh (IMT) &ge;30 kg/m2</li>\r\n	<li>Kehamilan yang sedang dijalani merupakan hasil metode bayi tabung&nbsp;(<em>in vitro fertilization</em>)</li>\r\n	<li>Ada riwayat preeklamsia dalam keluarga</li>\r\n</ul>\r\n\r\n<p>Ibu hamil dengan preeklamsia memiliki pembuluh darah yang tidak berfungsi dengan normal, akibat bentuknya yang lebih sempit dan memiliki reaksi terhadap hormon yang berbeda, sehingga menyebabkan aliran darah dapat masuk ke plasenta menjadi terbatas.</p>\r\n\r\n<p>Penyebab dari pembentukan yang abnormal ini antara lain adalah:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tidak cukupnya aliran darah menuju rahim.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kerusakan pada sel-sel darah.</p>\r\n	</li>\r\n	<li>\r\n	<p>Masalah pada sistem imunitas.</p>\r\n	</li>\r\n	<li>\r\n	<p>Beberapa gen.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Komplikasi Preeklamsia</strong></p>\r\n\r\n<p>Jika tidak ditangani, preeklamsia dapat menyebabkan komplikasi, seperti:</p>\r\n\r\n<ul>\r\n	<li>Eklamsia, yaitu komplikasi kehamilan yang ditandai dengan tekanan darah tinggi dan kejang</li>\r\n	<li>Kerusakan organ, seperti edema paru, gagal ginjal, dan gagal hati</li>\r\n	<li>Penyakit jantung</li>\r\n	<li>Gangguan pembekuan darah</li>\r\n	<li>Solusio plasenta</li>\r\n	<li>Stroke hemoragik</li>\r\n	<li>Sindrom HELLP</li>\r\n</ul>\r\n', '<p><strong>Saran :</strong></p>\r\n\r\n<p>Disarankan melakukan pemeriksaan fisik menyeluruh, termasuk tekanan darah, denyut nadi, frekuensi pernapasan, suhu tubuh, pembengkakan pada tungkai, kaki, dan tangan, serta kondisi kandungan.</p>\r\n\r\n<p>Jika tekanan darah ibu hamil lebih dari 140/90 mmHg pada 2 kali pemeriksaan dengan jeda waktu 4 jam, lakukanlah pemeriksaan penunjang berikut untuk memastikan diagnosis preeklamsia:</p>\r\n\r\n<ul>\r\n	<li>Tes urine, untuk mengetahui kadar protein dalam urine</li>\r\n	<li>Tes darah, untuk memeriksa fungsi hati, ginjal, dan jumlah trombosit darah</li>\r\n	<li><em>Ultrasonografi</em> (USG), untuk melihat pertumbuhan janin</li>\r\n	<li>USG <em>Doppler</em>, untuk mengukur efisiensi aliran darah ke plasenta</li>\r\n	<li><em>Nonstress test</em>&nbsp;(NST) dengan <em>cardiotography</em> atau CTG&nbsp;, untuk mengukur detak jantung janin saat bergerak di dalam kandungan</li>\r\n</ul>\r\n\r\n<p>Preeklamsia akan teratasi jika janin dilahirkan.&nbsp;Sambil tetap mengkonsumsi obat-obatan menerapkan pola hidup sehat, disaran kan mengkonsumsi obat-obatan berikut pada ibu hamil yang mengalami preeklamsia:</p>\r\n\r\n<ul>\r\n	<li><strong>Obat antihipertensi</strong><br />\r\n	Obat antihipertensi biasanya diberikan jika tekanan darah ibu hamil sangat tinggi. Umumnya jika tekanan darah ibu hamil masih berkisar pada 140/90 mmHg, tidak diperlukan pemberian obat antihipertensi.</li>\r\n	<li><strong>Obat kortikosteroid</strong><br />\r\n	Obat ini digunakan pada preeklamsia berat atau saat terjadi sindrom HELLP. Selain itu, obat ini dapat mempercepat pematangan paru-paru janin.</li>\r\n	<li><strong>Obat MgSO4</strong><br />\r\n	Pada preeklamsia berat, dokter akan memberikan suntikan&nbsp;<a href=\"https://www.alodokter.com/magnesium-sulfat-mgso4\" target=\"_blank\">MgSO4</a>&nbsp;untuk mencegah komplikasi, seperti kejang.</li>\r\n</ul>\r\n\r\n<p>Bila preeklamsia cukup berat atau semakin parah, ibu hamil akan dirawat agar kondisinya terpantau. Selama perawatan, disarankan&nbsp;melakukan pemeriksaan darah, NST, dan USG secara rutin guna memantau kesehatan ibu hamil dan janin.</p>\r\n\r\n<p>Bila setelah melahirkan, pemantauan tetap perlu dilakukan. Biasanya, pasien perlu menjalani rawat inap beberapa hari setelah melahirkan. Pasien juga tetap perlu mengonsumsi obat antihipertensi yang diresepkan oleh dokter dan melakukan kontrol rutin sampai sekitar 6 minggu setelah melahirkan.</p>\r\n\r\n<p><strong>Pencegahan Preeklamsia :</strong></p>\r\n\r\n<p>Pencegahan preeklamsia masih sulit dilakukan. Studi menyatakan bahwa dengan modifikasi dari gaya hidup seperti restriksi kalori, membatasi asupan garam, mengonsumsi bawang putih, serta mengonsumsi vitamin C dan E, tidak menunjukkan adanya pengaruh yang bermakna dalam upaya pencegahan preeklampsia ini.</p>\r\n\r\n<p>Pada beberapa kasus, ibu hamil dapat menurunkan risiko mengalami preeklampsia dengan cara:</p>\r\n\r\n<ul>\r\n	<li>Melakukan kontrol rutin selama kehamilan</li>\r\n	<li>Mengontrol tekanan darah dan gula darah jika memiliki kondisi hipertensi dan diabetes sebelum kehamilan</li>\r\n	<li>Menerapkan pola hidup sehat, antara lain dengan menjaga berat badan ideal, mencukupi kebutuhan nutrisi, tidak mengonsumsi makanan yang tinggi garam, rajin berolahraga, dan tidak merokok</li>\r\n	<li>Mengonsumsi obat aspirin dosis rendah.</li>\r\n	<li>Mengonsumsi suplemen kalsium.</li>\r\n</ul>\r\n', 'Pre-eclampsia-Pathophysiology.jpg'),
(8, 'Infeksi Saluran Kemih (ISK)', '<p>Selama masa kehamilan, tubuh wanita lebih rentan terkena penyakit, terutama infeksi. Untuk mengantisipasi hal ini, ibu hamil perlu mengetahui jenis infeksi apa saja yang sering terjadi di masa kehamilan berikut cara pencegahannya. Salah satu nya adalah <strong>Infeksi Saluran Kemih</strong> (<strong>ISK</strong>).&nbsp;</p>\r\n\r\n<p><strong>Infeksi Saluran Kemih</strong> <strong>(ISK</strong>) sangat&nbsp; umum terjadi pada pertengahan trimester pertama kehamilan hingga awal trimester ketiga kehamilan. ISK dapat terjadi ketika bakteri menyerang sistem saluran kemih, mulai dari saluran kemih luar (<em>uretra</em>), kandung kemih, hingga ginjal.</p>\r\n\r\n<p>ISK pada ibu hamil dapat ditandai dengan gejala rasa ingin selalu buang air kecil, nyeri atau perih saat buang air kecil, warna urine yang keruh, bau urine yang menyengat, dan terdapat darah dalam urine (<em>hematuria</em>).</p>\r\n\r\n<p>Jika tidak segera diatasi, ISK pada kehamilan dapat menyebar ke ginjal. Infeksi pada ginjal dapat memperburuk kondisi ibu hamil secara menyeluruh dan meningkatkan risiko kelahiran prematur. Untuk mencegah terjadinya komplikasi, perlu memeriksakan ISK sejak awal ke dokter dan mendapatkan <em>antibiotik</em>&nbsp;melalui resep.</p>\r\n\r\n<p><strong>Penyebab infeksi saluran kemih (ISK) pada ibu hamil</strong></p>\r\n\r\n<p>Bakteri <em>Escheria coli</em> adalah penyebab infeksi saluran kemih yang paling umum, tapi bisa juga disebabkan oleh spesies lain.</p>\r\n\r\n<p>Infeksi saluran kemih (ISK) pada ibu hamil bisa terjadi bila organ intim tidak dibersihkan dengan baik. Selain itu, pertumbuhan hormon saat hamil&nbsp;juga bisa menyebabkan perubahan pada saluran kemih sehingga mudah mengalami infeksi.</p>\r\n\r\n<p>Kondisi rahim yang membesar bisa menekan kandung kemih, ini membuat ibu hamil sulit mengeluarkan urine. Sisa urine yang tidak keluar bisa menjadi sumber infeksi.</p>\r\n', '<p><strong>Saran :</strong></p>\r\n\r\n<p>Penyembuhan ISK dapat dilakukan dengan menggunakan obat-obatan antibiotik. Selain antibiotik, obat pereda nyeri seperti parasetamol juga mungkin diperlukan untuk meredakan demam atau rasa sakit yang ada. Berbagai kebiasaan sehat ini dapat membantu terhindar dari risiko infeksi saluran kemih saat hamil. Termasuk juga efektif untuk mengatasi ISK yang sudah telanjur muncul. Berikut pengobatan yang bisa Anda dilakukan di rumah:</p>\r\n\r\n<ul>\r\n	<li>Perbanyak minum air</li>\r\n	<li>Penuhi asupan gizi</li>\r\n	<li>Hindari menahan kencing saat hamil</li>\r\n	<li>Jaga kebersihan saluran kencing</li>\r\n	<li>Jus cranberry</li>\r\n	<li>Konsumsi lebih banyak vitamin C</li>\r\n</ul>\r\n\r\n<p><strong>Pencegahan :</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Infeksi saluran kemih pada ibu hamil umum terjadi karena pertumbuhan bayi dalam rahim. Meski begitu, berikut beberapa langkah yang dapat dilakukan guna mencegah infeksi saluran kemih pada ibu hamil:</p>\r\n\r\n<ul>\r\n	<li>Cukup minum air putih 2 liter, atau setara dengan 8 gelas per hari.</li>\r\n	<li>Jangan terbiasa untuk menunda buang air kecil</li>\r\n	<li>Hindari konsumsi alkohol, kafein, serta minuman manis lainnya.</li>\r\n	<li>Konsumsi suplemen atau multivitamin tambahan.</li>\r\n	<li>Segera buang air kecil sebelum atau setelah buang air kecil.</li>\r\n	<li>Setelah buang air kecil, bersihkan vagina secara perlahan dari atas ke bawah, bukan sebaliknya.</li>\r\n	<li>Jangan menggunakan sabun pembersih kewanitaan karena kadar pH yang berbeda.</li>\r\n	<li>Ganti pakaian dalam dengan bahan katun yang menyerap keringat.</li>\r\n	<li>Jika sudah merasa tidak nyaman, ganti pakaian dalam.</li>\r\n	<li>Jangan memakai celana terlalu ketat.</li>\r\n	<li>Jangan gunakan pakaian dalam saat tidur.</li>\r\n</ul>\r\n\r\n<p>Mencegah infeksi saluran kemih pada ibu hamil dapat dilakukan dengan sejumlah langkah tersebut. Ibu perlu mengetahui bahwa dengan mengikuti tips tersebut, risiko infeksi saluran kemih tetap ada, karena janin yang semakin membesar. Jika sudah begitu, silahkan temui bidan atau dokter terdekat untuk melakukan sejumlah penanganan.</p>\r\n', 'Cara-Cegah-Infeksi-Saluran-Kemih.original.jpegquality-90.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`kode_pengetahuan`),
  ADD KEY `kode_penyakit` (`kode_penyakit`),
  ADD KEY `kode_gejala` (`kode_gejala`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `hasil_id` (`hasil_id`);

--
-- Indexes for table `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`kode_post`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `kode_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `kode_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
