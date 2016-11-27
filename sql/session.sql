-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2016 at 07:41 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `session`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `nama_event` varchar(100) NOT NULL,
  `poster` blob,
  `deskripsi` varchar(65000) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `kontak` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `status` enum('valid','invalid','waiting') NOT NULL DEFAULT 'waiting',
  `proposedby` varchar(50) NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id_event`, `nama_event`, `poster`, `deskripsi`, `harga`, `lokasi`, `kontak`, `website`, `kategori`, `tanggal`, `status`, `proposedby`, `view`) VALUES
(2, 'IFEST 2016', 0xffd8ffe000104a46494600010200006400640000ffec00114475636b79000100040000001e0000ffee000e41646f62650064c000000001ffdb008400100b0b0b0c0b100c0c10170f0d0f171b141010141b1f17171717171f1e171a1a1a1a171e1e23252725231e2f2f33332f2f40404040404040404040404040404001110f0f1113111512121514111411141a141616141a261a1a1c1a1a2630231e1e1e1e23302b2e2727272e2b35353030353540403f404040404040404040404040ffc000110801f701fc03012200021101031101ffc40072000100020301010000000000000000000000040501020306070101000000000000000000000000000000001001000201020306040406020300000000000102031104213105415171121334812232336142721591a1b1528214d123625324110100000000000000000000000000000000ffda000c03010002110311003f00fa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000034b65c549d2d78acf74c8371ad3252fc6968b69dd3ab6006b6bd291aded158ef962b971de74ada2d3dd120dc0000000001a5b263a70bda2baf7c8371ad7252ff45a2da73d2756c000000000000000000000000000000000000000000000000000000000000000000000000028bac7bbff00185ea8bac7bbff0018073e9fba9dbe68d67febb70b7fcbd044c4c6b1ca793cb4d2d158b4c7cb3ca573d2777ea53d0bcfcf4fa7f1803ad7b7afea44e8fee67f4a5f59f6f5fd489d1fdccfe905d84cc444ccf28e6abdd758f2da69b78d74fcf20b51e7ff0075deebf5c7f084bdaf57f35a29b88d35fcf00b51889898898e313c990155d5b065cb92938e936888ec5aabfa8efb2edaf5ae388d263b41af48c3971464f52b35d74d355920f4ede65dd45e7269f2e9a68d7a8ef72ed6f4ae3d34b471d41602a69d62630cdaf113975f96b1cb4469eabbc99d62d111dda02f99566dbabd2d8edebf0bd63869f99172f57dcdadae3d295ec8d3505e8a7daf57c9e78ae7d26b3c3cd1d8b789898d63948322bb7dd4e305a71628f35e39cf64204f55decfe78fe100f402930f58cf5b47ab117af6f62e31e4ae5c75c94e35b46b00dc46ddef31ed69e6b71b4fd35555fab6eed6d6b3158eed017a2a76fd5ed35b5734479b49f2da3bda63eadb9b64ad662349988905d30472576f3aac62b4e3c31e6b473b76402c879ffdd77baebe78fe1099b4eade7b463cf1a4cf2b47782d06190000000000000000000000000000000000000000000145d63ddff8c2f545d63ddff8c03b6cf6f1b9e9f6a7e68999acfe2afc77c9b7cd168e16a4f185bf47f6d3e32e1d5f69a4ff00b148e13f5ffc836ea59ab9f638f25794cff370e8fee67f4a1fab7f4a717e499f369f8a6747f733fa4137abe79c7822959d2724e93e0acd86d63739fcb3c291c6c9bd6e27cb8edd9acb9745b4467bd679da387c0167fe9edbc9e4f4e3451efb6d1b6cf348fa278d5e894bd66d139eb58e758e3f104be919e72609a5a759c73a4782c155d12b3a64b766b10b5014dd6bee53c172a6eb5f729e00e9d13e9c9f069d6fee63f096fd13e9c9f069d6fee63f09073e93b6a66c96be48d629ca3f14dea78314ed6d68ac45a9c62623471e89f4e5f184aea5ecf278028b063f573531ff0074e8f431b5c15c5e9c523cba777151f4ff00798bc5e8a79483cbe5ac532dab1cab3a43d1ed66676d8ff1ac3cf6e7efe4fd52f41b6b453678ed3cab4899fe008797a356d79bc649e33acea93ffc3831c52d348888e3ae8a8dcefb71b8bcc45a62933a56b0ef8ba466bc45b2dfcb13d9ce410f75e94e7bce1fb7af05cf4a999da575ece4a6dde1ae0cf6c559d62bdb2b9e971ffc95055f52cb393777d79527cb09fd2f678fd18cd78f35adcb5ec856ef6263779627fba573d36d16da534ece120d3a86cb164c36bd6b15bd235d614b83ef53f543d16eef5a6df24db8479661e7707dea7ea805fef72ce2daded1c274d23c543b7a572e7a52f3a56d3f34aebaa44cece74ec98952edf14e6cd5c713e59b4e9120be8a6ca31fa71e4f2f2ec51ef315316e2d5c73ad39d744dfd9b37fed8fe6c7ecd9267eed7504fe9d9672ed6933c663e59f825236c76d6db61f4ed68b4eb33ac2480000000000000000000000000000000000000000000a2eb1eeff00c617ae39769b7cd6f3e4a45adcb59045e8feda7c653b252b92934b46b5b4692d7161c786be5c758ad7ba1b83cd6eb6f6dbe6b639e5f967be12ba3fb99fd2b7cbb6c19b49cb48b4c72996316d76f86de6c748acf7c035de6da3738269f9b9d67f150699b6d97b697acbd339e5dbe1cd1a64a45bc4155fbd66f269e48f377a1c5736eb370d6f7b4f35cfed5b4d75f2cf86a918b6f870c698e915f006bb3db46db0c638e7ced3f8bb800a6eb5f769e0b972cbb6c19a6272d22d31cb5057f44fa727c1cfadfdcc7e12b4c5b7c3875f4ab15d79e865db60cd3139691698e5a82bfa27d397c612ba97b3c9e0ed8b6f870ebe9562baf3d1b64c74c959a5e3cd59e7120f3fd3fde62fd4f453ca5c69b2dae3b45e98e22d1ca5d81e6773f7f27ea95f62a7a9b0ad239db1e91fc19b6c769699b4e38999e72ed5ad6958ad634ac7088079898be1c9a4c696a4ff00459c75a88c711e9cfa9a7c13f3ecf6f9e75c9489b77f6b9e3e99b4a4ebe4f378f1051669c96bfa9922626fc7595d749bc5b6ba44f1ace9291976d832e9ea522de5e11f8338b6f870ebe9562baf3d015dd5b67699ff00631c6bfdf11fd5076dbccdb599f24f09e759e4b3dd753b6df3db15b1f9ab1c9aedafb0ddda7cd8ab4bc71e3da087933eef7f131cb1d23cd3a72e08d83ef53f542f375936db7db5eb4f2c6b1a456bf8a976949bee31d63fba01e8b2e28cd86d8edcad1a3cee5c5976b9b49d6b6aceb597a56997062cd1a64ac5a3b3505557ad648c7a5a9137efec42adb719f36b5999bde7b173fb56d35d7cb3fc5df0edb060fb748acf7f6833b7c76c586b4bdbcd688e333deeac32000000000000000000000000000000000000000000000000000000000000000000000000000000000087bed8577511689f2e48e53deabb74bde5278575fc625e80079f8e99bcb4fd3f199596c7a746da7d4bcf9b24f2ee84e601900000000000000000000000000000000000000000000000000000018019180190601918019180191801ae5cb4c349be49d2b1ce5cb1efb6d96f14a5f5b4f28637d86f9b6d6c74e369d10367d3f738b715bde23cb1cc16b972d31526f79d2b1dae38f7db6cb78a52fada79434ea9eceff054f4ef798fc41e881806460011a7a8ed226626fc6384a4cf2797cbf76ffaa7fa83d3d6d16ac5a394f26ce5b7fb14f0874065cf366c786be7c93a55ba0f58f6bf18077c5bddbe6bf931db5b4f624283a4fbcaf84afc01801918640000000000000000000000000000000000000000000000619626358d27b4151beea993cf38f04e915e136edd513d6deda3cde6bcc77acf2f4cd9c4f9ed6f271d678f374b750d962af962d13a469a402af0f52dd62b479ade7af6d657517f5f6fea629f2cdebad65e7b717a64cd7be38f2d6d3ac42f3a67b3a02abf70ded32697c93f2cf18e0bdc578c98eb92395a3552f56c1e9ee3d488f97271f8a6747cfe7c338a7eaa4ff29074ea7bab6df0c79274c969e1287b0dcef371b88adb24cd238d9cbaae7f57733589f969c3e3da9dd2307a782724c7cd79fe500edbede46d71eb1c6f6fa614f3bcdee6b70bda7f085cee7678371316cbce2348972c3fe8ec62d5f52359e733c64155fed6f31db8ded59fc569d3b7d6dcc4d327d758d75ef43ea5bcdbee2b5ae38d6d59fabf06bd23dd7c0169d4325f16d6d7c73e5b469a4ab765bedd64dcd297c93359e709fd53d9dfe0a9e9deee80b6ea7eceff00054f4ef798fc56dd53d9dfe0a9e9def31f882ff264ae2a5b25e74ad635951e7ea7b9cb69f4e7c95ec885de6c34cd49c77e35943aecf63b5cb196d7d2639566415939b7b4e36b5e23be52765d4f2c64ae3cd3e7ada74d7b612775d476738ed48ffb35898e0a6c7f72be300f533c9e5f2fddbfea9feaf4f5fa23c1e632fddbfea9fea0977ea1b9cb5ae2c1135ad634e1ce5cabbcde62b7d76898ec95d6c76f4c3b7ae91f35a35b4f7b8756dbd2f8272c4697a76fe00e9b0df57755d2dc32579c34eafed7e30ace9d9269bba69ca784acfabfb5f8c02bfa4fbcaf84af3264ae3a4def3a56bc66547d27de57c2537ace59ae2ae38fcd3acfc011373d533e5b4c629f253b34e72e3fec6f69a5a6d68ee996dd3a76f5cde7dc4c44563e5d7bd6b9379b0c949a5b2566b31a680e1b0ea7392d18b3fd53f4dbbd64f2f3a532ccd275889e12f4b82fea61a5ff00ba2241d0000000000000000000000000000000000000000000001a66c918b15b24fe58d5bb9e6c7eae2be3fee8d01e77265cdbacbf34cccda74ac7646ab2c3d1b1c444e5b4ccf6c47055e4c7936f934b44d6d59e129bfbbee6d48a56b1e7e5a8226ee94c7b8bd31fd359d2177d33d9e3f051e6c39b1cc4e58d26ff0032e7a4e48bed62b1ce93a4836ea583d6db4e91f353e68546c773feb659b4f29898f8f63d14c44c4c4f29e0f39bcc1383717a69c35d6be120d31d2db8cf15edbdb8bd2d2914a5691cab1a2a7a360d6f6cf3cabc2ab8053f56dde4f53d0a4cd6b11f369dae3b2e9d3b9ace4b5bcb4d74fc65d3ab6daf197d7ac6b5b73d3b25c369d432ed6b3488f35678e920efd4365836b86b34d66d33a6b2d3a3fba9f073cf7dd6f6272dabff005d235fc1b74bc918f755f372b70059f54f677f82a7a77bba2dbaa7b3bfc153d3bddd016dd53d9dfe0a9e9def31f8adbaa7b3bfc153d3bde63f105b752dcdb6f835a70bdf844f729f6f8326f33797cdc678dad2b7ea7b7b67c1f271b5275d3bd4d833e4db65f3d785a39c482cff0069dbe2c56bde66d31133f82a71fdcaf8c7f54dcbbedd6f23d1c75d22dcf4429adb165d2d1a4d278fc01e9ebf44783cc65fbb7fd53fd5e9715e2f8ab68e5310f379235cd78ffca7fa83d16d6f1936f4b472d1c7a9de2bb3bc4f3b708565736f3a7cf93f2cf18d78c7c1c771bbcfbab47a93ae9cab1c819d8566dbbc711deb5eafed7e30e7d2b656c7ff007e58d2663e5874eafed7e300afe93ef2be1295d6eb3a63b7646b08bd27de57c2571bbdbc6e70db1cf09e759fc414bb1db63dce49a5ede5988d613bf65c31c66f2acb573ed32f189a5eb3c25df2754dd64c738e66235e13311c4122bd37676fa736bf1859e1c718b1571c4eb158d22545b2d964dc6489d2631c719b7fc3d044444444728064000000000000000000000000000000000000000000001864069930e2c9f5d62de30d69b6c18e75ad2227bf47501adb1d2df5562da77c6a5694a7d358af8468d8061adb1e3b4eb6ac4cf7cc6adc06b5ad6b1a562223ba3836006262263498d627b25c7fd3db4cebe9d7f83b80d62948af962222bddd8c461c513ac52b13e10dc0626b5b46968d63ba5ac62c559d629113df110dc0626b5b46968d63ba5ac62c559d629589ef8886e030e77db60bceb6a44cf7e8ea034c787163fa2b15f082716299d6695999ed9886e03115888d22348ee86be8e2e7e4aebe10dc0697c74bc796f58b4774b4a6d76f49d6b8e227bf47601862d5ada34b444c774b601a571e3aceb5ac44f7c436640697c78f24697ac5bc61ce367b689d7d3aff000770188ac5634ac691dd03200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003fffd9, 'Informatics Festival 2016 atau yang biasa disingkat IFEST 2016, sudah hadir untuk yang kedua kalinya dalam 2 tahun terakhir ini. Sebuah Proker dari Departemen Humas. Secara keseluruhan rangkaian acara pada IFEST tahun ini tidak jauh berbeda dengan tahun kemarin hanya saja tahun ini, panitia IFEST mampu mendatangkan MOCCA dan Hivi dengan begitu acara penutupan IFEST terasa lebih spesial karena ada penampilan dari mereka.\r\n\r\nUntuk rangkaian acara pertama IFEST ada Ifest Futsal Competition 2016 untuk mahasiswa Teknik Informatika se-Bandung Raya. Setelah melewati hamper 3 minggu pertandingan Futsal, SI TELKOM 2 berhasil merebut juara 1, disusul oleh MI TELKOM 1 yang menjadi juara 2 dan juga Panji Ikhsan N sebagai Top Scorer dalam Ifest Futsal Competition 2016  kali ini.', 20000, 'Parkiran PPBS D Unpad', '0899', 'himatif.fmipa.unpad.ac.id', 'musik', '2016-10-21', 'waiting', 'andreantaufik@live.com', 17),
(3, 'Blazture', NULL, 'acara statistika', 50000, 'Parkiran PPBS D Unpad', '099909', '', 'musik', '2016-11-25', 'waiting', 'adaadaaja@gmail.com', 3),
(6, 'Makan Makan', NULL, 'adawww', 0, 'papau', '090909', '-', 'papau', '2016-11-21', 'waiting', 'andreantaufik96@gmail.com', 16),
(10, 'wadaw bayar', NULL, 'wadaw bayar', 13000, 'wadaw bayar', '121', '1', 'bayar', '2016-11-25', 'waiting', 'andreantaufik96@gmail.com', 3),
(13, 'SMILEMOTION 2016', NULL, 'Sebagian besar para penderita Celah Bibir dan Langit-langit menjadikan kekurangan mereka sebagai alasan untuk tidak percaya diri dan merasa berbeda dengan orang lain. Padahal banyak orang dengan keterbatasan fisik contohnya penderita Celah Bibir dan Langit-langit, namun dapat berprestasi dan menjadi inspirasi bagi orang lain. Hal ini yang mendorong kami membuat sebuah kampanye akbar yang dinamakan dengan SMILEMOTION.\r\nAnnual event yang diselenggarakan oleh FKG Unpad yang bekerja sama dengan Yayasan Pembina Penderita Celah Bibir dan Langit-Langit (YPPCBL)\r\n\r\nMelalui tema â€˜MOVEMENTâ€™ selain mengedukasi masyarakat mengenai apa itu penyakit celah bibir dan langit-langit, kami ingin menginspirasi masyarakat untuk berkarya dan membuat suatu gerakan positif melalui persembahan karya dari kami dan para penderita celah bibir dan langit-langit', 0, 'Sasana Budaya Ganesha', '628996126083', 'smilemotion.org', 'Music', '2016-12-17', 'waiting', '', 5),
(14, 'IFFD 2016', NULL, 'Merupakan dies natalis Himatif FMIPA Unpad. Acara tahunan ini .....', 25000, 'Bale Santika Unpad', '0999121', 'himatif.fmipa.unpad.ac.id', 'Dies Natalis', '2016-11-22', 'waiting', '', 5),
(15, 'Mail Unpad Community', NULL, 'Kumpul tentang ....... ', 0, 'Bale Sawala', '00009909', '', 'Komunitas', '2017-02-15', 'waiting', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `history` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `email`, `history`) VALUES
(1, ' ', '2016-11-25 04:57:19'),
(2, 'andreantaufik@live.com', '2016-11-25 04:57:22'),
(3, 'andreantaufik96@gmail.com', '2016-11-25 05:08:00'),
(4, 'andreantaufik96@gmail.com', '2016-11-25 05:08:02'),
(5, 'andreantaufik96@gmail.com', '2016-11-25 05:08:40'),
(6, 'andreantaufik@live.com', '2016-11-25 05:08:53'),
(7, 'adaadaaja@gmail.com', '2016-11-25 05:09:14'),
(8, 'andreantaufik96@gmail.com', '2016-11-25 05:12:50'),
(9, 'andreantaufik@live.com', '2016-11-25 13:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('user','admin') NOT NULL DEFAULT 'user',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(100) DEFAULT NULL,
  `nohp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `level`, `time`, `address`, `nohp`) VALUES
(5, 'Andrean Taufik', 'andreantaufik96@gmail.com', '3de33d38027dbe6e18c9be179b88eb9e', 'user', '2016-11-20 14:09:53', NULL, NULL),
(6, 'Andrean Taufik', 'andreantaufik@live.com', '9e3a9fbaa66a287c423bd74113ad4020', 'user', '2016-11-20 14:24:46', NULL, NULL),
(7, 'Alvin Niza Aulia', 'alvin.niza@gmail.com', '6e55d1d66c289dbdb34baf068e838adf', 'user', '2016-11-20 16:43:04', 'Jl. Jatinangor No. 47 A', '082112121112'),
(8, 'Ardhi Harahap', 'ardhi@gmail.com', '3f9931015c52d8e86ff98ad49d151071', 'user', '2016-11-21 06:47:40', NULL, NULL),
(9, 'Hilga', 'hilga@dwiana.com', '36d926a632318747acc1430a9fed884a', 'user', '2016-11-21 07:14:37', NULL, NULL),
(10, 'farestu', 'fares@gmail.com', '9e999aef4357d0f677bbebb052db5243', 'user', '2016-11-21 07:26:15', NULL, NULL),
(11, 'ada ada aja', 'adaadaaja@gmail.com', '81f60737be18672fbbcdbcda35d6d21f', 'user', '2016-11-24 22:01:50', NULL, NULL),
(12, 'Andre Unpad', 'andrean13001@mail.unpad.ac.id', 'aa63d725c7fa0805be441e5d10f2039f', 'user', '2016-11-25 17:08:20', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;