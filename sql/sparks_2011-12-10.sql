-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 23, 2011 at 12:12 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sparks`
--

-- --------------------------------------------------------

--
-- Table structure for table `contributors`
--

CREATE TABLE `contributors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email_hash` varchar(32) CHARACTER SET latin1 NOT NULL,
  `password` varchar(64) CHARACTER SET latin1 NOT NULL,
  `real_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `community_profile_link` varchar(150) CHARACTER SET latin1 NOT NULL,
  `website` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `is_admin` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `contributors`
--

INSERT INTO `contributors` VALUES(2, 'katzgrau', 'katzgrau@gmail.com', '053aed11225b557dbc877098912f9048', 'b79f57f1fec16eba817558d716cd3d3a4b602e63', 'Kenny Katzgrau', '', 'http://codefury.net', 1, '2011-02-05 07:23:02', '2011-02-05 07:23:02');
INSERT INTO `contributors` VALUES(3, 'seejohnrun', 'john.crepezzi@gmail.com', '3a0541ed3d5324bb54b9f07990be20ae', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'John Crepezzi', '', 'http://blog.johncrepezzi.com', 1, '2011-02-05 17:41:16', '2011-02-05 17:41:16');
INSERT INTO `contributors` VALUES(4, 'elliothaughin', 'elliot@haughin.com', '05746ee5bd9c390529bcfc4e97bfaf92', 'e575084e21a8507a59c116dac95d233584e49d8b', 'Elliot Haughin', '', 'http://www.haughin.com', 0, '2011-02-13 19:44:57', '2011-02-13 19:44:57');
INSERT INTO `contributors` VALUES(5, 'beaufrusetta', 'beau.frusetta@gmail.com', '4935b44b00f304faf444cb6e86a46e1c', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Beau Frusetta', '', 'http://beau.frusetta.com', 1, '2011-02-16 22:44:47', '2011-02-16 22:44:47');
INSERT INTO `contributors` VALUES(6, 'mdpauley', 'mdpauley@gmail.com', '5028354017460d2a697f90874bc62e72', '4afdff80dc61ae12dd15ea1741a1dbb1266c0216', 'Michael Pauley', '', 'http://mdpauley.com', 1, '2011-02-18 02:20:15', '2011-02-18 02:20:15');
INSERT INTO `contributors` VALUES(8, '605651a92e4e984ca8e59e7d6c9e23de', '946dc7c1892a3b6344735f3e674394a4', '9f546e8bbb3268eec59f6bfc1660bb2d', '2920ab0dc41438559626e4e5eb19b0c3', 'a914e862c088a4d76aeb3687c961e3ef', '', 'b4d92393c0968a680f2a2a96d584b6d1', 0, '2011-02-24 21:12:24', '2011-02-24 21:12:24');
INSERT INTO `contributors` VALUES(9, '31cd58df4ec8de8e1e052f7cd784a300', '2a953dc940c9bf42c5376a1d282cba90', '', '2f6e9c54b15c0b505758c3e8c453a276', '4a11df27188585b158c9dc9bb88fdbd8', '', '627064518af679cfb88eb4c650d44f4e', 0, '2011-02-25 21:38:53', '2011-02-25 21:38:53');
INSERT INTO `contributors` VALUES(10, '62fdec77992cea94dc54396405b4334b', '659cf2ed08359b1521ca7cd2c8840606', '84ad790da2f73f864db6d840342aa0f2', 'bbeffdce68f59a40db9adc148d9c20d4', 'c6a84b4fc6ea423b6b82fd70083eeb2b', '', '44107127ee136e33d1121e6549496a98', 0, '2011-02-26 18:45:45', '2011-02-26 18:45:45');
INSERT INTO `contributors` VALUES(11, 'ff27f3bac1cf6787162bdd3531cd1d96', '3ac79e788cb79bcc92e9d11dda07511d', 'd664f094eaeebaa43bd3a2afe4e63c36', 'be479db70a63a8ce6fab0a483dc47a5e', '4c3a96ebada607c47b9430139744feee', '', '3ac5644b3f511dab2bbfd0668060be61', 0, '2011-02-28 19:45:15', '2011-02-28 19:45:14');
INSERT INTO `contributors` VALUES(12, 'c37e8ab19e079561f9b3eeabef2d27d8', '2604d6da7d3e505507664cc60eb4591e', 'a20e412303d8db9b5270c8a65c916bb8', 'f4597e77365c4fe5aac2bdd88ed57cad', '315e570fb12427f933c1a0e377605918', '', 'a5218c474034b37f8d8e166e301a57da', 0, '2011-02-28 19:54:25', '2011-02-28 19:54:25');
INSERT INTO `contributors` VALUES(13, '031205680009d9ea8acb124175ab5cfa', '20effe567eb8e4cfa91f62f1a9ad5eb6', '9d0a17889373de4ba8605767299288cc', '65210c7fc885f6a2b94ee8157c886682', 'e86c3e7f7ac555eec8e73da7fcd86a7b', '', 'e57cf29ef5d2007ac2bc23932f324218', 0, '2011-02-28 19:57:39', '2011-02-28 19:57:39');
INSERT INTO `contributors` VALUES(14, '4d7215c84e1f1d48431c9cf810df7dbc', 'fdf13b48f3e2e0af0d06cecd7cfa725b', '14df293d6c5cd6f05996dfc606a6a951', '52d460298c7a7281cc8563647220b43f', '0a687e411f3c2e1fd1bb1014c27aedd5', '', 'ab88b63940c6ecb1d27919f6803c090b', 0, '2011-02-28 23:56:46', '2011-02-28 23:56:46');
INSERT INTO `contributors` VALUES(15, '2bc50763e2a7c44ded51b67f11e661e4', '9743b0d8fe4ea0075133f8a0d9047394', 'f2f5131935ad6c0d4bd017d20935b37f', '3a915733b3014ef3bb005a6ea9f8deef', '57034832164ecb743a9c31350cdd5a06', '', 'e493f5bd18ecf8e7c58645a0770ad44b', 0, '2011-03-01 00:05:50', '2011-03-01 00:05:50');
INSERT INTO `contributors` VALUES(16, 'e5314aea5bbd88ba55cfdca3a64dba67', 'd8627fcfd6092e336cd3978b1b33d996', '6aec28c9e1522762caa93eadf2231a61', '1c4950b6dec72dad7460222b42c90b3d', '1dc98dfa7910ae7b317cf727bf9a37e5', '', '22424b460dc0ebfd36c37852105ac202', 0, '2011-03-01 00:07:46', '2011-03-01 00:07:46');
INSERT INTO `contributors` VALUES(17, '754d42a023e47081bd381fd1b25ccdb6', 'a7153ad61a5794fa983d617ad93370f4', 'e0aaa4446740a255fc4e74d44ea4d6bb', 'f4f1941c72c5f1e5c2dae03dc5a57274', '7510abca08a47389c5ad3b34c296200f', '', '0488feb9b5709d13ad2b0b2d509c3542', 0, '2011-03-01 00:23:45', '2011-03-01 00:23:45');
INSERT INTO `contributors` VALUES(18, 'f42c41060241fee91667a63e11e19d0d', '920d6b0c4853ffa571c1166667f019a5', 'e420241bec32f3d97b60f82e17550c2e', 'cc660641069f93e875c57e9b6ccee438', 'c270ab46cc74f6e65261eea715d02cdb', '', '5a8dccb220de5c6775c873ead6ff2e43', 0, '2011-03-01 00:41:23', '2011-03-01 00:41:23');
INSERT INTO `contributors` VALUES(19, 'd06ab329c48872c7379f73a39cd043eb', '70e37bbb99d5610a7de229fa0b1a06cf', '5c3eb3001aad01f66124ce11c674b33b', '392058756cadfd1500910c46bb12b8cf', '7e3b547df246f967b44f1805d5446c5a', '', '5a8dccb220de5c6775c873ead6ff2e43', 0, '2011-03-01 00:56:06', '2011-03-01 00:56:06');
INSERT INTO `contributors` VALUES(20, '5a5816be91a8a5d951c032c47fe189f2', 'dde3d8aea04c156c47b8fcc495637a4c', '15e10eaa69a500ab4e5acea7f2b3b7f9', '822742a873d4972a4bc28de42137eab0', 'e87125d751af94db17f31f40d74d602f', '', 'fd99b655c3506a855867d92e440138b6', 0, '2011-03-01 01:25:00', '2011-03-01 01:25:00');
INSERT INTO `contributors` VALUES(21, 'b30253670dec486d14c32a8906b5202d', '1558402afb9aee09b59aab155ed15d6e', 'f606e875610a1f3a038f142e6e592bdb', 'babc3cceca19dbb460cc2ed0cbea3cc5', 'cfeae439ab75a40feb322f31767b893d', '', '3c6df2c62c7e8341e363250353e6ce41', 0, '2011-03-01 01:46:51', '2011-03-01 01:46:51');
INSERT INTO `contributors` VALUES(22, 'a2a018cb34afd9c465c240ccd1e6df59', 'fa8a48039115c1a084e92fdcd62e2cf7', '377d40106df1a065334e45fef0d7a0cb', 'db5365e0edc0c40ca7c74120627847e5', '230b971faca3acf9870d82675007c857', '', 'edabf5d0e2b580ae9c778d52304817e5', 0, '2011-03-01 02:13:25', '2011-03-01 02:13:25');
INSERT INTO `contributors` VALUES(23, 'aba05b7863631ebd843c4d61c4e215c0', '07afe6c5e477989b61f67c5108800179', '69b0b75f21d3d55f0bf99d800a1e4547', '3e58ab79ea70e38a5f2598ff612e0a53', '7a153facdb7499413c3c21f8dbb4f80e', '', '771fedf347c7c88076bbc9b2ab81e207', 0, '2011-03-01 02:19:23', '2011-03-01 02:19:23');
INSERT INTO `contributors` VALUES(24, '29365c81b3826244077bb41f9b0706ce', '044e617c8dc9b80cd85994e287a1b69d', '38da1d3946740ae6a32a7918895db440', 'c8e3a728df491c1a72b5120a1f3008a5', 'c6725c67d8b9db45f43166ed2efdaab6', '', '09e201e83fa8582e6dbf263099387640', 0, '2011-03-01 03:10:59', '2011-03-01 03:10:59');
INSERT INTO `contributors` VALUES(25, 'f2d48d10e1c033a58d40b1d71d5cc184', 'bd37a483ac0c71e6f7d37ab6211244b5', '4ef8007384ef2dc33087bec7c2edd227', '6ac230c4b24c45654a0baa0ea1fb6a35', '3b04b7f67754e2d74d3585d917997977', '', '067520d8bb1c658724fae858c2321f9c', 0, '2011-03-01 06:09:18', '2011-03-01 06:09:18');
INSERT INTO `contributors` VALUES(26, '3e21d74c8a477c51b0fd55d370230760', '4235b5fd2050b470f6488dfdcb279c2f', '66f85e3a3571bf816bd6427d8d52b584', '8a852ea5649cfec534eace3597b926c8', '611a0f2c3c99246bbe8ec70426ddb70c', '', '69e84844e8dfe93b7fdca8bdb10e1d62', 0, '2011-03-01 09:05:40', '2011-03-01 09:05:40');
INSERT INTO `contributors` VALUES(27, '1329e86859232b06b44fba34dee3c596', '024e16e4f9f6032f14a5825f38900fd0', '54534878e1e0354a3d453e0beeb48fa0', 'ced21b92ee00ebdc86677a5e0238cbcd', '87aee4c0f3c892c9fe43ced3186e3838', '', '5a8dccb220de5c6775c873ead6ff2e43', 0, '2011-03-01 09:25:11', '2011-03-01 09:25:11');
INSERT INTO `contributors` VALUES(28, '4921f80f8f3d22acc07a9f1ef24bd9ae', '5015e1c933692a09787278876854337d', 'c83608cd05d4301e2e05d5d3ed15bb43', '42d04144f98adb5b64c9470c993c43f3', '6b611f0d12a6eeffd245efad7607e918', '', '6b789fe3800fcbff5143d63a0271b37d', 0, '2011-03-01 11:10:19', '2011-03-01 11:10:19');
INSERT INTO `contributors` VALUES(29, '0f72116fab8350cb799a94c7d9aa2773', '82b57738c8d3e6a9d1bc28cc9ccc539f', '3cbe4f897045f81a06f3a285038ff5e1', 'df374cd7b843189cfba5d0a2087ce954', '6859b1fcdd3c663deffa0323d580f8d1', '', '5a8dccb220de5c6775c873ead6ff2e43', 0, '2011-03-01 11:10:49', '2011-03-01 11:10:49');
INSERT INTO `contributors` VALUES(30, '49add4f25fcadc0b5e1b08bfb4fc30a5', 'abcd88dc4e0ee4a21ea17c2d57ec3a2b', '023c6c7fd19af6c8b4f6080cf3a30a7e', 'c52c7ea9a09ac171b561008912a9747a', '654ef8079bb66c6a6521846b313b995a', '', '12fbd61b05d7a992151992b88b1c97d3', 0, '2011-03-01 12:57:16', '2011-03-01 12:57:16');
INSERT INTO `contributors` VALUES(31, '2f7fd50e593f7b77998669a9d775f5f6', 'fba718fb74a716ffbd8bb35a11684cc4', '2644f325f04199424ab747647ccfacdc', '77446b590256f8950949cd6d20ce7bc6', '370e8f58c54eabe7d49decfa62af1d36', '', '9cc472f87a2adf4d38497b131582999e', 0, '2011-03-01 13:52:24', '2011-03-01 13:52:24');
INSERT INTO `contributors` VALUES(32, 'da7323ae2ada7966a57f0c733daee5be', '1f22230f00450d22eb6e485192c1eb1e', '54bf10ec8f553d3a3c2264ad37273b3e', '80786032dd90563c1f771ed197f01063', 'dec440f9e6916886b06b589e746caf2c', '', '033aa48df9c26c08f631a14fd7ef966d', 0, '2011-03-01 14:18:23', '2011-03-01 14:18:23');
INSERT INTO `contributors` VALUES(33, '8026de2cba3e5755d5f978705073c8da', '2c99606ff364165bca522b1a698094eb', '211dbf4c6372e1ecbc531af0b747f4e6', 'd7fb065d6ca0651eb7ff48aed0046b58', '8d94ac519fa06c46ae181757cc4bb4bf', '', '5910d99b87ebd0aaa2bc6ec668928951', 0, '2011-03-01 14:20:27', '2011-03-01 14:20:27');
INSERT INTO `contributors` VALUES(34, 'b85937b5df50585481f8ebb6521b0cf5', '0902ab75c232fc783bee2ecb641619c9', '37b092a324da25d53fd63d780692b174', '6b4289f9bd5f077c42b83518cab93af9', 'b45aa4a6e47511b48f28915c8c0dd86f', '', 'c96fdb21f36b8b2520dd5b4a657aa4ae', 0, '2011-03-01 15:24:21', '2011-03-01 15:24:21');
INSERT INTO `contributors` VALUES(35, '20cb1f79096d34d20dff7baa42749aef', 'a6dfccc128867b0a9cb48db5e2b1a057', 'a85e84e1e0b47549eb51efd8bf07f8b9', 'b4acdf33663e04ff89ab41a6366c0d40', '50400397b8027caf7adc53c76956a55a', '', '0f8dd82b34399ffc90a7f71c27f3b80d', 0, '2011-03-01 16:35:22', '2011-03-01 16:35:22');
INSERT INTO `contributors` VALUES(36, '06e3a1a9f2eae356d6d6ffd85fa6d87b', '401fd060d8477e6d85b40736431950e4', '17ebcebc76ceb837fd156116ef1663e0', '3a8e09f4ae7944a3fa7e32123aa3ac5a', '0be9fe68799c1e901686fadd87fc61f7', '', '84c37b57ca12db9f906358974ea11b80', 0, '2011-03-01 16:36:05', '2011-03-01 16:36:05');
INSERT INTO `contributors` VALUES(37, 'ecb369c6ba7410534ba7a96cfcb1a8e1', 'a3d626c83cfd5ac83c944904704c158a', 'fdf89d9f40d451897254b9780062dfc6', '9c053d273ab02de4c7f17c70d177de8d', 'a224f0aa89f926460a4360e21ddb0169', '', '00588e65ec98e1f68b62653803a26fb3', 0, '2011-03-01 16:49:16', '2011-03-01 16:49:16');
INSERT INTO `contributors` VALUES(38, '58d9df1e5a83cc2e7b52b0ab6c31103d', 'a90767fbb551679b0c19d0088bf69df1', 'f189844c7928838503c5feef7ded0f55', 'b2812491e2884329a8922b6b644d0c46', '97dc87ce62188d3dcdf2a0a3fb269df4', '', '5a8dccb220de5c6775c873ead6ff2e43', 0, '2011-03-01 16:54:25', '2011-03-01 16:54:25');
INSERT INTO `contributors` VALUES(39, 'e45a2dd2a468c1dc77fb4fac696f5139', '5478ea20cfaf8fc664aebd5117666f01', 'd6d683476279a53e0ead7593c47091ce', '04f4effc7ca8ddc151a5bad4b087ed5c', '060c97125dc056ef436bfdf713fcd4a0', '', '5d39abb731c86465b30aa689f427e03a', 0, '2011-03-01 16:56:33', '2011-03-01 16:56:33');
INSERT INTO `contributors` VALUES(40, 'f17b38fdb040ae2bf1dc91219d763b52', '3ea2902828f6c1ed60f68963e30d6b02', '46fdf6e9b9868ba27968f6b5d673add4', 'e600c6885555158f1bfb212c28d2a4d4', '84b9a195df77fca8c5ed9f09ff922da9', '', '3fcde9091785afaf1d973cba3361c2d0', 0, '2011-03-01 17:48:34', '2011-03-01 17:48:34');
INSERT INTO `contributors` VALUES(41, '4a46449dc679a19465a267ffac727de3', '7ca3edb700d27f61ffe0a2b38751c6c6', 'd004dd965146e8ab9f76c7e16aaf0c7c', '1f1757b8eed3c9c21b5907236ce92f02', '025e65cfb82f1183265316907cbc4355', '', '5a43585ab6675bc0a124c3de1bde0830', 0, '2011-03-01 19:29:52', '2011-03-01 19:29:52');
INSERT INTO `contributors` VALUES(42, '7b0db1d93ef76cd15315bdd642b05e96', '8612718b0cda6223aad0b6100705492c', 'b226a1ac0c40f65a312c577157129a58', '57e2bf70d0b6dc3731186be443a7570b', '0df5f62ef092a432cce688071125879c', '', '5a8dccb220de5c6775c873ead6ff2e43', 0, '2011-03-01 23:04:54', '2011-03-01 23:04:54');
INSERT INTO `contributors` VALUES(43, '57312c9715118f58a6af9e20ff64bea0', 'e91d7ba44a1894ed1b858aca6492c587', '1025ecde22cd3c44810d905980ad30f6', '54fdce7e1bf69cf31bebcaaa1e526e3b', '24f92cab0d0cc91ad4a3d96ab9b32101', '', '247bf11410b8e0bf28d4e474cd5b94c1', 0, '2011-03-01 23:48:45', '2011-03-01 23:48:45');
INSERT INTO `contributors` VALUES(44, 'dda2d3639375fd69a9062ca06310863c', '54a5106cb13a4a1a73cf738f908f2d27', 'b6cf81dc31ecec621e949e659185a94d', '0d05de7ce26accf76fe7f1b3710b02cf', '6ed3203677d92c3968e67dffb1dbf113', '', '477348c11fa74cee93b39830378e6645', 0, '2011-03-02 02:16:24', '2011-03-02 02:16:24');
INSERT INTO `contributors` VALUES(45, '6bdd67bf046827897b43d11cd7be11b8', 'b973ea5468de9c34a225206b2d37b484', '6eb8c023b1d805a7ff8e0835d5b80df6', 'fa75b722791bed279f9bba54c08cbbeb', '02eba6bfd779f5be1912df745a184e50', '', '5a8dccb220de5c6775c873ead6ff2e43', 0, '2011-03-02 11:03:29', '2011-03-02 11:03:29');
INSERT INTO `contributors` VALUES(46, '65f8c734dba6aa416fd0bc50054ecfe7', '20271409973ebeaf351d06a4b7939b8c', '77b720d9be530e39298e9ac3d2fa05e9', 'f9f333ab6645595eccdac622a2ee42a4', '98627647540941066f530f0493a39255', '', 'df44d605ba0a4314ee1f64891f73d6a7', 0, '2011-03-02 12:16:29', '2011-03-02 12:16:29');
INSERT INTO `contributors` VALUES(47, 'd5f26fd30f8bb230d024f6bffcb40e0a', 'be7d8aa10a1fadc942349e460f4ec52a', '134f1a2edd3e6663fd58f81dbbcb807d', '258103dfe6ec9174aae0812e80d4186b', '67b60d29821b2b1acf59671987c9dbc9', '', '5a8dccb220de5c6775c873ead6ff2e43', 0, '2011-03-02 14:04:17', '2011-03-02 14:04:17');
INSERT INTO `contributors` VALUES(48, 'a455f5b0eca323638a32623c32a985b8', '60f8f523e525dfe2e1b2b1369e342a58', '964a5f31f10ac2af29ae53e56e5281de', '65e8d1a4d0a6973864e303755400bc44', '847678a9431be6d4eb06186ffd6c1ada', '', '57d2580635d78fdcb15b4b44b82dd7ea', 0, '2011-03-02 16:01:59', '2011-03-02 16:01:59');
INSERT INTO `contributors` VALUES(49, '1c8152943b30fb6c9b62465c6ccd9eb6', 'd433823125e939fb24da6a53278b8ddc', 'cc1fe6bba707d5e1c1ace0fee47e8c29', 'e4820b1ec8f73079c2cfa7dc6f5e2236', '149792e144262dcd8ce14955764ac482', '', 'acf557a6b497fb0a2bac87ace428c5e1', 0, '2011-03-02 16:39:10', '2011-03-02 16:39:10');
INSERT INTO `contributors` VALUES(50, 'c6be256b2c373b35c055752811ba6824', 'deda67fb2cb7c936bfb80574ffc13005', 'd8d8a984e4f4ee70a9b3e397e1468221', '01b46ac6d0ab339b4462bf6c0dbd7e10', '27e962431fe225045ee338a020a423ee', '', 'b480dedf5729b07121cf6d5face4a623', 0, '2011-03-02 23:04:34', '2011-03-02 23:04:34');
INSERT INTO `contributors` VALUES(51, '33ae4f6238b5458b00962fe651e4f599', '3115c7108a3b42b259bcb305f3226aed', '6e8abce7bef598cc612defb0a834fecb', '0041c2b29980baa5b525c88a7fdfcf53', '8a5b73aa7d99a136774dfb1e25982718', '', '192a107ad6b676c392468c36bcb7f563', 0, '2011-03-03 02:45:50', '2011-03-03 02:45:50');
INSERT INTO `contributors` VALUES(52, 'c1603a91b4dd6ceac903a1ea486c70a6', '4416dc3ec24af6f3649f1ec0f4754b6c', '9c2452ee75fefb96beed8ced38bff475', 'bb9c4df65263896f060e14431501d804', 'c1603a91b4dd6ceac903a1ea486c70a6', '', '01a6566857a696068ae937cdc2ec1c0f', 0, '2011-03-03 09:49:47', '2011-03-03 09:49:47');
INSERT INTO `contributors` VALUES(53, 'dfaa08196c0a6032a9913cf455d4eb32', '4cc8396ded50b3b9a31975f2638fcc34', 'e33022e51524a1617fd20ffa3b039b91', 'cb2cbbeff3f34eec94a005a1e0d21cf4', 'db103e9fb264f0e84aad6cf304ae7975', '', '4a3f836a2253d0318158acb161492422', 0, '2011-03-03 13:34:59', '2011-03-03 13:34:59');
INSERT INTO `contributors` VALUES(54, 'a88c01f6c4a011876f578ed3f62bc6d1', '08a5fae5f5cf8bb8ce62f823dab90e7d', '2b3cbbccdd4c126e46ea85ef84428ee3', '1b4ac907400a36d3973c5102b6b8d80a', '7598b0e93931c1f2cfa2320b82169a6b', '', 'eb6edc178e013d71ac2e46a60563e802', 0, '2011-03-03 17:31:30', '2011-03-03 17:31:30');
INSERT INTO `contributors` VALUES(55, 'ce6dcad0d1d5137dd8cb9b2d325bcdb2', '3806785d04c89489682fd99e9f9891da', 'b38928ac79167fc030d958cbb367aaf3', '8cd7162c97e1de60d0c00a6b5d5081fd', '8397068437fc78a0391e875561e2a345', '', '5a8dccb220de5c6775c873ead6ff2e43', 0, '2011-03-03 20:42:51', '2011-03-03 20:42:51');
INSERT INTO `contributors` VALUES(56, '03092d69e548b0dcf64a74657617ce75', '96bc6f50593d9fa6ba4f937f0f9fd726', '4229edd7cabee29bba0721170d00fa11', '432b2db212fb7dcea05029df53e79de9', '03092d69e548b0dcf64a74657617ce75', '', '5a8dccb220de5c6775c873ead6ff2e43', 0, '2011-03-03 23:04:07', '2011-03-03 23:04:07');
INSERT INTO `contributors` VALUES(57, '716622a08f4563894feaf3bb928cda39', '383506b71af9402bce7356833d0ad47c', '92049f10bad31bde78023f9a19cac0e1', 'd660126c29d27bc294e53a27d8d01162', 'e32d7fb96ccb8b44e569420439dd2c0b', '', '8e2b8e9b6b6c7bf8a9d7d1fe4a3130a4', 0, '2011-03-04 00:53:14', '2011-03-04 00:53:14');
INSERT INTO `contributors` VALUES(58, 'd9a233a92c70df9c3da3960688cd8927', '280d61ef30481096b0aa7d001a8e14af', 'c2db930ff62d116e3533eadf7c4d5785', '95500015559befeca38e9c44e44d3e48', 'ebd5bc842594a30a16d9fb6a36faf4cd', '', 'f050f5121145a131fb0408c21f3c7c14', 0, '2011-03-04 01:04:44', '2011-03-04 01:04:44');
INSERT INTO `contributors` VALUES(59, '43cba687dd8237e4d719889ce77e6cd8', '190e0c5a25c70dd83c490ebf6d2ff582', '78b28b1f216bdba34f6011f8259151c2', 'cbb2b266f74950b92890d479e7a94a56', '1edc0199ce3ccabcf8382e0de7256eea', '', '6c186b478076d309f625fdf2f8977ead', 0, '2011-03-04 01:49:05', '2011-03-04 01:49:05');
INSERT INTO `contributors` VALUES(60, 'e57c0a847082be57cbc346345bf8d28b', 'f9d5223ba1e1d55cf31544fdc676f6ad', 'b47e71287044e9400eeffc0bb75d9c09', 'a848c33b1a70880e0339c29fb703c2ad', '493d547042e93c5432bc74a6a36dabef', '', 'cc70424cbb597955a31c203f33960f51', 0, '2011-03-04 03:44:54', '2011-03-04 03:44:54');
INSERT INTO `contributors` VALUES(61, '40add30fe781609065c70e0435f9e5b1', 'cd9640e5358ad5c2a1afd07ec9f47686', 'd122254227a6f5cb2b8393e32eb32546', '3bd3c5250a34ff726fbf3c52c9b346e1', '203aa7a60663bd1981d5ab6d47046a98', '', '4fe92314b838578f9c122e871349ede4', 0, '2011-03-04 09:57:04', '2011-03-04 09:57:04');
INSERT INTO `contributors` VALUES(62, '7f211fb250377ea9eb39c215bb26cfed', '4db1da53fabf30c38e37f841bab228fd', 'afe115084fbd48e2aee05dbfa3324625', 'f2c222f5395bc077508e340b52f1a9f5', '7d427d61b07fa6ab3bc07e6c3ae51d69', '', 'cad066d5971ba679807d00b16fcc7393', 0, '2011-03-04 10:51:15', '2011-03-04 10:51:15');
INSERT INTO `contributors` VALUES(63, 'c1d306dc58994cb44698426531d8e325', '45abe189d3874435b6aed5f9ecb6c310', 'b630a0c8090c1a3a24e335cc5accc616', '72276a64c527fe3dd6835fb482e5f6a8', '9263f1c8dbb71cae7df831de2703c5a0', '', 'b2147811383658f37165ddf4a92ebd4c', 0, '2011-03-04 19:43:51', '2011-03-04 19:43:51');
INSERT INTO `contributors` VALUES(64, '088ac8ca4956573008885a81fdc63662', '00b350c52765b6dc8e775b89285a4e9a', '15027594a880b89393ff3a7670d42754', '30d3a0fb7428ef606c3353ea67ad92d8', '47e84ef24ad077232ef148ed5be14203', '', 'e96baf2ad547fbb4d596153553e1b459', 0, '2011-03-04 20:10:25', '2011-03-04 20:10:25');
INSERT INTO `contributors` VALUES(65, 'faa016e311657943d53176c2f87290df', 'c8a5e9d1af2e1bb5a0138c01afb5fd09', '39fcdf43e200302fdf0beff08b8a7e92', 'b51d09a0c99237c0e2eeaeb2bf5002c1', '6072cd53efa110eb400cf1bf38a519b5', '', '106e98898d094f1b912195cde38045ea', 0, '2011-03-04 20:43:54', '2011-03-04 20:43:54');
INSERT INTO `contributors` VALUES(66, 'ef2441987153c8f9c3ab561d23ad5faa', 'e8605fcbc5fd1cd33a8310e2e571a84b', 'cd6aaf7a0f4f66c7b26327fc4475b4d6', 'f69a4f264932833d60b6b131cd1e486c', 'e70b05ba7082a1b60412e4bd3b2cc963', '', '5a8dccb220de5c6775c873ead6ff2e43', 0, '2011-03-04 23:18:45', '2011-03-04 23:18:45');
INSERT INTO `contributors` VALUES(67, 'd0a99828e360d667fc4e3b5c9a89870c', 'd61cb15a38634ad8a5a6694f983ab801', '98564e4c85090666d8f744253c4aa5aa', 'd78ef7a6233370c5c7b2f5505a824842', 'a1461ba9469b52ceb5ba83ddaabdb15b', '', '5eeae62e006032706386f0a94457c91e', 0, '2011-03-05 11:58:16', '2011-03-05 11:58:16');
INSERT INTO `contributors` VALUES(68, 'd0a99828e360d667fc4e3b5c9a89870c', 'd61cb15a38634ad8a5a6694f983ab801', '98564e4c85090666d8f744253c4aa5aa', 'd78ef7a6233370c5c7b2f5505a824842', 'a1461ba9469b52ceb5ba83ddaabdb15b', '', '5eeae62e006032706386f0a94457c91e', 0, '2011-03-05 11:58:16', '2011-03-05 11:58:16');
INSERT INTO `contributors` VALUES(69, '3ea72921b4c0d57909b15995e8a70587', '095a18a5d874293bc2752ac6c8153d6f', '0e67abb7e2d62de7b8c33fcdbbf95b80', '56a19a81dc78d582775df19bc5dcbe2d', '07f1e5974fc99f8f71daaa7dfedaabad', '', '3e8ee6fc189066d48410bd6c2e94ea99', 0, '2011-03-05 17:54:02', '2011-03-05 17:54:02');
INSERT INTO `contributors` VALUES(70, '3619bfe867d0029fcbaa0c443768073e', '5de2ad8571a9696e9204bc3cf1f5bef8', '8df94d27674771b1fa2a60d69676cb8f', '20624d2f8dbe5c7cda307116390dc283', '2ccdc22eda62cf5d507e40dd68d95053', '', '39e5124721a3b5a0af07b1b5e390817e', 0, '2011-03-05 22:44:26', '2011-03-05 22:44:26');
INSERT INTO `contributors` VALUES(71, 'cb4e41856875c4cb7813e3fe81aaf7e9', 'd254ddf597734f090b6e055f984b2834', '6ee3f3a3cda8fcbde1912ad4aeca151b', '9cc701ea636d8f51e7c9a50cec72942a', '0437acb7963c6539ad0327c2eb30b1be', '', '5a8dccb220de5c6775c873ead6ff2e43', 0, '2011-03-06 06:38:37', '2011-03-06 06:38:37');
INSERT INTO `contributors` VALUES(72, 'faeb0808f59d3d4b2d60c3bdbdc9f311', 'e6d27df592ae288f21ce7181a7d3298f', 'bb7d941eefba2c3641bdeeb72741a9c2', 'dad7020b855f7157362f6c285fcd285e', '733692b2101f18c25763f5ecfb520b55', '', '3945a2bb09c26f33461aea69fea44d27', 0, '2011-03-06 17:35:56', '2011-03-06 17:35:56');
INSERT INTO `contributors` VALUES(73, 'faeb0808f59d3d4b2d60c3bdbdc9f311', 'e6d27df592ae288f21ce7181a7d3298f', 'bb7d941eefba2c3641bdeeb72741a9c2', '487bf54a28c218a4778e9d12064909d2', '733692b2101f18c25763f5ecfb520b55', '', '3945a2bb09c26f33461aea69fea44d27', 0, '2011-03-06 17:37:14', '2011-03-06 17:37:14');
INSERT INTO `contributors` VALUES(74, 'c823962b5de92a1abfd7cfdc27a21669', '3b37c66fa9b009cbcd31a2ee6e5a4017', '08ce969e23e0ad9a6ffda3f36b650f58', 'cc863591ce8cca7084bb3ef3cc925040', '573df2a62d709b4bdecba63fa4a58d2c', '', 'd5d40b0c2a04952b6fee8455fc9ae429', 0, '2011-03-06 19:49:05', '2011-03-06 19:49:05');
INSERT INTO `contributors` VALUES(75, 'b649785bc158f68a515655325a6e31e7', '031149efbf6cc9bfcbfaec72d33813f0', 'wfnflnwwnefk.wekjfnwk.ejfnw', '284a4f57b5a749fd90e23e069e53c50c', '28bf0d58efceaa867962ed2c87c721bf', 'fwkjfwefkjwefkw', NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `contributors` VALUES(76, 'b649785bc158f68a515655325a6e31e7', '031149efbf6cc9bfcbfaec72d33813f0', 'wfnflnwwnefk.wekjfnwk.ejfnw', '284a4f57b5a749fd90e23e069e53c50c', '28bf0d58efceaa867962ed2c87c721bf', 'fwkjfwefkjwefkw', NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `contributors` VALUES(77, 'b649785bc158f68a515655325a6e31e7', '031149efbf6cc9bfcbfaec72d33813f0', 'wfnflnwwnefk.wekjfnwk.ejfnw', '284a4f57b5a749fd90e23e069e53c50c', '28bf0d58efceaa867962ed2c87c721bf', 'fwkjfwefkjwefkw', NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `contributors` VALUES(78, 'b649785bc158f68a515655325a6e31e7', '031149efbf6cc9bfcbfaec72d33813f0', 'wfnflnwwnefk.wekjfnwk.ejfnw', '284a4f57b5a749fd90e23e069e53c50c', '28bf0d58efceaa867962ed2c87c721bf', 'fwkjfwefkjwefkw', NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `contributors` VALUES(79, 'spicer', 'spicer@cloudmanic.com', '17ebcebc76ceb837fd156116ef1663e0', '27e46cca49725343bf8b1ee784fa71e4afbdf994', 'Spicer Matthews', '', 'http://cloudmanic.com', 0, '2011-11-23 17:53:49', '2011-11-23 17:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `dependencies`
--

CREATE TABLE `dependencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version_id` int(11) NOT NULL,
  `needed_version_id` int(11) NOT NULL,
  `is_direct` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_version_dep` (`version_id`,`needed_version_id`),
  KEY `needed_version_id` (`needed_version_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dependencies`
--

INSERT INTO `dependencies` VALUES(1, 86, 85, 1);

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `ip` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `user_agent` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_dl_type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=817 ;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` VALUES(7, 'system', '75.193.203.167', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-08 14:42:32');
INSERT INTO `downloads` VALUES(8, 'system', '173.127.218.39', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.84 Safari/534.13', '2011-02-08 15:15:53');
INSERT INTO `downloads` VALUES(9, 'spec', '75.16.31.57', '0', '2011-02-08 17:34:59');
INSERT INTO `downloads` VALUES(10, 'system', '63.209.167.224', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 YFF35 Firefox/3.6.13', '2011-02-08 19:46:32');
INSERT INTO `downloads` VALUES(11, 'system', '63.209.167.224', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 YFF35 Firefox/3.6.13', '2011-02-08 19:46:42');
INSERT INTO `downloads` VALUES(12, 'system', '63.209.167.224', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 YFF35 Firefox/3.6.13', '2011-02-08 19:46:52');
INSERT INTO `downloads` VALUES(13, 'spec', '63.209.167.224', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 YFF35 Firefox/3.6.13', '2011-02-08 21:05:43');
INSERT INTO `downloads` VALUES(14, 'spec', '98.101.76.249', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.84 Safari/534.13', '2011-02-08 21:06:14');
INSERT INTO `downloads` VALUES(15, 'system', '98.101.76.249', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.84 Safari/534.13', '2011-02-08 21:07:09');
INSERT INTO `downloads` VALUES(16, 'spec', '98.101.76.249', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.84 Safari/534.13', '2011-02-08 21:07:32');
INSERT INTO `downloads` VALUES(17, 'spec', '98.101.76.249', '0', '2011-02-08 21:21:23');
INSERT INTO `downloads` VALUES(18, 'spec', '98.101.76.249', '0', '2011-02-08 21:21:34');
INSERT INTO `downloads` VALUES(19, 'spec', '98.101.76.249', '0', '2011-02-08 21:21:52');
INSERT INTO `downloads` VALUES(20, 'system', '70.36.146.248', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.84 Safari/534.13', '2011-02-08 23:08:41');
INSERT INTO `downloads` VALUES(21, 'spec', '70.36.146.248', '0', '2011-02-08 23:10:48');
INSERT INTO `downloads` VALUES(22, 'system', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-09 10:45:30');
INSERT INTO `downloads` VALUES(23, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-09 14:54:52');
INSERT INTO `downloads` VALUES(24, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-09 14:54:53');
INSERT INTO `downloads` VALUES(25, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-09 14:54:54');
INSERT INTO `downloads` VALUES(26, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-09 14:54:54');
INSERT INTO `downloads` VALUES(27, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-09 14:54:57');
INSERT INTO `downloads` VALUES(28, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-09 14:54:58');
INSERT INTO `downloads` VALUES(29, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-09 14:55:00');
INSERT INTO `downloads` VALUES(30, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-09 14:55:02');
INSERT INTO `downloads` VALUES(31, 'system', '203.89.73.24', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; MS-RTC LM 8; .NET4.0C; .NET4.0E)', '2011-02-10 02:10:47');
INSERT INTO `downloads` VALUES(32, 'spec', '203.89.73.24', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; MS-RTC LM 8; .NET4.0C; .NET4.0E)', '2011-02-10 02:10:51');
INSERT INTO `downloads` VALUES(33, 'system', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-10 08:26:14');
INSERT INTO `downloads` VALUES(34, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-10 11:19:52');
INSERT INTO `downloads` VALUES(35, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-10 11:23:20');
INSERT INTO `downloads` VALUES(36, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-10 11:26:50');
INSERT INTO `downloads` VALUES(37, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-10 11:44:14');
INSERT INTO `downloads` VALUES(38, 'spec', '75.226.138.63', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-11 03:40:27');
INSERT INTO `downloads` VALUES(39, 'spec', '75.226.138.63', '0', '2011-02-11 03:41:17');
INSERT INTO `downloads` VALUES(40, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-11 08:26:48');
INSERT INTO `downloads` VALUES(41, 'spec', '75.198.224.245', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-11 14:30:31');
INSERT INTO `downloads` VALUES(42, 'spec', '75.198.224.245', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-11 14:31:01');
INSERT INTO `downloads` VALUES(43, 'spec', '75.198.224.245', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-11 14:31:18');
INSERT INTO `downloads` VALUES(44, 'spec', '75.198.224.245', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-11 14:31:28');
INSERT INTO `downloads` VALUES(45, 'spec', '75.198.224.245', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-11 14:33:10');
INSERT INTO `downloads` VALUES(46, 'spec', '63.209.167.224', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 YFF35 Firefox/3.6.13', '2011-02-11 18:33:04');
INSERT INTO `downloads` VALUES(47, 'spec', '63.209.167.224', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 YFF35 Firefox/3.6.13', '2011-02-11 18:33:17');
INSERT INTO `downloads` VALUES(48, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-11 23:21:41');
INSERT INTO `downloads` VALUES(49, 'spec', '82.69.1.168', '0', '2011-02-13 20:00:15');
INSERT INTO `downloads` VALUES(50, 'spec', '96.242.166.214', '0', '2011-02-13 20:05:47');
INSERT INTO `downloads` VALUES(51, 'spec', '82.69.1.168', '0', '2011-02-13 21:00:29');
INSERT INTO `downloads` VALUES(52, 'system', '96.242.166.214', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-13 21:51:43');
INSERT INTO `downloads` VALUES(53, 'system', '96.242.166.214', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-13 21:57:12');
INSERT INTO `downloads` VALUES(54, 'system', '96.242.166.214', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-13 21:57:20');
INSERT INTO `downloads` VALUES(55, 'system', '96.242.166.214', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-13 21:57:51');
INSERT INTO `downloads` VALUES(56, 'spec', '96.242.166.214', '0', '2011-02-13 22:04:05');
INSERT INTO `downloads` VALUES(57, 'spec', '96.242.166.214', '0', '2011-02-13 22:04:17');
INSERT INTO `downloads` VALUES(58, 'system', '66.249.71.142', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-15 02:44:14');
INSERT INTO `downloads` VALUES(59, 'spec', '66.249.71.142', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-15 02:45:53');
INSERT INTO `downloads` VALUES(60, 'spec', '66.249.71.142', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-15 02:49:45');
INSERT INTO `downloads` VALUES(61, 'spec', '66.249.71.142', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-15 02:53:37');
INSERT INTO `downloads` VALUES(62, 'spec', '66.249.71.142', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-15 03:01:22');
INSERT INTO `downloads` VALUES(63, 'spec', '66.249.71.142', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-15 03:05:14');
INSERT INTO `downloads` VALUES(64, 'spec', '66.249.71.142', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-15 03:09:38');
INSERT INTO `downloads` VALUES(65, 'spec', '66.249.71.142', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-15 03:11:09');
INSERT INTO `downloads` VALUES(66, 'spec', '66.249.71.142', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-15 03:13:54');
INSERT INTO `downloads` VALUES(67, 'spec', '66.249.71.142', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-15 03:18:01');
INSERT INTO `downloads` VALUES(68, 'spec', '66.249.71.142', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-15 03:41:48');
INSERT INTO `downloads` VALUES(69, 'spec', '96.242.53.250', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-17 04:42:59');
INSERT INTO `downloads` VALUES(70, 'spec', '96.242.53.250', '0', '2011-02-17 04:43:04');
INSERT INTO `downloads` VALUES(71, 'spec', '96.242.53.250', '0', '2011-02-17 04:43:49');
INSERT INTO `downloads` VALUES(72, 'spec', '96.242.53.250', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.634.0 Safari/534.16', '2011-02-17 04:44:47');
INSERT INTO `downloads` VALUES(73, 'spec', '96.242.53.250', '0', '2011-02-17 04:46:25');
INSERT INTO `downloads` VALUES(74, 'spec', '96.242.53.250', '0', '2011-02-17 04:47:43');
INSERT INTO `downloads` VALUES(75, 'spec', '96.242.53.250', '0', '2011-02-17 04:49:52');
INSERT INTO `downloads` VALUES(76, 'spec', '96.242.53.250', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-17 04:50:28');
INSERT INTO `downloads` VALUES(77, 'spec', '96.242.53.250', '0', '2011-02-17 04:52:34');
INSERT INTO `downloads` VALUES(78, 'spec', '96.242.53.250', '0', '2011-02-17 04:53:09');
INSERT INTO `downloads` VALUES(79, 'spec', '96.242.53.250', '0', '2011-02-17 04:54:05');
INSERT INTO `downloads` VALUES(80, 'spec', '96.242.53.250', '0', '2011-02-17 04:54:15');
INSERT INTO `downloads` VALUES(81, 'spec', '96.242.53.250', '0', '2011-02-17 04:54:54');
INSERT INTO `downloads` VALUES(82, 'spec', '96.242.53.250', '0', '2011-02-17 04:55:27');
INSERT INTO `downloads` VALUES(83, 'spec', '96.242.53.250', '0', '2011-02-17 04:55:39');
INSERT INTO `downloads` VALUES(84, 'spec', '96.242.53.250', '0', '2011-02-17 04:56:43');
INSERT INTO `downloads` VALUES(85, 'spec', '96.242.53.250', '0', '2011-02-17 04:56:52');
INSERT INTO `downloads` VALUES(86, 'spec', '96.242.53.250', '0', '2011-02-17 05:01:35');
INSERT INTO `downloads` VALUES(87, 'spec', '96.242.53.250', '0', '2011-02-17 05:02:29');
INSERT INTO `downloads` VALUES(88, 'spec', '96.242.53.250', '0', '2011-02-17 05:02:40');
INSERT INTO `downloads` VALUES(89, 'spec', '96.242.53.250', '0', '2011-02-17 05:02:50');
INSERT INTO `downloads` VALUES(90, 'spec', '96.242.53.250', '0', '2011-02-17 05:03:34');
INSERT INTO `downloads` VALUES(91, 'system', '96.242.53.250', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-17 05:24:14');
INSERT INTO `downloads` VALUES(92, 'spec', '96.242.53.250', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-17 05:26:05');
INSERT INTO `downloads` VALUES(93, 'spec', '96.242.53.250', '0', '2011-02-17 06:29:39');
INSERT INTO `downloads` VALUES(94, 'spec', '96.242.53.250', '0', '2011-02-17 06:30:51');
INSERT INTO `downloads` VALUES(95, 'spec', '96.242.53.250', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-17 07:01:59');
INSERT INTO `downloads` VALUES(96, 'spec', '96.242.53.250', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-17 07:04:01');
INSERT INTO `downloads` VALUES(97, 'spec', '96.242.53.250', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-17 07:10:51');
INSERT INTO `downloads` VALUES(98, 'spec', '96.242.53.250', '0', '2011-02-17 07:12:56');
INSERT INTO `downloads` VALUES(99, 'spec', '96.242.53.250', '0', '2011-02-17 07:13:24');
INSERT INTO `downloads` VALUES(100, 'spec', '96.242.53.250', '0', '2011-02-17 07:13:59');
INSERT INTO `downloads` VALUES(101, 'spec', '96.242.53.250', '0', '2011-02-17 07:14:07');
INSERT INTO `downloads` VALUES(102, 'spec', '96.242.53.250', '0', '2011-02-17 07:14:16');
INSERT INTO `downloads` VALUES(103, 'spec', '96.242.53.250', '0', '2011-02-17 07:15:05');
INSERT INTO `downloads` VALUES(104, 'spec', '96.242.53.250', '0', '2011-02-17 07:15:27');
INSERT INTO `downloads` VALUES(105, 'spec', '96.242.53.250', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-17 07:16:04');
INSERT INTO `downloads` VALUES(106, 'spec', '96.242.53.250', '0', '2011-02-17 07:17:28');
INSERT INTO `downloads` VALUES(107, 'system', '96.242.53.250', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.634.0 Safari/534.16', '2011-02-17 07:25:36');
INSERT INTO `downloads` VALUES(108, 'spec', '96.242.53.250', '0', '2011-02-17 07:26:41');
INSERT INTO `downloads` VALUES(109, 'spec', '96.242.53.250', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.634.0 Safari/534.16', '2011-02-17 07:26:57');
INSERT INTO `downloads` VALUES(110, 'spec', '96.242.53.250', '0', '2011-02-17 07:35:22');
INSERT INTO `downloads` VALUES(111, 'spec', '96.242.53.250', '0', '2011-02-17 07:43:03');
INSERT INTO `downloads` VALUES(112, 'spec', '96.242.53.250', '0', '2011-02-17 07:43:19');
INSERT INTO `downloads` VALUES(113, 'spec', '96.242.53.250', '0', '2011-02-17 07:44:47');
INSERT INTO `downloads` VALUES(114, 'spec', '96.242.53.250', '0', '2011-02-17 07:49:39');
INSERT INTO `downloads` VALUES(115, 'spec', '75.193.207.55', '0', '2011-02-17 13:43:46');
INSERT INTO `downloads` VALUES(116, 'spec', '204.236.226.210', 'ia_archiver (+http://www.alexa.com/site/help/webmasters; crawler@alexa.com)', '2011-02-17 18:53:00');
INSERT INTO `downloads` VALUES(117, 'spec', '204.236.226.210', 'ia_archiver (+http://www.alexa.com/site/help/webmasters; crawler@alexa.com)', '2011-02-17 18:53:16');
INSERT INTO `downloads` VALUES(118, 'spec', '74.96.231.94', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.102 Safari/534.13', '2011-02-18 02:39:56');
INSERT INTO `downloads` VALUES(119, 'spec', '74.96.231.94', '0', '2011-02-18 02:49:20');
INSERT INTO `downloads` VALUES(120, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-18 07:56:58');
INSERT INTO `downloads` VALUES(121, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-18 17:54:58');
INSERT INTO `downloads` VALUES(122, 'spec', '74.96.231.94', '0', '2011-02-20 01:02:17');
INSERT INTO `downloads` VALUES(123, 'spec', '68.38.209.87', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-20 01:29:37');
INSERT INTO `downloads` VALUES(124, 'spec', '74.96.231.94', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.102 Safari/534.13', '2011-02-20 01:42:03');
INSERT INTO `downloads` VALUES(125, 'spec', '68.38.209.87', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-20 01:46:29');
INSERT INTO `downloads` VALUES(126, 'spec', '68.38.209.87', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-20 01:50:50');
INSERT INTO `downloads` VALUES(127, 'spec', '68.38.209.87', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-20 02:01:57');
INSERT INTO `downloads` VALUES(128, 'spec', '68.38.209.87', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-20 02:02:03');
INSERT INTO `downloads` VALUES(129, 'spec', '68.38.209.87', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-20 02:03:03');
INSERT INTO `downloads` VALUES(130, 'spec', '96.242.53.250', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.102 Safari/534.13', '2011-02-20 02:03:06');
INSERT INTO `downloads` VALUES(131, 'spec', '96.242.53.250', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.102 Safari/534.13', '2011-02-20 02:04:33');
INSERT INTO `downloads` VALUES(132, 'spec', '68.38.209.87', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-20 02:05:23');
INSERT INTO `downloads` VALUES(133, 'spec', '68.38.209.87', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-20 02:35:56');
INSERT INTO `downloads` VALUES(134, 'spec', '68.38.209.87', '0', '2011-02-20 02:38:16');
INSERT INTO `downloads` VALUES(135, 'spec', '68.38.209.87', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-20 02:40:34');
INSERT INTO `downloads` VALUES(136, 'spec', '68.38.209.87', '0', '2011-02-20 15:44:57');
INSERT INTO `downloads` VALUES(137, 'spec', '96.242.53.250', '0', '2011-02-20 21:25:53');
INSERT INTO `downloads` VALUES(138, 'spec', '96.242.53.250', '0', '2011-02-20 21:26:24');
INSERT INTO `downloads` VALUES(139, 'spec', '68.38.209.87', '0', '2011-02-21 01:14:52');
INSERT INTO `downloads` VALUES(140, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-21 13:46:06');
INSERT INTO `downloads` VALUES(141, 'spec', '66.249.71.85', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-22 06:03:37');
INSERT INTO `downloads` VALUES(142, 'spec', '96.242.53.250', '0', '2011-02-24 05:04:32');
INSERT INTO `downloads` VALUES(143, 'spec', '96.242.53.250', '0', '2011-02-24 05:10:44');
INSERT INTO `downloads` VALUES(144, 'spec', '96.242.53.250', '0', '2011-02-24 05:41:28');
INSERT INTO `downloads` VALUES(145, 'spec', '96.242.53.250', '0', '2011-02-24 05:44:20');
INSERT INTO `downloads` VALUES(146, 'system', '69.98.241.168', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-25 14:53:53');
INSERT INTO `downloads` VALUES(147, 'spec', '63.209.167.224', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 YFF35 Firefox/3.6.13', '2011-02-25 15:44:35');
INSERT INTO `downloads` VALUES(148, 'spec', '63.209.167.224', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 YFF35 Firefox/3.6.13', '2011-02-25 15:44:42');
INSERT INTO `downloads` VALUES(149, 'spec', '70.166.218.198', '0', '2011-02-25 23:30:54');
INSERT INTO `downloads` VALUES(150, 'system', '74.96.231.94', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.102 Safari/534.13', '2011-02-26 03:11:27');
INSERT INTO `downloads` VALUES(151, 'spec', '74.96.231.94', '0', '2011-02-26 03:47:17');
INSERT INTO `downloads` VALUES(152, 'spec', '74.96.231.94', '0', '2011-02-26 04:03:42');
INSERT INTO `downloads` VALUES(153, 'spec', '74.96.231.94', '0', '2011-02-26 04:13:27');
INSERT INTO `downloads` VALUES(154, 'spec', '74.96.231.94', '0', '2011-02-26 04:19:58');
INSERT INTO `downloads` VALUES(155, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-26 05:28:28');
INSERT INTO `downloads` VALUES(156, 'system', '174.34.211.38', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-us) AppleWebKit/533.19.4 (KHTML, like Gecko) Version/5.0.3 Safari/533.19.4', '2011-02-26 15:09:03');
INSERT INTO `downloads` VALUES(157, 'system', '108.5.154.253', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)', '2011-02-26 17:24:53');
INSERT INTO `downloads` VALUES(158, 'spec', '108.5.154.253', '0', '2011-02-26 17:28:29');
INSERT INTO `downloads` VALUES(159, 'spec', '108.5.154.253', '0', '2011-02-26 17:49:11');
INSERT INTO `downloads` VALUES(160, 'spec', '108.5.154.253', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)', '2011-02-26 17:58:02');
INSERT INTO `downloads` VALUES(161, 'spec', '108.5.154.253', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)', '2011-02-26 17:58:25');
INSERT INTO `downloads` VALUES(162, 'spec', '108.5.154.253', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-26 19:01:24');
INSERT INTO `downloads` VALUES(163, 'spec', '108.5.154.253', '0', '2011-02-26 19:03:27');
INSERT INTO `downloads` VALUES(164, 'system', '108.5.154.253', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-26 19:17:41');
INSERT INTO `downloads` VALUES(165, 'system', '108.5.154.253', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-26 19:39:51');
INSERT INTO `downloads` VALUES(166, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-27 03:43:49');
INSERT INTO `downloads` VALUES(167, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-27 03:43:51');
INSERT INTO `downloads` VALUES(168, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-27 04:27:05');
INSERT INTO `downloads` VALUES(169, 'system', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-27 04:27:08');
INSERT INTO `downloads` VALUES(170, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-27 04:27:09');
INSERT INTO `downloads` VALUES(171, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-27 05:11:56');
INSERT INTO `downloads` VALUES(172, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-27 06:41:37');
INSERT INTO `downloads` VALUES(173, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-27 06:41:39');
INSERT INTO `downloads` VALUES(174, 'system', '180.214.232.90', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.13) Gecko/20101206 Ubuntu/10.10 (maverick) Firefox/3.6.13', '2011-02-27 15:57:07');
INSERT INTO `downloads` VALUES(175, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-27 22:10:01');
INSERT INTO `downloads` VALUES(176, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-28 07:41:25');
INSERT INTO `downloads` VALUES(177, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-28 07:41:30');
INSERT INTO `downloads` VALUES(178, 'system', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-28 14:04:14');
INSERT INTO `downloads` VALUES(179, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-28 14:44:16');
INSERT INTO `downloads` VALUES(180, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-28 14:49:16');
INSERT INTO `downloads` VALUES(181, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-28 15:04:17');
INSERT INTO `downloads` VALUES(182, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-28 15:09:18');
INSERT INTO `downloads` VALUES(183, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-28 15:14:18');
INSERT INTO `downloads` VALUES(184, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-28 17:56:54');
INSERT INTO `downloads` VALUES(185, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-28 18:12:47');
INSERT INTO `downloads` VALUES(186, 'spec', '69.4.152.147', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-28 19:09:47');
INSERT INTO `downloads` VALUES(187, 'spec', '204.16.89.106', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.102 Safari/534.13', '2011-02-28 19:57:14');
INSERT INTO `downloads` VALUES(188, 'spec', '98.158.124.39', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-02-28 20:02:12');
INSERT INTO `downloads` VALUES(189, 'spec', '98.173.32.131', '0', '2011-02-28 20:07:19');
INSERT INTO `downloads` VALUES(190, 'system', '98.101.76.249', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-28 20:20:46');
INSERT INTO `downloads` VALUES(191, 'spec', '4.28.32.194', '0', '2011-02-28 20:53:36');
INSERT INTO `downloads` VALUES(192, 'spec', '4.28.32.194', '0', '2011-02-28 20:55:59');
INSERT INTO `downloads` VALUES(193, 'spec', '122.57.134.195', 'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13 (.NET CLR 3.5.30729)', '2011-02-28 21:17:41');
INSERT INTO `downloads` VALUES(194, 'spec', '94.215.65.215', '0', '2011-02-28 21:31:19');
INSERT INTO `downloads` VALUES(195, 'spec', '94.215.65.215', '0', '2011-02-28 21:33:09');
INSERT INTO `downloads` VALUES(196, 'spec', '94.215.65.215', '0', '2011-02-28 21:33:40');
INSERT INTO `downloads` VALUES(197, 'spec', '63.209.167.224', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 YFF35 Firefox/3.6.13', '2011-02-28 21:35:17');
INSERT INTO `downloads` VALUES(198, 'spec', '98.212.19.13', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.119 Safari/534.16', '2011-02-28 21:39:02');
INSERT INTO `downloads` VALUES(199, 'spec', '109.77.197.80', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-02-28 21:48:28');
INSERT INTO `downloads` VALUES(200, 'spec', '109.77.197.80', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-02-28 21:48:44');
INSERT INTO `downloads` VALUES(201, 'spec', '109.77.197.80', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-02-28 21:49:00');
INSERT INTO `downloads` VALUES(202, 'spec', '109.77.197.80', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-02-28 21:49:33');
INSERT INTO `downloads` VALUES(203, 'spec', '70.166.218.198', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-28 23:06:01');
INSERT INTO `downloads` VALUES(204, 'spec', '70.166.218.198', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-02-28 23:06:04');
INSERT INTO `downloads` VALUES(205, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-28 23:07:33');
INSERT INTO `downloads` VALUES(206, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-28 23:12:37');
INSERT INTO `downloads` VALUES(207, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-02-28 23:22:44');
INSERT INTO `downloads` VALUES(208, 'spec', '82.32.96.107', '0', '2011-02-28 23:57:42');
INSERT INTO `downloads` VALUES(209, 'system', '94.179.201.207', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.9.2.13) Gecko/20101203 MRA 5.7 (build 03797) Firefox/3.6.13 ( .NET CLR 3.5.30729; .NET4.0E)', '2011-03-01 00:02:05');
INSERT INTO `downloads` VALUES(210, 'spec', '94.179.201.207', '0', '2011-03-01 00:11:38');
INSERT INTO `downloads` VALUES(211, 'spec', '94.179.201.207', '0', '2011-03-01 00:13:50');
INSERT INTO `downloads` VALUES(212, 'spec', '82.32.96.107', '0', '2011-03-01 00:14:59');
INSERT INTO `downloads` VALUES(213, 'spec', '202.128.43.187', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-01 00:29:28');
INSERT INTO `downloads` VALUES(214, 'system', '58.96.31.30', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.102 Safari/534.13', '2011-03-01 00:41:23');
INSERT INTO `downloads` VALUES(215, 'spec', '82.32.96.107', '0', '2011-03-01 00:48:57');
INSERT INTO `downloads` VALUES(216, 'spec', '107.9.156.250', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.102 Safari/534.13', '2011-03-01 00:58:04');
INSERT INTO `downloads` VALUES(217, 'spec', '121.98.141.222', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:2.0b12) Gecko/20100101 Firefox/4.0b12 FirePHP/0.5', '2011-03-01 01:02:51');
INSERT INTO `downloads` VALUES(218, 'spec', '107.9.156.250', '0', '2011-03-01 01:38:10');
INSERT INTO `downloads` VALUES(219, 'spec', '58.96.31.30', '0', '2011-03-01 02:01:44');
INSERT INTO `downloads` VALUES(220, 'spec', '107.9.156.250', '0', '2011-03-01 02:02:15');
INSERT INTO `downloads` VALUES(221, 'spec', '71.187.40.97', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20', '2011-03-01 02:05:41');
INSERT INTO `downloads` VALUES(222, 'spec', '96.242.166.214', '0', '2011-03-01 02:18:34');
INSERT INTO `downloads` VALUES(223, 'spec', '96.242.166.214', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-01 02:20:43');
INSERT INTO `downloads` VALUES(224, 'spec', '70.179.151.120', '0', '2011-03-01 02:38:37');
INSERT INTO `downloads` VALUES(225, 'spec', '70.179.151.120', '0', '2011-03-01 02:38:54');
INSERT INTO `downloads` VALUES(226, 'spec', '107.9.156.250', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.102 Safari/534.13', '2011-03-01 02:41:09');
INSERT INTO `downloads` VALUES(227, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 02:41:23');
INSERT INTO `downloads` VALUES(228, 'system', '187.150.6.93', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; es-ES; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13 GTB7.1', '2011-03-01 02:48:33');
INSERT INTO `downloads` VALUES(229, 'spec', '121.98.141.222', '0', '2011-03-01 02:52:23');
INSERT INTO `downloads` VALUES(230, 'spec', '121.98.141.222', '0', '2011-03-01 02:54:12');
INSERT INTO `downloads` VALUES(231, 'spec', '121.98.141.222', '0', '2011-03-01 02:54:48');
INSERT INTO `downloads` VALUES(232, 'spec', '121.98.141.222', '0', '2011-03-01 03:01:46');
INSERT INTO `downloads` VALUES(233, 'spec', '71.187.40.97', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20', '2011-03-01 03:12:14');
INSERT INTO `downloads` VALUES(234, 'spec', '71.11.145.35', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.13) Gecko/20101206 Ubuntu/10.04 (lucid) Firefox/3.6.13', '2011-03-01 03:12:20');
INSERT INTO `downloads` VALUES(235, 'spec', '121.98.141.222', '0', '2011-03-01 03:23:11');
INSERT INTO `downloads` VALUES(236, 'spec', '121.98.141.222', '0', '2011-03-01 03:36:37');
INSERT INTO `downloads` VALUES(237, 'spec', '121.98.141.222', '0', '2011-03-01 03:37:01');
INSERT INTO `downloads` VALUES(238, 'spec', '121.98.141.222', '0', '2011-03-01 03:37:24');
INSERT INTO `downloads` VALUES(239, 'spec', '121.98.141.222', '0', '2011-03-01 03:38:55');
INSERT INTO `downloads` VALUES(240, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 03:39:30');
INSERT INTO `downloads` VALUES(241, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 03:39:32');
INSERT INTO `downloads` VALUES(242, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 04:00:39');
INSERT INTO `downloads` VALUES(243, 'spec', '121.98.141.222', '0', '2011-03-01 04:23:04');
INSERT INTO `downloads` VALUES(244, 'spec', '66.234.50.178', '0', '2011-03-01 04:57:57');
INSERT INTO `downloads` VALUES(245, 'spec', '66.234.50.178', '0', '2011-03-01 05:06:06');
INSERT INTO `downloads` VALUES(246, 'spec', '66.234.50.178', '0', '2011-03-01 05:06:51');
INSERT INTO `downloads` VALUES(247, 'spec', '66.234.50.178', '0', '2011-03-01 05:07:01');
INSERT INTO `downloads` VALUES(248, 'spec', '202.138.136.122', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.82 Safari/534.16', '2011-03-01 05:16:05');
INSERT INTO `downloads` VALUES(249, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 05:37:54');
INSERT INTO `downloads` VALUES(250, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 05:37:56');
INSERT INTO `downloads` VALUES(251, 'spec', '208.124.44.208', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-03-01 06:09:43');
INSERT INTO `downloads` VALUES(252, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 06:39:25');
INSERT INTO `downloads` VALUES(253, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 06:58:07');
INSERT INTO `downloads` VALUES(254, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 07:14:39');
INSERT INTO `downloads` VALUES(255, 'spec', '79.100.120.86', '0', '2011-03-01 07:35:37');
INSERT INTO `downloads` VALUES(256, 'spec', '79.100.120.86', '0', '2011-03-01 07:36:10');
INSERT INTO `downloads` VALUES(257, 'spec', '79.100.120.86', '0', '2011-03-01 07:36:56');
INSERT INTO `downloads` VALUES(258, 'spec', '79.100.120.86', '0', '2011-03-01 07:37:22');
INSERT INTO `downloads` VALUES(259, 'spec', '79.100.120.86', '0', '2011-03-01 07:37:54');
INSERT INTO `downloads` VALUES(260, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 07:38:45');
INSERT INTO `downloads` VALUES(261, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 07:38:46');
INSERT INTO `downloads` VALUES(262, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 08:59:38');
INSERT INTO `downloads` VALUES(263, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 09:00:48');
INSERT INTO `downloads` VALUES(264, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 09:07:09');
INSERT INTO `downloads` VALUES(265, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 09:21:58');
INSERT INTO `downloads` VALUES(266, 'spec', '60.234.211.102', '0', '2011-03-01 09:25:37');
INSERT INTO `downloads` VALUES(267, 'spec', '60.234.211.102', '0', '2011-03-01 09:26:12');
INSERT INTO `downloads` VALUES(268, 'spec', '60.234.211.102', '0', '2011-03-01 09:27:23');
INSERT INTO `downloads` VALUES(269, 'system', '59.95.8.221', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-03-01 09:30:27');
INSERT INTO `downloads` VALUES(270, 'spec', '77.75.49.11', '0', '2011-03-01 09:33:32');
INSERT INTO `downloads` VALUES(271, 'spec', '72.14.188.119', '0', '2011-03-01 10:49:10');
INSERT INTO `downloads` VALUES(272, 'spec', '67.195.112.249', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)', '2011-03-01 10:59:18');
INSERT INTO `downloads` VALUES(273, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 11:12:40');
INSERT INTO `downloads` VALUES(274, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 11:12:41');
INSERT INTO `downloads` VALUES(275, 'spec', '80.39.230.230', '0', '2011-03-01 11:17:17');
INSERT INTO `downloads` VALUES(276, 'spec', '80.39.230.230', '0', '2011-03-01 11:18:13');
INSERT INTO `downloads` VALUES(277, 'spec', '67.195.112.249', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)', '2011-03-01 11:20:52');
INSERT INTO `downloads` VALUES(278, 'spec', '82.32.176.116', '0', '2011-03-01 11:42:58');
INSERT INTO `downloads` VALUES(279, 'spec', '82.41.83.129', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-03-01 11:50:25');
INSERT INTO `downloads` VALUES(280, 'spec', '67.195.112.249', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)', '2011-03-01 11:56:04');
INSERT INTO `downloads` VALUES(281, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 12:08:39');
INSERT INTO `downloads` VALUES(282, 'system', '95.130.236.19', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.119 Safari/534.16', '2011-03-01 12:12:45');
INSERT INTO `downloads` VALUES(283, 'spec', '93.37.208.255', 'Opera/9.80 (Macintosh; Intel Mac OS X 10.6.6; U; it) Presto/2.7.62 Version/11.01', '2011-03-01 12:29:39');
INSERT INTO `downloads` VALUES(284, 'spec', '79.100.120.86', '0', '2011-03-01 12:40:45');
INSERT INTO `downloads` VALUES(285, 'spec', '93.140.144.18', '0', '2011-03-01 13:54:02');
INSERT INTO `downloads` VALUES(286, 'spec', '82.32.176.116', '0', '2011-03-01 14:16:36');
INSERT INTO `downloads` VALUES(287, 'system', '72.129.72.73', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-03-01 14:22:40');
INSERT INTO `downloads` VALUES(288, 'spec', '194.109.1.92', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.0 Safari/534.23', '2011-03-01 14:44:32');
INSERT INTO `downloads` VALUES(289, 'spec', '71.79.49.248', '0', '2011-03-01 15:14:48');
INSERT INTO `downloads` VALUES(290, 'spec', '71.79.49.248', '0', '2011-03-01 15:30:58');
INSERT INTO `downloads` VALUES(291, 'spec', '78.149.80.235', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-03-01 16:01:07');
INSERT INTO `downloads` VALUES(292, 'spec', '119.148.10.194', '0', '2011-03-01 16:11:23');
INSERT INTO `downloads` VALUES(293, 'spec', '91.194.188.90', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.13) Gecko/20101206 Ubuntu/10.10 (maverick) Firefox/3.6.13', '2011-03-01 16:25:25');
INSERT INTO `downloads` VALUES(294, 'spec', '46.164.6.185', '0', '2011-03-01 16:28:25');
INSERT INTO `downloads` VALUES(295, 'spec', '65.127.9.233', '0', '2011-03-01 16:44:16');
INSERT INTO `downloads` VALUES(296, 'spec', '65.127.9.233', '0', '2011-03-01 16:45:04');
INSERT INTO `downloads` VALUES(297, 'spec', '65.127.9.233', '0', '2011-03-01 16:46:18');
INSERT INTO `downloads` VALUES(298, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-01 16:51:09');
INSERT INTO `downloads` VALUES(299, 'spec', '197.1.120.23', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.102 Safari/534.13', '2011-03-01 16:56:40');
INSERT INTO `downloads` VALUES(300, 'spec', '197.1.120.23', '0', '2011-03-01 16:57:09');
INSERT INTO `downloads` VALUES(301, 'spec', '46.164.6.185', '0', '2011-03-01 16:59:12');
INSERT INTO `downloads` VALUES(302, 'spec', '62.2.209.10', '0', '2011-03-01 16:59:45');
INSERT INTO `downloads` VALUES(303, 'spec', '46.164.6.185', '0', '2011-03-01 17:00:03');
INSERT INTO `downloads` VALUES(304, 'spec', '62.2.209.10', '0', '2011-03-01 17:05:51');
INSERT INTO `downloads` VALUES(305, 'spec', '62.2.209.10', 'Mozilla/5.0 (X11; Linux i686; rv:2.0b13pre) Gecko/20110228 Firefox/4.0b13pre', '2011-03-01 17:06:11');
INSERT INTO `downloads` VALUES(306, 'spec', '92.238.190.67', 'Mozilla/5.0 (Linux; U; Android 2.2; en-gb; Desire_A8181 Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1', '2011-03-01 17:09:33');
INSERT INTO `downloads` VALUES(307, 'spec', '95.27.67.41', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.119 Safari/534.16', '2011-03-01 17:16:37');
INSERT INTO `downloads` VALUES(308, 'system', '62.163.182.167', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.13) Gecko/20101206 Ubuntu/10.04 (lucid) Firefox/3.6.13', '2011-03-01 17:48:21');
INSERT INTO `downloads` VALUES(309, 'spec', '67.195.112.249', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)', '2011-03-01 17:53:07');
INSERT INTO `downloads` VALUES(310, 'system', '95.27.67.41', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; ru; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13 FirePHP/0.5', '2011-03-01 18:37:00');
INSERT INTO `downloads` VALUES(311, 'spec', '70.166.218.198', '0', '2011-03-01 18:37:13');
INSERT INTO `downloads` VALUES(312, 'spec', '67.189.241.53', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.107 Safari/534.13', '2011-03-01 18:45:49');
INSERT INTO `downloads` VALUES(313, 'system', '189.90.170.251', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13 GTB7.1 ( .NET CLR 3.5.30729)', '2011-03-01 18:53:21');
INSERT INTO `downloads` VALUES(314, 'spec', '77.127.64.164', '0', '2011-03-01 19:28:05');
INSERT INTO `downloads` VALUES(315, 'spec', '77.127.64.164', '0', '2011-03-01 19:28:43');
INSERT INTO `downloads` VALUES(316, 'spec', '121.98.141.222', '0', '2011-03-01 19:55:47');
INSERT INTO `downloads` VALUES(317, 'spec', '121.98.141.222', '0', '2011-03-01 19:56:19');
INSERT INTO `downloads` VALUES(318, 'spec', '121.98.141.222', '0', '2011-03-01 19:58:30');
INSERT INTO `downloads` VALUES(319, 'spec', '70.166.218.198', '0', '2011-03-01 20:09:40');
INSERT INTO `downloads` VALUES(320, 'spec', '70.166.218.198', '0', '2011-03-01 20:13:55');
INSERT INTO `downloads` VALUES(321, 'spec', '70.166.218.198', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-01 20:27:27');
INSERT INTO `downloads` VALUES(322, 'spec', '70.166.218.198', '0', '2011-03-01 20:28:42');
INSERT INTO `downloads` VALUES(323, 'spec', '70.166.218.198', '0', '2011-03-01 21:24:23');
INSERT INTO `downloads` VALUES(324, 'system', '187.113.172.226', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.107 Safari/534.13', '2011-03-01 21:47:56');
INSERT INTO `downloads` VALUES(325, 'spec', '187.113.172.226', '0', '2011-03-01 21:55:46');
INSERT INTO `downloads` VALUES(326, 'spec', '187.113.172.226', '0', '2011-03-01 21:57:20');
INSERT INTO `downloads` VALUES(327, 'spec', '187.113.172.226', '0', '2011-03-01 21:58:01');
INSERT INTO `downloads` VALUES(328, 'spec', '187.113.172.226', '0', '2011-03-01 21:58:11');
INSERT INTO `downloads` VALUES(329, 'spec', '187.113.172.226', '0', '2011-03-01 21:58:25');
INSERT INTO `downloads` VALUES(330, 'spec', '71.114.66.190', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.94 Safari/534.13', '2011-03-01 22:23:23');
INSERT INTO `downloads` VALUES(331, 'system', '70.166.115.251', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.114 Safari/534.16', '2011-03-01 23:24:24');
INSERT INTO `downloads` VALUES(332, 'system', '50.20.34.178', 'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.107 Safari/534.13', '2011-03-01 23:54:50');
INSERT INTO `downloads` VALUES(333, 'spec', '89.100.186.30', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-02 00:08:03');
INSERT INTO `downloads` VALUES(334, 'spec', '89.100.186.30', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-02 00:08:03');
INSERT INTO `downloads` VALUES(335, 'spec', '89.100.186.30', '0', '2011-03-02 00:23:34');
INSERT INTO `downloads` VALUES(336, 'system', '173.69.154.242', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:2.0b12) Gecko/20100101 Firefox/4.0b12', '2011-03-02 00:52:51');
INSERT INTO `downloads` VALUES(337, 'system', '119.30.39.67', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-02 02:05:19');
INSERT INTO `downloads` VALUES(338, 'system', '119.30.39.67', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-02 02:05:55');
INSERT INTO `downloads` VALUES(339, 'system', '119.30.39.67', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-02 02:06:00');
INSERT INTO `downloads` VALUES(340, 'spec', '119.30.39.67', '0', '2011-03-02 02:10:47');
INSERT INTO `downloads` VALUES(341, 'system', '125.167.29.164', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-02 02:13:24');
INSERT INTO `downloads` VALUES(342, 'spec', '119.30.39.67', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-02 02:20:29');
INSERT INTO `downloads` VALUES(343, 'spec', '119.30.39.67', '0', '2011-03-02 02:22:15');
INSERT INTO `downloads` VALUES(344, 'spec', '66.234.50.178', '0', '2011-03-02 03:45:31');
INSERT INTO `downloads` VALUES(345, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 04:41:46');
INSERT INTO `downloads` VALUES(346, 'system', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 06:46:45');
INSERT INTO `downloads` VALUES(347, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 07:26:48');
INSERT INTO `downloads` VALUES(348, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 07:27:20');
INSERT INTO `downloads` VALUES(349, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 07:28:20');
INSERT INTO `downloads` VALUES(350, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 07:28:52');
INSERT INTO `downloads` VALUES(351, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 07:29:24');
INSERT INTO `downloads` VALUES(352, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 07:30:55');
INSERT INTO `downloads` VALUES(353, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 07:31:46');
INSERT INTO `downloads` VALUES(354, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 07:32:14');
INSERT INTO `downloads` VALUES(355, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 07:32:43');
INSERT INTO `downloads` VALUES(356, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 07:43:14');
INSERT INTO `downloads` VALUES(357, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 07:46:49');
INSERT INTO `downloads` VALUES(358, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 07:48:09');
INSERT INTO `downloads` VALUES(359, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 07:50:54');
INSERT INTO `downloads` VALUES(360, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 07:52:20');
INSERT INTO `downloads` VALUES(361, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 07:53:53');
INSERT INTO `downloads` VALUES(362, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 07:58:48');
INSERT INTO `downloads` VALUES(363, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 09:53:50');
INSERT INTO `downloads` VALUES(364, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 09:59:52');
INSERT INTO `downloads` VALUES(365, 'spec', '87.194.164.37', '0', '2011-03-02 10:24:43');
INSERT INTO `downloads` VALUES(366, 'system', '95.65.196.190', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; tr; rv:1.9.2.13) Gecko/20101203 AlexaToolbar/alxf-2.01 Firefox/3.6.13', '2011-03-02 10:27:10');
INSERT INTO `downloads` VALUES(367, 'spec', '60.234.211.102', '0', '2011-03-02 10:30:49');
INSERT INTO `downloads` VALUES(368, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 10:39:09');
INSERT INTO `downloads` VALUES(369, 'spec', '91.194.188.90', '0', '2011-03-02 11:07:34');
INSERT INTO `downloads` VALUES(370, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 11:25:28');
INSERT INTO `downloads` VALUES(371, 'spec', '120.50.26.108', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.13) Gecko/20101206 Linux Mint/10 (Julia) Firefox/3.6.13', '2011-03-02 11:53:19');
INSERT INTO `downloads` VALUES(372, 'spec', '79.23.227.236', '0', '2011-03-02 12:13:37');
INSERT INTO `downloads` VALUES(373, 'spec', '186.85.74.184', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.107 Safari/534.13', '2011-03-02 12:36:03');
INSERT INTO `downloads` VALUES(374, 'spec', '186.85.74.184', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.107 Safari/534.13', '2011-03-02 12:36:08');
INSERT INTO `downloads` VALUES(375, 'spec', '93.140.239.54', '0', '2011-03-02 12:40:29');
INSERT INTO `downloads` VALUES(376, 'spec', '184.96.207.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-02 14:04:39');
INSERT INTO `downloads` VALUES(377, 'spec', '212.38.80.100', '0', '2011-03-02 14:05:36');
INSERT INTO `downloads` VALUES(378, 'spec', '212.38.80.100', '0', '2011-03-02 14:10:29');
INSERT INTO `downloads` VALUES(379, 'spec', '46.164.23.58', '0', '2011-03-02 15:42:17');
INSERT INTO `downloads` VALUES(380, 'spec', '66.104.157.163', '0', '2011-03-02 16:05:17');
INSERT INTO `downloads` VALUES(381, 'spec', '66.104.157.163', '0', '2011-03-02 16:06:38');
INSERT INTO `downloads` VALUES(382, 'spec', '212.219.220.100', '0', '2011-03-02 16:15:34');
INSERT INTO `downloads` VALUES(383, 'spec', '212.219.220.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:2.0b12) Gecko/20100101 Firefox/4.0b12', '2011-03-02 16:18:40');
INSERT INTO `downloads` VALUES(384, 'spec', '212.219.220.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:2.0b12) Gecko/20100101 Firefox/4.0b12', '2011-03-02 16:21:39');
INSERT INTO `downloads` VALUES(385, 'spec', '212.219.220.100', '0', '2011-03-02 16:33:34');
INSERT INTO `downloads` VALUES(386, 'spec', '212.219.220.100', '0', '2011-03-02 16:41:37');
INSERT INTO `downloads` VALUES(387, 'spec', '87.194.164.37', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-02 17:01:57');
INSERT INTO `downloads` VALUES(388, 'spec', '71.79.49.248', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.102 Safari/534.13', '2011-03-02 17:03:02');
INSERT INTO `downloads` VALUES(389, 'spec', '193.138.13.200', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13 ( .NET CLR 3.5.30729) InquisitiveMindsAddon', '2011-03-02 17:10:29');
INSERT INTO `downloads` VALUES(390, 'spec', '71.79.49.248', '0', '2011-03-02 17:14:44');
INSERT INTO `downloads` VALUES(391, 'spec', '71.79.49.248', '0', '2011-03-02 17:15:33');
INSERT INTO `downloads` VALUES(392, 'spec', '71.79.49.248', '0', '2011-03-02 17:16:20');
INSERT INTO `downloads` VALUES(393, 'spec', '71.79.49.248', '0', '2011-03-02 17:47:37');
INSERT INTO `downloads` VALUES(394, 'spec', '66.102.98.215', '0', '2011-03-02 18:04:33');
INSERT INTO `downloads` VALUES(395, 'spec', '66.102.98.215', '0', '2011-03-02 18:05:25');
INSERT INTO `downloads` VALUES(396, 'spec', '66.102.98.215', '0', '2011-03-02 18:07:59');
INSERT INTO `downloads` VALUES(397, 'spec', '66.102.98.215', '0', '2011-03-02 18:12:44');
INSERT INTO `downloads` VALUES(398, 'spec', '71.79.49.248', '0', '2011-03-02 19:00:16');
INSERT INTO `downloads` VALUES(399, 'spec', '71.79.49.248', '0', '2011-03-02 19:00:58');
INSERT INTO `downloads` VALUES(400, 'spec', '85.211.65.236', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.1 Safari/534.23', '2011-03-02 19:59:09');
INSERT INTO `downloads` VALUES(401, 'spec', '184.106.10.74', '0', '2011-03-02 20:10:00');
INSERT INTO `downloads` VALUES(402, 'spec', '184.106.10.74', '0', '2011-03-02 20:10:01');
INSERT INTO `downloads` VALUES(403, 'spec', '184.106.10.74', '0', '2011-03-02 20:10:30');
INSERT INTO `downloads` VALUES(404, 'spec', '184.106.10.74', '0', '2011-03-02 20:10:30');
INSERT INTO `downloads` VALUES(405, 'spec', '184.106.10.74', '0', '2011-03-02 20:10:31');
INSERT INTO `downloads` VALUES(406, 'spec', '184.106.10.74', '0', '2011-03-02 20:12:03');
INSERT INTO `downloads` VALUES(407, 'spec', '184.106.10.74', '0', '2011-03-02 20:12:04');
INSERT INTO `downloads` VALUES(408, 'spec', '184.106.10.74', '0', '2011-03-02 20:12:04');
INSERT INTO `downloads` VALUES(409, 'spec', '184.106.10.74', '0', '2011-03-02 20:12:06');
INSERT INTO `downloads` VALUES(410, 'spec', '184.106.10.74', '0', '2011-03-02 20:40:42');
INSERT INTO `downloads` VALUES(411, 'system', '99.253.39.112', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.14) Gecko/20110218 Firefox/3.6.14', '2011-03-02 21:18:32');
INSERT INTO `downloads` VALUES(412, 'spec', '81.68.141.55', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.14) Gecko/20110218 Firefox/3.6.14', '2011-03-02 21:20:38');
INSERT INTO `downloads` VALUES(413, 'spec', '184.106.10.74', '0', '2011-03-02 21:30:45');
INSERT INTO `downloads` VALUES(414, 'spec', '86.159.226.158', '0', '2011-03-02 21:51:58');
INSERT INTO `downloads` VALUES(415, 'spec', '86.159.226.158', '0', '2011-03-02 21:52:58');
INSERT INTO `downloads` VALUES(416, 'spec', '77.38.154.122', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.13) Gecko/20101206 Ubuntu/10.04 (lucid) Firefox/3.6.13', '2011-03-02 22:02:43');
INSERT INTO `downloads` VALUES(417, 'spec', '62.199.188.245', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-03-02 22:43:17');
INSERT INTO `downloads` VALUES(418, 'spec', '187.113.174.140', '0', '2011-03-02 22:52:04');
INSERT INTO `downloads` VALUES(419, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 23:01:18');
INSERT INTO `downloads` VALUES(420, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-02 23:24:00');
INSERT INTO `downloads` VALUES(421, 'system', '174.45.113.134', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.107 Safari/534.13', '2011-03-03 04:04:31');
INSERT INTO `downloads` VALUES(422, 'spec', '174.45.113.134', '0', '2011-03-03 04:20:09');
INSERT INTO `downloads` VALUES(423, 'spec', '174.45.113.134', '0', '2011-03-03 04:22:41');
INSERT INTO `downloads` VALUES(424, 'spec', '109.158.126.49', '0', '2011-03-03 09:31:07');
INSERT INTO `downloads` VALUES(425, 'spec', '80.79.35.95', '0', '2011-03-03 09:47:53');
INSERT INTO `downloads` VALUES(426, 'spec', '80.79.35.95', '0', '2011-03-03 10:06:00');
INSERT INTO `downloads` VALUES(427, 'spec', '80.79.35.95', '0', '2011-03-03 10:15:19');
INSERT INTO `downloads` VALUES(428, 'spec', '80.79.35.95', '0', '2011-03-03 10:16:56');
INSERT INTO `downloads` VALUES(429, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-03 11:14:06');
INSERT INTO `downloads` VALUES(430, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-03 13:00:00');
INSERT INTO `downloads` VALUES(431, 'spec', '89.100.186.30', '0', '2011-03-03 15:40:48');
INSERT INTO `downloads` VALUES(432, 'spec', '62.2.209.10', 'Mozilla/5.0 (X11; Linux i686; rv:2.0b13pre) Gecko/20110301 Firefox/4.0b13pre', '2011-03-03 16:49:49');
INSERT INTO `downloads` VALUES(433, 'spec', '71.79.49.248', '0', '2011-03-03 17:03:41');
INSERT INTO `downloads` VALUES(434, 'system', '120.162.206.22', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-03 18:06:44');
INSERT INTO `downloads` VALUES(435, 'spec', '120.162.206.22', '0', '2011-03-03 18:17:35');
INSERT INTO `downloads` VALUES(436, 'spec', '120.162.206.22', '0', '2011-03-03 18:18:11');
INSERT INTO `downloads` VALUES(437, 'spec', '120.162.206.22', '0', '2011-03-03 18:18:44');
INSERT INTO `downloads` VALUES(438, 'spec', '120.162.206.22', '0', '2011-03-03 18:26:42');
INSERT INTO `downloads` VALUES(439, 'spec', '94.215.65.215', '0', '2011-03-03 18:37:39');
INSERT INTO `downloads` VALUES(440, 'spec', '120.162.206.22', '0', '2011-03-03 18:37:50');
INSERT INTO `downloads` VALUES(441, 'spec', '120.162.206.22', '0', '2011-03-03 18:41:15');
INSERT INTO `downloads` VALUES(442, 'spec', '120.162.206.22', '0', '2011-03-03 18:52:45');
INSERT INTO `downloads` VALUES(443, 'spec', '24.132.78.122', 'Mozilla/5.0 (Windows; Windows NT 6.1) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.1 Safari/534.23', '2011-03-03 18:56:24');
INSERT INTO `downloads` VALUES(444, 'spec', '94.215.65.215', '0', '2011-03-03 19:21:40');
INSERT INTO `downloads` VALUES(445, 'spec', '85.226.76.105', '0', '2011-03-03 20:28:10');
INSERT INTO `downloads` VALUES(446, 'spec', '85.226.76.105', '0', '2011-03-03 20:32:20');
INSERT INTO `downloads` VALUES(447, 'spec', '85.226.76.105', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:2.0b12) Gecko/20100101 Firefox/4.0b12', '2011-03-03 20:42:03');
INSERT INTO `downloads` VALUES(448, 'spec', '85.226.76.105', '0', '2011-03-03 20:45:20');
INSERT INTO `downloads` VALUES(449, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-03 22:24:28');
INSERT INTO `downloads` VALUES(450, 'system', '109.78.1.238', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-03-03 22:31:02');
INSERT INTO `downloads` VALUES(451, 'spec', '109.78.1.238', '0', '2011-03-03 22:41:16');
INSERT INTO `downloads` VALUES(452, 'spec', '109.78.1.238', '0', '2011-03-03 23:00:42');
INSERT INTO `downloads` VALUES(453, 'spec', '109.78.1.238', '0', '2011-03-03 23:03:00');
INSERT INTO `downloads` VALUES(454, 'spec', '66.60.154.82', '0', '2011-03-03 23:10:42');
INSERT INTO `downloads` VALUES(455, 'spec', '66.60.154.82', '0', '2011-03-03 23:11:41');
INSERT INTO `downloads` VALUES(456, 'spec', '66.60.154.82', '0', '2011-03-03 23:12:05');
INSERT INTO `downloads` VALUES(457, 'spec', '66.60.154.82', '0', '2011-03-03 23:13:24');
INSERT INTO `downloads` VALUES(458, 'spec', '66.60.154.82', '0', '2011-03-03 23:16:16');
INSERT INTO `downloads` VALUES(459, 'spec', '66.60.154.82', '0', '2011-03-03 23:16:37');
INSERT INTO `downloads` VALUES(460, 'spec', '66.60.154.82', '0', '2011-03-03 23:16:41');
INSERT INTO `downloads` VALUES(461, 'spec', '109.78.1.238', '0', '2011-03-03 23:51:56');
INSERT INTO `downloads` VALUES(462, 'spec', '58.64.119.63', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-03-04 00:07:45');
INSERT INTO `downloads` VALUES(463, 'spec', '62.118.151.54', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.107 Safari/534.13', '2011-03-04 00:12:40');
INSERT INTO `downloads` VALUES(464, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-04 00:29:14');
INSERT INTO `downloads` VALUES(465, 'spec', '71.204.164.201', '0', '2011-03-04 01:46:47');
INSERT INTO `downloads` VALUES(466, 'spec', '71.204.164.201', '0', '2011-03-04 02:02:10');
INSERT INTO `downloads` VALUES(467, 'spec', '71.204.164.201', '0', '2011-03-04 02:10:23');
INSERT INTO `downloads` VALUES(468, 'spec', '107.9.157.162', '0', '2011-03-04 02:10:54');
INSERT INTO `downloads` VALUES(469, 'spec', '107.9.157.162', '0', '2011-03-04 02:11:37');
INSERT INTO `downloads` VALUES(470, 'spec', '71.204.164.201', '0', '2011-03-04 02:13:41');
INSERT INTO `downloads` VALUES(471, 'spec', '107.9.157.162', '0', '2011-03-04 02:27:35');
INSERT INTO `downloads` VALUES(472, 'spec', '107.9.157.162', '0', '2011-03-04 02:27:54');
INSERT INTO `downloads` VALUES(473, 'spec', '107.9.157.162', '0', '2011-03-04 02:28:12');
INSERT INTO `downloads` VALUES(474, 'spec', '71.79.49.248', '0', '2011-03-04 02:35:57');
INSERT INTO `downloads` VALUES(475, 'spec', '74.96.231.94', '0', '2011-03-04 02:36:25');
INSERT INTO `downloads` VALUES(476, 'spec', '196.210.129.10', '0', '2011-03-04 02:37:55');
INSERT INTO `downloads` VALUES(477, 'spec', '99.245.135.83', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.14) Gecko/20110218 Firefox/3.6.14', '2011-03-04 02:39:11');
INSERT INTO `downloads` VALUES(478, 'spec', '196.210.129.10', '0', '2011-03-04 02:39:31');
INSERT INTO `downloads` VALUES(479, 'spec', '196.210.129.10', '0', '2011-03-04 02:40:02');
INSERT INTO `downloads` VALUES(480, 'spec', '196.210.129.10', '0', '2011-03-04 02:40:24');
INSERT INTO `downloads` VALUES(481, 'spec', '107.9.157.162', '0', '2011-03-04 02:41:02');
INSERT INTO `downloads` VALUES(482, 'spec', '107.9.157.162', '0', '2011-03-04 02:41:23');
INSERT INTO `downloads` VALUES(483, 'spec', '107.9.157.162', '0', '2011-03-04 02:43:29');
INSERT INTO `downloads` VALUES(484, 'spec', '196.210.129.10', '0', '2011-03-04 02:44:37');
INSERT INTO `downloads` VALUES(485, 'system', '119.92.244.154', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-03-04 02:45:39');
INSERT INTO `downloads` VALUES(486, 'spec', '107.9.157.162', '0', '2011-03-04 02:46:44');
INSERT INTO `downloads` VALUES(487, 'spec', '107.9.157.162', '0', '2011-03-04 02:47:05');
INSERT INTO `downloads` VALUES(488, 'spec', '107.9.157.162', '0', '2011-03-04 02:47:48');
INSERT INTO `downloads` VALUES(489, 'spec', '107.9.157.162', '0', '2011-03-04 02:48:09');
INSERT INTO `downloads` VALUES(490, 'spec', '107.9.157.162', '0', '2011-03-04 02:48:57');
INSERT INTO `downloads` VALUES(491, 'spec', '107.9.157.162', '0', '2011-03-04 02:48:58');
INSERT INTO `downloads` VALUES(492, 'spec', '107.9.157.162', '0', '2011-03-04 02:51:15');
INSERT INTO `downloads` VALUES(493, 'spec', '107.9.157.162', '0', '2011-03-04 02:51:16');
INSERT INTO `downloads` VALUES(494, 'spec', '107.9.157.162', '0', '2011-03-04 02:52:03');
INSERT INTO `downloads` VALUES(495, 'spec', '107.9.157.162', '0', '2011-03-04 02:52:04');
INSERT INTO `downloads` VALUES(496, 'spec', '107.9.157.162', '0', '2011-03-04 02:52:05');
INSERT INTO `downloads` VALUES(497, 'spec', '107.9.157.162', '0', '2011-03-04 02:56:53');
INSERT INTO `downloads` VALUES(498, 'spec', '107.9.157.162', '0', '2011-03-04 02:57:20');
INSERT INTO `downloads` VALUES(499, 'spec', '107.9.157.162', '0', '2011-03-04 02:59:41');
INSERT INTO `downloads` VALUES(500, 'spec', '107.9.157.162', '0', '2011-03-04 02:59:41');
INSERT INTO `downloads` VALUES(501, 'spec', '107.9.157.162', '0', '2011-03-04 02:59:43');
INSERT INTO `downloads` VALUES(502, 'spec', '107.9.157.162', '0', '2011-03-04 02:59:44');
INSERT INTO `downloads` VALUES(503, 'spec', '107.9.157.162', '0', '2011-03-04 02:59:44');
INSERT INTO `downloads` VALUES(504, 'spec', '107.9.157.162', '0', '2011-03-04 03:00:45');
INSERT INTO `downloads` VALUES(505, 'spec', '107.9.157.162', '0', '2011-03-04 03:00:46');
INSERT INTO `downloads` VALUES(506, 'spec', '107.9.157.162', '0', '2011-03-04 03:00:47');
INSERT INTO `downloads` VALUES(507, 'spec', '107.9.157.162', '0', '2011-03-04 03:00:48');
INSERT INTO `downloads` VALUES(508, 'spec', '107.9.157.162', '0', '2011-03-04 03:00:49');
INSERT INTO `downloads` VALUES(509, 'spec', '107.9.157.162', '0', '2011-03-04 03:00:49');
INSERT INTO `downloads` VALUES(510, 'spec', '107.9.157.162', '0', '2011-03-04 03:01:23');
INSERT INTO `downloads` VALUES(511, 'spec', '107.9.157.162', '0', '2011-03-04 03:01:25');
INSERT INTO `downloads` VALUES(512, 'spec', '107.9.157.162', '0', '2011-03-04 03:01:26');
INSERT INTO `downloads` VALUES(513, 'spec', '107.9.157.162', '0', '2011-03-04 03:01:27');
INSERT INTO `downloads` VALUES(514, 'spec', '107.9.157.162', '0', '2011-03-04 03:01:28');
INSERT INTO `downloads` VALUES(515, 'spec', '107.9.157.162', '0', '2011-03-04 03:01:28');
INSERT INTO `downloads` VALUES(516, 'spec', '107.9.157.162', '0', '2011-03-04 03:05:12');
INSERT INTO `downloads` VALUES(517, 'spec', '107.9.157.162', '0', '2011-03-04 03:05:13');
INSERT INTO `downloads` VALUES(518, 'spec', '107.9.157.162', '0', '2011-03-04 03:05:15');
INSERT INTO `downloads` VALUES(519, 'spec', '107.9.157.162', '0', '2011-03-04 03:05:16');
INSERT INTO `downloads` VALUES(520, 'spec', '107.9.157.162', '0', '2011-03-04 03:05:16');
INSERT INTO `downloads` VALUES(521, 'spec', '107.9.157.162', '0', '2011-03-04 03:05:17');
INSERT INTO `downloads` VALUES(522, 'spec', '107.9.157.162', '0', '2011-03-04 03:07:23');
INSERT INTO `downloads` VALUES(523, 'spec', '107.9.157.162', '0', '2011-03-04 03:07:24');
INSERT INTO `downloads` VALUES(524, 'spec', '107.9.157.162', '0', '2011-03-04 03:07:25');
INSERT INTO `downloads` VALUES(525, 'spec', '107.9.157.162', '0', '2011-03-04 03:07:26');
INSERT INTO `downloads` VALUES(526, 'spec', '107.9.157.162', '0', '2011-03-04 03:07:27');
INSERT INTO `downloads` VALUES(527, 'spec', '107.9.157.162', '0', '2011-03-04 03:07:28');
INSERT INTO `downloads` VALUES(528, 'spec', '124.81.109.234', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.13) Gecko/20101206 Ubuntu/10.10 (maverick) Firefox/3.6.13', '2011-03-04 03:12:05');
INSERT INTO `downloads` VALUES(529, 'spec', '107.9.157.162', '0', '2011-03-04 03:28:54');
INSERT INTO `downloads` VALUES(530, 'spec', '107.9.157.162', '0', '2011-03-04 03:28:55');
INSERT INTO `downloads` VALUES(531, 'spec', '107.9.157.162', '0', '2011-03-04 03:28:57');
INSERT INTO `downloads` VALUES(532, 'spec', '107.9.157.162', '0', '2011-03-04 03:28:58');
INSERT INTO `downloads` VALUES(533, 'spec', '107.9.157.162', '0', '2011-03-04 03:28:59');
INSERT INTO `downloads` VALUES(534, 'spec', '107.9.157.162', '0', '2011-03-04 03:28:59');
INSERT INTO `downloads` VALUES(535, 'spec', '107.9.157.162', '0', '2011-03-04 03:29:00');
INSERT INTO `downloads` VALUES(536, 'spec', '107.9.157.162', '0', '2011-03-04 03:29:01');
INSERT INTO `downloads` VALUES(537, 'spec', '107.9.157.162', '0', '2011-03-04 03:29:02');
INSERT INTO `downloads` VALUES(538, 'spec', '107.9.157.162', '0', '2011-03-04 03:29:03');
INSERT INTO `downloads` VALUES(539, 'spec', '107.9.157.162', '0', '2011-03-04 03:29:05');
INSERT INTO `downloads` VALUES(540, 'spec', '107.9.157.162', '0', '2011-03-04 03:29:06');
INSERT INTO `downloads` VALUES(541, 'spec', '107.9.157.162', '0', '2011-03-04 03:29:07');
INSERT INTO `downloads` VALUES(542, 'spec', '107.9.157.162', '0', '2011-03-04 03:29:08');
INSERT INTO `downloads` VALUES(543, 'spec', '107.9.157.162', '0', '2011-03-04 03:29:09');
INSERT INTO `downloads` VALUES(544, 'spec', '107.9.157.162', '0', '2011-03-04 03:29:10');
INSERT INTO `downloads` VALUES(545, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:20');
INSERT INTO `downloads` VALUES(546, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:21');
INSERT INTO `downloads` VALUES(547, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:22');
INSERT INTO `downloads` VALUES(548, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:23');
INSERT INTO `downloads` VALUES(549, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:24');
INSERT INTO `downloads` VALUES(550, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:25');
INSERT INTO `downloads` VALUES(551, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:26');
INSERT INTO `downloads` VALUES(552, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:27');
INSERT INTO `downloads` VALUES(553, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:28');
INSERT INTO `downloads` VALUES(554, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:29');
INSERT INTO `downloads` VALUES(555, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:30');
INSERT INTO `downloads` VALUES(556, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:32');
INSERT INTO `downloads` VALUES(557, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:33');
INSERT INTO `downloads` VALUES(558, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:34');
INSERT INTO `downloads` VALUES(559, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:36');
INSERT INTO `downloads` VALUES(560, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:36');
INSERT INTO `downloads` VALUES(561, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:41');
INSERT INTO `downloads` VALUES(562, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:43');
INSERT INTO `downloads` VALUES(563, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:44');
INSERT INTO `downloads` VALUES(564, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:45');
INSERT INTO `downloads` VALUES(565, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:46');
INSERT INTO `downloads` VALUES(566, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:46');
INSERT INTO `downloads` VALUES(567, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:47');
INSERT INTO `downloads` VALUES(568, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:48');
INSERT INTO `downloads` VALUES(569, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:49');
INSERT INTO `downloads` VALUES(570, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:51');
INSERT INTO `downloads` VALUES(571, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:52');
INSERT INTO `downloads` VALUES(572, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:53');
INSERT INTO `downloads` VALUES(573, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:54');
INSERT INTO `downloads` VALUES(574, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:55');
INSERT INTO `downloads` VALUES(575, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:56');
INSERT INTO `downloads` VALUES(576, 'spec', '107.9.157.162', '0', '2011-03-04 03:30:56');
INSERT INTO `downloads` VALUES(577, 'spec', '107.9.157.162', '0', '2011-03-04 03:31:52');
INSERT INTO `downloads` VALUES(578, 'spec', '107.9.157.162', '0', '2011-03-04 03:31:52');
INSERT INTO `downloads` VALUES(579, 'spec', '107.9.157.162', '0', '2011-03-04 03:31:53');
INSERT INTO `downloads` VALUES(580, 'spec', '107.9.157.162', '0', '2011-03-04 03:31:54');
INSERT INTO `downloads` VALUES(581, 'spec', '107.9.157.162', '0', '2011-03-04 03:31:55');
INSERT INTO `downloads` VALUES(582, 'spec', '107.9.157.162', '0', '2011-03-04 03:31:55');
INSERT INTO `downloads` VALUES(583, 'spec', '107.9.157.162', '0', '2011-03-04 03:31:56');
INSERT INTO `downloads` VALUES(584, 'spec', '107.9.157.162', '0', '2011-03-04 03:31:57');
INSERT INTO `downloads` VALUES(585, 'spec', '107.9.157.162', '0', '2011-03-04 03:31:58');
INSERT INTO `downloads` VALUES(586, 'spec', '107.9.157.162', '0', '2011-03-04 03:31:59');
INSERT INTO `downloads` VALUES(587, 'spec', '107.9.157.162', '0', '2011-03-04 03:32:00');
INSERT INTO `downloads` VALUES(588, 'spec', '107.9.157.162', '0', '2011-03-04 03:32:01');
INSERT INTO `downloads` VALUES(589, 'spec', '107.9.157.162', '0', '2011-03-04 03:32:02');
INSERT INTO `downloads` VALUES(590, 'spec', '107.9.157.162', '0', '2011-03-04 03:32:03');
INSERT INTO `downloads` VALUES(591, 'spec', '107.9.157.162', '0', '2011-03-04 03:32:04');
INSERT INTO `downloads` VALUES(592, 'spec', '107.9.157.162', '0', '2011-03-04 03:32:04');
INSERT INTO `downloads` VALUES(593, 'spec', '66.234.50.178', '0', '2011-03-04 03:32:12');
INSERT INTO `downloads` VALUES(594, 'spec', '107.9.157.162', '0', '2011-03-04 03:34:44');
INSERT INTO `downloads` VALUES(595, 'spec', '107.9.157.162', '0', '2011-03-04 03:34:45');
INSERT INTO `downloads` VALUES(596, 'spec', '107.9.157.162', '0', '2011-03-04 03:34:47');
INSERT INTO `downloads` VALUES(597, 'spec', '107.9.157.162', '0', '2011-03-04 03:34:48');
INSERT INTO `downloads` VALUES(598, 'spec', '107.9.157.162', '0', '2011-03-04 03:34:49');
INSERT INTO `downloads` VALUES(599, 'spec', '107.9.157.162', '0', '2011-03-04 03:34:49');
INSERT INTO `downloads` VALUES(600, 'spec', '107.9.157.162', '0', '2011-03-04 03:34:50');
INSERT INTO `downloads` VALUES(601, 'spec', '107.9.157.162', '0', '2011-03-04 03:34:51');
INSERT INTO `downloads` VALUES(602, 'spec', '107.9.157.162', '0', '2011-03-04 03:34:52');
INSERT INTO `downloads` VALUES(603, 'spec', '107.9.157.162', '0', '2011-03-04 03:34:53');
INSERT INTO `downloads` VALUES(604, 'spec', '107.9.157.162', '0', '2011-03-04 03:34:54');
INSERT INTO `downloads` VALUES(605, 'spec', '107.9.157.162', '0', '2011-03-04 03:34:55');
INSERT INTO `downloads` VALUES(606, 'spec', '107.9.157.162', '0', '2011-03-04 03:34:57');
INSERT INTO `downloads` VALUES(607, 'spec', '107.9.157.162', '0', '2011-03-04 03:34:57');
INSERT INTO `downloads` VALUES(608, 'spec', '107.9.157.162', '0', '2011-03-04 03:34:58');
INSERT INTO `downloads` VALUES(609, 'spec', '107.9.157.162', '0', '2011-03-04 03:34:59');
INSERT INTO `downloads` VALUES(610, 'spec', '107.9.157.162', '0', '2011-03-04 03:39:46');
INSERT INTO `downloads` VALUES(611, 'spec', '107.9.157.162', '0', '2011-03-04 03:39:47');
INSERT INTO `downloads` VALUES(612, 'spec', '107.9.157.162', '0', '2011-03-04 03:39:48');
INSERT INTO `downloads` VALUES(613, 'spec', '107.9.157.162', '0', '2011-03-04 03:39:49');
INSERT INTO `downloads` VALUES(614, 'spec', '70.230.175.8', '0', '2011-03-04 03:41:20');
INSERT INTO `downloads` VALUES(615, 'spec', '70.230.175.8', '0', '2011-03-04 03:41:59');
INSERT INTO `downloads` VALUES(616, 'spec', '107.9.157.162', '0', '2011-03-04 03:42:16');
INSERT INTO `downloads` VALUES(617, 'spec', '107.9.157.162', '0', '2011-03-04 03:42:17');
INSERT INTO `downloads` VALUES(618, 'spec', '107.9.157.162', '0', '2011-03-04 03:42:18');
INSERT INTO `downloads` VALUES(619, 'spec', '107.9.157.162', '0', '2011-03-04 03:42:19');
INSERT INTO `downloads` VALUES(620, 'spec', '107.9.157.162', '0', '2011-03-04 03:42:20');
INSERT INTO `downloads` VALUES(621, 'spec', '107.9.157.162', '0', '2011-03-04 03:42:21');
INSERT INTO `downloads` VALUES(622, 'spec', '107.9.157.162', '0', '2011-03-04 03:43:11');
INSERT INTO `downloads` VALUES(623, 'spec', '107.9.157.162', '0', '2011-03-04 03:43:12');
INSERT INTO `downloads` VALUES(624, 'spec', '107.9.157.162', '0', '2011-03-04 03:43:13');
INSERT INTO `downloads` VALUES(625, 'spec', '107.9.157.162', '0', '2011-03-04 03:43:14');
INSERT INTO `downloads` VALUES(626, 'spec', '107.9.157.162', '0', '2011-03-04 03:43:16');
INSERT INTO `downloads` VALUES(627, 'spec', '107.9.157.162', '0', '2011-03-04 03:43:17');
INSERT INTO `downloads` VALUES(628, 'spec', '205.217.237.8', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-03-04 03:46:06');
INSERT INTO `downloads` VALUES(629, 'spec', '70.230.175.8', '0', '2011-03-04 03:50:45');
INSERT INTO `downloads` VALUES(630, 'spec', '70.230.175.8', '0', '2011-03-04 03:52:31');
INSERT INTO `downloads` VALUES(631, 'spec', '70.230.175.8', '0', '2011-03-04 03:53:49');
INSERT INTO `downloads` VALUES(632, 'spec', '70.230.175.8', '0', '2011-03-04 03:59:20');
INSERT INTO `downloads` VALUES(633, 'spec', '66.249.71.180', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-04 04:19:17');
INSERT INTO `downloads` VALUES(634, 'spec', '96.242.166.214', '0', '2011-03-04 04:35:09');
INSERT INTO `downloads` VALUES(635, 'spec', '63.225.88.41', '0', '2011-03-04 04:59:04');
INSERT INTO `downloads` VALUES(636, 'spec', '1.23.95.148', '0', '2011-03-04 05:02:56');
INSERT INTO `downloads` VALUES(637, 'spec', '196.210.129.10', '0', '2011-03-04 06:11:48');
INSERT INTO `downloads` VALUES(638, 'spec', '196.210.129.10', '0', '2011-03-04 06:12:28');
INSERT INTO `downloads` VALUES(639, 'spec', '94.215.65.215', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; nl-nl) AppleWebKit/533.19.4 (KHTML, like Gecko) Version/5.0.3 Safari/533.19.4', '2011-03-04 08:32:38');
INSERT INTO `downloads` VALUES(640, 'spec', '94.215.65.215', '0', '2011-03-04 08:33:44');
INSERT INTO `downloads` VALUES(641, 'system', '188.222.41.129', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:2.0b12) Gecko/20100101 Firefox/4.0b12', '2011-03-04 09:11:31');
INSERT INTO `downloads` VALUES(642, 'spec', '188.222.41.129', '0', '2011-03-04 09:28:20');
INSERT INTO `downloads` VALUES(643, 'spec', '188.222.41.129', '0', '2011-03-04 09:33:38');
INSERT INTO `downloads` VALUES(644, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-04 09:33:56');
INSERT INTO `downloads` VALUES(645, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-04 09:58:06');
INSERT INTO `downloads` VALUES(646, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-04 10:21:47');
INSERT INTO `downloads` VALUES(647, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-04 10:45:20');
INSERT INTO `downloads` VALUES(648, 'spec', '90.154.240.125', '0', '2011-03-04 11:01:41');
INSERT INTO `downloads` VALUES(649, 'spec', '93.186.176.113', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; nl; rv:1.9.2.14) Gecko/20110218 Firefox/3.6.14', '2011-03-04 11:02:51');
INSERT INTO `downloads` VALUES(650, 'spec', '94.215.65.215', '0', '2011-03-04 11:04:04');
INSERT INTO `downloads` VALUES(651, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-04 14:24:37');
INSERT INTO `downloads` VALUES(652, 'system', '204.236.226.210', 'ia_archiver (+http://www.alexa.com/site/help/webmasters; crawler@alexa.com)', '2011-03-04 14:52:50');
INSERT INTO `downloads` VALUES(653, 'spec', '204.236.226.210', 'ia_archiver (+http://www.alexa.com/site/help/webmasters; crawler@alexa.com)', '2011-03-04 14:56:23');
INSERT INTO `downloads` VALUES(654, 'spec', '204.236.226.210', 'ia_archiver (+http://www.alexa.com/site/help/webmasters; crawler@alexa.com)', '2011-03-04 14:57:14');
INSERT INTO `downloads` VALUES(655, 'spec', '93.140.210.154', '0', '2011-03-04 15:01:13');
INSERT INTO `downloads` VALUES(656, 'spec', '93.140.210.154', '0', '2011-03-04 16:44:53');
INSERT INTO `downloads` VALUES(657, 'spec', '93.140.210.154', '0', '2011-03-04 16:46:47');
INSERT INTO `downloads` VALUES(658, 'spec', '93.140.210.154', '0', '2011-03-04 16:47:11');
INSERT INTO `downloads` VALUES(659, 'system', '188.152.242.208', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.107 Safari/534.13', '2011-03-04 17:00:40');
INSERT INTO `downloads` VALUES(660, 'spec', '188.152.242.208', '0', '2011-03-04 17:03:08');
INSERT INTO `downloads` VALUES(661, 'spec', '188.152.242.208', '0', '2011-03-04 17:04:27');
INSERT INTO `downloads` VALUES(662, 'spec', '188.152.242.208', '0', '2011-03-04 17:06:38');
INSERT INTO `downloads` VALUES(663, 'spec', '188.152.242.208', '0', '2011-03-04 17:10:19');
INSERT INTO `downloads` VALUES(664, 'spec', '188.152.242.208', '0', '2011-03-04 17:10:31');
INSERT INTO `downloads` VALUES(665, 'spec', '188.152.242.208', '0', '2011-03-04 17:10:37');
INSERT INTO `downloads` VALUES(666, 'spec', '188.152.242.208', '0', '2011-03-04 17:10:43');
INSERT INTO `downloads` VALUES(667, 'spec', '188.152.242.208', '0', '2011-03-04 17:10:50');
INSERT INTO `downloads` VALUES(668, 'spec', '188.152.242.208', '0', '2011-03-04 17:10:56');
INSERT INTO `downloads` VALUES(669, 'spec', '188.152.242.208', '0', '2011-03-04 17:11:34');
INSERT INTO `downloads` VALUES(670, 'spec', '80.79.35.95', '0', '2011-03-04 17:59:42');
INSERT INTO `downloads` VALUES(671, 'spec', '80.79.35.95', '0', '2011-03-04 18:00:37');
INSERT INTO `downloads` VALUES(672, 'spec', '80.79.35.95', '0', '2011-03-04 18:10:03');
INSERT INTO `downloads` VALUES(673, 'spec', '80.79.35.95', '0', '2011-03-04 18:13:02');
INSERT INTO `downloads` VALUES(674, 'spec', '80.79.35.95', '0', '2011-03-04 18:16:21');
INSERT INTO `downloads` VALUES(675, 'spec', '93.140.210.154', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.114 Safari/534.16', '2011-03-04 18:17:29');
INSERT INTO `downloads` VALUES(676, 'spec', '80.79.35.95', '0', '2011-03-04 18:23:14');
INSERT INTO `downloads` VALUES(677, 'spec', '80.79.35.95', '0', '2011-03-04 18:50:30');
INSERT INTO `downloads` VALUES(678, 'spec', '80.79.35.95', '0', '2011-03-04 18:50:54');
INSERT INTO `downloads` VALUES(679, 'spec', '80.79.35.95', '0', '2011-03-04 18:52:04');
INSERT INTO `downloads` VALUES(680, 'spec', '80.79.35.95', '0', '2011-03-04 18:55:07');
INSERT INTO `downloads` VALUES(681, 'spec', '80.79.35.95', '0', '2011-03-04 19:04:49');
INSERT INTO `downloads` VALUES(682, 'spec', '80.79.35.95', '0', '2011-03-04 19:05:43');
INSERT INTO `downloads` VALUES(683, 'spec', '80.79.35.95', '0', '2011-03-04 19:07:12');
INSERT INTO `downloads` VALUES(684, 'spec', '80.79.35.95', '0', '2011-03-04 19:09:39');
INSERT INTO `downloads` VALUES(685, 'spec', '80.79.35.95', '0', '2011-03-04 19:10:09');
INSERT INTO `downloads` VALUES(686, 'spec', '80.79.35.95', '0', '2011-03-04 19:11:36');
INSERT INTO `downloads` VALUES(687, 'spec', '80.79.35.95', '0', '2011-03-04 19:53:16');
INSERT INTO `downloads` VALUES(688, 'spec', '80.79.35.95', '0', '2011-03-04 19:56:53');
INSERT INTO `downloads` VALUES(689, 'spec', '80.79.35.95', '0', '2011-03-04 20:04:40');
INSERT INTO `downloads` VALUES(690, 'spec', '80.79.35.95', '0', '2011-03-04 20:05:29');
INSERT INTO `downloads` VALUES(691, 'spec', '80.79.35.95', '0', '2011-03-04 20:05:35');
INSERT INTO `downloads` VALUES(692, 'spec', '112.198.79.170', '0', '2011-03-04 20:23:42');
INSERT INTO `downloads` VALUES(693, 'spec', '80.79.35.95', '0', '2011-03-04 20:23:58');
INSERT INTO `downloads` VALUES(694, 'spec', '80.79.35.95', '0', '2011-03-04 20:24:54');
INSERT INTO `downloads` VALUES(695, 'spec', '80.79.35.95', '0', '2011-03-04 20:24:59');
INSERT INTO `downloads` VALUES(696, 'spec', '80.79.35.95', '0', '2011-03-04 20:25:55');
INSERT INTO `downloads` VALUES(697, 'spec', '80.79.35.95', '0', '2011-03-04 20:26:16');
INSERT INTO `downloads` VALUES(698, 'spec', '112.198.79.170', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.102 Safari/534.13', '2011-03-04 20:32:35');
INSERT INTO `downloads` VALUES(699, 'spec', '80.79.35.95', '0', '2011-03-04 20:49:02');
INSERT INTO `downloads` VALUES(700, 'spec', '80.79.35.95', '0', '2011-03-04 20:53:05');
INSERT INTO `downloads` VALUES(701, 'spec', '204.236.226.210', 'ia_archiver (+http://www.alexa.com/site/help/webmasters; crawler@alexa.com)', '2011-03-04 20:53:17');
INSERT INTO `downloads` VALUES(702, 'spec', '201.6.124.60', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.14) Gecko/20110221 Ubuntu/10.10 (maverick) Firefox/3.6.14', '2011-03-04 21:18:21');
INSERT INTO `downloads` VALUES(703, 'spec', '78.73.5.40', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; sv-se) AppleWebKit/533.17.9 (KHTML, like Gecko) Mobile/8C148', '2011-03-04 21:26:06');
INSERT INTO `downloads` VALUES(704, 'spec', '74.96.231.94', '0', '2011-03-04 21:57:12');
INSERT INTO `downloads` VALUES(705, 'spec', '74.96.231.94', '0', '2011-03-04 22:04:00');
INSERT INTO `downloads` VALUES(706, 'spec', '74.96.231.94', '0', '2011-03-04 22:15:12');
INSERT INTO `downloads` VALUES(707, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-04 22:25:43');
INSERT INTO `downloads` VALUES(708, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-04 22:47:12');
INSERT INTO `downloads` VALUES(709, 'spec', '190.225.62.224', 'Mozilla/5.0 (X11; U; Linux i686; es-AR; rv:1.9.2.14) Gecko/20110221 Ubuntu/10.10 (maverick) Firefox/3.6.14 GTB7.1', '2011-03-04 22:47:55');
INSERT INTO `downloads` VALUES(710, 'spec', '190.225.62.224', '0', '2011-03-04 23:12:47');
INSERT INTO `downloads` VALUES(711, 'spec', '190.225.62.224', '0', '2011-03-04 23:14:38');
INSERT INTO `downloads` VALUES(712, 'spec', '190.225.62.224', 'Mozilla/5.0 (X11; U; Linux i686; es-AR; rv:1.9.2.14) Gecko/20110221 Ubuntu/10.10 (maverick) Firefox/3.6.14 GTB7.1', '2011-03-04 23:14:48');
INSERT INTO `downloads` VALUES(713, 'spec', '75.198.184.26', '0', '2011-03-04 23:36:53');
INSERT INTO `downloads` VALUES(714, 'spec', '75.198.184.26', '0', '2011-03-04 23:42:27');
INSERT INTO `downloads` VALUES(715, 'spec', '75.198.184.26', '0', '2011-03-05 00:00:54');
INSERT INTO `downloads` VALUES(716, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-05 00:42:08');
INSERT INTO `downloads` VALUES(717, 'system', '74.96.231.94', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.107 Safari/534.13', '2011-03-05 03:06:31');
INSERT INTO `downloads` VALUES(718, 'spec', '74.96.231.94', '0', '2011-03-05 03:23:29');
INSERT INTO `downloads` VALUES(719, 'spec', '74.96.231.94', '0', '2011-03-05 03:24:08');
INSERT INTO `downloads` VALUES(720, 'spec', '74.96.231.94', '0', '2011-03-05 03:24:21');
INSERT INTO `downloads` VALUES(721, 'spec', '74.96.231.94', '0', '2011-03-05 03:24:33');
INSERT INTO `downloads` VALUES(722, 'spec', '74.96.231.94', '0', '2011-03-05 03:24:44');
INSERT INTO `downloads` VALUES(723, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-05 04:30:42');
INSERT INTO `downloads` VALUES(724, 'spec', '93.140.210.154', '0', '2011-03-05 05:31:13');
INSERT INTO `downloads` VALUES(725, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-05 05:34:13');
INSERT INTO `downloads` VALUES(726, 'spec', '93.140.210.154', '0', '2011-03-05 05:41:48');
INSERT INTO `downloads` VALUES(727, 'spec', '93.140.210.154', '0', '2011-03-05 05:47:23');
INSERT INTO `downloads` VALUES(728, 'spec', '93.140.210.154', '0', '2011-03-05 05:49:14');
INSERT INTO `downloads` VALUES(729, 'spec', '74.96.231.94', '0', '2011-03-05 06:07:56');
INSERT INTO `downloads` VALUES(730, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-05 10:15:34');
INSERT INTO `downloads` VALUES(731, 'spec', '82.46.242.152', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.127 Safari/534.16', '2011-03-05 10:19:09');
INSERT INTO `downloads` VALUES(732, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-05 10:34:06');
INSERT INTO `downloads` VALUES(733, 'system', '190.221.43.64', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; es-AR; rv:1.9.2.14) Gecko/20110218 Firefox/3.6.14', '2011-03-05 10:51:48');
INSERT INTO `downloads` VALUES(734, 'system', '190.221.43.64', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; es-AR; rv:1.9.2.14) Gecko/20110218 Firefox/3.6.14', '2011-03-05 11:00:35');
INSERT INTO `downloads` VALUES(735, 'system', '86.138.189.109', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-03-05 11:59:37');
INSERT INTO `downloads` VALUES(736, 'spec', '88.149.161.239', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; it; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-03-05 14:18:45');
INSERT INTO `downloads` VALUES(737, 'spec', '204.188.166.179', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-03-05 14:50:28');
INSERT INTO `downloads` VALUES(738, 'spec', '86.138.189.109', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.98 Safari/534.13', '2011-03-05 16:11:56');
INSERT INTO `downloads` VALUES(739, 'spec', '99.119.108.137', '0', '2011-03-05 17:38:59');
INSERT INTO `downloads` VALUES(740, 'spec', '99.119.108.137', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.18 Safari/534.16', '2011-03-05 17:55:42');
INSERT INTO `downloads` VALUES(741, 'spec', '99.119.108.137', '0', '2011-03-05 17:58:43');
INSERT INTO `downloads` VALUES(742, 'system', '94.164.126.148', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; it; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13 FirePHP/0.5', '2011-03-05 18:10:48');
INSERT INTO `downloads` VALUES(743, 'spec', '94.164.126.148', '0', '2011-03-05 18:16:55');
INSERT INTO `downloads` VALUES(744, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-05 19:52:52');
INSERT INTO `downloads` VALUES(745, 'spec', '85.226.76.105', '0', '2011-03-05 20:26:39');
INSERT INTO `downloads` VALUES(746, 'spec', '85.226.76.105', '0', '2011-03-05 20:33:10');
INSERT INTO `downloads` VALUES(747, 'spec', '85.226.76.105', '0', '2011-03-05 20:35:21');
INSERT INTO `downloads` VALUES(748, 'spec', '85.226.76.105', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:2.0b12) Gecko/20100101 Firefox/4.0b12', '2011-03-05 20:37:56');
INSERT INTO `downloads` VALUES(749, 'spec', '85.226.76.105', '0', '2011-03-05 20:40:30');
INSERT INTO `downloads` VALUES(750, 'spec', '67.195.112.249', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)', '2011-03-05 21:17:14');
INSERT INTO `downloads` VALUES(751, 'spec', '67.195.112.249', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)', '2011-03-05 21:17:26');
INSERT INTO `downloads` VALUES(752, 'spec', '67.195.112.249', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)', '2011-03-05 21:25:05');
INSERT INTO `downloads` VALUES(753, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-05 21:50:04');
INSERT INTO `downloads` VALUES(754, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-05 21:50:05');
INSERT INTO `downloads` VALUES(755, 'spec', '67.195.112.249', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)', '2011-03-05 22:25:10');
INSERT INTO `downloads` VALUES(756, 'spec', '70.116.92.152', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:2.0b12) Gecko/20100101 Firefox/4.0b12', '2011-03-05 22:42:19');
INSERT INTO `downloads` VALUES(757, 'spec', '96.242.166.214', '0', '2011-03-06 01:23:27');
INSERT INTO `downloads` VALUES(758, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-06 01:40:03');
INSERT INTO `downloads` VALUES(759, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-06 01:41:57');
INSERT INTO `downloads` VALUES(760, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-06 01:45:32');
INSERT INTO `downloads` VALUES(761, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-06 01:56:34');
INSERT INTO `downloads` VALUES(762, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-06 04:23:48');
INSERT INTO `downloads` VALUES(763, 'system', '213.87.128.115', 'Mozilla/5.0 (X11; U; Linux i686; ru; rv:1.9.2.13) Gecko/20101206 Ubuntu/10.04 (lucid) Firefox/3.6.13', '2011-03-06 05:14:39');
INSERT INTO `downloads` VALUES(764, 'spec', '108.5.154.253', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-06 05:21:58');
INSERT INTO `downloads` VALUES(765, 'spec', '108.5.154.253', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-06 05:22:03');
INSERT INTO `downloads` VALUES(766, 'spec', '108.5.154.253', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-06 05:22:03');
INSERT INTO `downloads` VALUES(767, 'spec', '108.5.154.253', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-06 05:22:04');
INSERT INTO `downloads` VALUES(768, 'spec', '108.5.154.253', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-06 05:22:05');
INSERT INTO `downloads` VALUES(769, 'spec', '108.5.154.253', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-06 05:22:06');
INSERT INTO `downloads` VALUES(770, 'spec', '108.5.154.253', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '2011-03-06 05:22:07');
INSERT INTO `downloads` VALUES(771, 'spec', '108.11.144.143', '0', '2011-03-06 06:03:58');
INSERT INTO `downloads` VALUES(772, 'spec', '24.164.186.229', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.13 (KHTML, like Gecko) Chrome/9.0.597.107 Safari/534.13', '2011-03-06 06:42:52');
INSERT INTO `downloads` VALUES(773, 'spec', '99.119.108.137', 'Mozilla/5.0 (iPad; U; CPU OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '2011-03-06 07:59:57');
INSERT INTO `downloads` VALUES(774, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-06 09:28:32');
INSERT INTO `downloads` VALUES(775, 'system', '67.183.109.216', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-03-06 09:52:56');
INSERT INTO `downloads` VALUES(776, 'spec', '109.77.224.224', '0', '2011-03-06 12:28:54');
INSERT INTO `downloads` VALUES(777, 'spec', '66.249.71.139', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-06 12:29:05');
INSERT INTO `downloads` VALUES(778, 'spec', '109.77.224.224', '0', '2011-03-06 12:30:11');
INSERT INTO `downloads` VALUES(779, 'spec', '109.77.224.224', '0', '2011-03-06 12:34:46');
INSERT INTO `downloads` VALUES(780, 'spec', '109.77.224.224', '0', '2011-03-06 12:35:38');
INSERT INTO `downloads` VALUES(781, 'spec', '109.77.224.224', '0', '2011-03-06 12:35:47');
INSERT INTO `downloads` VALUES(782, 'spec', '109.77.224.224', '0', '2011-03-06 12:36:43');
INSERT INTO `downloads` VALUES(783, 'spec', '109.77.224.224', '0', '2011-03-06 12:36:56');
INSERT INTO `downloads` VALUES(784, 'spec', '109.77.224.224', '0', '2011-03-06 12:37:44');
INSERT INTO `downloads` VALUES(785, 'spec', '109.77.224.224', '0', '2011-03-06 12:40:14');
INSERT INTO `downloads` VALUES(786, 'spec', '68.61.180.67', '0', '2011-03-06 13:11:28');
INSERT INTO `downloads` VALUES(787, 'spec', '108.5.154.253', '0', '2011-03-06 14:09:51');
INSERT INTO `downloads` VALUES(788, 'spec', '108.5.154.253', '0', '2011-03-06 14:12:32');
INSERT INTO `downloads` VALUES(789, 'spec', '93.89.131.94', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.10) Gecko/20100914 Firefox/3.6.10 GTB7.1 ( .NET CLR 3.5.30729; .NET4.0E)', '2011-03-06 21:10:09');
INSERT INTO `downloads` VALUES(790, 'spec', '99.119.108.137', '0', '2011-03-06 21:30:40');
INSERT INTO `downloads` VALUES(791, 'spec', '79.136.116.121', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; sv-SE; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-03-06 21:37:00');
INSERT INTO `downloads` VALUES(792, 'spec', '99.119.108.137', '0', '2011-03-06 21:41:46');
INSERT INTO `downloads` VALUES(793, 'spec', '99.119.108.137', '0', '2011-03-06 21:43:38');
INSERT INTO `downloads` VALUES(794, 'spec', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-06 22:00:30');
INSERT INTO `downloads` VALUES(795, 'system', '66.249.71.12', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2011-03-06 22:13:20');
INSERT INTO `downloads` VALUES(796, 'system', '77.209.206.55', 'Java/1.6.0_20', '2011-03-06 22:14:47');
INSERT INTO `downloads` VALUES(797, 'system', '207.138.86.104', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; .NET CLR 1.0.3)', '2011-03-06 22:14:47');
INSERT INTO `downloads` VALUES(798, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-03-06 21:07:33');
INSERT INTO `downloads` VALUES(799, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-03-06 21:07:34');
INSERT INTO `downloads` VALUES(800, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-03-23 22:56:23');
INSERT INTO `downloads` VALUES(801, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-03-23 22:57:11');
INSERT INTO `downloads` VALUES(802, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-03-23 23:00:22');
INSERT INTO `downloads` VALUES(803, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-03-23 23:01:23');
INSERT INTO `downloads` VALUES(804, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-04-30 13:35:53');
INSERT INTO `downloads` VALUES(805, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-04-30 13:37:40');
INSERT INTO `downloads` VALUES(806, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-04-30 13:47:51');
INSERT INTO `downloads` VALUES(807, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-04-30 13:47:52');
INSERT INTO `downloads` VALUES(808, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-04-30 13:48:03');
INSERT INTO `downloads` VALUES(809, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-04-30 13:48:38');
INSERT INTO `downloads` VALUES(810, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-04-30 14:14:40');
INSERT INTO `downloads` VALUES(811, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-04-30 14:14:44');
INSERT INTO `downloads` VALUES(812, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-04-30 14:14:45');
INSERT INTO `downloads` VALUES(813, 'spec', '127.0.0.1', 'curl/7.19.7 (universal-apple-darwin10.0) libcurl/7.19.7 OpenSSL/0.9.8l zlib/1.2.3', '2011-04-30 14:15:08');
INSERT INTO `downloads` VALUES(814, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-04-30 15:32:39');
INSERT INTO `downloads` VALUES(815, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-04-30 16:17:35');
INSERT INTO `downloads` VALUES(816, 'spec', '127.0.0.1', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '2011-04-30 17:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `installs`
--

CREATE TABLE `installs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spark_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `spark_id` (`spark_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=761 ;

--
-- Dumping data for table `installs`
--

INSERT INTO `installs` VALUES(16, 5, '2011-02-08 03:47:29');
INSERT INTO `installs` VALUES(19, 6, '2011-02-08 21:05:43');
INSERT INTO `installs` VALUES(20, 6, '2011-02-08 21:06:14');
INSERT INTO `installs` VALUES(21, 6, '2011-02-08 21:07:32');
INSERT INTO `installs` VALUES(25, 6, '2011-02-08 23:10:47');
INSERT INTO `installs` VALUES(29, 6, '2011-02-09 14:54:54');
INSERT INTO `installs` VALUES(33, 5, '2011-02-09 14:55:02');
INSERT INTO `installs` VALUES(34, 5, '2011-02-10 02:10:51');
INSERT INTO `installs` VALUES(39, 8, '2011-02-11 03:40:27');
INSERT INTO `installs` VALUES(40, 8, '2011-02-11 03:41:17');
INSERT INTO `installs` VALUES(41, 8, '2011-02-11 08:26:48');
INSERT INTO `installs` VALUES(42, 8, '2011-02-11 14:30:30');
INSERT INTO `installs` VALUES(43, 8, '2011-02-11 14:31:00');
INSERT INTO `installs` VALUES(44, 8, '2011-02-11 14:31:18');
INSERT INTO `installs` VALUES(45, 8, '2011-02-11 14:31:28');
INSERT INTO `installs` VALUES(46, 8, '2011-02-11 14:33:10');
INSERT INTO `installs` VALUES(47, 8, '2011-02-11 18:33:04');
INSERT INTO `installs` VALUES(48, 8, '2011-02-11 18:33:17');
INSERT INTO `installs` VALUES(49, 8, '2011-02-11 23:21:41');
INSERT INTO `installs` VALUES(50, 8, '2011-02-13 20:00:15');
INSERT INTO `installs` VALUES(51, 8, '2011-02-13 20:05:47');
INSERT INTO `installs` VALUES(52, 8, '2011-02-13 21:00:29');
INSERT INTO `installs` VALUES(53, 8, '2011-02-13 22:04:05');
INSERT INTO `installs` VALUES(55, 8, '2011-02-15 02:45:53');
INSERT INTO `installs` VALUES(57, 8, '2011-02-15 02:53:37');
INSERT INTO `installs` VALUES(63, 5, '2011-02-15 03:18:01');
INSERT INTO `installs` VALUES(64, 6, '2011-02-15 03:41:48');
INSERT INTO `installs` VALUES(65, 8, '2011-02-17 04:42:59');
INSERT INTO `installs` VALUES(66, 8, '2011-02-17 04:43:04');
INSERT INTO `installs` VALUES(67, 8, '2011-02-17 04:43:49');
INSERT INTO `installs` VALUES(68, 8, '2011-02-17 04:44:47');
INSERT INTO `installs` VALUES(69, 8, '2011-02-17 04:46:24');
INSERT INTO `installs` VALUES(70, 8, '2011-02-17 04:47:43');
INSERT INTO `installs` VALUES(71, 8, '2011-02-17 04:49:52');
INSERT INTO `installs` VALUES(72, 8, '2011-02-17 04:50:28');
INSERT INTO `installs` VALUES(73, 8, '2011-02-17 04:52:34');
INSERT INTO `installs` VALUES(74, 8, '2011-02-17 04:53:09');
INSERT INTO `installs` VALUES(75, 8, '2011-02-17 04:54:05');
INSERT INTO `installs` VALUES(76, 8, '2011-02-17 04:54:15');
INSERT INTO `installs` VALUES(77, 8, '2011-02-17 04:54:54');
INSERT INTO `installs` VALUES(78, 8, '2011-02-17 04:55:27');
INSERT INTO `installs` VALUES(79, 8, '2011-02-17 04:55:39');
INSERT INTO `installs` VALUES(80, 8, '2011-02-17 04:56:43');
INSERT INTO `installs` VALUES(81, 8, '2011-02-17 04:56:52');
INSERT INTO `installs` VALUES(82, 8, '2011-02-17 05:01:35');
INSERT INTO `installs` VALUES(83, 8, '2011-02-17 05:02:29');
INSERT INTO `installs` VALUES(84, 8, '2011-02-17 05:02:40');
INSERT INTO `installs` VALUES(85, 8, '2011-02-17 05:02:50');
INSERT INTO `installs` VALUES(86, 8, '2011-02-17 05:03:34');
INSERT INTO `installs` VALUES(87, 9, '2011-02-17 05:26:05');
INSERT INTO `installs` VALUES(88, 8, '2011-02-17 06:29:38');
INSERT INTO `installs` VALUES(89, 8, '2011-02-17 06:30:51');
INSERT INTO `installs` VALUES(90, 8, '2011-02-17 07:01:59');
INSERT INTO `installs` VALUES(91, 8, '2011-02-17 07:04:01');
INSERT INTO `installs` VALUES(92, 8, '2011-02-17 07:10:51');
INSERT INTO `installs` VALUES(93, 8, '2011-02-17 07:12:56');
INSERT INTO `installs` VALUES(94, 8, '2011-02-17 07:13:24');
INSERT INTO `installs` VALUES(95, 6, '2011-02-17 07:13:59');
INSERT INTO `installs` VALUES(96, 6, '2011-02-17 07:14:07');
INSERT INTO `installs` VALUES(97, 6, '2011-02-17 07:14:16');
INSERT INTO `installs` VALUES(98, 8, '2011-02-17 07:15:05');
INSERT INTO `installs` VALUES(99, 8, '2011-02-17 07:15:27');
INSERT INTO `installs` VALUES(100, 9, '2011-02-17 07:16:04');
INSERT INTO `installs` VALUES(101, 6, '2011-02-17 07:17:28');
INSERT INTO `installs` VALUES(102, 8, '2011-02-17 07:26:41');
INSERT INTO `installs` VALUES(103, 8, '2011-02-17 07:26:57');
INSERT INTO `installs` VALUES(104, 6, '2011-02-17 07:35:22');
INSERT INTO `installs` VALUES(105, 6, '2011-02-17 07:43:03');
INSERT INTO `installs` VALUES(106, 6, '2011-02-17 07:43:19');
INSERT INTO `installs` VALUES(107, 6, '2011-02-17 07:44:46');
INSERT INTO `installs` VALUES(108, 6, '2011-02-17 07:49:39');
INSERT INTO `installs` VALUES(109, 6, '2011-02-17 13:43:46');
INSERT INTO `installs` VALUES(110, 8, '2011-02-17 18:53:00');
INSERT INTO `installs` VALUES(111, 8, '2011-02-17 18:53:16');
INSERT INTO `installs` VALUES(112, 9, '2011-02-18 02:39:56');
INSERT INTO `installs` VALUES(113, 8, '2011-02-18 02:49:20');
INSERT INTO `installs` VALUES(114, 9, '2011-02-18 07:56:58');
INSERT INTO `installs` VALUES(115, 9, '2011-02-18 17:54:58');
INSERT INTO `installs` VALUES(116, 8, '2011-02-20 01:02:17');
INSERT INTO `installs` VALUES(117, 9, '2011-02-20 01:29:37');
INSERT INTO `installs` VALUES(118, 9, '2011-02-20 01:42:03');
INSERT INTO `installs` VALUES(119, 9, '2011-02-20 01:46:29');
INSERT INTO `installs` VALUES(120, 9, '2011-02-20 01:50:50');
INSERT INTO `installs` VALUES(121, 8, '2011-02-20 02:01:57');
INSERT INTO `installs` VALUES(122, 9, '2011-02-20 02:02:03');
INSERT INTO `installs` VALUES(123, 9, '2011-02-20 02:03:03');
INSERT INTO `installs` VALUES(124, 9, '2011-02-20 02:03:06');
INSERT INTO `installs` VALUES(125, 9, '2011-02-20 02:04:33');
INSERT INTO `installs` VALUES(126, 9, '2011-02-20 02:05:23');
INSERT INTO `installs` VALUES(127, 9, '2011-02-20 02:35:56');
INSERT INTO `installs` VALUES(128, 9, '2011-02-20 02:38:16');
INSERT INTO `installs` VALUES(129, 9, '2011-02-20 02:40:34');
INSERT INTO `installs` VALUES(130, 5, '2011-02-20 15:44:57');
INSERT INTO `installs` VALUES(131, 9, '2011-02-20 21:25:53');
INSERT INTO `installs` VALUES(132, 9, '2011-02-20 21:26:23');
INSERT INTO `installs` VALUES(133, 8, '2011-02-21 01:14:52');
INSERT INTO `installs` VALUES(134, 5, '2011-02-21 13:46:06');
INSERT INTO `installs` VALUES(135, 6, '2011-02-22 06:03:37');
INSERT INTO `installs` VALUES(136, 6, '2011-02-24 05:04:32');
INSERT INTO `installs` VALUES(137, 6, '2011-02-24 05:10:44');
INSERT INTO `installs` VALUES(138, 6, '2011-02-24 05:41:28');
INSERT INTO `installs` VALUES(139, 6, '2011-02-24 05:44:20');
INSERT INTO `installs` VALUES(140, 9, '2011-02-25 15:44:35');
INSERT INTO `installs` VALUES(141, 9, '2011-02-25 15:44:42');
INSERT INTO `installs` VALUES(142, 11, '2011-02-25 23:30:54');
INSERT INTO `installs` VALUES(143, 20, '2011-02-26 03:47:17');
INSERT INTO `installs` VALUES(144, 20, '2011-02-26 04:03:42');
INSERT INTO `installs` VALUES(145, 20, '2011-02-26 04:13:27');
INSERT INTO `installs` VALUES(146, 9, '2011-02-26 04:19:58');
INSERT INTO `installs` VALUES(147, 11, '2011-02-26 05:28:28');
INSERT INTO `installs` VALUES(148, 6, '2011-02-26 17:28:29');
INSERT INTO `installs` VALUES(149, 9, '2011-02-26 17:49:11');
INSERT INTO `installs` VALUES(150, 8, '2011-02-26 17:58:02');
INSERT INTO `installs` VALUES(151, 8, '2011-02-26 17:58:25');
INSERT INTO `installs` VALUES(152, 21, '2011-02-26 19:01:24');
INSERT INTO `installs` VALUES(153, 21, '2011-02-26 19:03:27');
INSERT INTO `installs` VALUES(154, 6, '2011-02-27 03:43:49');
INSERT INTO `installs` VALUES(155, 6, '2011-02-27 03:43:51');
INSERT INTO `installs` VALUES(156, 8, '2011-02-27 04:27:05');
INSERT INTO `installs` VALUES(157, 8, '2011-02-27 04:27:09');
INSERT INTO `installs` VALUES(158, 9, '2011-02-27 05:11:56');
INSERT INTO `installs` VALUES(159, 5, '2011-02-27 06:41:37');
INSERT INTO `installs` VALUES(160, 5, '2011-02-27 06:41:39');
INSERT INTO `installs` VALUES(161, 8, '2011-02-27 22:10:01');
INSERT INTO `installs` VALUES(162, 21, '2011-02-28 07:41:25');
INSERT INTO `installs` VALUES(163, 20, '2011-02-28 07:41:30');
INSERT INTO `installs` VALUES(164, 8, '2011-02-28 14:44:16');
INSERT INTO `installs` VALUES(165, 8, '2011-02-28 14:49:16');
INSERT INTO `installs` VALUES(166, 9, '2011-02-28 15:04:17');
INSERT INTO `installs` VALUES(167, 6, '2011-02-28 15:09:18');
INSERT INTO `installs` VALUES(168, 6, '2011-02-28 15:14:18');
INSERT INTO `installs` VALUES(169, 5, '2011-02-28 17:56:54');
INSERT INTO `installs` VALUES(170, 5, '2011-02-28 18:12:47');
INSERT INTO `installs` VALUES(171, 9, '2011-02-28 19:09:47');
INSERT INTO `installs` VALUES(172, 6, '2011-02-28 19:57:14');
INSERT INTO `installs` VALUES(173, 11, '2011-02-28 20:02:12');
INSERT INTO `installs` VALUES(174, 6, '2011-02-28 20:07:19');
INSERT INTO `installs` VALUES(175, 6, '2011-02-28 20:53:36');
INSERT INTO `installs` VALUES(176, 8, '2011-02-28 20:55:59');
INSERT INTO `installs` VALUES(177, 20, '2011-02-28 21:17:41');
INSERT INTO `installs` VALUES(178, 22, '2011-02-28 21:31:19');
INSERT INTO `installs` VALUES(179, 22, '2011-02-28 21:33:09');
INSERT INTO `installs` VALUES(180, 22, '2011-02-28 21:33:40');
INSERT INTO `installs` VALUES(181, 22, '2011-02-28 21:35:17');
INSERT INTO `installs` VALUES(182, 22, '2011-02-28 21:39:02');
INSERT INTO `installs` VALUES(183, 9, '2011-02-28 21:48:28');
INSERT INTO `installs` VALUES(184, 8, '2011-02-28 21:48:44');
INSERT INTO `installs` VALUES(185, 8, '2011-02-28 21:49:00');
INSERT INTO `installs` VALUES(186, 6, '2011-02-28 21:49:33');
INSERT INTO `installs` VALUES(187, 11, '2011-02-28 23:06:01');
INSERT INTO `installs` VALUES(188, 11, '2011-02-28 23:06:04');
INSERT INTO `installs` VALUES(189, 20, '2011-02-28 23:07:33');
INSERT INTO `installs` VALUES(190, 11, '2011-02-28 23:12:37');
INSERT INTO `installs` VALUES(191, 21, '2011-02-28 23:22:44');
INSERT INTO `installs` VALUES(192, 22, '2011-02-28 23:57:42');
INSERT INTO `installs` VALUES(193, 23, '2011-03-01 00:11:38');
INSERT INTO `installs` VALUES(194, 11, '2011-03-01 00:13:50');
INSERT INTO `installs` VALUES(195, 23, '2011-03-01 00:14:59');
INSERT INTO `installs` VALUES(196, 23, '2011-03-01 00:29:28');
INSERT INTO `installs` VALUES(197, 23, '2011-03-01 00:48:57');
INSERT INTO `installs` VALUES(198, 8, '2011-03-01 00:58:04');
INSERT INTO `installs` VALUES(199, 5, '2011-03-01 01:02:51');
INSERT INTO `installs` VALUES(200, 9, '2011-03-01 01:38:10');
INSERT INTO `installs` VALUES(201, 9, '2011-03-01 02:01:44');
INSERT INTO `installs` VALUES(202, 27, '2011-03-01 02:02:15');
INSERT INTO `installs` VALUES(203, 23, '2011-03-01 02:05:41');
INSERT INTO `installs` VALUES(204, 22, '2011-03-01 02:18:34');
INSERT INTO `installs` VALUES(205, 27, '2011-03-01 02:20:43');
INSERT INTO `installs` VALUES(206, 25, '2011-03-01 02:38:37');
INSERT INTO `installs` VALUES(207, 27, '2011-03-01 02:38:54');
INSERT INTO `installs` VALUES(208, 11, '2011-03-01 02:41:08');
INSERT INTO `installs` VALUES(209, 11, '2011-03-01 02:41:23');
INSERT INTO `installs` VALUES(210, 24, '2011-03-01 02:52:23');
INSERT INTO `installs` VALUES(211, 24, '2011-03-01 02:54:12');
INSERT INTO `installs` VALUES(212, 24, '2011-03-01 02:54:48');
INSERT INTO `installs` VALUES(213, 24, '2011-03-01 03:01:46');
INSERT INTO `installs` VALUES(214, 25, '2011-03-01 03:12:14');
INSERT INTO `installs` VALUES(215, 9, '2011-03-01 03:12:20');
INSERT INTO `installs` VALUES(216, 24, '2011-03-01 03:23:11');
INSERT INTO `installs` VALUES(217, 24, '2011-03-01 03:36:37');
INSERT INTO `installs` VALUES(218, 25, '2011-03-01 03:37:01');
INSERT INTO `installs` VALUES(219, 23, '2011-03-01 03:37:24');
INSERT INTO `installs` VALUES(220, 24, '2011-03-01 03:38:55');
INSERT INTO `installs` VALUES(221, 22, '2011-03-01 03:39:30');
INSERT INTO `installs` VALUES(222, 23, '2011-03-01 03:39:32');
INSERT INTO `installs` VALUES(223, 22, '2011-03-01 04:00:39');
INSERT INTO `installs` VALUES(224, 9, '2011-03-01 04:23:04');
INSERT INTO `installs` VALUES(225, 24, '2011-03-01 04:57:57');
INSERT INTO `installs` VALUES(226, 24, '2011-03-01 05:06:06');
INSERT INTO `installs` VALUES(227, 24, '2011-03-01 05:06:51');
INSERT INTO `installs` VALUES(228, 24, '2011-03-01 05:07:01');
INSERT INTO `installs` VALUES(229, 23, '2011-03-01 05:16:05');
INSERT INTO `installs` VALUES(230, 25, '2011-03-01 05:37:54');
INSERT INTO `installs` VALUES(231, 24, '2011-03-01 05:37:56');
INSERT INTO `installs` VALUES(232, 27, '2011-03-01 06:09:43');
INSERT INTO `installs` VALUES(233, 23, '2011-03-01 06:39:25');
INSERT INTO `installs` VALUES(234, 23, '2011-03-01 06:58:07');
INSERT INTO `installs` VALUES(235, 23, '2011-03-01 07:14:39');
INSERT INTO `installs` VALUES(236, 9, '2011-03-01 07:35:37');
INSERT INTO `installs` VALUES(237, 9, '2011-03-01 07:36:10');
INSERT INTO `installs` VALUES(238, 9, '2011-03-01 07:36:56');
INSERT INTO `installs` VALUES(239, 9, '2011-03-01 07:37:22');
INSERT INTO `installs` VALUES(240, 22, '2011-03-01 07:37:54');
INSERT INTO `installs` VALUES(241, 27, '2011-03-01 07:38:45');
INSERT INTO `installs` VALUES(242, 26, '2011-03-01 07:38:46');
INSERT INTO `installs` VALUES(243, 27, '2011-03-01 08:59:38');
INSERT INTO `installs` VALUES(244, 25, '2011-03-01 09:00:48');
INSERT INTO `installs` VALUES(245, 22, '2011-03-01 09:07:09');
INSERT INTO `installs` VALUES(246, 26, '2011-03-01 09:21:58');
INSERT INTO `installs` VALUES(247, 24, '2011-03-01 09:25:37');
INSERT INTO `installs` VALUES(248, 25, '2011-03-01 09:26:12');
INSERT INTO `installs` VALUES(249, 24, '2011-03-01 09:27:23');
INSERT INTO `installs` VALUES(250, 23, '2011-03-01 09:33:32');
INSERT INTO `installs` VALUES(251, 26, '2011-03-01 10:49:10');
INSERT INTO `installs` VALUES(252, 26, '2011-03-01 10:59:18');
INSERT INTO `installs` VALUES(253, 21, '2011-03-01 11:12:40');
INSERT INTO `installs` VALUES(254, 24, '2011-03-01 11:12:41');
INSERT INTO `installs` VALUES(255, 9, '2011-03-01 11:17:17');
INSERT INTO `installs` VALUES(256, 23, '2011-03-01 11:18:13');
INSERT INTO `installs` VALUES(257, 23, '2011-03-01 11:20:52');
INSERT INTO `installs` VALUES(258, 9, '2011-03-01 11:42:58');
INSERT INTO `installs` VALUES(259, 23, '2011-03-01 11:50:25');
INSERT INTO `installs` VALUES(260, 23, '2011-03-01 11:56:04');
INSERT INTO `installs` VALUES(261, 20, '2011-03-01 12:08:39');
INSERT INTO `installs` VALUES(262, 26, '2011-03-01 12:29:39');
INSERT INTO `installs` VALUES(263, 22, '2011-03-01 12:40:45');
INSERT INTO `installs` VALUES(264, 6, '2011-03-01 13:54:02');
INSERT INTO `installs` VALUES(265, 9, '2011-03-01 14:16:36');
INSERT INTO `installs` VALUES(266, 25, '2011-03-01 14:44:32');
INSERT INTO `installs` VALUES(267, 25, '2011-03-01 15:14:48');
INSERT INTO `installs` VALUES(268, 9, '2011-03-01 15:30:58');
INSERT INTO `installs` VALUES(269, 6, '2011-03-01 16:01:07');
INSERT INTO `installs` VALUES(270, 23, '2011-03-01 16:11:23');
INSERT INTO `installs` VALUES(271, 23, '2011-03-01 16:25:25');
INSERT INTO `installs` VALUES(272, 9, '2011-03-01 16:28:25');
INSERT INTO `installs` VALUES(273, 6, '2011-03-01 16:44:16');
INSERT INTO `installs` VALUES(274, 6, '2011-03-01 16:45:04');
INSERT INTO `installs` VALUES(275, 5, '2011-03-01 16:46:18');
INSERT INTO `installs` VALUES(276, 28, '2011-03-01 16:51:09');
INSERT INTO `installs` VALUES(277, 5, '2011-03-01 16:56:40');
INSERT INTO `installs` VALUES(278, 5, '2011-03-01 16:57:09');
INSERT INTO `installs` VALUES(279, 8, '2011-03-01 16:59:12');
INSERT INTO `installs` VALUES(280, 9, '2011-03-01 16:59:45');
INSERT INTO `installs` VALUES(281, 5, '2011-03-01 17:00:03');
INSERT INTO `installs` VALUES(282, 8, '2011-03-01 17:05:51');
INSERT INTO `installs` VALUES(283, 8, '2011-03-01 17:06:11');
INSERT INTO `installs` VALUES(284, 8, '2011-03-01 17:09:33');
INSERT INTO `installs` VALUES(285, 25, '2011-03-01 17:16:37');
INSERT INTO `installs` VALUES(286, 25, '2011-03-01 17:53:07');
INSERT INTO `installs` VALUES(287, 11, '2011-03-01 18:37:13');
INSERT INTO `installs` VALUES(288, 25, '2011-03-01 18:45:49');
INSERT INTO `installs` VALUES(289, 24, '2011-03-01 19:28:05');
INSERT INTO `installs` VALUES(290, 25, '2011-03-01 19:28:43');
INSERT INTO `installs` VALUES(291, 24, '2011-03-01 19:55:47');
INSERT INTO `installs` VALUES(292, 24, '2011-03-01 19:56:19');
INSERT INTO `installs` VALUES(293, 24, '2011-03-01 19:58:30');
INSERT INTO `installs` VALUES(294, 27, '2011-03-01 20:09:40');
INSERT INTO `installs` VALUES(295, 9, '2011-03-01 20:13:55');
INSERT INTO `installs` VALUES(296, 21, '2011-03-01 20:27:27');
INSERT INTO `installs` VALUES(297, 20, '2011-03-01 20:28:42');
INSERT INTO `installs` VALUES(298, 17, '2011-03-01 21:24:23');
INSERT INTO `installs` VALUES(299, 9, '2011-03-01 21:55:46');
INSERT INTO `installs` VALUES(300, 17, '2011-03-01 21:57:20');
INSERT INTO `installs` VALUES(301, 5, '2011-03-01 21:58:01');
INSERT INTO `installs` VALUES(302, 6, '2011-03-01 21:58:11');
INSERT INTO `installs` VALUES(303, 26, '2011-03-01 21:58:25');
INSERT INTO `installs` VALUES(304, 28, '2011-03-01 22:23:23');
INSERT INTO `installs` VALUES(305, 6, '2011-03-02 00:08:03');
INSERT INTO `installs` VALUES(306, 6, '2011-03-02 00:08:03');
INSERT INTO `installs` VALUES(307, 11, '2011-03-02 00:23:33');
INSERT INTO `installs` VALUES(308, 9, '2011-03-02 02:10:47');
INSERT INTO `installs` VALUES(309, 24, '2011-03-02 02:20:29');
INSERT INTO `installs` VALUES(310, 24, '2011-03-02 02:22:15');
INSERT INTO `installs` VALUES(311, 24, '2011-03-02 03:45:31');
INSERT INTO `installs` VALUES(312, 28, '2011-03-02 04:41:46');
INSERT INTO `installs` VALUES(313, 25, '2011-03-02 07:26:48');
INSERT INTO `installs` VALUES(314, 27, '2011-03-02 07:27:20');
INSERT INTO `installs` VALUES(315, 8, '2011-03-02 07:28:20');
INSERT INTO `installs` VALUES(316, 24, '2011-03-02 07:28:52');
INSERT INTO `installs` VALUES(317, 23, '2011-03-02 07:29:24');
INSERT INTO `installs` VALUES(318, 20, '2011-03-02 07:30:55');
INSERT INTO `installs` VALUES(319, 22, '2011-03-02 07:31:46');
INSERT INTO `installs` VALUES(320, 5, '2011-03-02 07:32:14');
INSERT INTO `installs` VALUES(321, 11, '2011-03-02 07:32:43');
INSERT INTO `installs` VALUES(322, 8, '2011-03-02 07:43:14');
INSERT INTO `installs` VALUES(323, 11, '2011-03-02 07:46:49');
INSERT INTO `installs` VALUES(324, 5, '2011-03-02 07:48:09');
INSERT INTO `installs` VALUES(325, 9, '2011-03-02 07:50:54');
INSERT INTO `installs` VALUES(326, 6, '2011-03-02 07:52:20');
INSERT INTO `installs` VALUES(327, 6, '2011-03-02 07:53:53');
INSERT INTO `installs` VALUES(328, 21, '2011-03-02 07:58:48');
INSERT INTO `installs` VALUES(329, 26, '2011-03-02 09:53:50');
INSERT INTO `installs` VALUES(330, 28, '2011-03-02 09:59:52');
INSERT INTO `installs` VALUES(331, 28, '2011-03-02 10:24:43');
INSERT INTO `installs` VALUES(332, 25, '2011-03-02 10:30:49');
INSERT INTO `installs` VALUES(333, 28, '2011-03-02 10:39:08');
INSERT INTO `installs` VALUES(334, 23, '2011-03-02 11:07:34');
INSERT INTO `installs` VALUES(335, 24, '2011-03-02 11:25:28');
INSERT INTO `installs` VALUES(336, 26, '2011-03-02 11:53:19');
INSERT INTO `installs` VALUES(337, 24, '2011-03-02 12:13:37');
INSERT INTO `installs` VALUES(338, 11, '2011-03-02 12:36:03');
INSERT INTO `installs` VALUES(339, 11, '2011-03-02 12:36:08');
INSERT INTO `installs` VALUES(340, 6, '2011-03-02 12:40:29');
INSERT INTO `installs` VALUES(341, 27, '2011-03-02 14:04:39');
INSERT INTO `installs` VALUES(342, 9, '2011-03-02 14:05:36');
INSERT INTO `installs` VALUES(343, 23, '2011-03-02 14:10:29');
INSERT INTO `installs` VALUES(344, 9, '2011-03-02 15:42:16');
INSERT INTO `installs` VALUES(345, 9, '2011-03-02 16:05:17');
INSERT INTO `installs` VALUES(346, 17, '2011-03-02 16:06:38');
INSERT INTO `installs` VALUES(347, 30, '2011-03-02 16:15:34');
INSERT INTO `installs` VALUES(348, 28, '2011-03-02 16:18:40');
INSERT INTO `installs` VALUES(349, 27, '2011-03-02 16:21:39');
INSERT INTO `installs` VALUES(350, 30, '2011-03-02 16:33:34');
INSERT INTO `installs` VALUES(351, 22, '2011-03-02 16:41:36');
INSERT INTO `installs` VALUES(352, 29, '2011-03-02 17:01:57');
INSERT INTO `installs` VALUES(353, 29, '2011-03-02 17:03:02');
INSERT INTO `installs` VALUES(354, 26, '2011-03-02 17:10:29');
INSERT INTO `installs` VALUES(355, 9, '2011-03-02 17:14:44');
INSERT INTO `installs` VALUES(356, 29, '2011-03-02 17:15:33');
INSERT INTO `installs` VALUES(357, 25, '2011-03-02 17:16:20');
INSERT INTO `installs` VALUES(358, 29, '2011-03-02 17:47:37');
INSERT INTO `installs` VALUES(359, 9, '2011-03-02 18:04:33');
INSERT INTO `installs` VALUES(360, 23, '2011-03-02 18:05:25');
INSERT INTO `installs` VALUES(361, 25, '2011-03-02 18:07:59');
INSERT INTO `installs` VALUES(362, 24, '2011-03-02 18:12:44');
INSERT INTO `installs` VALUES(363, 29, '2011-03-02 19:00:16');
INSERT INTO `installs` VALUES(364, 29, '2011-03-02 19:00:58');
INSERT INTO `installs` VALUES(365, 30, '2011-03-02 19:59:09');
INSERT INTO `installs` VALUES(366, 9, '2011-03-02 20:10:00');
INSERT INTO `installs` VALUES(367, 25, '2011-03-02 20:10:01');
INSERT INTO `installs` VALUES(368, 9, '2011-03-02 20:10:30');
INSERT INTO `installs` VALUES(369, 25, '2011-03-02 20:10:30');
INSERT INTO `installs` VALUES(370, 6, '2011-03-02 20:10:31');
INSERT INTO `installs` VALUES(371, 9, '2011-03-02 20:12:03');
INSERT INTO `installs` VALUES(372, 25, '2011-03-02 20:12:04');
INSERT INTO `installs` VALUES(373, 6, '2011-03-02 20:12:04');
INSERT INTO `installs` VALUES(374, 5, '2011-03-02 20:12:06');
INSERT INTO `installs` VALUES(375, 25, '2011-03-02 20:40:42');
INSERT INTO `installs` VALUES(376, 5, '2011-03-02 21:20:38');
INSERT INTO `installs` VALUES(377, 25, '2011-03-02 21:30:45');
INSERT INTO `installs` VALUES(378, 9, '2011-03-02 21:51:58');
INSERT INTO `installs` VALUES(379, 24, '2011-03-02 21:52:58');
INSERT INTO `installs` VALUES(380, 9, '2011-03-02 22:02:43');
INSERT INTO `installs` VALUES(381, 23, '2011-03-02 22:43:17');
INSERT INTO `installs` VALUES(382, 21, '2011-03-02 22:52:04');
INSERT INTO `installs` VALUES(383, 28, '2011-03-02 23:01:18');
INSERT INTO `installs` VALUES(384, 24, '2011-03-02 23:24:00');
INSERT INTO `installs` VALUES(385, 9, '2011-03-03 04:20:09');
INSERT INTO `installs` VALUES(386, 23, '2011-03-03 04:22:41');
INSERT INTO `installs` VALUES(387, 6, '2011-03-03 09:31:07');
INSERT INTO `installs` VALUES(388, 9, '2011-03-03 09:47:53');
INSERT INTO `installs` VALUES(389, 9, '2011-03-03 10:06:00');
INSERT INTO `installs` VALUES(390, 9, '2011-03-03 10:15:19');
INSERT INTO `installs` VALUES(391, 9, '2011-03-03 10:16:56');
INSERT INTO `installs` VALUES(392, 30, '2011-03-03 11:14:06');
INSERT INTO `installs` VALUES(393, 29, '2011-03-03 13:00:00');
INSERT INTO `installs` VALUES(394, 11, '2011-03-03 15:40:48');
INSERT INTO `installs` VALUES(395, 24, '2011-03-03 16:49:49');
INSERT INTO `installs` VALUES(396, 32, '2011-03-03 17:03:41');
INSERT INTO `installs` VALUES(397, 9, '2011-03-03 18:17:35');
INSERT INTO `installs` VALUES(398, 9, '2011-03-03 18:18:11');
INSERT INTO `installs` VALUES(399, 9, '2011-03-03 18:18:44');
INSERT INTO `installs` VALUES(400, 9, '2011-03-03 18:26:42');
INSERT INTO `installs` VALUES(401, 22, '2011-03-03 18:37:39');
INSERT INTO `installs` VALUES(402, 9, '2011-03-03 18:37:50');
INSERT INTO `installs` VALUES(403, 9, '2011-03-03 18:41:15');
INSERT INTO `installs` VALUES(404, 23, '2011-03-03 18:52:45');
INSERT INTO `installs` VALUES(405, 23, '2011-03-03 18:56:24');
INSERT INTO `installs` VALUES(406, 25, '2011-03-03 19:21:40');
INSERT INTO `installs` VALUES(407, 24, '2011-03-03 20:28:10');
INSERT INTO `installs` VALUES(408, 9, '2011-03-03 20:32:20');
INSERT INTO `installs` VALUES(409, 25, '2011-03-03 20:42:03');
INSERT INTO `installs` VALUES(410, 17, '2011-03-03 20:45:20');
INSERT INTO `installs` VALUES(411, 6, '2011-03-03 22:24:28');
INSERT INTO `installs` VALUES(412, 32, '2011-03-03 22:41:16');
INSERT INTO `installs` VALUES(413, 23, '2011-03-03 23:00:42');
INSERT INTO `installs` VALUES(414, 6, '2011-03-03 23:03:00');
INSERT INTO `installs` VALUES(415, 9, '2011-03-03 23:10:42');
INSERT INTO `installs` VALUES(416, 25, '2011-03-03 23:11:41');
INSERT INTO `installs` VALUES(417, 25, '2011-03-03 23:12:05');
INSERT INTO `installs` VALUES(418, 32, '2011-03-03 23:13:24');
INSERT INTO `installs` VALUES(419, 23, '2011-03-03 23:16:16');
INSERT INTO `installs` VALUES(420, 5, '2011-03-03 23:16:37');
INSERT INTO `installs` VALUES(421, 5, '2011-03-03 23:16:41');
INSERT INTO `installs` VALUES(422, 5, '2011-03-03 23:51:56');
INSERT INTO `installs` VALUES(423, 5, '2011-03-04 00:07:45');
INSERT INTO `installs` VALUES(424, 25, '2011-03-04 00:12:40');
INSERT INTO `installs` VALUES(425, 6, '2011-03-04 00:29:14');
INSERT INTO `installs` VALUES(426, 25, '2011-03-04 01:46:47');
INSERT INTO `installs` VALUES(427, 8, '2011-03-04 02:02:10');
INSERT INTO `installs` VALUES(428, 25, '2011-03-04 02:10:23');
INSERT INTO `installs` VALUES(429, 27, '2011-03-04 02:10:54');
INSERT INTO `installs` VALUES(430, 27, '2011-03-04 02:11:37');
INSERT INTO `installs` VALUES(431, 9, '2011-03-04 02:13:41');
INSERT INTO `installs` VALUES(432, 27, '2011-03-04 02:27:35');
INSERT INTO `installs` VALUES(433, 27, '2011-03-04 02:27:54');
INSERT INTO `installs` VALUES(434, 27, '2011-03-04 02:28:12');
INSERT INTO `installs` VALUES(435, 32, '2011-03-04 02:35:57');
INSERT INTO `installs` VALUES(436, 33, '2011-03-04 02:36:25');
INSERT INTO `installs` VALUES(437, 25, '2011-03-04 02:37:55');
INSERT INTO `installs` VALUES(438, 8, '2011-03-04 02:39:11');
INSERT INTO `installs` VALUES(439, 28, '2011-03-04 02:39:31');
INSERT INTO `installs` VALUES(440, 22, '2011-03-04 02:40:02');
INSERT INTO `installs` VALUES(441, 6, '2011-03-04 02:40:24');
INSERT INTO `installs` VALUES(442, 9, '2011-03-04 02:41:02');
INSERT INTO `installs` VALUES(443, 9, '2011-03-04 02:41:23');
INSERT INTO `installs` VALUES(444, 9, '2011-03-04 02:43:29');
INSERT INTO `installs` VALUES(445, 17, '2011-03-04 02:44:37');
INSERT INTO `installs` VALUES(446, 9, '2011-03-04 02:46:44');
INSERT INTO `installs` VALUES(447, 9, '2011-03-04 02:47:05');
INSERT INTO `installs` VALUES(448, 9, '2011-03-04 02:47:48');
INSERT INTO `installs` VALUES(449, 9, '2011-03-04 02:48:09');
INSERT INTO `installs` VALUES(450, 9, '2011-03-04 02:48:57');
INSERT INTO `installs` VALUES(451, 9, '2011-03-04 02:48:58');
INSERT INTO `installs` VALUES(452, 9, '2011-03-04 02:51:15');
INSERT INTO `installs` VALUES(453, 9, '2011-03-04 02:51:16');
INSERT INTO `installs` VALUES(454, 9, '2011-03-04 02:52:03');
INSERT INTO `installs` VALUES(455, 9, '2011-03-04 02:52:04');
INSERT INTO `installs` VALUES(456, 9, '2011-03-04 02:52:05');
INSERT INTO `installs` VALUES(457, 9, '2011-03-04 02:56:53');
INSERT INTO `installs` VALUES(458, 9, '2011-03-04 02:57:20');
INSERT INTO `installs` VALUES(459, 9, '2011-03-04 02:59:41');
INSERT INTO `installs` VALUES(460, 9, '2011-03-04 02:59:41');
INSERT INTO `installs` VALUES(461, 9, '2011-03-04 02:59:43');
INSERT INTO `installs` VALUES(462, 9, '2011-03-04 02:59:44');
INSERT INTO `installs` VALUES(463, 9, '2011-03-04 02:59:44');
INSERT INTO `installs` VALUES(464, 9, '2011-03-04 03:00:45');
INSERT INTO `installs` VALUES(465, 9, '2011-03-04 03:00:46');
INSERT INTO `installs` VALUES(466, 9, '2011-03-04 03:00:47');
INSERT INTO `installs` VALUES(467, 9, '2011-03-04 03:00:48');
INSERT INTO `installs` VALUES(468, 9, '2011-03-04 03:00:49');
INSERT INTO `installs` VALUES(469, 9, '2011-03-04 03:00:49');
INSERT INTO `installs` VALUES(470, 9, '2011-03-04 03:01:23');
INSERT INTO `installs` VALUES(471, 9, '2011-03-04 03:01:25');
INSERT INTO `installs` VALUES(472, 9, '2011-03-04 03:01:26');
INSERT INTO `installs` VALUES(473, 9, '2011-03-04 03:01:27');
INSERT INTO `installs` VALUES(474, 9, '2011-03-04 03:01:28');
INSERT INTO `installs` VALUES(475, 9, '2011-03-04 03:01:28');
INSERT INTO `installs` VALUES(476, 9, '2011-03-04 03:05:12');
INSERT INTO `installs` VALUES(477, 9, '2011-03-04 03:05:13');
INSERT INTO `installs` VALUES(478, 9, '2011-03-04 03:05:15');
INSERT INTO `installs` VALUES(479, 9, '2011-03-04 03:05:15');
INSERT INTO `installs` VALUES(480, 9, '2011-03-04 03:05:16');
INSERT INTO `installs` VALUES(481, 9, '2011-03-04 03:05:17');
INSERT INTO `installs` VALUES(482, 9, '2011-03-04 03:07:23');
INSERT INTO `installs` VALUES(483, 9, '2011-03-04 03:07:24');
INSERT INTO `installs` VALUES(484, 9, '2011-03-04 03:07:25');
INSERT INTO `installs` VALUES(485, 9, '2011-03-04 03:07:26');
INSERT INTO `installs` VALUES(486, 9, '2011-03-04 03:07:27');
INSERT INTO `installs` VALUES(487, 9, '2011-03-04 03:07:28');
INSERT INTO `installs` VALUES(488, 8, '2011-03-04 03:12:05');
INSERT INTO `installs` VALUES(489, 9, '2011-03-04 03:28:54');
INSERT INTO `installs` VALUES(490, 9, '2011-03-04 03:28:55');
INSERT INTO `installs` VALUES(491, 9, '2011-03-04 03:28:57');
INSERT INTO `installs` VALUES(492, 9, '2011-03-04 03:28:58');
INSERT INTO `installs` VALUES(493, 9, '2011-03-04 03:28:59');
INSERT INTO `installs` VALUES(494, 9, '2011-03-04 03:28:59');
INSERT INTO `installs` VALUES(495, 9, '2011-03-04 03:29:00');
INSERT INTO `installs` VALUES(496, 9, '2011-03-04 03:29:01');
INSERT INTO `installs` VALUES(497, 9, '2011-03-04 03:29:02');
INSERT INTO `installs` VALUES(498, 9, '2011-03-04 03:29:03');
INSERT INTO `installs` VALUES(499, 9, '2011-03-04 03:29:05');
INSERT INTO `installs` VALUES(500, 9, '2011-03-04 03:29:06');
INSERT INTO `installs` VALUES(501, 9, '2011-03-04 03:29:07');
INSERT INTO `installs` VALUES(502, 9, '2011-03-04 03:29:08');
INSERT INTO `installs` VALUES(503, 9, '2011-03-04 03:29:09');
INSERT INTO `installs` VALUES(504, 9, '2011-03-04 03:29:10');
INSERT INTO `installs` VALUES(505, 9, '2011-03-04 03:30:20');
INSERT INTO `installs` VALUES(506, 9, '2011-03-04 03:30:21');
INSERT INTO `installs` VALUES(507, 9, '2011-03-04 03:30:22');
INSERT INTO `installs` VALUES(508, 9, '2011-03-04 03:30:23');
INSERT INTO `installs` VALUES(509, 9, '2011-03-04 03:30:24');
INSERT INTO `installs` VALUES(510, 9, '2011-03-04 03:30:25');
INSERT INTO `installs` VALUES(511, 9, '2011-03-04 03:30:26');
INSERT INTO `installs` VALUES(512, 9, '2011-03-04 03:30:27');
INSERT INTO `installs` VALUES(513, 9, '2011-03-04 03:30:28');
INSERT INTO `installs` VALUES(514, 9, '2011-03-04 03:30:29');
INSERT INTO `installs` VALUES(515, 9, '2011-03-04 03:30:30');
INSERT INTO `installs` VALUES(516, 9, '2011-03-04 03:30:32');
INSERT INTO `installs` VALUES(517, 9, '2011-03-04 03:30:33');
INSERT INTO `installs` VALUES(518, 9, '2011-03-04 03:30:34');
INSERT INTO `installs` VALUES(519, 9, '2011-03-04 03:30:36');
INSERT INTO `installs` VALUES(520, 9, '2011-03-04 03:30:36');
INSERT INTO `installs` VALUES(521, 9, '2011-03-04 03:30:41');
INSERT INTO `installs` VALUES(522, 9, '2011-03-04 03:30:43');
INSERT INTO `installs` VALUES(523, 9, '2011-03-04 03:30:44');
INSERT INTO `installs` VALUES(524, 9, '2011-03-04 03:30:45');
INSERT INTO `installs` VALUES(525, 9, '2011-03-04 03:30:46');
INSERT INTO `installs` VALUES(526, 9, '2011-03-04 03:30:46');
INSERT INTO `installs` VALUES(527, 9, '2011-03-04 03:30:47');
INSERT INTO `installs` VALUES(528, 9, '2011-03-04 03:30:48');
INSERT INTO `installs` VALUES(529, 9, '2011-03-04 03:30:49');
INSERT INTO `installs` VALUES(530, 9, '2011-03-04 03:30:51');
INSERT INTO `installs` VALUES(531, 9, '2011-03-04 03:30:52');
INSERT INTO `installs` VALUES(532, 9, '2011-03-04 03:30:53');
INSERT INTO `installs` VALUES(533, 9, '2011-03-04 03:30:54');
INSERT INTO `installs` VALUES(534, 9, '2011-03-04 03:30:55');
INSERT INTO `installs` VALUES(535, 9, '2011-03-04 03:30:56');
INSERT INTO `installs` VALUES(536, 9, '2011-03-04 03:30:56');
INSERT INTO `installs` VALUES(537, 9, '2011-03-04 03:31:52');
INSERT INTO `installs` VALUES(538, 9, '2011-03-04 03:31:52');
INSERT INTO `installs` VALUES(539, 9, '2011-03-04 03:31:53');
INSERT INTO `installs` VALUES(540, 9, '2011-03-04 03:31:54');
INSERT INTO `installs` VALUES(541, 9, '2011-03-04 03:31:55');
INSERT INTO `installs` VALUES(542, 9, '2011-03-04 03:31:55');
INSERT INTO `installs` VALUES(543, 9, '2011-03-04 03:31:56');
INSERT INTO `installs` VALUES(544, 9, '2011-03-04 03:31:57');
INSERT INTO `installs` VALUES(545, 9, '2011-03-04 03:31:58');
INSERT INTO `installs` VALUES(546, 9, '2011-03-04 03:31:59');
INSERT INTO `installs` VALUES(547, 9, '2011-03-04 03:32:00');
INSERT INTO `installs` VALUES(548, 9, '2011-03-04 03:32:01');
INSERT INTO `installs` VALUES(549, 9, '2011-03-04 03:32:02');
INSERT INTO `installs` VALUES(550, 9, '2011-03-04 03:32:03');
INSERT INTO `installs` VALUES(551, 9, '2011-03-04 03:32:04');
INSERT INTO `installs` VALUES(552, 9, '2011-03-04 03:32:04');
INSERT INTO `installs` VALUES(553, 24, '2011-03-04 03:32:12');
INSERT INTO `installs` VALUES(554, 9, '2011-03-04 03:34:44');
INSERT INTO `installs` VALUES(555, 9, '2011-03-04 03:34:45');
INSERT INTO `installs` VALUES(556, 9, '2011-03-04 03:34:47');
INSERT INTO `installs` VALUES(557, 9, '2011-03-04 03:34:48');
INSERT INTO `installs` VALUES(558, 9, '2011-03-04 03:34:49');
INSERT INTO `installs` VALUES(559, 9, '2011-03-04 03:34:49');
INSERT INTO `installs` VALUES(560, 9, '2011-03-04 03:34:50');
INSERT INTO `installs` VALUES(561, 9, '2011-03-04 03:34:51');
INSERT INTO `installs` VALUES(562, 9, '2011-03-04 03:34:52');
INSERT INTO `installs` VALUES(563, 9, '2011-03-04 03:34:53');
INSERT INTO `installs` VALUES(564, 9, '2011-03-04 03:34:54');
INSERT INTO `installs` VALUES(565, 9, '2011-03-04 03:34:55');
INSERT INTO `installs` VALUES(566, 9, '2011-03-04 03:34:57');
INSERT INTO `installs` VALUES(567, 9, '2011-03-04 03:34:57');
INSERT INTO `installs` VALUES(568, 9, '2011-03-04 03:34:58');
INSERT INTO `installs` VALUES(569, 9, '2011-03-04 03:34:59');
INSERT INTO `installs` VALUES(570, 9, '2011-03-04 03:39:46');
INSERT INTO `installs` VALUES(571, 9, '2011-03-04 03:39:47');
INSERT INTO `installs` VALUES(572, 9, '2011-03-04 03:39:48');
INSERT INTO `installs` VALUES(573, 9, '2011-03-04 03:39:49');
INSERT INTO `installs` VALUES(574, 9, '2011-03-04 03:41:20');
INSERT INTO `installs` VALUES(575, 9, '2011-03-04 03:41:59');
INSERT INTO `installs` VALUES(576, 9, '2011-03-04 03:42:16');
INSERT INTO `installs` VALUES(577, 9, '2011-03-04 03:42:17');
INSERT INTO `installs` VALUES(578, 9, '2011-03-04 03:42:18');
INSERT INTO `installs` VALUES(579, 9, '2011-03-04 03:42:19');
INSERT INTO `installs` VALUES(580, 9, '2011-03-04 03:42:20');
INSERT INTO `installs` VALUES(581, 9, '2011-03-04 03:42:21');
INSERT INTO `installs` VALUES(582, 9, '2011-03-04 03:43:11');
INSERT INTO `installs` VALUES(583, 9, '2011-03-04 03:43:12');
INSERT INTO `installs` VALUES(584, 9, '2011-03-04 03:43:13');
INSERT INTO `installs` VALUES(585, 9, '2011-03-04 03:43:14');
INSERT INTO `installs` VALUES(586, 9, '2011-03-04 03:43:16');
INSERT INTO `installs` VALUES(587, 9, '2011-03-04 03:43:17');
INSERT INTO `installs` VALUES(588, 23, '2011-03-04 03:46:06');
INSERT INTO `installs` VALUES(589, 23, '2011-03-04 03:50:45');
INSERT INTO `installs` VALUES(590, 24, '2011-03-04 03:52:31');
INSERT INTO `installs` VALUES(591, 25, '2011-03-04 03:53:49');
INSERT INTO `installs` VALUES(592, 29, '2011-03-04 03:59:20');
INSERT INTO `installs` VALUES(593, 8, '2011-03-04 04:19:17');
INSERT INTO `installs` VALUES(594, 32, '2011-03-04 04:35:09');
INSERT INTO `installs` VALUES(595, 6, '2011-03-04 04:59:04');
INSERT INTO `installs` VALUES(596, 6, '2011-03-04 05:02:56');
INSERT INTO `installs` VALUES(597, 6, '2011-03-04 06:11:48');
INSERT INTO `installs` VALUES(598, 28, '2011-03-04 06:12:28');
INSERT INTO `installs` VALUES(599, 22, '2011-03-04 08:32:38');
INSERT INTO `installs` VALUES(600, 9, '2011-03-04 08:33:44');
INSERT INTO `installs` VALUES(601, 9, '2011-03-04 09:28:20');
INSERT INTO `installs` VALUES(602, 9, '2011-03-04 09:33:38');
INSERT INTO `installs` VALUES(603, 32, '2011-03-04 09:33:56');
INSERT INTO `installs` VALUES(604, 32, '2011-03-04 09:58:06');
INSERT INTO `installs` VALUES(605, 32, '2011-03-04 10:21:47');
INSERT INTO `installs` VALUES(606, 17, '2011-03-04 10:45:20');
INSERT INTO `installs` VALUES(607, 32, '2011-03-04 11:01:41');
INSERT INTO `installs` VALUES(608, 23, '2011-03-04 11:02:51');
INSERT INTO `installs` VALUES(609, 22, '2011-03-04 11:04:04');
INSERT INTO `installs` VALUES(610, 17, '2011-03-04 14:24:37');
INSERT INTO `installs` VALUES(611, 9, '2011-03-04 14:56:23');
INSERT INTO `installs` VALUES(612, 22, '2011-03-04 14:57:14');
INSERT INTO `installs` VALUES(613, 6, '2011-03-04 15:01:13');
INSERT INTO `installs` VALUES(614, 32, '2011-03-04 16:44:53');
INSERT INTO `installs` VALUES(615, 32, '2011-03-04 16:46:47');
INSERT INTO `installs` VALUES(616, 32, '2011-03-04 16:47:11');
INSERT INTO `installs` VALUES(617, 9, '2011-03-04 17:03:08');
INSERT INTO `installs` VALUES(618, 11, '2011-03-04 17:04:27');
INSERT INTO `installs` VALUES(619, 6, '2011-03-04 17:06:38');
INSERT INTO `installs` VALUES(620, 23, '2011-03-04 17:10:19');
INSERT INTO `installs` VALUES(621, 24, '2011-03-04 17:10:31');
INSERT INTO `installs` VALUES(622, 25, '2011-03-04 17:10:37');
INSERT INTO `installs` VALUES(623, 26, '2011-03-04 17:10:43');
INSERT INTO `installs` VALUES(624, 27, '2011-03-04 17:10:50');
INSERT INTO `installs` VALUES(625, 28, '2011-03-04 17:10:56');
INSERT INTO `installs` VALUES(626, 34, '2011-03-04 17:11:34');
INSERT INTO `installs` VALUES(627, 9, '2011-03-04 17:59:42');
INSERT INTO `installs` VALUES(628, 9, '2011-03-04 18:00:37');
INSERT INTO `installs` VALUES(629, 9, '2011-03-04 18:10:03');
INSERT INTO `installs` VALUES(630, 9, '2011-03-04 18:13:02');
INSERT INTO `installs` VALUES(631, 9, '2011-03-04 18:16:21');
INSERT INTO `installs` VALUES(632, 34, '2011-03-04 18:17:29');
INSERT INTO `installs` VALUES(633, 9, '2011-03-04 18:23:14');
INSERT INTO `installs` VALUES(634, 9, '2011-03-04 18:50:30');
INSERT INTO `installs` VALUES(635, 9, '2011-03-04 18:50:54');
INSERT INTO `installs` VALUES(636, 9, '2011-03-04 18:52:04');
INSERT INTO `installs` VALUES(637, 9, '2011-03-04 18:55:07');
INSERT INTO `installs` VALUES(638, 9, '2011-03-04 19:04:49');
INSERT INTO `installs` VALUES(639, 9, '2011-03-04 19:05:43');
INSERT INTO `installs` VALUES(640, 9, '2011-03-04 19:07:12');
INSERT INTO `installs` VALUES(641, 9, '2011-03-04 19:09:38');
INSERT INTO `installs` VALUES(642, 9, '2011-03-04 19:10:09');
INSERT INTO `installs` VALUES(643, 9, '2011-03-04 19:11:36');
INSERT INTO `installs` VALUES(644, 9, '2011-03-04 19:53:16');
INSERT INTO `installs` VALUES(645, 9, '2011-03-04 19:56:53');
INSERT INTO `installs` VALUES(646, 9, '2011-03-04 20:04:40');
INSERT INTO `installs` VALUES(647, 9, '2011-03-04 20:05:29');
INSERT INTO `installs` VALUES(648, 9, '2011-03-04 20:05:35');
INSERT INTO `installs` VALUES(649, 9, '2011-03-04 20:23:42');
INSERT INTO `installs` VALUES(650, 9, '2011-03-04 20:23:58');
INSERT INTO `installs` VALUES(651, 9, '2011-03-04 20:24:54');
INSERT INTO `installs` VALUES(652, 9, '2011-03-04 20:24:59');
INSERT INTO `installs` VALUES(653, 9, '2011-03-04 20:25:55');
INSERT INTO `installs` VALUES(654, 9, '2011-03-04 20:26:16');
INSERT INTO `installs` VALUES(655, 34, '2011-03-04 20:32:35');
INSERT INTO `installs` VALUES(656, 9, '2011-03-04 20:49:02');
INSERT INTO `installs` VALUES(657, 9, '2011-03-04 20:53:05');
INSERT INTO `installs` VALUES(658, 25, '2011-03-04 20:53:17');
INSERT INTO `installs` VALUES(659, 35, '2011-03-04 21:18:21');
INSERT INTO `installs` VALUES(660, 11, '2011-03-04 21:26:06');
INSERT INTO `installs` VALUES(661, 33, '2011-03-04 21:57:12');
INSERT INTO `installs` VALUES(662, 9, '2011-03-04 22:04:00');
INSERT INTO `installs` VALUES(663, 32, '2011-03-04 22:15:12');
INSERT INTO `installs` VALUES(664, 8, '2011-03-04 22:25:43');
INSERT INTO `installs` VALUES(665, 21, '2011-03-04 22:47:12');
INSERT INTO `installs` VALUES(666, 5, '2011-03-04 22:47:55');
INSERT INTO `installs` VALUES(667, 23, '2011-03-04 23:12:47');
INSERT INTO `installs` VALUES(668, 9, '2011-03-04 23:14:38');
INSERT INTO `installs` VALUES(669, 9, '2011-03-04 23:14:48');
INSERT INTO `installs` VALUES(670, 32, '2011-03-04 23:36:53');
INSERT INTO `installs` VALUES(671, 34, '2011-03-04 23:42:27');
INSERT INTO `installs` VALUES(672, 29, '2011-03-05 00:00:54');
INSERT INTO `installs` VALUES(673, 8, '2011-03-05 00:42:08');
INSERT INTO `installs` VALUES(674, 9, '2011-03-05 03:23:29');
INSERT INTO `installs` VALUES(675, 22, '2011-03-05 03:24:08');
INSERT INTO `installs` VALUES(676, 30, '2011-03-05 03:24:21');
INSERT INTO `installs` VALUES(677, 17, '2011-03-05 03:24:33');
INSERT INTO `installs` VALUES(678, 26, '2011-03-05 03:24:44');
INSERT INTO `installs` VALUES(679, 22, '2011-03-05 04:30:42');
INSERT INTO `installs` VALUES(680, 29, '2011-03-05 05:31:13');
INSERT INTO `installs` VALUES(681, 22, '2011-03-05 05:34:13');
INSERT INTO `installs` VALUES(682, 5, '2011-03-05 05:41:48');
INSERT INTO `installs` VALUES(683, 8, '2011-03-05 05:47:23');
INSERT INTO `installs` VALUES(684, 34, '2011-03-05 05:49:14');
INSERT INTO `installs` VALUES(685, 29, '2011-03-05 06:07:56');
INSERT INTO `installs` VALUES(686, 34, '2011-03-05 10:15:34');
INSERT INTO `installs` VALUES(687, 26, '2011-03-05 10:19:09');
INSERT INTO `installs` VALUES(688, 35, '2011-03-05 10:34:06');
INSERT INTO `installs` VALUES(689, 23, '2011-03-05 14:18:45');
INSERT INTO `installs` VALUES(690, 23, '2011-03-05 14:50:28');
INSERT INTO `installs` VALUES(691, 23, '2011-03-05 16:11:56');
INSERT INTO `installs` VALUES(692, 9, '2011-03-05 17:38:59');
INSERT INTO `installs` VALUES(693, 27, '2011-03-05 17:55:42');
INSERT INTO `installs` VALUES(694, 32, '2011-03-05 17:58:43');
INSERT INTO `installs` VALUES(695, 23, '2011-03-05 18:16:55');
INSERT INTO `installs` VALUES(696, 32, '2011-03-05 19:52:52');
INSERT INTO `installs` VALUES(697, 37, '2011-03-05 20:26:39');
INSERT INTO `installs` VALUES(698, 37, '2011-03-05 20:33:10');
INSERT INTO `installs` VALUES(699, 37, '2011-03-05 20:35:21');
INSERT INTO `installs` VALUES(700, 37, '2011-03-05 20:37:56');
INSERT INTO `installs` VALUES(701, 37, '2011-03-05 20:40:30');
INSERT INTO `installs` VALUES(702, 32, '2011-03-05 21:17:14');
INSERT INTO `installs` VALUES(703, 32, '2011-03-05 21:17:26');
INSERT INTO `installs` VALUES(704, 30, '2011-03-05 21:25:05');
INSERT INTO `installs` VALUES(705, 26, '2011-03-05 21:50:04');
INSERT INTO `installs` VALUES(706, 23, '2011-03-05 21:50:05');
INSERT INTO `installs` VALUES(707, 32, '2011-03-05 22:25:10');
INSERT INTO `installs` VALUES(708, 23, '2011-03-05 22:42:19');
INSERT INTO `installs` VALUES(709, 34, '2011-03-06 01:23:27');
INSERT INTO `installs` VALUES(710, 32, '2011-03-06 01:40:03');
INSERT INTO `installs` VALUES(711, 32, '2011-03-06 01:41:57');
INSERT INTO `installs` VALUES(712, 32, '2011-03-06 01:45:32');
INSERT INTO `installs` VALUES(713, 30, '2011-03-06 01:56:34');
INSERT INTO `installs` VALUES(714, 29, '2011-03-06 04:23:48');
INSERT INTO `installs` VALUES(715, 37, '2011-03-06 05:21:58');
INSERT INTO `installs` VALUES(716, 37, '2011-03-06 05:22:03');
INSERT INTO `installs` VALUES(717, 37, '2011-03-06 05:22:03');
INSERT INTO `installs` VALUES(718, 37, '2011-03-06 05:22:04');
INSERT INTO `installs` VALUES(719, 37, '2011-03-06 05:22:05');
INSERT INTO `installs` VALUES(720, 37, '2011-03-06 05:22:06');
INSERT INTO `installs` VALUES(721, 37, '2011-03-06 05:22:07');
INSERT INTO `installs` VALUES(722, 24, '2011-03-06 06:42:52');
INSERT INTO `installs` VALUES(723, 24, '2011-03-06 07:59:57');
INSERT INTO `installs` VALUES(724, 37, '2011-03-06 09:28:32');
INSERT INTO `installs` VALUES(725, 34, '2011-03-06 12:28:54');
INSERT INTO `installs` VALUES(726, 22, '2011-03-06 12:29:05');
INSERT INTO `installs` VALUES(727, 11, '2011-03-06 12:30:11');
INSERT INTO `installs` VALUES(728, 11, '2011-03-06 12:34:46');
INSERT INTO `installs` VALUES(729, 24, '2011-03-06 12:35:38');
INSERT INTO `installs` VALUES(730, 25, '2011-03-06 12:35:47');
INSERT INTO `installs` VALUES(731, 29, '2011-03-06 12:36:43');
INSERT INTO `installs` VALUES(732, 26, '2011-03-06 12:36:56');
INSERT INTO `installs` VALUES(733, 30, '2011-03-06 12:37:44');
INSERT INTO `installs` VALUES(734, 30, '2011-03-06 12:40:14');
INSERT INTO `installs` VALUES(735, 6, '2011-03-06 13:11:28');
INSERT INTO `installs` VALUES(736, 29, '2011-03-06 14:09:51');
INSERT INTO `installs` VALUES(737, 32, '2011-03-06 14:12:32');
INSERT INTO `installs` VALUES(738, 32, '2011-03-06 21:30:40');
INSERT INTO `installs` VALUES(739, 23, '2011-03-06 21:37:00');
INSERT INTO `installs` VALUES(740, 32, '2011-03-06 21:41:46');
INSERT INTO `installs` VALUES(741, 32, '2011-03-06 21:43:38');
INSERT INTO `installs` VALUES(742, 33, '2011-03-06 21:07:33');
INSERT INTO `installs` VALUES(743, 33, '2011-03-06 21:07:34');
INSERT INTO `installs` VALUES(744, 33, '2011-03-23 22:56:23');
INSERT INTO `installs` VALUES(745, 38, '2011-03-23 22:57:11');
INSERT INTO `installs` VALUES(746, 5, '2011-03-23 23:00:22');
INSERT INTO `installs` VALUES(747, 5, '2011-03-23 23:01:23');
INSERT INTO `installs` VALUES(748, 38, '2011-04-30 13:35:53');
INSERT INTO `installs` VALUES(749, 5, '2011-04-30 13:37:40');
INSERT INTO `installs` VALUES(750, 5, '2011-04-30 13:47:51');
INSERT INTO `installs` VALUES(751, 5, '2011-04-30 13:47:52');
INSERT INTO `installs` VALUES(752, 38, '2011-04-30 13:48:03');
INSERT INTO `installs` VALUES(753, 5, '2011-04-30 13:48:38');
INSERT INTO `installs` VALUES(754, 5, '2011-04-30 14:14:40');
INSERT INTO `installs` VALUES(755, 5, '2011-04-30 14:14:44');
INSERT INTO `installs` VALUES(756, 5, '2011-04-30 14:14:45');
INSERT INTO `installs` VALUES(757, 5, '2011-04-30 14:15:08');
INSERT INTO `installs` VALUES(758, 5, '2011-04-30 15:32:39');
INSERT INTO `installs` VALUES(759, 5, '2011-04-30 16:17:35');
INSERT INTO `installs` VALUES(760, 5, '2011-04-30 17:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spark_id` int(11) NOT NULL,
  `contributor_id` int(11) NOT NULL,
  `rating` varchar(16) CHARACTER SET latin1 NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sparks_id` (`spark_id`),
  KEY `ids_rating` (`rating`),
  KEY `contributor_id` (`contributor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` VALUES(2, 38, 2, '2', '2011-05-01 14:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `rating_names`
--

CREATE TABLE `rating_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rating_names`
--

INSERT INTO `rating_names` VALUES(1, 'hate');
INSERT INTO `rating_names` VALUES(2, 'like');
INSERT INTO `rating_names` VALUES(3, 'love');

-- --------------------------------------------------------

--
-- Table structure for table `sparks`
--

CREATE TABLE `sparks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contributor_id` int(11) NOT NULL,
  `name` varchar(40) CHARACTER SET latin1 NOT NULL,
  `summary` varchar(250) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `repository_type` enum('svn','git','hg') CHARACTER SET latin1 NOT NULL,
  `base_location` varchar(150) CHARACTER SET latin1 NOT NULL,
  `website` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `is_unsupported` tinyint(1) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `is_official` tinyint(1) NOT NULL,
  `is_browse` tinyint(1) NOT NULL DEFAULT '1',
  `fork_id` int(9) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contributor_id` (`contributor_id`),
  KEY `idx_spark_name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `sparks`
--

INSERT INTO `sparks` VALUES(5, 2, 'robot-helper', 'Robot Helper', 'For dealing w/ spam!!', 'git', 'git://github.com/katzgrau/ci-robot-helper.git', 'https://github.com/katzgrau/ci-robot-helper', 0, 0, 0, 0, 1, 0, '2011-02-05 16:53:40', '2011-02-05 16:53:40');
INSERT INTO `sparks` VALUES(6, 3, 'gravatar_helper', 'Gravatar Helper', 'Easily add gravatar to your site with a few convenient helpers', 'git', 'https://github.com/seejohnrun/gravatar_helper.git', NULL, 0, 0, 1, 0, 1, 0, '2011-02-05 17:43:28', '2011-02-05 17:43:28');
INSERT INTO `sparks` VALUES(8, 2, 'markdown', 'A markdown helper for easy parsing of markdown', '# Markdown\n\nA spark for PHP''s implementation of a markdown parser at [http://michelf.com/projects/php-markdown/](http://michelf.com/projects/php-markdown/)\n\n## Usage\n\nIt''s simple! Just:\n\n    $this->load->spark(''markdown'');\n    $html = parse_markdown($markdown);\n\n## Bugs\n\nSend bugs to katzgrau@gmail.com', 'hg', 'https://bitbucket.org/katzgrau/ci-spark-markdown', NULL, 0, 0, 1, 0, 1, 0, '2011-02-11 03:38:03', '2011-02-11 03:38:03');
INSERT INTO `sparks` VALUES(9, 2, 'example-spark', 'An example spark to install and use as a model for building sparks', '# example-spark\n\nI wrote this spark as an example of how to write/package a spark, and also for use in a spark installation tutorial.\n\n## Usage\n\n    $this->spark->load(''example-spark/1.0'');      # We specify the version for now. This might change\n    $this->example_spark->printHello();           # echo''s "Hello from the example spark!"\n\n## Bug Reports\n\n[katzgrau@gmail.com](mailto:katzgrau@gmail.com)\n', 'hg', 'https://bitbucket.org/katzgrau/example-spark', NULL, 0, 0, 0, 1, 1, 0, '2011-02-17 05:21:24', '2011-02-17 05:21:24');
INSERT INTO `sparks` VALUES(11, 5, 'base_model', 'This is an extender class for CI Model''s.', 'BaseModel is a Ruby on Rails like class for PHP that you use to extend the base CI_Model functionality in CodeIgniter. Currently, this is being built using CodeIgniter 2, but I''m sure that it''s backwards compatible - I''ll have to verify that later though.', 'git', 'https://github.com/beaufrusetta/base_model.git', NULL, 0, 0, 0, 0, 1, 0, '2011-02-25 18:37:08', '2011-02-25 18:37:08');
INSERT INTO `sparks` VALUES(12, 5, 'base_controller', 'This is an extender class for CI Controller''s.', 'I''ll write more later.', 'git', 'http://placeholder.com', NULL, 0, 0, 0, 0, 1, 0, '2011-02-25 23:15:11', '2011-02-25 23:15:11');
INSERT INTO `sparks` VALUES(13, 5, 'base_social', 'Wrapper library for connecting to all the world''s most awesome social networks.', 'Wrapper library for connecting to all the world''s most awesome social networks.', 'git', 'http://placeholder.com', NULL, 0, 0, 0, 0, 1, 0, '2011-02-25 23:16:47', '2011-02-25 23:16:47');
INSERT INTO `sparks` VALUES(14, 5, 'base_sitemap', 'Library to create XML sitemaps for your site.', 'Library to create XML sitemaps for your site.', 'git', 'http://placeholder.com', NULL, 0, 0, 0, 0, 1, 0, '2011-02-25 23:18:02', '2011-02-25 23:18:02');
INSERT INTO `sparks` VALUES(15, 5, 'base_rating', 'Used to easily integrate rating on ANY CI model.', 'Used to easily integrate rating on ANY CI model', 'git', 'http://placeholder.com', NULL, 0, 0, 0, 0, 1, 0, '2011-02-25 23:18:45', '2011-02-25 23:18:45');
INSERT INTO `sparks` VALUES(16, 5, 'base_comment', 'Used to easily integrate commenting on ANY CI model.', 'Used to easily integrate commenting on ANY CI model.', 'git', 'http://placeholder.com', NULL, 0, 0, 0, 0, 1, 0, '2011-02-25 23:19:05', '2011-02-25 23:19:05');
INSERT INTO `sparks` VALUES(17, 5, 'base_geo', 'Geolocating library for CI', 'Geolocating library for CI', 'git', 'https://github.com/beaufrusetta/base_geo', NULL, 0, 0, 0, 0, 1, 0, '2011-02-25 23:19:20', '2011-02-25 23:19:20');
INSERT INTO `sparks` VALUES(18, 5, 'base_attachment', 'Attachment handling class for ANY CI model', 'Attachment handling class for ANY CI model', 'git', 'http://placeholder.com', NULL, 0, 0, 0, 0, 1, 0, '2011-02-25 23:19:37', '2011-02-25 23:19:37');
INSERT INTO `sparks` VALUES(19, 5, 'base_merchant', 'Payment processing libraries for CI', 'Payment processing libraries for CI', 'git', 'http://placeholder.com', NULL, 0, 0, 0, 0, 1, 0, '2011-02-25 23:20:02', '2011-02-25 23:20:02');
INSERT INTO `sparks` VALUES(20, 6, 'cj-soap', 'SOAP access to Commission Junctions API', 'Access Commission Junctions (cj.com) webservices via SOAP API.', 'git', 'git://github.com/mdpauley/commission-junction-api.git', NULL, 0, 0, 0, 0, 1, 0, '2011-02-26 03:43:07', '2011-02-26 03:43:07');
INSERT INTO `sparks` VALUES(21, 10, 'qa_spark_birdseed', 'Makin'' sure this thing works', 'Will be deleted later', 'hg', 'https://bitbucket.org/katzgrau/qa_spark_birdseed', NULL, 0, 0, 0, 0, 1, 0, '2011-02-26 18:57:28', '2011-02-26 18:57:28');
INSERT INTO `sparks` VALUES(22, 11, 'amazon-ses', 'A CodeIgniter library to interact with Amazon Web Services (AWS) Simple Email Service (SES)', 'A CodeIgniter library to interact with Amazon Web Services (AWS) Simple Email Service (SES). This library was designed with the standard CodeIgniter email class in mind. As a result, most methods look the same, ensuring a minimal learning curve.\n\nNOTE: this code is still under heavy development and currently provides only the very basics of the AWS SES API (don''t you like acronyms?), sending email.', 'git', 'git://github.com/joelcox/codeigniter-amazon-ses.git', NULL, 0, 0, 1, 0, 1, 0, '2011-02-28 19:51:01', '2011-02-28 19:51:01');
INSERT INTO `sparks` VALUES(23, 14, 'template', 'Template library for CodeIgniter which supports modules, themes, partial views, etc.', 'CodeIgniter-Template is a Template library that helps your build complex views with CodeIgniter. It has logic to work with themes & modules and helps add your title, meta-data, breadcrumbs and partial views.', 'git', 'git://github.com/philsturgeon/codeigniter-template.git', NULL, 0, 0, 1, 0, 1, 0, '2011-03-01 00:08:22', '2011-03-01 00:08:22');
INSERT INTO `sparks` VALUES(24, 16, 'autoform', 'A form generator for Codeigniter.', 'Super basic usage:\n\n$this->load->spark(''autoform'');\n$this->autoform->table(''my_table'');\necho $this->autoform->generate(''app/processform'');\n\n\nDocs will be coming soon.', 'git', 'git://github.com/tobz-nz/autoform-spark.git', NULL, 0, 0, 1, 0, 1, 0, '2011-03-01 00:15:03', '2011-03-01 00:15:03');
INSERT INTO `sparks` VALUES(25, 14, 'curl', 'Work with cURL easily from your CodeIgniter application.', 'CodeIgniter-cURL is a CodeIgniter library which makes it easy to do simple cURL requests and makes more complicated cURL requests easier too.', 'git', 'git://github.com/philsturgeon/codeigniter-curl.git', NULL, 0, 0, 0, 1, 1, 0, '2011-03-01 00:31:37', '2011-03-01 00:31:37');
INSERT INTO `sparks` VALUES(26, 14, 'unzip', 'Extract ZIP files in CodeIgniter without installing any PECL extensions for PHP.', 'Extract ZIP files in CodeIgniter without installing any PECL extensions for PHP.', 'git', 'git://github.com/philsturgeon/codeigniter-unzip.git', NULL, 0, 0, 1, 0, 1, 0, '2011-03-01 01:00:45', '2011-03-01 01:00:45');
INSERT INTO `sparks` VALUES(27, 21, 'tags', 'A simple template tag parsing library.', 'Tags is exactly what it sounds like...a simple way to use tags in your application.  This allows you to have tags that look like this:\n\n    {foo:something:other}\n    {date format="m/d/Y"}\n    \n    {blog:entries count="5"}\n    Stuff here\n    {/blog:entries}', 'git', 'https://github.com/dhorrigan/ci-spark-tags.git', NULL, 0, 0, 0, 1, 1, 0, '2011-03-01 01:48:29', '2011-03-01 01:48:29');
INSERT INTO `sparks` VALUES(28, 14, 'tracer', 'Send iPhone notificiations from your CodeIgniter application with Prowl.', 'Send iPhone notificiations from your CodeIgniter application with Prowl.', 'svn', 'git://github.com/philsturgeon/codeigniter-prowl.git', '', 0, 0, 0, 0, 1, 0, '2011-03-01 10:43:48', '2011-03-01 10:43:48');
INSERT INTO `sparks` VALUES(29, 34, 'table_torch', 'Extensible Multi Table Scaffolding System', 'Table Torch is a custom scaffolding system that can be used for common administration tasks of tables in your CodeIgniter Application. Table Torch is different from the traditional scaffold you are used to in the fact that its customizable, and is quite extensible.', 'git', 'git://github.com/dperrymorrow/Table-Torch.git', NULL, 0, 0, 0, 0, 1, 0, '2011-03-02 15:46:22', '2011-03-02 15:46:22');
INSERT INTO `sparks` VALUES(30, 15, 'mongodb', 'An active record library for interacting with MongoDB', 'This is an active record inspired CodeIgniter library to integrate a MongoDB database into your application.', 'hg', 'https://bitbucket.org/alexbilbie/codeigniter-mongo-library', NULL, 0, 0, 1, 0, 1, 0, '2011-03-02 16:09:10', '2011-03-02 16:09:10');
INSERT INTO `sparks` VALUES(31, 49, 'layout-library', 'A simple template/layout library', 'Check out the Readme at the repo for more information/usage:\n\nhttp://www.zackhovatter.com/code/view/codeigniter-template-library\nhttps://github.com/hovatterz/CodeIgniter-Template-Library', 'git', 'git@github.com:hovatterz/CodeIgniter-Template-Library.git', NULL, 0, 0, 0, 0, 1, 0, '2011-03-02 16:59:08', '2011-03-02 16:59:08');
INSERT INTO `sparks` VALUES(32, 34, 'fire_log', 'Browse and filter all your log files from a controller action', 'Fire Log is a spark that lets you browse all the log files in your application/logs directory. \n\n-  You can filter what types of items you would like to view DEBUG, ERROR, INFO\n-  You can delete logs files from Fire Log to clear out your logs\n-  Fire log uses a view that you can easily customize in sparks/fire\\_log/[version]/views/fire\\_log_view.php\n-  You can change if tags are stripped in logs or not from the config\n-  Language file for all text used', 'git', 'git://github.com/dperrymorrow/Fire-Log.git', NULL, 0, 0, 1, 0, 1, 0, '2011-03-03 16:52:42', '2011-03-03 16:52:42');
INSERT INTO `sparks` VALUES(33, 6, 'tmdb', 'A The Movie Database (TMDb) library ', 'A sparked fork of http://github.com/b2tm/CodeIgniter-TMDb-Library', 'git', 'git://github.com/mdpauley/CodeIgniter-TMDb-Library', NULL, 0, 0, 0, 0, 1, 0, '2011-03-04 02:34:36', '2011-03-04 02:34:36');
INSERT INTO `sparks` VALUES(34, 33, 'assets', 'Simple Assets Library', 'A simple assets library that has the ability to combine and minify your JavaScript and CSS assets.\nAdditionally there''s a <a href="http://leafo.net/lessphp/">LessPHP</a> compiler, based on the original Ruby implementation.\n\n## Third Party Libraries\n\nThe libraries <a href="http://code.google.com/p/jsmin-php/">JSMin</a>, <a href="http://code.google.com/p/minify/">CSSMin</a> and <a href="http://leafo.net/lessphp/">LessPHP</a> are all created by third parties, but they''re included in this package for convinience.\n\n## Requirements\n\n1. PHP 5.1+\n2. CodeIgniter 2.0\n3. Directory structure for the assets files, with a writeable cache directory\n\n## Documentation\n\nSet all your preferences in the config file (assets directories, options to minify, combine and parse with LessPHP).\nNow you can use the helper methods in your views like this:\n	\n	<?php display_css(array(''init.css'', ''style.css'')); ?>\n	<?php display_js(array(''libs/modernizr-1.6.js'', ''libs/jquery-1.4.4.js'', ''plugins.js'', ''script.js'')); ?>\n\nThere''s also a method for clearing all cached files:\n	\n	$this->assets->clear_cache();\n\nThe default configuration assumes your assets directory is in the root of your project. Be sure to set the permissions for the cache directory so it can be writeable.\n\n## Directory structure example\n\n	/application\n	/assets\n		/cache\n		/css\n		/images\n		/js\n	/sparks\n	/system\n\n## Additional info\n\nIf you set the minify options and combine option in your configuration to false, LessPHP won''t work. This will work in future releases.', 'hg', 'https://bitbucket.org/bstrahija/assets', NULL, 0, 0, 0, 0, 1, 0, '2011-03-04 16:40:58', '2011-03-04 16:40:58');
INSERT INTO `sparks` VALUES(35, 63, 'assets-helper', 'Helper to help with assets', 'With this helper, you can manage your assets', 'git', 'https://github.com/williamhrs/Assets-Helper', NULL, 0, 0, 0, 0, 1, 0, '2011-03-04 19:45:32', '2011-03-04 19:45:32');
INSERT INTO `sparks` VALUES(36, 65, 'user_library', 'A library to manage users on your website.', 'This library can handle the users of a website.\nYou''ll need a simple database structure to get Users and Permissions done very fast on your site.\n\nDont forget to change your database prefix on the SQL dump if you uses it! It comes with an empty prefix.\n\nYou really should create a autoload with this library to protect every page with permissions and redirect.\n\nPlease look at the class for more detailed info. Documentation is coming soon.\n\n', 'git', 'https://waldirbj@github.com/waldirbj/codeigniter-user.git', NULL, 0, 0, 0, 0, 1, 0, '2011-03-04 21:16:09', '2011-03-04 21:16:09');
INSERT INTO `sparks` VALUES(37, 55, 'ja-geocode', 'Google Maps geocoding library', 'Simple geocoding for your Codeigniter application. \n\nUse it like:\n\n$this->load->spark(''ja-geocode/1.0'');\n$this->geocode->query(''Hagebygatan 25B, Norrköping'');\n\n$latitude = $this->geocode->lat;\n$longitude = $this->geocode->lng;\n\nor:\n\n$this->load->spark(''ja-geocode/1.0'');\n$this->geocode->query(58.5808652, 16.194047);\n\n$address = $this->geocode->address;\n\n', 'hg', 'https://bitbucket.org/johanandre/ja-geocode', NULL, 0, 0, 0, 0, 1, 0, '2011-03-05 20:10:15', '2011-03-05 20:10:15');
INSERT INTO `sparks` VALUES(38, 2, 'spark-sdk', 'The Standard Development Kit for CodeIgniter Sparks', 'Useful for validating sparks before you submit them to the repository.', 'git', 'git://github.com/katzgrau/spark-sdk.git', 'http://codefury.net', 0, 0, 0, 0, 1, 0, '2011-03-21 09:48:25', '2011-03-21 09:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spark_id` int(11) NOT NULL,
  `version` varchar(10) CHARACTER SET latin1 NOT NULL,
  `tag` varchar(25) CHARACTER SET latin1 NOT NULL,
  `archive_url` varchar(300) CHARACTER SET latin1 NOT NULL,
  `readme` text CHARACTER SET latin1 NOT NULL,
  `readme_html` text CHARACTER SET latin1 NOT NULL,
  `is_deactivated` tinyint(1) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `spark_id` (`spark_id`),
  KEY `idx_version` (`version`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` VALUES(7, 5, '1.0', '1.0', 'http://getsparks.org/static/archives/robot-helper/robot-helper-v1.0.zip', 'This is a CodeIgniter spark package used for dealing with robot spam.\n', '', 0, 1, '2011-02-05 16:53:43', '2011-02-05 16:53:43');
INSERT INTO `versions` VALUES(10, 6, '1.1', '1.1', 'http://getsparks.org/static/archives/gravatar_helper/gravatar_helper-v1.1.zip', '## Gravatar Helper\n\nThis is a really simple Gravatar helper class for use with CodeIgniter.  It makes links which obey the Gravatar defaults rather than provide its own defaults like the current library.\n\n### Basic Usage\n\nTo load the helper, drop gravatar_helper.php into helpers, and then:\n\n    $this->load->helper(''gravatar'');\n\nOr you can just checkout the entire directory into helpers/gravatar, and:\n\n    $this->load->helper(''gravatar/gravatar'');\n\nTo use the helper, use these to generate image links:\n\n    Gravatar_helper::from_email(''john.crepezzi@gmail.com'');\n    Gravatar_helper::from_hash(md5(''john.crepezzi@gmail.com'')); // if you only have the hash\n\nAnd to add some options (you can make any of these null to default to the gravatar defaults):\n\n    // email address, rating, size (square), and default image\n    Gravatar_helper::from_email(''john.crepezzi@gmail.com'', ''X'', 80, ''http://images.com/image.jpg'');\n\n### Author\n\nJohn Crepezzi\n\n### Issues?\n\nUse the built in GitHub issue tracker.\n\n### License\n\n(The MIT License)\n\nCopyright © 2010 John Crepezzi\n\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the ‘Software’), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED ‘AS IS’, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE\n', '', 0, 1, '2011-02-05 17:43:45', '2011-02-05 17:43:45');
INSERT INTO `versions` VALUES(11, 8, '1.0', '1.0', 'http://getsparks.org/static/archives/markdown/markdown-v1.0.zip', '', '', 0, 1, '2011-02-11 03:40:20', '2011-02-11 03:40:20');
INSERT INTO `versions` VALUES(12, 8, '1.1', '1.1', 'http://getsparks.org/static/archives/markdown/markdown-v1.1.zip', '', '', 0, 1, '2011-02-13 20:05:20', '2011-02-13 20:05:20');
INSERT INTO `versions` VALUES(13, 9, '1.0', '1.0', 'http://getsparks.org/static/archives/example-spark/example-spark-v1.0.zip', '', '', 0, 1, '2011-02-17 05:22:35', '2011-02-17 05:22:35');
INSERT INTO `versions` VALUES(14, 6, '1.0.0', '1.0.0', 'http://getsparks.org/static/archives/gravatar_helper/gravatar_helper-v1.2.zip', '## Gravatar Helper\n\nThis is a really simple Gravatar helper class for use with CodeIgniter.  It makes links which obey the Gravatar defaults rather than provide its own defaults like the current library.\n\n### Basic Usage\n\nTo load the helper, drop gravatar_helper.php into helpers, and then:\n\n    $this->load->helper(''gravatar'');\n\nTo use this as a [spark](http://getsparks.org/), you can just do:\n\n    $ tools/spark install gravatar_helper\n\nTo use the helper, use these to generate image links:\n\n    Gravatar_helper::from_email(''john.crepezzi@gmail.com'');\n    Gravatar_helper::from_hash(md5(''john.crepezzi@gmail.com'')); // if you only have the hash\n\nAnd to add some options (you can make any of these null to default to the gravatar defaults):\n\n    // email address, rating, size (square), and default image\n    Gravatar_helper::from_email(''john.crepezzi@gmail.com'', ''X'', 80, ''http://images.com/image.jpg'');\n\n### Author\n\nJohn Crepezzi\n\n### Issues?\n\nUse the built in GitHub issue tracker.\n\n### License\n\n(The MIT License)\n\nCopyright © 2010 John Crepezzi\n\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the ‘Software’), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED ‘AS IS’, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE\n', '', 0, 1, '2011-02-17 07:44:28', '2011-02-17 07:44:28');
INSERT INTO `versions` VALUES(15, 5, '1.1', '1.1', 'http://getsparks.org/static/archives/robot-helper/robot-helper-v1.1.zip', 'This is a CodeIgniter spark package used for dealing with robot spam.\n', '', 0, 1, '2011-02-20 15:44:44', '2011-02-20 15:44:44');
INSERT INTO `versions` VALUES(19, 11, '1.0.3', '1.0.3', 'http://getsparks.org/static/archives/base_model/base_model-v1.0.3.zip', '# BaseModel\n\nBaseModel is a Ruby on Rails like class for PHP that you use to extend the base CI_Model functionality in CodeIgniter. Currently, this is being built using CodeIgniter 2, but I''m sure that it''s backwards compatible - I''ll have to verify that later though.\n\n### Auto Loading\n\n	$autoload[''libraries''] = array(''BaseModel/BaseModel'');\n\n### Loaded on the fly\n\n	$this->load->library(''BaseModel/BaseModel)\n\n### Usage\n\nBasically, I set up this class to do a lot of the "auto-magic" stuff that Rails does.\n\n	class User extends BaseModel {\n\n		function __construct($id=FALSE) \n		{\n			parent::__construct($id, ''users'');\n		}\n\n	}\n	\nInside the constructor above, when calling the parent constructer (REQUIRED), you pass in the $id variable (primary key value) and the database table name (''users''). By setting this up, when you call the following...\n\n	$user = new User(123);\n	\n...the model will automatically go in to the ''users'' table, and load up the values from that record into the attributes array. Using `print_r($user);` will return the following:\n\n	User Object\n	(\n	    [attributes] => stdClass Object\n	        (\n	            [id] => 1\n	            [email] => beau.frusetta@gmail.com\n	            [pass] => test\n	            [username] => \n	            [first_name] => Beau\n	            [last_name] => Frusetta\n	            [created_at] => 2011-02-15 09:36:42\n	            [updated_at] => 2011-02-15 09:36:42\n	        )\n\n	    [primary_key] => id\n	    [before_update] => Array\n	        (\n	        )\n\n	    [after_update] => Array\n	        (\n	        )\n\n	    [before_save] => Array\n	        (\n	        )\n\n	    [after_save] => Array\n	        (\n	        )\n\n	    [_table_name:BaseModel:private] => users\n	    [_table_prefix:BaseModel:private] => \n	    [_error_message:BaseModel:private] => \n	    [_load_time:BaseModel:private] => 0.001439094543457\n	)\n	\n### has_many, belongs_to, and has_one\n\nYou can also use `$has_many`, `$belongs_to`, and `$has_one` similar to rails. Just declare them in your class that you''re creating like this\n\n	class User extends BaseModel {\n		\n		var $has_many = array("packages");\n		var $belongs_to = array("account");\n\n		function __construct($id=FALSE) \n		{\n			parent::__construct($id, ''users'');\n		}\n\n	}\n	\nWhen the object is created, if passing in an id value, it will automatically map those relationships. You can access them by calling `$user->account->variable` or `$user->packages` (note that packages will return ONE:MANY relationship and have an array of package objects).\n\n** Note, in order to use the relationships properly, each relationship will need it''s own class declared similar to the class calling it.\n\nThere are some other options that I still need to document, but this is good for v1.0.0 right now. :-)', '<h1>BaseModel</h1>\n\n<p>BaseModel is a Ruby on Rails like class for PHP that you use to extend the base CI_Model functionality in CodeIgniter. Currently, this is being built using CodeIgniter 2, but I''m sure that it''s backwards compatible - I''ll have to verify that later though.</p>\n\n<h3>Auto Loading</h3>\n\n<pre><code>$autoload[''libraries''] = array(''BaseModel/BaseModel'');\n</code></pre>\n\n<h3>Loaded on the fly</h3>\n\n<pre><code>$this-&gt;load-&gt;library(''BaseModel/BaseModel)\n</code></pre>\n\n<h3>Usage</h3>\n\n<p>Basically, I set up this class to do a lot of the "auto-magic" stuff that Rails does.</p>\n\n<pre><code>class User extends BaseModel {\n\n    function __construct($id=FALSE) \n    {\n        parent::__construct($id, ''users'');\n    }\n\n}\n</code></pre>\n\n<p>Inside the constructor above, when calling the parent constructer (REQUIRED), you pass in the $id variable (primary key value) and the database table name (''users''). By setting this up, when you call the following...</p>\n\n<pre><code>$user = new User(123);\n</code></pre>\n\n<p>...the model will automatically go in to the ''users'' table, and load up the values from that record into the attributes array. Using <code>print_r($user);</code> will return the following:</p>\n\n<pre><code>User Object\n(\n    [attributes] =&gt; stdClass Object\n        (\n            [id] =&gt; 1\n            [email] =&gt; beau.frusetta@gmail.com\n            [pass] =&gt; test\n            [username] =&gt; \n            [first_name] =&gt; Beau\n            [last_name] =&gt; Frusetta\n            [created_at] =&gt; 2011-02-15 09:36:42\n            [updated_at] =&gt; 2011-02-15 09:36:42\n        )\n\n    [primary_key] =&gt; id\n    [before_update] =&gt; Array\n        (\n        )\n\n    [after_update] =&gt; Array\n        (\n        )\n\n    [before_save] =&gt; Array\n        (\n        )\n\n    [after_save] =&gt; Array\n        (\n        )\n\n    [_table_name:BaseModel:private] =&gt; users\n    [_table_prefix:BaseModel:private] =&gt; \n    [_error_message:BaseModel:private] =&gt; \n    [_load_time:BaseModel:private] =&gt; 0.001439094543457\n)\n</code></pre>\n\n<h3>has<em>many, belongs</em>to, and has_one</h3>\n\n<p>You can also use <code>$has_many</code>, <code>$belongs_to</code>, and <code>$has_one</code> similar to rails. Just declare them in your class that you''re creating like this</p>\n\n<pre><code>class User extends BaseModel {\n\n    var $has_many = array("packages");\n    var $belongs_to = array("account");\n\n    function __construct($id=FALSE) \n    {\n        parent::__construct($id, ''users'');\n    }\n\n}\n</code></pre>\n\n<p>When the object is created, if passing in an id value, it will automatically map those relationships. You can access them by calling <code>$user-&gt;account-&gt;variable</code> or <code>$user-&gt;packages</code> (note that packages will return ONE:MANY relationship and have an array of package objects).</p>\n\n<p>** Note, in order to use the relationships properly, each relationship will need it''s own class declared similar to the class calling it.</p>\n\n<p>There are some other options that I still need to document, but this is good for v1.0.0 right now. :-)</p>\n', 0, 1, '2011-02-25 23:25:12', '2011-02-25 23:25:12');
INSERT INTO `versions` VALUES(20, 20, '0.1', '0.1', 'http://getsparks.org/static/archives/cj-soap-api/cj-soap-api-v0.1.zip', '# CJ Search API #\n## How to use Product Search ##\n\nSet developerKey and websiteId in the config file. In your controller load the library set the \nsearch data array and call the products_catalog_search function\n\n<?php\n	$this->load->library(''cjapi'');\n	\n	//Set any or all of the values\n	$data = array(\n		"advertiserIds" => ''276652'',\n		"keywords" => ''shoes'',\n		"category" => ''shoes'',\n		"linkType" => ''Banner'',\n		"linkSize" => ''160x180'',\n		"language" => ''en'',\n		"serviceableArea" => ''US'',\n		"promotionType" => ''free shipping'',\n		"promotionStartDate" => '''',\n		"promotionEndDate" => ''ongoing'',\n		"sortBy" => ''creativeHeight'',\n		"sortOrder" => ''asc'',\n		"startAt" => 0,\n		"maxResults" => 10\n	);\n	\n	//developerKey and websiteId are merged in the class\n	$this->cjapi->products_catalog_search ($data)\n?>\n\n## How to use Link Search ##\n\n<?php\n	$this->load->library(''cjapi'');\n	\n	//Set any or all of the values\n	$data = array(\n		"advertiserIds" => ''276652'',\n		"keywords" => ''shoes'',\n		"category" => ''shoes'',\n		"linkType" => ''Banner'',\n		"linkSize" => ''160x180'',\n		"language" => ''en'',\n		"serviceableArea" => ''US'',\n		"promotionType" => ''free shipping'',\n		"promotionStartDate" => '''',\n		"promotionEndDate" => ''ongoing'',\n		"sortBy" => ''creativeHeight'',\n		"sortOrder" => ''asc'',\n		"startAt" => 0,\n		"maxResults" => 10\n	);\n	\n	//developerKey and websiteId are merged in the class\n	$this->cjapi->link_search_service ($data)\n?>\n\n## How to use Advertiser Search ##\n\n<?php\n	$this->load->library(''cjapi'');\n	\n	//Set any or all of the values\n	$data = array(\n		"keywords" => ''shoes'',\n		"category" => ''shoes'',\n		"linkType" => ''Banner'',\n		"linkSize" => ''160x180'',\n		"language" => ''en'',\n		"serviceableArea" => ''US'',\n		"sortBy" => ''cid'',\n		"sortOrder" => ''asc'',\n		"startAt" => 0,\n		"maxResults" => 10\n	);\n	\n	//developerKey and websiteId are merged in the class\n	$this->cjapi->advertiser_search ($data)\n?>', '<h1>CJ Search API</h1>\n\n<h2>How to use Product Search</h2>\n\n<p>Set developerKey and websiteId in the config file. In your controller load the library set the \nsearch data array and call the products<em>catalog</em>search function</p>\n\n<p>&lt;?php\n    $this->load->library(''cjapi'');</p>\n\n<pre><code>//Set any or all of the values\n$data = array(\n    "advertiserIds" =&gt; ''276652'',\n    "keywords" =&gt; ''shoes'',\n    "category" =&gt; ''shoes'',\n    "linkType" =&gt; ''Banner'',\n    "linkSize" =&gt; ''160x180'',\n    "language" =&gt; ''en'',\n    "serviceableArea" =&gt; ''US'',\n    "promotionType" =&gt; ''free shipping'',\n    "promotionStartDate" =&gt; '''',\n    "promotionEndDate" =&gt; ''ongoing'',\n    "sortBy" =&gt; ''creativeHeight'',\n    "sortOrder" =&gt; ''asc'',\n    "startAt" =&gt; 0,\n    "maxResults" =&gt; 10\n);\n\n//developerKey and websiteId are merged in the class\n$this-&gt;cjapi-&gt;products_catalog_search ($data)\n</code></pre>\n\n<p>?></p>\n\n<h2>How to use Link Search</h2>\n\n<p>&lt;?php\n    $this->load->library(''cjapi'');</p>\n\n<pre><code>//Set any or all of the values\n$data = array(\n    "advertiserIds" =&gt; ''276652'',\n    "keywords" =&gt; ''shoes'',\n    "category" =&gt; ''shoes'',\n    "linkType" =&gt; ''Banner'',\n    "linkSize" =&gt; ''160x180'',\n    "language" =&gt; ''en'',\n    "serviceableArea" =&gt; ''US'',\n    "promotionType" =&gt; ''free shipping'',\n    "promotionStartDate" =&gt; '''',\n    "promotionEndDate" =&gt; ''ongoing'',\n    "sortBy" =&gt; ''creativeHeight'',\n    "sortOrder" =&gt; ''asc'',\n    "startAt" =&gt; 0,\n    "maxResults" =&gt; 10\n);\n\n//developerKey and websiteId are merged in the class\n$this-&gt;cjapi-&gt;link_search_service ($data)\n</code></pre>\n\n<p>?></p>\n\n<h2>How to use Advertiser Search</h2>\n\n<p>&lt;?php\n    $this->load->library(''cjapi'');</p>\n\n<pre><code>//Set any or all of the values\n$data = array(\n    "keywords" =&gt; ''shoes'',\n    "category" =&gt; ''shoes'',\n    "linkType" =&gt; ''Banner'',\n    "linkSize" =&gt; ''160x180'',\n    "language" =&gt; ''en'',\n    "serviceableArea" =&gt; ''US'',\n    "sortBy" =&gt; ''cid'',\n    "sortOrder" =&gt; ''asc'',\n    "startAt" =&gt; 0,\n    "maxResults" =&gt; 10\n);\n\n//developerKey and websiteId are merged in the class\n$this-&gt;cjapi-&gt;advertiser_search ($data)\n</code></pre>\n\n<p>?></p>\n', 0, 1, '2011-02-26 03:43:33', '2011-02-26 03:43:33');
INSERT INTO `versions` VALUES(21, 21, '1.0', '1.0', 'http://getsparks.org/static/archives/qa_spark_birdseed/qa_spark_birdseed-v1.0.zip', '# This Is a QA spark\r\n\r\nThe point of this spark is not to actually be functional\r\n\r\n## It''s just to test that the docs I wrote actually work\r\n\r\nI''m writing all this jaxx on windows\r\n\r\n * This\r\n * Spark\r\n * Thing\r\n * Could\r\n * Be\r\n * Cool\r\n\r\n## License\r\n\r\nDBAD License, found somewhere on the internet', '<h1>This Is a QA spark</h1>\n\n<p>The point of this spark is not to actually be functional</p>\n\n<h2>It''s just to test that the docs I wrote actually work</h2>\n\n<p>I''m writing all this jaxx on windows</p>\n\n<ul>\n<li>This</li>\n<li>Spark</li>\n<li>Thing</li>\n<li>Could</li>\n<li>Be</li>\n<li>Cool</li>\n</ul>\n\n<h2>License</h2>\n\n<p>DBAD License, found somewhere on the internet</p>\n', 0, 1, '2011-02-26 19:00:56', '2011-02-26 19:00:56');
INSERT INTO `versions` VALUES(22, 22, 'v0.1', 'v0.1', 'http://getsparks.org/static/archives/amazon-ses/amazon-ses-vv0.1.zip', 'CodeIgniter Amazon SES\n======================\nA CodeIgniter library to interact with Amazon Web Services (AWS) Simple Email Service (SES). This library was designed with the standard CodeIgniter email class in mind. As a result, most methods look the same, ensuring a minimal learning curve.\n\nNOTE: this code is still under heavy development and currently provides only the very basics of the AWS SES API (don''t you like acronyms?), sending email.\n\nRequirements\n------------\n1. PHP 5.1+\n2. CodeIgniter 2.0+ (http://codeigniter.com)\n3. libcurl\n4. Phil Sturgeon''s CodeIgniter cURL library (http://github.com/philsturgeon/codeigniter-curl)\n5. Amazon Web Services account (http://aws.amazon.com)\n\nDocumentation\n-------------\n\n### Configuration\nThis library expects a configuration file to function correctly. A template for this file is provided with the library. \n\n### Recipients\n\n####$this->amazon_ses->to()\nSet the "To" address(es) for a message.\n\n####$this->amazon_ses->cc()\nSet the "CC" address(es) (carbon copy) for a message.\n\n####$this->amazon_ses->bcc()\nSet the "BCC" address(es) (blind carbon copy) for a message.\n\nThese three methods expect valid e-mail addresses as a string, array or comma separated list.\n\n###Message\n\n####$this->amazon_ses->subject()\nSet the subject for a message.\n\n####$this->amazon_ses->message()\nSet the message to be sent.\n\n####$this->amazon_ses->message_alt()\nSet the alternative message (plain-text) to be sent. When not specified, an alternative message is generated by using PHP''s strip_tags() function.\n\n####$this->amazon_ses->send()\nSends the message. Returns true on success.\n\n###Misc\n\n####$this->amazon_ses->debug()\nSends the message in debug mode. In debug mode, the send() methods returns the actual API response instead of a boolean. Call this method before calling the send method.\n\n####$this->amazon_ses->destroy()\nPreserves recipient after the message has been successfully send. When you call this method, all recipients will be preserved during the objects life. This makes it possible to sent an additional message without re-specifying the recipients.\n\nContributing\n------------\nI am a firm believer of social coding, so <strike>if</strike> when you find a bug, please fork my code on GitHub (http://github.com/joelcox/codeigniter-amazon-ses) and squash it. I will be happy to merge it back in to the code base (and add you to the "Thanks to" section). If you''re not too comfortable using Git or messing with the inner workings of this library, please open a new issue (http://github.com/joelcox/codeigniter-amazon-ses/issues). \n\nThanks to\n---------\n* Phil Sturgeon (http://philsturgeon.co.uk), for creating the CodeIgniter cURL library (http://github.com/philsturgeon/codeigniter-curl) and thus taking care of all the cURL hassle.', '<h1>CodeIgniter Amazon SES</h1>\n\n<p>A CodeIgniter library to interact with Amazon Web Services (AWS) Simple Email Service (SES). This library was designed with the standard CodeIgniter email class in mind. As a result, most methods look the same, ensuring a minimal learning curve.</p>\n\n<p>NOTE: this code is still under heavy development and currently provides only the very basics of the AWS SES API (don''t you like acronyms?), sending email.</p>\n\n<h2>Requirements</h2>\n\n<ol>\n<li>PHP 5.1+</li>\n<li>CodeIgniter 2.0+ (http://codeigniter.com)</li>\n<li>libcurl</li>\n<li>Phil Sturgeon''s CodeIgniter cURL library (http://github.com/philsturgeon/codeigniter-curl)</li>\n<li>Amazon Web Services account (http://aws.amazon.com)</li>\n</ol>\n\n<h2>Documentation</h2>\n\n<h3>Configuration</h3>\n\n<p>This library expects a configuration file to function correctly. A template for this file is provided with the library. </p>\n\n<h3>Recipients</h3>\n\n<h4>$this->amazon_ses->to()</h4>\n\n<p>Set the "To" address(es) for a message.</p>\n\n<h4>$this->amazon_ses->cc()</h4>\n\n<p>Set the "CC" address(es) (carbon copy) for a message.</p>\n\n<h4>$this->amazon_ses->bcc()</h4>\n\n<p>Set the "BCC" address(es) (blind carbon copy) for a message.</p>\n\n<p>These three methods expect valid e-mail addresses as a string, array or comma separated list.</p>\n\n<h3>Message</h3>\n\n<h4>$this->amazon_ses->subject()</h4>\n\n<p>Set the subject for a message.</p>\n\n<h4>$this->amazon_ses->message()</h4>\n\n<p>Set the message to be sent.</p>\n\n<h4>$this->amazon<em>ses->message</em>alt()</h4>\n\n<p>Set the alternative message (plain-text) to be sent. When not specified, an alternative message is generated by using PHP''s strip_tags() function.</p>\n\n<h4>$this->amazon_ses->send()</h4>\n\n<p>Sends the message. Returns true on success.</p>\n\n<h3>Misc</h3>\n\n<h4>$this->amazon_ses->debug()</h4>\n\n<p>Sends the message in debug mode. In debug mode, the send() methods returns the actual API response instead of a boolean. Call this method before calling the send method.</p>\n\n<h4>$this->amazon_ses->destroy()</h4>\n\n<p>Preserves recipient after the message has been successfully send. When you call this method, all recipients will be preserved during the objects life. This makes it possible to sent an additional message without re-specifying the recipients.</p>\n\n<h2>Contributing</h2>\n\n<p>I am a firm believer of social coding, so <strike>if</strike> when you find a bug, please fork my code on GitHub (http://github.com/joelcox/codeigniter-amazon-ses) and squash it. I will be happy to merge it back in to the code base (and add you to the "Thanks to" section). If you''re not too comfortable using Git or messing with the inner workings of this library, please open a new issue (http://github.com/joelcox/codeigniter-amazon-ses/issues). </p>\n\n<h2>Thanks to</h2>\n\n<ul>\n<li>Phil Sturgeon (http://philsturgeon.co.uk), for creating the CodeIgniter cURL library (http://github.com/philsturgeon/codeigniter-curl) and thus taking care of all the cURL hassle.</li>\n</ul>\n', 0, 1, '2011-02-28 21:28:39', '2011-02-28 21:28:39');
INSERT INTO `versions` VALUES(23, 11, '1.0.4', '1.0.4', 'http://getsparks.org/static/archives/base_model/base_model-v1.0.4.zip', '# base_model #\n\nThis class is setup specifically for use within the [Sparks Package Management System for Codeigniter](http://getsparks.org "Sparks Package Management System for Codeigniter"). The basic definition is that it''s a Codeigniter Model extender that brings in typical ORM style references. You can setup relationships (that are lazy loaded), and easily retrieve a record in the object declaration.\n\n## Install ##\n\nTo install this package, (after you''ve install the package manager), run the following command:\n\n	tools/spark install -v1.0.3 base_model\n	\n## Usage ##\n\nSince this is an "extender" and not a typical spark library, you''re going to have to place the following in your model declarations:\n\n	<?php \n	\n	require("./sparks/base_model/1.0.3/libraries/base_model.php");\n	\n	class User extends Base_Model {\n\n	    function __construct($id=FALSE)\n	    {\n	        parent::__construct($id,''users'');\n	    }\n\n	}\n	\n	?>\n	\nAlso, in order to use this class, you are required to be connected to a database through your application/config/database.php file and have it loaded inside application/config/autoload.php under the "libraries" array.\n	\n### Object Initialization ###\n\nTo properly setup the base_model, you have to setup your constructor with the following:\n\n	function __construct($id=FALSE)\n	\nDoing so will allow you to pass in a primary key to load the object immediately on instantiation. This is **NOT REQUIRED**, however, it is strongly recommended to use.\n\nInside your default object constructor, you must call the parent constructor:\n\n	parent::__construct($id, ''users'');\n	\nThe first variable is the **primary key** value, and the second value is the **table** that you are connecting to.\n\n### Typical Use ###\n\n	$user = new User(123);\n	echo $user->first_name;\n	\nAll values retrieved from the database are stored in an array - `$user->attributes` - however, you can access each attribute by calling them on the main object - `$user->first_name`. As if it''s not a relationship, the object defaults to look for the value inside the attributes array.\n\n### Relationships ###\n\nRelating model objects to each other is stupid simple. There are three types: **belongs_to, has_many, has_one**\n\nTo use these, simply set them up as class level array variables:\n\n	var $belongs_to = array("god");\n	var $has_many = array("cats","dogs");\n	var $has_one = array("spouse");\n	\nThe singular version of the objects declared in the arrays map to objects (that extend base_model). If it''s a `$belongs_to` or `$has_one` relationship, there will only be one object returned when calling it:\n\n	$user->spouse;\n	\nWhen calling a `$has_many` relationship, the object will return an array of objects.\n\n	$user->cats;\n	\n### Properties ###\n\n* **attributes** - this is the record data from the database. When your table schema changes, this changes with it. (Default = FALSE)\n* **has_many** - this is the property you use to declare your `has_many` relationships. (Default = FALSE)\n* **has_one** - this is the property you use to declare your `has_one` relationships. (Default = FALSE)\n* **belongs_to** - this is the property you use to declare your `belongs_to` relationships. (Default = FALSE)\n* **primary_key** - this is the field definition of your primary key - set this to the primary key field name in the linked table. (Default = "id")\n* **before_update** - array of functions to be called immediately before the model record is updated (**update only**). (Default = False)\n* **after_update** - array of functions to be called immediately after the model is updated (**update only**). (Default = False)\n* **before_save** - array of functions to be called immediately before the model is saved (**create/update**). (Default = False)\n* **after_save** - array of functions to be called immediately after the model is saved (**create/update**). (Default = False)\n\n### Methods ###\n\n* **table($val=FALSE)** - use this method to set the name of the table to connect to at run-time.\n* **error($val=FALSE)** - use this method to get/set an error message on the object.\n* **refresh($id=FALSE)** - use this method to force a refresh of the database record. (this is automatically called on create/update)\n* **create($params)** - use this method to create a record in the database. Param names (associative array) should be the same as the field names.\n* **update_attribute($field,$value)** - use this method to update a single field value.\n* **update_attributes($fields)** - pass in an associative array to update multiple attributes at once.\n* **destroy()** - use this method to destroy the currently loaded record.\n* **all($filter=FALSE,$order="")** - use this to retrieve a group of records.\n* **save()** - use this to save the modified database record.\n* **is_new()** - use this to determine if the object you are working with is a new object, and has not been initialized with a database record.\n\n### Magic Methods ###\n\n* **find_by_field_name** - you can use, for example, `$user->find_by_email_address(''beau.frusetta@gmail.com'')` to find a record in the linked table. You can substitute any field name in after the find_by separated by a underscore.\n\n## Examples ##\n\n### Retrieving a single value from an object ##\n\n	$object->value;\n	\nOR\n\n	$object->attributes["value"];\n	\n### Temporarily changing the linked table at run time ###\n	\n	$object->table(''other_table'');\n	$object->all();\n	\n### Creating a new record in the database ###\n\n	$user = new User();\n	$user->create(array("first_name" => "Beau", "last_name" => "Frusetta"));\n	\n### Retrieving a record from the database ###\n\n	$user = new User(123);\n	\nOR\n\n	$user = new User();\n	$user->find_by_email_address("beau.frusetta@gmail.com");', '<h1>base_model</h1>\n\n<p>This class is setup specifically for use within the <a href="http://getsparks.org" title="Sparks Package Management System for Codeigniter">Sparks Package Management System for Codeigniter</a>. The basic definition is that it''s a Codeigniter Model extender that brings in typical ORM style references. You can setup relationships (that are lazy loaded), and easily retrieve a record in the object declaration.</p>\n\n<h2>Install</h2>\n\n<p>To install this package, (after you''ve install the package manager), run the following command:</p>\n\n<pre><code>tools/spark install -v1.0.3 base_model\n</code></pre>\n\n<h2>Usage</h2>\n\n<p>Since this is an "extender" and not a typical spark library, you''re going to have to place the following in your model declarations:</p>\n\n<pre><code>&lt;?php \n\nrequire("./sparks/base_model/1.0.3/libraries/base_model.php");\n\nclass User extends Base_Model {\n\n    function __construct($id=FALSE)\n    {\n        parent::__construct($id,''users'');\n    }\n\n}\n\n?&gt;\n</code></pre>\n\n<p>Also, in order to use this class, you are required to be connected to a database through your application/config/database.php file and have it loaded inside application/config/autoload.php under the "libraries" array.</p>\n\n<h3>Object Initialization</h3>\n\n<p>To properly setup the base_model, you have to setup your constructor with the following:</p>\n\n<pre><code>function __construct($id=FALSE)\n</code></pre>\n\n<p>Doing so will allow you to pass in a primary key to load the object immediately on instantiation. This is <strong>NOT REQUIRED</strong>, however, it is strongly recommended to use.</p>\n\n<p>Inside your default object constructor, you must call the parent constructor:</p>\n\n<pre><code>parent::__construct($id, ''users'');\n</code></pre>\n\n<p>The first variable is the <strong>primary key</strong> value, and the second value is the <strong>table</strong> that you are connecting to.</p>\n\n<h3>Typical Use</h3>\n\n<pre><code>$user = new User(123);\necho $user-&gt;first_name;\n</code></pre>\n\n<p>All values retrieved from the database are stored in an array - <code>$user-&gt;attributes</code> - however, you can access each attribute by calling them on the main object - <code>$user-&gt;first_name</code>. As if it''s not a relationship, the object defaults to look for the value inside the attributes array.</p>\n\n<h3>Relationships</h3>\n\n<p>Relating model objects to each other is stupid simple. There are three types: <strong>belongs<em>to, has</em>many, has_one</strong></p>\n\n<p>To use these, simply set them up as class level array variables:</p>\n\n<pre><code>var $belongs_to = array("god");\nvar $has_many = array("cats","dogs");\nvar $has_one = array("spouse");\n</code></pre>\n\n<p>The singular version of the objects declared in the arrays map to objects (that extend base_model). If it''s a <code>$belongs_to</code> or <code>$has_one</code> relationship, there will only be one object returned when calling it:</p>\n\n<pre><code>$user-&gt;spouse;\n</code></pre>\n\n<p>When calling a <code>$has_many</code> relationship, the object will return an array of objects.</p>\n\n<pre><code>$user-&gt;cats;\n</code></pre>\n\n<h3>Properties</h3>\n\n<ul>\n<li><strong>attributes</strong> - this is the record data from the database. When your table schema changes, this changes with it. (Default = FALSE)</li>\n<li><strong>has_many</strong> - this is the property you use to declare your <code>has_many</code> relationships. (Default = FALSE)</li>\n<li><strong>has_one</strong> - this is the property you use to declare your <code>has_one</code> relationships. (Default = FALSE)</li>\n<li><strong>belongs_to</strong> - this is the property you use to declare your <code>belongs_to</code> relationships. (Default = FALSE)</li>\n<li><strong>primary_key</strong> - this is the field definition of your primary key - set this to the primary key field name in the linked table. (Default = "id")</li>\n<li><strong>before_update</strong> - array of functions to be called immediately before the model record is updated (<strong>update only</strong>). (Default = False)</li>\n<li><strong>after_update</strong> - array of functions to be called immediately after the model is updated (<strong>update only</strong>). (Default = False)</li>\n<li><strong>before_save</strong> - array of functions to be called immediately before the model is saved (<strong>create/update</strong>). (Default = False)</li>\n<li><strong>after_save</strong> - array of functions to be called immediately after the model is saved (<strong>create/update</strong>). (Default = False)</li>\n</ul>\n\n<h3>Methods</h3>\n\n<ul>\n<li><strong>table($val=FALSE)</strong> - use this method to set the name of the table to connect to at run-time.</li>\n<li><strong>error($val=FALSE)</strong> - use this method to get/set an error message on the object.</li>\n<li><strong>refresh($id=FALSE)</strong> - use this method to force a refresh of the database record. (this is automatically called on create/update)</li>\n<li><strong>create($params)</strong> - use this method to create a record in the database. Param names (associative array) should be the same as the field names.</li>\n<li><strong>update_attribute($field,$value)</strong> - use this method to update a single field value.</li>\n<li><strong>update_attributes($fields)</strong> - pass in an associative array to update multiple attributes at once.</li>\n<li><strong>destroy()</strong> - use this method to destroy the currently loaded record.</li>\n<li><strong>all($filter=FALSE,$order="")</strong> - use this to retrieve a group of records.</li>\n<li><strong>save()</strong> - use this to save the modified database record.</li>\n<li><strong>is_new()</strong> - use this to determine if the object you are working with is a new object, and has not been initialized with a database record.</li>\n</ul>\n\n<h3>Magic Methods</h3>\n\n<ul>\n<li><strong>find<em>by</em>field_name</strong> - you can use, for example, <code>$user-&gt;find_by_email_address(''beau.frusetta@gmail.com'')</code> to find a record in the linked table. You can substitute any field name in after the find_by separated by a underscore.</li>\n</ul>\n\n<h2>Examples</h2>\n\n<h3>Retrieving a single value from an object</h3>\n\n<pre><code>$object-&gt;value;\n</code></pre>\n\n<p>OR</p>\n\n<pre><code>$object-&gt;attributes["value"];\n</code></pre>\n\n<h3>Temporarily changing the linked table at run time</h3>\n\n<pre><code>$object-&gt;table(''other_table'');\n$object-&gt;all();\n</code></pre>\n\n<h3>Creating a new record in the database</h3>\n\n<pre><code>$user = new User();\n$user-&gt;create(array("first_name" =&gt; "Beau", "last_name" =&gt; "Frusetta"));\n</code></pre>\n\n<h3>Retrieving a record from the database</h3>\n\n<pre><code>$user = new User(123);\n</code></pre>\n\n<p>OR</p>\n\n<pre><code>$user = new User();\n$user-&gt;find_by_email_address("beau.frusetta@gmail.com");\n</code></pre>\n', 0, 1, '2011-02-28 23:05:25', '2011-02-28 23:05:25');
INSERT INTO `versions` VALUES(24, 23, 'v1.6', 'v1.6', 'http://getsparks.org/static/archives/template/template-vv1.6.zip', 'CodeIgniter-Template\n====================\n\nCodeIgniter-Template is a Template library that helps your build complex views with CodeIgniter.\nIt has logic to work with themes & modules and helps add your title, meta-data, breadcrumbs and partial views.\n\n\nRequirements\n------------\n\n1. PHP 5.1+\n2. CodeIgniter 1.6.x - 2.0-dev\n\nDocumentation\n-------------\n\nLook in user_guide or <a href="http://philsturgeon.co.uk/demos/codeigniter-template/user_guide/">click here</a>.\nYeah, I actually wrote some documentation! :-o', '<h1>CodeIgniter-Template</h1>\n\n<p>CodeIgniter-Template is a Template library that helps your build complex views with CodeIgniter.\nIt has logic to work with themes &amp; modules and helps add your title, meta-data, breadcrumbs and partial views.</p>\n\n<h2>Requirements</h2>\n\n<ol>\n<li>PHP 5.1+</li>\n<li>CodeIgniter 1.6.x - 2.0-dev</li>\n</ol>\n\n<h2>Documentation</h2>\n\n<p>Look in user_guide or <a href="http://philsturgeon.co.uk/demos/codeigniter-template/user_guide/">click here</a>.\nYeah, I actually wrote some documentation! :-o</p>\n', 0, 1, '2011-03-01 00:08:42', '2011-03-01 00:08:42');
INSERT INTO `versions` VALUES(25, 23, 'v1.7', 'v1.7', 'http://getsparks.org/static/archives/template/template-vv1.7.zip', '# CodeIgniter-Template\n\nCodeIgniter-Template is a Template library that helps your build complex views with CodeIgniter.\nIt has logic to work with themes & modules and helps add your title, meta-data, breadcrumbs and partial views.\n\n\n## Requirements\n\n1. PHP 5.1+\n2. CodeIgniter 1.6.x - 2.0-dev\n\n## Documentation\n\nLook in user_guide or <a href="http://philsturgeon.co.uk/demos/codeigniter-template/user_guide/">click here</a>.\nYeah, I actually wrote some documentation! :-o', '<h1>CodeIgniter-Template</h1>\n\n<p>CodeIgniter-Template is a Template library that helps your build complex views with CodeIgniter.\nIt has logic to work with themes &amp; modules and helps add your title, meta-data, breadcrumbs and partial views.</p>\n\n<h2>Requirements</h2>\n\n<ol>\n<li>PHP 5.1+</li>\n<li>CodeIgniter 1.6.x - 2.0-dev</li>\n</ol>\n\n<h2>Documentation</h2>\n\n<p>Look in user_guide or <a href="http://philsturgeon.co.uk/demos/codeigniter-template/user_guide/">click here</a>.\nYeah, I actually wrote some documentation! :-o</p>\n', 0, 1, '2011-03-01 00:27:31', '2011-03-01 00:27:31');
INSERT INTO `versions` VALUES(28, 26, '1.0', '1.0', 'http://getsparks.org/static/archives/unzip/unzip-v1.0.zip', 'CodeIgniter-Unzip\n============\n\nExtract ZIP files in CodeIgniter without installing any PECL extensions for PHP.\n\n\nRequirements\n------------\n\n1. PHP 5.1+\n2. CodeIgniter 1.6.x - 2.0-dev\n3. ZLib extension enabled\n\n\nUsage\n-----\n\n    $this->load->library(''unzip'');\n\n    // Optional: Only take out these files, anything else is ignored\n    $this->unzip->allow(array(''css'', ''js'', ''png'', ''gif'', ''jpeg'', ''jpg'', ''tpl'', ''html'', ''swf''));\n\n    // Give it one parameter and it will extract to the same folder\n    $this->unzip->extract(''uploads/my_archive.zip'');\n\n    // or specify a destination directory\n    $this->unzip->extract(''uploads/my_archive.zip'', ''/path/to/directory/);\n\nSimple as that!\n\n\nTo-do\n-----\n\n- Add extract_file() to extract a specific file from your ZIP.', '<h1>CodeIgniter-Unzip</h1>\n\n<p>Extract ZIP files in CodeIgniter without installing any PECL extensions for PHP.</p>\n\n<h2>Requirements</h2>\n\n<ol>\n<li>PHP 5.1+</li>\n<li>CodeIgniter 1.6.x - 2.0-dev</li>\n<li>ZLib extension enabled</li>\n</ol>\n\n<h2>Usage</h2>\n\n<pre><code>$this-&gt;load-&gt;library(''unzip'');\n\n// Optional: Only take out these files, anything else is ignored\n$this-&gt;unzip-&gt;allow(array(''css'', ''js'', ''png'', ''gif'', ''jpeg'', ''jpg'', ''tpl'', ''html'', ''swf''));\n\n// Give it one parameter and it will extract to the same folder\n$this-&gt;unzip-&gt;extract(''uploads/my_archive.zip'');\n\n// or specify a destination directory\n$this-&gt;unzip-&gt;extract(''uploads/my_archive.zip'', ''/path/to/directory/);\n</code></pre>\n\n<p>Simple as that!</p>\n\n<h2>To-do</h2>\n\n<ul>\n<li>Add extract_file() to extract a specific file from your ZIP.</li>\n</ul>\n', 0, 1, '2011-03-01 01:01:00', '2011-03-01 01:01:00');
INSERT INTO `versions` VALUES(29, 25, '1.0.0', '1.0.0', 'http://getsparks.org/static/archives/curl/curl-v1.0.zip', 'CodeIgniter-cURL\n================\n\nCodeIgniter-cURL is a CodeIgniter library which makes it easy to do simple cURL requests \nand makes more complicated cURL requests easier too.\n\n\nRequirements\n------------\n\n1. PHP 5.1+\n2. CodeIgniter 1.7.x - 2.0-dev\n3. PHP 5 (configured with cURL enabled)\n4. libcurl\n\nUsage\n-----\n\n	echo $this->curl->simple_get(''http://example.com/'');\n	echo $this->curl->simple_post(''curl_test/message'', array(''message''=>''Sup buddy''));\n\nFor more up to date usage and in-depth examples check the CodeIgniter wiki page:\n\nhttp://codeigniter.com/wiki/Curl_library/', '<h1>CodeIgniter-cURL</h1>\n\n<p>CodeIgniter-cURL is a CodeIgniter library which makes it easy to do simple cURL requests \nand makes more complicated cURL requests easier too.</p>\n\n<h2>Requirements</h2>\n\n<ol>\n<li>PHP 5.1+</li>\n<li>CodeIgniter 1.7.x - 2.0-dev</li>\n<li>PHP 5 (configured with cURL enabled)</li>\n<li>libcurl</li>\n</ol>\n\n<h2>Usage</h2>\n\n<pre><code>echo $this-&gt;curl-&gt;simple_get(''http://example.com/'');\necho $this-&gt;curl-&gt;simple_post(''curl_test/message'', array(''message''=&gt;''Sup buddy''));\n</code></pre>\n\n<p>For more up to date usage and in-depth examples check the CodeIgniter wiki page:</p>\n\n<p>http://codeigniter.com/wiki/Curl_library/</p>\n', 0, 1, '2011-03-01 01:01:18', '2011-03-01 01:01:18');
INSERT INTO `versions` VALUES(42, 27, '1.4', '1.4', 'http://getsparks.org/static/archives/tags/tags-v1.4.zip', '# Tags\n\nVersion 1.4\n\n* Author: [Dan Horrigan](http://dhorrigan.com/)\n\n## DESCRIPTION\n\nTags is exactly what it sounds like...a simple way to use tags in your PHP application.  This allows you to have tags that look like this:\n\n    {foo:something:other}\n    {date format="m/d/Y"}\n    \n    {blog:entries count="5"}\n    Stuff here\n    {/blog:entries}\n\n## USAGE\n\n### Loading\n\n#### Installed via Sparks\n\n    $this->load->spark(''tags'');\n\n#### Installed Manually\n\n    $this->load->library(''tags'');\n\n\nYou can send a config array to the constructor with the following options (these are the defaults):\n\n    array(\n        ''l_delim'' => ''{'',\n        ''r_delim'' => ''{'',\n        ''trigger'' => '''',\n    );\n\nYou can also set the delimiters and triggers via the following functions:\n\n    $this->tags->set_delimitiers(''{'', ''}'');\n    $this->tags->set_trigger(''foo:'');\n\nTo parse a string of text you simply call the parse() function.  The parse function accepts 3 parameters:\n\n1.  $content - The content to parse\n2.  [optional] $data - a keyed array of data to replace tag vars with (more below)\n3.  [optional] $callback - A callback that will be called for each tag.\n\n### Normal Return\n\nIf no callback is specified then the function will return an array.  Consider this is the content you sent:\n\n    Hello there.\n    \n    {rest:get url="http://example.com/api" type="json"}\n    Stuff here\n    {/rest:get}\n    \n    Bye.\n\nParse would return this:\n\n    Array\n    (\n        [content] => Hello there.\n\n    marker_0k0dj3j4nJHDj22j\n\n    Bye.\n        [tags] => Array\n            (\n                [0] => Array\n                    (\n                        [full_tag] => {rest:get url="http://example.com/api" type="json"}\n    Stuff here\n    {/rest:get}\n                        [attributes] => Array\n                            (\n                                [url] => http://example.com/api\n                                [type] => json\n                            )\n\n                        [segments] => Array\n                            (\n                                [0] => rest\n                                [1] => get\n                            )\n\n                        [content] => \n    Stuff here\n\n                        [marker] => marker_0k0dj3j4nJHDj22j\n                    )\n\n            )\n\n    )\n\n### Using the Data Array\n\nThe data array is a keyed array who''s contents will replace tags with the same name.  Example:\n\n    {foo:bar}\n\nWould be replaced with "Hello World" when the following data array is sent to the parse function:\n\n    $data[''foo''][''bar''] = "Hello World"\n    \nYou can use tag pairs to loop through data as well:\n\n#### Tag:\n\n    {books}\n    {title} by {author}<br />\n    {/books}\n\n#### Data\n\n    $data = array(\n        ''books'' => array(\n            array(\n                ''title'' => ''PHP for Dummies'',\n                ''author'' => ''John Doe''\n            ),\n            array(\n                ''title'' => ''CodeIgniter for Dummies'',\n                ''author'' => ''Jane Doe''\n            )\n        )\n    );\n\n#### Resulting Output\n\n    PHP for Dummies by John Doe\n    CodeIgniter for Dummies by Jane Doe\n\n### Callbacks\n\nThe callback must be in a form that is_callable() accepts (typically array(object, method)).  The callbac function should take 1 parameter (an array).\n\nThe callback will be sent the tag information in the form of an array.  Consider the following \n\n    {rest:get url="http://example.com/api" type="json"}\n    Stuff here\n    {/rest:get}\n\nWould send the callback function the following array:\n\n    Array\n    (\n        [full_tag] => {rest:get url="http://example.com/api" type="json"}\n    Stuff here\n    {/rest:get}\n        [attributes] => Array\n            (\n                [url] => http://example.com/api\n                [type] => json\n            )\n\n        [segments] => Array\n            (\n                [0] => rest\n                [1] => get\n            )\n\n        [content] => \n    Stuff here\n\n        [marker] => marker_0k0dj3j4nJHDj22j\n    )\n', '<h1>Tags</h1>\n\n<p>Version 1.4</p>\n\n<ul>\n<li>Author: <a href="http://dhorrigan.com/">Dan Horrigan</a></li>\n</ul>\n\n<h2>DESCRIPTION</h2>\n\n<p>Tags is exactly what it sounds like...a simple way to use tags in your PHP application.  This allows you to have tags that look like this:</p>\n\n<pre><code>{foo:something:other}\n{date format="m/d/Y"}\n\n{blog:entries count="5"}\nStuff here\n{/blog:entries}\n</code></pre>\n\n<h2>USAGE</h2>\n\n<h3>Loading</h3>\n\n<h4>Installed via Sparks</h4>\n\n<pre><code>$this-&gt;load-&gt;spark(''tags'');\n</code></pre>\n\n<h4>Installed Manually</h4>\n\n<pre><code>$this-&gt;load-&gt;library(''tags'');\n</code></pre>\n\n<p>You can send a config array to the constructor with the following options (these are the defaults):</p>\n\n<pre><code>array(\n    ''l_delim'' =&gt; ''{'',\n    ''r_delim'' =&gt; ''{'',\n    ''trigger'' =&gt; '''',\n);\n</code></pre>\n\n<p>You can also set the delimiters and triggers via the following functions:</p>\n\n<pre><code>$this-&gt;tags-&gt;set_delimitiers(''{'', ''}'');\n$this-&gt;tags-&gt;set_trigger(''foo:'');\n</code></pre>\n\n<p>To parse a string of text you simply call the parse() function.  The parse function accepts 3 parameters:</p>\n\n<ol>\n<li>$content - The content to parse</li>\n<li>[optional] $data - a keyed array of data to replace tag vars with (more below)</li>\n<li>[optional] $callback - A callback that will be called for each tag.</li>\n</ol>\n\n<h3>Normal Return</h3>\n\n<p>If no callback is specified then the function will return an array.  Consider this is the content you sent:</p>\n\n<pre><code>Hello there.\n\n{rest:get url="http://example.com/api" type="json"}\nStuff here\n{/rest:get}\n\nBye.\n</code></pre>\n\n<p>Parse would return this:</p>\n\n<pre><code>Array\n(\n    [content] =&gt; Hello there.\n\nmarker_0k0dj3j4nJHDj22j\n\nBye.\n    [tags] =&gt; Array\n        (\n            [0] =&gt; Array\n                (\n                    [full_tag] =&gt; {rest:get url="http://example.com/api" type="json"}\nStuff here\n{/rest:get}\n                    [attributes] =&gt; Array\n                        (\n                            [url] =&gt; http://example.com/api\n                            [type] =&gt; json\n                        )\n\n                    [segments] =&gt; Array\n                        (\n                            [0] =&gt; rest\n                            [1] =&gt; get\n                        )\n\n                    [content] =&gt; \nStuff here\n\n                    [marker] =&gt; marker_0k0dj3j4nJHDj22j\n                )\n\n        )\n\n)\n</code></pre>\n\n<h3>Using the Data Array</h3>\n\n<p>The data array is a keyed array who''s contents will replace tags with the same name.  Example:</p>\n\n<pre><code>{foo:bar}\n</code></pre>\n\n<p>Would be replaced with "Hello World" when the following data array is sent to the parse function:</p>\n\n<pre><code>$data[''foo''][''bar''] = "Hello World"\n</code></pre>\n\n<p>You can use tag pairs to loop through data as well:</p>\n\n<h4>Tag:</h4>\n\n<pre><code>{books}\n{title} by {author}&lt;br /&gt;\n{/books}\n</code></pre>\n\n<h4>Data</h4>\n\n<pre><code>$data = array(\n    ''books'' =&gt; array(\n        array(\n            ''title'' =&gt; ''PHP for Dummies'',\n            ''author'' =&gt; ''John Doe''\n        ),\n        array(\n            ''title'' =&gt; ''CodeIgniter for Dummies'',\n            ''author'' =&gt; ''Jane Doe''\n        )\n    )\n);\n</code></pre>\n\n<h4>Resulting Output</h4>\n\n<pre><code>PHP for Dummies by John Doe\nCodeIgniter for Dummies by Jane Doe\n</code></pre>\n\n<h3>Callbacks</h3>\n\n<p>The callback must be in a form that is_callable() accepts (typically array(object, method)).  The callbac function should take 1 parameter (an array).</p>\n\n<p>The callback will be sent the tag information in the form of an array.  Consider the following </p>\n\n<pre><code>{rest:get url="http://example.com/api" type="json"}\nStuff here\n{/rest:get}\n</code></pre>\n\n<p>Would send the callback function the following array:</p>\n\n<pre><code>Array\n(\n    [full_tag] =&gt; {rest:get url="http://example.com/api" type="json"}\nStuff here\n{/rest:get}\n    [attributes] =&gt; Array\n        (\n            [url] =&gt; http://example.com/api\n            [type] =&gt; json\n        )\n\n    [segments] =&gt; Array\n        (\n            [0] =&gt; rest\n            [1] =&gt; get\n        )\n\n    [content] =&gt; \nStuff here\n\n    [marker] =&gt; marker_0k0dj3j4nJHDj22j\n)\n</code></pre>\n', 0, 1, '2011-03-01 01:54:16', '2011-03-01 01:54:16');
INSERT INTO `versions` VALUES(43, 24, '3.6', '3.6', 'http://getsparks.org/static/archives/autoform/autoform-v3.6.zip', '', '', 0, 1, '2011-03-01 02:49:51', '2011-03-01 02:49:51');
INSERT INTO `versions` VALUES(44, 28, '1.0.0', 'v1.1', 'http://getsparks.org/static/archives/prowl/prowl-vv1.1.zip', 'CodeIgniter-Prowl\n=================\n\nSend iPhone notifications from your CodeIgniter application with the Prowl library.\nBased on the PHP Prowl from Leon Bayliss and cleaned up.\n\n\nRequirements\n------------\n\n1. an iPhone\n2. the Prowl app from the App Store installed on your iPhone\n3. a [Prowl account](https://prowl.weks.net/register.php)\n\n\nUsage\n-----\n\n	$config[''username''] = ''KanyeWest'';\n	$config[''password''] =''douch3b4g1977'';\n	\n	// optional. Defaults to CI Prowl\n	$config[''application''] = "Kayne''s Calender";\n	\n	$this->load->library(''prowl'', $config);\n	\n	$result = $this->prowl->send(''Reminder'', ''Be an idiot in public.'');\n	\n	print_r($result);\n\nSimple as that! \n\n\nTo-do\n-----\n\nI''ll add a config file for it at some point.\n\n\nExtra\n-----\n\nIf you''d like to request changes, report bug fixes, or contact\nthe developer of this library, email <email@philsturgeon.co.uk>', '<h1>CodeIgniter-Prowl</h1>\n\n<p>Send iPhone notifications from your CodeIgniter application with the Prowl library.\nBased on the PHP Prowl from Leon Bayliss and cleaned up.</p>\n\n<h2>Requirements</h2>\n\n<ol>\n<li>an iPhone</li>\n<li>the Prowl app from the App Store installed on your iPhone</li>\n<li>a <a href="https://prowl.weks.net/register.php">Prowl account</a></li>\n</ol>\n\n<h2>Usage</h2>\n\n<pre><code>$config[''username''] = ''KanyeWest'';\n$config[''password''] =''douch3b4g1977'';\n\n// optional. Defaults to CI Prowl\n$config[''application''] = "Kayne''s Calender";\n\n$this-&gt;load-&gt;library(''prowl'', $config);\n\n$result = $this-&gt;prowl-&gt;send(''Reminder'', ''Be an idiot in public.'');\n\nprint_r($result);\n</code></pre>\n\n<p>Simple as that! </p>\n\n<h2>To-do</h2>\n\n<p>I''ll add a config file for it at some point.</p>\n\n<h2>Extra</h2>\n\n<p>If you''d like to request changes, report bug fixes, or contact\nthe developer of this library, email <a href="&#x6d;&#x61;&#x69;&#x6c;&#116;&#111;&#58;&#101;m&#x61;&#x69;&#x6c;&#x40;&#112;&#104;&#105;&#108;s&#x74;&#x75;&#x72;&#x67;&#101;&#111;&#110;&#46;c&#x6f;&#x2e;&#x75;&#x6b;">&#101;m&#x61;&#x69;&#x6c;&#x40;&#112;&#104;&#105;&#108;s&#x74;&#x75;&#x72;&#x67;&#101;&#111;&#110;&#46;c&#x6f;&#x2e;&#x75;&#x6b;</a></p>\n', 0, 1, '2011-03-01 10:44:00', '2011-03-01 10:44:00');
INSERT INTO `versions` VALUES(45, 17, '1.0.0', '1.0.0', 'http://getsparks.org/static/archives/base_geo/base_geo-v1.0.0.zip', '**Base_Geo** is a library to make geo-location lookup''s stupid easy. Right now, you can look up an IP address or an address. \n\n## Installation ##\n\nTo install via Sparks, run the following:\n\n	tools/spark install -vX.X.X base_geo\n	\nReplace the "X.X.X" with the specific version you are wanting to install, like this:\n\n	tools/spark install -v1.0.0 base_geo\n	\nOpen the config file - config/base_geo.php. Replace the "api_key" and "api_secret" values with your own from [http://simplegeo.com](http://simplegeo.com) - it''s totally free!\n	\n## Usage ##\n\n	$this->sparks->load("base_geo/X.X.X");\n	$locate_data = $this->base_geo->locate_ip(''1.1.1.1'');\n	\n## Functions ##\n\n* **locate_ip()** - retrieve geo-location data based on IP address.\n* **locate_address()** - retrieve geo-location data based on street address.', '<p><strong>Base_Geo</strong> is a library to make geo-location lookup''s stupid easy. Right now, you can look up an IP address or an address. </p>\n\n<h2>Installation</h2>\n\n<p>To install via Sparks, run the following:</p>\n\n<pre><code>tools/spark install -vX.X.X base_geo\n</code></pre>\n\n<p>Replace the "X.X.X" with the specific version you are wanting to install, like this:</p>\n\n<pre><code>tools/spark install -v1.0.0 base_geo\n</code></pre>\n\n<p>Open the config file - config/base<em>geo.php. Replace the "api</em>key" and "api_secret" values with your own from <a href="http://simplegeo.com">http://simplegeo.com</a> - it''s totally free!</p>\n\n<h2>Usage</h2>\n\n<pre><code>$this-&gt;sparks-&gt;load("base_geo/X.X.X");\n$locate_data = $this-&gt;base_geo-&gt;locate_ip(''1.1.1.1'');\n</code></pre>\n\n<h2>Functions</h2>\n\n<ul>\n<li><strong>locate_ip()</strong> - retrieve geo-location data based on IP address.</li>\n<li><strong>locate_address()</strong> - retrieve geo-location data based on street address.</li>\n</ul>\n', 0, 1, '2011-03-01 21:18:20', '2011-03-01 21:18:20');
INSERT INTO `versions` VALUES(47, 30, '0.3.7', '0.3.7', 'http://getsparks.org/static/archives/mongodb/mongodb-v0.3.7.zip', 'This is an active record inspired CodeIgniter library to integrate a MongoDB database into your application.\n\nAdd the file Mongo_db.php to your /application/libraries folder.\nAdd the file mongodb.php to your /application/config folder.\n\nUpdate the config file.\n\nYou can now autoload the library or include it in one of your controllers at run time.\n\nYou can interact with the database using many of the active record functions that CodeIgniter provides.\n\n	e.g.	$this->mongo_db->where_gte(''age'', 18)->where(array(''country'' => ''UK'', ''can_drink'' => TRUE))->get(''people'');\n	\nThe result will be an array of documents.\n\nLast update - 13th September 2010\n\n\n= Select Functions =\n\nSelect				Get select fields from returned documents\nWhere				Where section of the query\nWhere_in			Where something is in an array of something\nWhere_in_all		Where something is in all of an array of something\nWhere_not_in		Where something is not in array of something\nWhere_gt			Where something is greater than something\nWhere_gte			Where something is greater than or equal to something\nWhere_lt			Where something is less than something\nWhere_lte			Where something is less than or equal to something\nWhere_not_equal		Where something is not equal to something\nWhere_near			Where something is near to something (2d geospatial search)\nOrder_by			Order the results\nLimit				Limit the number of returned results\n\n= Insert Function =\n\nInsert				Insert a new document into a collection\n\n= Update Functions =\n\nUpdate				Update a single document in a collection\nUpdate_all			Update all documents in a collection\n\n= Delete Functions =\n\nDelete				Delete a single document in a collection\nDelete_all			Delete all documents in a collection\n\n= Index Functions =\nset_index			Creates a new index\ndelete_index		Deletes an index\n\n= Database Functions =\ndrop_db				Drops a database\nswitch_db			Switch to a different database\n\n= Collection Functions =\ndrop_collection		Drops a collection\n\n= TODO =\n\nMap/reduce\n\n= Maybes =\n\nAdd user\nSwitch to user\nRemove user\n', '<p>This is an active record inspired CodeIgniter library to integrate a MongoDB database into your application.</p>\n\n<p>Add the file Mongo_db.php to your /application/libraries folder.\nAdd the file mongodb.php to your /application/config folder.</p>\n\n<p>Update the config file.</p>\n\n<p>You can now autoload the library or include it in one of your controllers at run time.</p>\n\n<p>You can interact with the database using many of the active record functions that CodeIgniter provides.</p>\n\n<pre><code>e.g.    $this-&gt;mongo_db-&gt;where_gte(''age'', 18)-&gt;where(array(''country'' =&gt; ''UK'', ''can_drink'' =&gt; TRUE))-&gt;get(''people'');\n</code></pre>\n\n<p>The result will be an array of documents.</p>\n\n<p>Last update - 13th September 2010</p>\n\n<p>= Select Functions =</p>\n\n<p>Select              Get select fields from returned documents\nWhere               Where section of the query\nWhere<em>in            Where something is in an array of something\nWhere</em>in<em>all        Where something is in all of an array of something\nWhere</em>not<em>in        Where something is not in array of something\nWhere</em>gt            Where something is greater than something\nWhere<em>gte           Where something is greater than or equal to something\nWhere</em>lt            Where something is less than something\nWhere<em>lte           Where something is less than or equal to something\nWhere</em>not<em>equal     Where something is not equal to something\nWhere</em>near          Where something is near to something (2d geospatial search)\nOrder_by            Order the results\nLimit               Limit the number of returned results</p>\n\n<p>= Insert Function =</p>\n\n<p>Insert              Insert a new document into a collection</p>\n\n<p>= Update Functions =</p>\n\n<p>Update              Update a single document in a collection\nUpdate_all          Update all documents in a collection</p>\n\n<p>= Delete Functions =</p>\n\n<p>Delete              Delete a single document in a collection\nDelete_all          Delete all documents in a collection</p>\n\n<p>= Index Functions =\nset<em>index           Creates a new index\ndelete</em>index        Deletes an index</p>\n\n<p>= Database Functions =\ndrop<em>db             Drops a database\nswitch</em>db           Switch to a different database</p>\n\n<p>= Collection Functions =\ndrop_collection     Drops a collection</p>\n\n<p>= TODO =</p>\n\n<p>Map/reduce</p>\n\n<p>= Maybes =</p>\n\n<p>Add user\nSwitch to user\nRemove user</p>\n', 1, 1, '2011-03-02 16:09:32', '2011-03-02 16:09:32');
INSERT INTO `versions` VALUES(56, 30, '0.3.7.2', '0.3.7.2', 'http://getsparks.org/static/archives/mongodb/mongodb-v0.3.7.2.zip', 'This is an active record inspired CodeIgniter library to integrate a MongoDB database into your application.\n\nAdd the file Mongo_db.php to your /application/libraries folder.\nAdd the file mongodb.php to your /application/config folder.\n\nUpdate the config file.\n\nYou can now autoload the library or include it in one of your controllers at run time.\n\nYou can interact with the database using many of the active record functions that CodeIgniter provides.\n\n	e.g.	$this->mongo_db->where_gte(''age'', 18)->where(array(''country'' => ''UK'', ''can_drink'' => TRUE))->get(''people'');\n	\nThe result will be an array of documents.\n\nLast update - 13th September 2010\n\n\n= Select Functions =\n\nSelect				Get select fields from returned documents\nWhere				Where section of the query\nWhere_in			Where something is in an array of something\nWhere_in_all		Where something is in all of an array of something\nWhere_not_in		Where something is not in array of something\nWhere_gt			Where something is greater than something\nWhere_gte			Where something is greater than or equal to something\nWhere_lt			Where something is less than something\nWhere_lte			Where something is less than or equal to something\nWhere_not_equal		Where something is not equal to something\nWhere_near			Where something is near to something (2d geospatial search)\nOrder_by			Order the results\nLimit				Limit the number of returned results\n\n= Insert Function =\n\nInsert				Insert a new document into a collection\n\n= Update Functions =\n\nUpdate				Update a single document in a collection\nUpdate_all			Update all documents in a collection\n\n= Delete Functions =\n\nDelete				Delete a single document in a collection\nDelete_all			Delete all documents in a collection\n\n= Index Functions =\nset_index			Creates a new index\ndelete_index		Deletes an index\n\n= Database Functions =\ndrop_db				Drops a database\nswitch_db			Switch to a different database\n\n= Collection Functions =\ndrop_collection		Drops a collection\n\n= TODO =\n\nMap/reduce\n\n= Maybes =\n\nAdd user\nSwitch to user\nRemove user\n', '<p>This is an active record inspired CodeIgniter library to integrate a MongoDB database into your application.</p>\n\n<p>Add the file Mongo_db.php to your /application/libraries folder.\nAdd the file mongodb.php to your /application/config folder.</p>\n\n<p>Update the config file.</p>\n\n<p>You can now autoload the library or include it in one of your controllers at run time.</p>\n\n<p>You can interact with the database using many of the active record functions that CodeIgniter provides.</p>\n\n<pre><code>e.g.    $this-&gt;mongo_db-&gt;where_gte(''age'', 18)-&gt;where(array(''country'' =&gt; ''UK'', ''can_drink'' =&gt; TRUE))-&gt;get(''people'');\n</code></pre>\n\n<p>The result will be an array of documents.</p>\n\n<p>Last update - 13th September 2010</p>\n\n<p>= Select Functions =</p>\n\n<p>Select              Get select fields from returned documents\nWhere               Where section of the query\nWhere<em>in            Where something is in an array of something\nWhere</em>in<em>all        Where something is in all of an array of something\nWhere</em>not<em>in        Where something is not in array of something\nWhere</em>gt            Where something is greater than something\nWhere<em>gte           Where something is greater than or equal to something\nWhere</em>lt            Where something is less than something\nWhere<em>lte           Where something is less than or equal to something\nWhere</em>not<em>equal     Where something is not equal to something\nWhere</em>near          Where something is near to something (2d geospatial search)\nOrder_by            Order the results\nLimit               Limit the number of returned results</p>\n\n<p>= Insert Function =</p>\n\n<p>Insert              Insert a new document into a collection</p>\n\n<p>= Update Functions =</p>\n\n<p>Update              Update a single document in a collection\nUpdate_all          Update all documents in a collection</p>\n\n<p>= Delete Functions =</p>\n\n<p>Delete              Delete a single document in a collection\nDelete_all          Delete all documents in a collection</p>\n\n<p>= Index Functions =\nset<em>index           Creates a new index\ndelete</em>index        Deletes an index</p>\n\n<p>= Database Functions =\ndrop<em>db             Drops a database\nswitch</em>db           Switch to a different database</p>\n\n<p>= Collection Functions =\ndrop_collection     Drops a collection</p>\n\n<p>= TODO =</p>\n\n<p>Map/reduce</p>\n\n<p>= Maybes =</p>\n\n<p>Add user\nSwitch to user\nRemove user</p>\n', 0, 1, '2011-03-02 16:32:10', '2011-03-02 16:32:10');
INSERT INTO `versions` VALUES(62, 29, '1.0.1', '1.0.1', 'http://getsparks.org/static/archives/table_torch/table_torch-v1.0.1.zip', '# Table Torch Scaffolding Spark version 1.0\n\nTable Torch is a custom scaffolding system that can be used for common administration tasks of tables in your CodeIgniter Application. Table Torch is different from the traditional scaffold you are used to in the fact that its customizable, and is quite extensible.\n\n## Core Features\n\n-  Set what tables and what fields of those tables you would like editable by Table Torch in your config file\n-  Set what actions can be performed on each table, add, edit, delete\n-  Searchable, sortable Listing pages\n-  After editing or adding, you will return to the listing page in the previous state, pagination, sorting, search criteria in tact.\n-  Views can be overridden from your controller\n-  CRUD callbacks available to your controller\n\n## Setup Your Config Preferences\n\nIn sparks/table-torch/config/table_torch.php you will find the preferences for running your scaffold. The config file is well commented.\n\n## Basic Usage From Your Controller\n\n    function __construct(){\n		parent::__construct();\n		// you would obviously need to do your authorization prior to letting the world see your Table Torch\n		$this->load->spark( ''table-torch/1.0'');\n	}\n\n	function index(){\n		// you can do this in any method you like does not have to be the index\n		$this->table_torch->route();\n	}\n\n## Overriding the Table Torch Views\nYou have the ability to override any action of Table Torch. To do so just add the action to the controller from which you used Table Torch and it will use your method instead, while still passing you all the data that Table Torch fetched for the page. The example below overrides edit page of the "users" table.\n\n### Actions That Can Be Overridden\n\n-  [tableName]_add ( creating a new row )\n-  [tableName]_edit ( the editing of an existing row )\n-  [tableName]_listing ( the listing of all rows )\n\n### Loading Your Own View after an override\n\nIf you wish to load your own view for the page, specify FALSE in the third param. Or you can use the Table torch view. Either way, you will be using the template file specified in the *sparks/table-torch/1.0/config/table_torch.php* file\n\n	// your custom view loaded\n	function users_edit( $data ){\n		// print_r( $data );\n		$this->table_torch->load_view( ''user/edit'', $data, FALSE );\n	}\n	\n	// the normal Table Torch view loaded\n	function users_edit( $data ){\n		// print_r( $data );\n		$this->table_torch->load_view( ''form'', $data, TRUE );\n	}\n\n## Callback Hooks\nYou can preform additional functions before or after the Table Torch form submissions. Available callbacks are \n\n-  before_insert\n-  after_insert\n-  before_update\n-  after_update\n-  before_delete\n-  after_delete\n\n## Example of Callbacks\n\n	function before_delete( $table, $primary_key ){\n		// do what you need to before deleting the row here, you are given the table and primary key being deleted...\n	}\n\n	function before_insert( $table, $data ){\n		/*\n		do what you need to do before inserting\n		You must return the data that will be inserted\n		*/\n		return $data;\n	}\n\n	function before_update( $table, $data ){\n		/*\n		do what you need to before updating a row\n		you must return the data from this method\n		*/\n		return $data;\n	}\n\n	function after_insert( $table, $data ){\n		// do what you need to do before inserting\n	}\n\n	function after_update( $table, $data ){\n		// do what you need to before updating a row\n	}\n\n', '<h1>Table Torch Scaffolding Spark version 1.0</h1>\n\n<p>Table Torch is a custom scaffolding system that can be used for common administration tasks of tables in your CodeIgniter Application. Table Torch is different from the traditional scaffold you are used to in the fact that its customizable, and is quite extensible.</p>\n\n<h2>Core Features</h2>\n\n<ul>\n<li>Set what tables and what fields of those tables you would like editable by Table Torch in your config file</li>\n<li>Set what actions can be performed on each table, add, edit, delete</li>\n<li>Searchable, sortable Listing pages</li>\n<li>After editing or adding, you will return to the listing page in the previous state, pagination, sorting, search criteria in tact.</li>\n<li>Views can be overridden from your controller</li>\n<li>CRUD callbacks available to your controller</li>\n</ul>\n\n<h2>Setup Your Config Preferences</h2>\n\n<p>In sparks/table-torch/config/table_torch.php you will find the preferences for running your scaffold. The config file is well commented.</p>\n\n<h2>Basic Usage From Your Controller</h2>\n\n<pre><code>function __construct(){\n    parent::__construct();\n    // you would obviously need to do your authorization prior to letting the world see your Table Torch\n    $this-&gt;load-&gt;spark( ''table-torch/1.0'');\n}\n\nfunction index(){\n    // you can do this in any method you like does not have to be the index\n    $this-&gt;table_torch-&gt;route();\n}\n</code></pre>\n\n<h2>Overriding the Table Torch Views</h2>\n\n<p>You have the ability to override any action of Table Torch. To do so just add the action to the controller from which you used Table Torch and it will use your method instead, while still passing you all the data that Table Torch fetched for the page. The example below overrides edit page of the "users" table.</p>\n\n<h3>Actions That Can Be Overridden</h3>\n\n<ul>\n<li>[tableName]_add ( creating a new row )</li>\n<li>[tableName]_edit ( the editing of an existing row )</li>\n<li>[tableName]_listing ( the listing of all rows )</li>\n</ul>\n\n<h3>Loading Your Own View after an override</h3>\n\n<p>If you wish to load your own view for the page, specify FALSE in the third param. Or you can use the Table torch view. Either way, you will be using the template file specified in the <em>sparks/table-torch/1.0/config/table_torch.php</em> file</p>\n\n<pre><code>// your custom view loaded\nfunction users_edit( $data ){\n    // print_r( $data );\n    $this-&gt;table_torch-&gt;load_view( ''user/edit'', $data, FALSE );\n}\n\n// the normal Table Torch view loaded\nfunction users_edit( $data ){\n    // print_r( $data );\n    $this-&gt;table_torch-&gt;load_view( ''form'', $data, TRUE );\n}\n</code></pre>\n\n<h2>Callback Hooks</h2>\n\n<p>You can preform additional functions before or after the Table Torch form submissions. Available callbacks are </p>\n\n<ul>\n<li>before_insert</li>\n<li>after_insert</li>\n<li>before_update</li>\n<li>after_update</li>\n<li>before_delete</li>\n<li>after_delete</li>\n</ul>\n\n<h2>Example of Callbacks</h2>\n\n<pre><code>function before_delete( $table, $primary_key ){\n    // do what you need to before deleting the row here, you are given the table and primary key being deleted...\n}\n\nfunction before_insert( $table, $data ){\n    /*\n    do what you need to do before inserting\n    You must return the data that will be inserted\n    */\n    return $data;\n}\n\nfunction before_update( $table, $data ){\n    /*\n    do what you need to before updating a row\n    you must return the data from this method\n    */\n    return $data;\n}\n\nfunction after_insert( $table, $data ){\n    // do what you need to do before inserting\n}\n\nfunction after_update( $table, $data ){\n    // do what you need to before updating a row\n}\n</code></pre>\n', 1, 1, '2011-03-02 16:58:49', '2011-03-02 16:58:49');
INSERT INTO `versions` VALUES(63, 29, '1.0.2', '1.0.2', 'http://getsparks.org/static/archives/table_torch/table_torch-v1.0.2.zip', '# Table Torch Scaffolding Spark\n\nTable Torch is a custom scaffolding system that can be used for common administration tasks of tables in your CodeIgniter Application. Table Torch is different from the traditional scaffold you are used to in the fact that its customizable, and is quite extensible.\n\n## Core Features\n\n-  Set what tables and what fields of those tables you would like editable by Table Torch in your config file\n-  Set what actions can be performed on each table, add, edit, delete\n-  Searchable, sortable Listing pages\n-  After editing or adding, you will return to the listing page in the previous state, pagination, sorting, search criteria in tact.\n-  Views can be overridden from your controller\n-  CRUD callbacks available to your controller\n\n## Setup Your Config Preferences\n\nIn sparks/table-torch/config/table_torch.php you will find the preferences for running your scaffold. The config file is well commented.\n\n## Basic Usage From Your Controller\n\n    function __construct(){\n		parent::__construct();\n		// you would obviously need to do your authorization prior to letting the world see your Table Torch\n		$this->load->spark( ''table-torch/[version #]'');\n	}\n\n	function index(){\n		// you can do this in any method you like does not have to be the index\n		$this->table_torch->route();\n	}\n\n## Overriding the Table Torch Views\nYou have the ability to override any action of Table Torch. To do so just add the action to the controller from which you used Table Torch and it will use your method instead, while still passing you all the data that Table Torch fetched for the page. The example below overrides edit page of the "users" table.\n\n### Actions That Can Be Overridden\n\n-  [tableName]_add ( creating a new row )\n-  [tableName]_edit ( the editing of an existing row )\n-  [tableName]_listing ( the listing of all rows )\n\n### Loading Your Own View after an override\n\nIf you wish to load your own view for the page, specify FALSE in the third param. Or you can use the Table torch view. Either way, you will be using the template file specified in the *sparks/table-torch/1.0/config/table_torch.php* file\n\n	// your custom view loaded\n	function users_edit( $data ){\n		// print_r( $data );\n		$this->table_torch->load_view( ''user/edit'', $data, FALSE );\n	}\n	\n	// the normal Table Torch view loaded\n	function users_edit( $data ){\n		// print_r( $data );\n		$this->table_torch->load_view( ''form'', $data, TRUE );\n	}\n\n## Callback Hooks\nYou can preform additional functions before or after the Table Torch form submissions. Available callbacks are \n\n-  before_insert\n-  after_insert\n-  before_update\n-  after_update\n-  before_delete\n-  after_delete\n\n## Example of Callbacks\n\n	function before_delete( $table, $primary_key ){\n		// do what you need to before deleting the row here, you are given the table and primary key being deleted...\n	}\n\n	function before_insert( $table, $data ){\n		/*\n		do what you need to do before inserting\n		You must return the data that will be inserted\n		*/\n		return $data;\n	}\n\n	function before_update( $table, $data ){\n		/*\n		do what you need to before updating a row\n		you must return the data from this method\n		*/\n		return $data;\n	}\n\n	function after_insert( $table, $data ){\n		// do what you need to do before inserting\n	}\n\n	function after_update( $table, $data ){\n		// do what you need to before updating a row\n	}\n\n', '<h1>Table Torch Scaffolding Spark</h1>\n\n<p>Table Torch is a custom scaffolding system that can be used for common administration tasks of tables in your CodeIgniter Application. Table Torch is different from the traditional scaffold you are used to in the fact that its customizable, and is quite extensible.</p>\n\n<h2>Core Features</h2>\n\n<ul>\n<li>Set what tables and what fields of those tables you would like editable by Table Torch in your config file</li>\n<li>Set what actions can be performed on each table, add, edit, delete</li>\n<li>Searchable, sortable Listing pages</li>\n<li>After editing or adding, you will return to the listing page in the previous state, pagination, sorting, search criteria in tact.</li>\n<li>Views can be overridden from your controller</li>\n<li>CRUD callbacks available to your controller</li>\n</ul>\n\n<h2>Setup Your Config Preferences</h2>\n\n<p>In sparks/table-torch/config/table_torch.php you will find the preferences for running your scaffold. The config file is well commented.</p>\n\n<h2>Basic Usage From Your Controller</h2>\n\n<pre><code>function __construct(){\n    parent::__construct();\n    // you would obviously need to do your authorization prior to letting the world see your Table Torch\n    $this-&gt;load-&gt;spark( ''table-torch/[version #]'');\n}\n\nfunction index(){\n    // you can do this in any method you like does not have to be the index\n    $this-&gt;table_torch-&gt;route();\n}\n</code></pre>\n\n<h2>Overriding the Table Torch Views</h2>\n\n<p>You have the ability to override any action of Table Torch. To do so just add the action to the controller from which you used Table Torch and it will use your method instead, while still passing you all the data that Table Torch fetched for the page. The example below overrides edit page of the "users" table.</p>\n\n<h3>Actions That Can Be Overridden</h3>\n\n<ul>\n<li>[tableName]_add ( creating a new row )</li>\n<li>[tableName]_edit ( the editing of an existing row )</li>\n<li>[tableName]_listing ( the listing of all rows )</li>\n</ul>\n\n<h3>Loading Your Own View after an override</h3>\n\n<p>If you wish to load your own view for the page, specify FALSE in the third param. Or you can use the Table torch view. Either way, you will be using the template file specified in the <em>sparks/table-torch/1.0/config/table_torch.php</em> file</p>\n\n<pre><code>// your custom view loaded\nfunction users_edit( $data ){\n    // print_r( $data );\n    $this-&gt;table_torch-&gt;load_view( ''user/edit'', $data, FALSE );\n}\n\n// the normal Table Torch view loaded\nfunction users_edit( $data ){\n    // print_r( $data );\n    $this-&gt;table_torch-&gt;load_view( ''form'', $data, TRUE );\n}\n</code></pre>\n\n<h2>Callback Hooks</h2>\n\n<p>You can preform additional functions before or after the Table Torch form submissions. Available callbacks are </p>\n\n<ul>\n<li>before_insert</li>\n<li>after_insert</li>\n<li>before_update</li>\n<li>after_update</li>\n<li>before_delete</li>\n<li>after_delete</li>\n</ul>\n\n<h2>Example of Callbacks</h2>\n\n<pre><code>function before_delete( $table, $primary_key ){\n    // do what you need to before deleting the row here, you are given the table and primary key being deleted...\n}\n\nfunction before_insert( $table, $data ){\n    /*\n    do what you need to do before inserting\n    You must return the data that will be inserted\n    */\n    return $data;\n}\n\nfunction before_update( $table, $data ){\n    /*\n    do what you need to before updating a row\n    you must return the data from this method\n    */\n    return $data;\n}\n\nfunction after_insert( $table, $data ){\n    // do what you need to do before inserting\n}\n\nfunction after_update( $table, $data ){\n    // do what you need to before updating a row\n}\n</code></pre>\n', 0, 1, '2011-03-02 17:46:49', '2011-03-02 17:46:49');
INSERT INTO `versions` VALUES(64, 32, '0.1', '0.1', 'http://getsparks.org/static/archives/fire_log/fire_log-v0.1.zip', '', '\n', 0, 1, '2011-03-03 16:52:57', '2011-03-03 16:52:57');
INSERT INTO `versions` VALUES(65, 32, '0.2', '0.2', 'http://getsparks.org/static/archives/fire_log/fire_log-v0.2.zip', '# Fire Log Spark\n\nFire Log is a spark that lets you browse all the log files in your application/logs directory. \n\n-  You can filter what types of items you would like to view DEBUG, ERROR, INFO\n-  You can delete logs files from Fire Log to clear out your logs\n-  Fire log uses a view that you can easily customize in sparks/fire\\_log/[version]/views/fire\\_log_view.php\n-  You can change if tags are stripped in logs or not from the config\n-  Language file for all text used\n\n## Usage\n\nReally Simple...\n    \n	// in your controller\n	function logs(){\n		/*\n		highly advised that you use authentification before running this controller to keep the world out of your logs!!!\n		you can use whatever method you like does not have to be logs\n		*/\n		$this->load->spark( ''fire_log/[version #]'');\n		// thats it, ill take if from there\n	}\n', '<h1>Fire Log Spark</h1>\n\n<p>Fire Log is a spark that lets you browse all the log files in your application/logs directory. </p>\n\n<ul>\n<li>You can filter what types of items you would like to view DEBUG, ERROR, INFO</li>\n<li>You can delete logs files from Fire Log to clear out your logs</li>\n<li>Fire log uses a view that you can easily customize in sparks/fire&#95;log/[version]/views/fire&#95;log_view.php</li>\n<li>You can change if tags are stripped in logs or not from the config</li>\n<li>Language file for all text used</li>\n</ul>\n\n<h2>Usage</h2>\n\n<p>Really Simple...</p>\n\n<pre><code>// in your controller\nfunction logs(){\n    /*\n    highly advised that you use authentification before running this controller to keep the world out of your logs!!!\n    you can use whatever method you like does not have to be logs\n    */\n    $this-&gt;load-&gt;spark( ''fire_log/[version #]'');\n    // thats it, ill take if from there\n}\n</code></pre>\n', 0, 1, '2011-03-03 16:55:31', '2011-03-03 16:55:31');
INSERT INTO `versions` VALUES(66, 32, '0.3', '0.3', 'http://getsparks.org/static/archives/fire_log/fire_log-v0.3.zip', '# Fire Log Spark\n\nFire Log is a spark that lets you browse all the log files in your application/logs directory. \n\n-  You can filter what types of items you would like to view DEBUG, ERROR, INFO\n-  You can delete logs files from Fire Log to clear out your logs\n-  Fire log uses a view that you can easily customize in sparks/fire\\_log/[version]/views/fire\\_log_view.php\n-  You can change if tags are stripped in logs or not from the config\n-  Language file for all text used\n\n## Usage\n\nReally Simple...\n    \n	// in your controller\n	function logs(){\n		/*\n		highly advised that you use authentification before running this controller to keep the world out of your logs!!!\n		you can use whatever method you like does not have to be logs\n		*/\n		$this->load->spark( ''fire_log/[version #]'');\n		// thats it, ill take if from there\n	}\n', '<h1>Fire Log Spark</h1>\n\n<p>Fire Log is a spark that lets you browse all the log files in your application/logs directory. </p>\n\n<ul>\n<li>You can filter what types of items you would like to view DEBUG, ERROR, INFO</li>\n<li>You can delete logs files from Fire Log to clear out your logs</li>\n<li>Fire log uses a view that you can easily customize in sparks/fire&#95;log/[version]/views/fire&#95;log_view.php</li>\n<li>You can change if tags are stripped in logs or not from the config</li>\n<li>Language file for all text used</li>\n</ul>\n\n<h2>Usage</h2>\n\n<p>Really Simple...</p>\n\n<pre><code>// in your controller\nfunction logs(){\n    /*\n    highly advised that you use authentification before running this controller to keep the world out of your logs!!!\n    you can use whatever method you like does not have to be logs\n    */\n    $this-&gt;load-&gt;spark( ''fire_log/[version #]'');\n    // thats it, ill take if from there\n}\n</code></pre>\n', 0, 1, '2011-03-04 02:34:41', '2011-03-04 02:34:41');
INSERT INTO `versions` VALUES(67, 33, '1.0', '1.0', 'http://getsparks.org/static/archives/tmdb/tmdb-v1.0.zip', 'This is the first library I have released which is a TMDb (The Movie Database) Library that I wrote that allows easy access to most of the methods in the TMDb API and returns the response in an array. It still needs a lot of work, but please let me know what you think and give me some feedback and suggestions.\n\nLoading the library is simple and works in the usual way\n\n	$this->load->library(''TMDb'');\n\nSo now the library is loaded, you will want to make your first call. Usually you would call the TMDb API URL such as http://api.themoviedb.org/2.1/Movie.getInfo/en/json/APIKEY/187 but to call this same method using this library its as simple as.\n\n	$data = $this->tmdb->call(''APIKEY'', ''Movie.getInfo'', ''187'');\n\nYou can then use this $data array to show any of the nodes that would usually appear in the TMDb response. For example, if you wanted to show the name of the movie, you would write\n\n	echo $data->name;\n\nThats a short example on how you can use this library, a more detailed documentation is coming soon.\n\nEnjoy!', '<p>This is the first library I have released which is a TMDb (The Movie Database) Library that I wrote that allows easy access to most of the methods in the TMDb API and returns the response in an array. It still needs a lot of work, but please let me know what you think and give me some feedback and suggestions.</p>\n\n<p>Loading the library is simple and works in the usual way</p>\n\n<pre><code>$this-&gt;load-&gt;library(''TMDb'');\n</code></pre>\n\n<p>So now the library is loaded, you will want to make your first call. Usually you would call the TMDb API URL such as http://api.themoviedb.org/2.1/Movie.getInfo/en/json/APIKEY/187 but to call this same method using this library its as simple as.</p>\n\n<pre><code>$data = $this-&gt;tmdb-&gt;call(''APIKEY'', ''Movie.getInfo'', ''187'');\n</code></pre>\n\n<p>You can then use this $data array to show any of the nodes that would usually appear in the TMDb response. For example, if you wanted to show the name of the movie, you would write</p>\n\n<pre><code>echo $data-&gt;name;\n</code></pre>\n\n<p>Thats a short example on how you can use this library, a more detailed documentation is coming soon.</p>\n\n<p>Enjoy!</p>\n', 1, 1, '2011-03-04 02:34:49', '2011-03-04 02:34:49');
INSERT INTO `versions` VALUES(68, 22, 'v0.1.1', 'v0.1.1', 'http://getsparks.org/static/archives/amazon-ses/amazon-ses-vv0.1.1.zip', 'CodeIgniter Amazon SES\n======================\nA CodeIgniter library to interact with Amazon Web Services (AWS) Simple Email Service (SES). This library was designed with the standard CodeIgniter email class in mind. As a result, most methods look the same, ensuring a minimal learning curve.\n\nNOTE: this code is still under heavy development and currently provides only the very basics of the AWS SES API (don''t you like acronyms?), sending email.\n\nRequirements\n------------\n1. PHP 5.1+\n2. CodeIgniter 2.0+ (http://codeigniter.com)\n3. libcurl\n4. Phil Sturgeon''s CodeIgniter cURL library (http://github.com/philsturgeon/codeigniter-curl)\n5. Amazon Web Services account (http://aws.amazon.com)\n\nSpark\n-------------\nThis library is also released as a Spark (GetSparks.org). If you use this library in any other way, **don''t copy the autoload.php to your config directory**.\n\nDocumentation\n-------------\n\n### Configuration\nThis library expects a configuration file to function correctly. A template for this file is provided with the library. \n\n### Recipients\n\nSet the "To" address(es) for a message.\n\n    $this->amazon_ses->to(''to1@example.com'');\n\nSet the "CC" address(es) (carbon copy) for a message.\n\n	$this->amazon_ses->cc(''cc1@example.com, cc2@example.com'');\n\nSet the "BCC" address(es) (blind carbon copy) for a message.\n\n	$this->amazon_ses->bcc(array(''bcc1@example.com'', ''bcc2@example.com'', ''bcc3@example.com''));\n	\nThese three methods expect valid e-mail addresses as a string, array or comma separated list.\n\n###Message\n\nSet the subject for a message.\n\n	$this->amazon_ses->subject(''Open me!'');\n	\nSet the message to be sent.\n\n	$this->amazon_ses->message(''<strong>Use HTML</strong>'');\n\nSet the alternative message (plain-text) to be sent. When not specified, an alternative message is generated by using PHP''s strip_tags() function.\n\n	$this->amazon_ses->message_alt(''No HTML?!'');\n\nSends the message. Returns true on success.\n\n    $this->amazon_ses->send();\n\n###Misc\n\nSends the message in debug mode. In debug mode, the send() methods returns the actual API response instead of a boolean. Call this method before calling the send method.\n	\n	$this->amazon_ses->debug();\n\nPreserves recipient after the message has been successfully send. When you call this method, all recipients will be preserved during the objects life. This makes it possible to sent an additional message without re-specifying the recipients.\n	\n	$this->amazon_ses->destroy();\n\nContributing\n------------\nI am a firm believer of social coding, so <strike>if</strike> when you find a bug, please fork my code on GitHub (http://github.com/joelcox/codeigniter-amazon-ses) and squash it. I will be happy to merge it back in to the code base (and add you to the "Thanks to" section). If you''re not too comfortable using Git or messing with the inner workings of this library, please open a new issue (http://github.com/joelcox/codeigniter-amazon-ses/issues). \n\nThanks to\n---------\n* Phil Sturgeon (http://philsturgeon.co.uk), for creating the CodeIgniter cURL library (http://github.com/philsturgeon/codeigniter-curl) and thus taking care of all the cURL hassle.', '<h1>CodeIgniter Amazon SES</h1>\n\n<p>A CodeIgniter library to interact with Amazon Web Services (AWS) Simple Email Service (SES). This library was designed with the standard CodeIgniter email class in mind. As a result, most methods look the same, ensuring a minimal learning curve.</p>\n\n<p>NOTE: this code is still under heavy development and currently provides only the very basics of the AWS SES API (don''t you like acronyms?), sending email.</p>\n\n<h2>Requirements</h2>\n\n<ol>\n<li>PHP 5.1+</li>\n<li>CodeIgniter 2.0+ (http://codeigniter.com)</li>\n<li>libcurl</li>\n<li>Phil Sturgeon''s CodeIgniter cURL library (http://github.com/philsturgeon/codeigniter-curl)</li>\n<li>Amazon Web Services account (http://aws.amazon.com)</li>\n</ol>\n\n<h2>Spark</h2>\n\n<p>This library is also released as a Spark (GetSparks.org). If you use this library in any other way, <strong>don''t copy the autoload.php to your config directory</strong>.</p>\n\n<h2>Documentation</h2>\n\n<h3>Configuration</h3>\n\n<p>This library expects a configuration file to function correctly. A template for this file is provided with the library. </p>\n\n<h3>Recipients</h3>\n\n<p>Set the "To" address(es) for a message.</p>\n\n<pre><code>$this-&gt;amazon_ses-&gt;to(''to1@example.com'');\n</code></pre>\n\n<p>Set the "CC" address(es) (carbon copy) for a message.</p>\n\n<pre><code>$this-&gt;amazon_ses-&gt;cc(''cc1@example.com, cc2@example.com'');\n</code></pre>\n\n<p>Set the "BCC" address(es) (blind carbon copy) for a message.</p>\n\n<pre><code>$this-&gt;amazon_ses-&gt;bcc(array(''bcc1@example.com'', ''bcc2@example.com'', ''bcc3@example.com''));\n</code></pre>\n\n<p>These three methods expect valid e-mail addresses as a string, array or comma separated list.</p>\n\n<h3>Message</h3>\n\n<p>Set the subject for a message.</p>\n\n<pre><code>$this-&gt;amazon_ses-&gt;subject(''Open me!'');\n</code></pre>\n\n<p>Set the message to be sent.</p>\n\n<pre><code>$this-&gt;amazon_ses-&gt;message(''&lt;strong&gt;Use HTML&lt;/strong&gt;'');\n</code></pre>\n\n<p>Set the alternative message (plain-text) to be sent. When not specified, an alternative message is generated by using PHP''s strip_tags() function.</p>\n\n<pre><code>$this-&gt;amazon_ses-&gt;message_alt(''No HTML?!'');\n</code></pre>\n\n<p>Sends the message. Returns true on success.</p>\n\n<pre><code>$this-&gt;amazon_ses-&gt;send();\n</code></pre>\n\n<h3>Misc</h3>\n\n<p>Sends the message in debug mode. In debug mode, the send() methods returns the actual API response instead of a boolean. Call this method before calling the send method.</p>\n\n<pre><code>$this-&gt;amazon_ses-&gt;debug();\n</code></pre>\n\n<p>Preserves recipient after the message has been successfully send. When you call this method, all recipients will be preserved during the objects life. This makes it possible to sent an additional message without re-specifying the recipients.</p>\n\n<pre><code>$this-&gt;amazon_ses-&gt;destroy();\n</code></pre>\n\n<h2>Contributing</h2>\n\n<p>I am a firm believer of social coding, so <strike>if</strike> when you find a bug, please fork my code on GitHub (http://github.com/joelcox/codeigniter-amazon-ses) and squash it. I will be happy to merge it back in to the code base (and add you to the "Thanks to" section). If you''re not too comfortable using Git or messing with the inner workings of this library, please open a new issue (http://github.com/joelcox/codeigniter-amazon-ses/issues). </p>\n\n<h2>Thanks to</h2>\n\n<ul>\n<li>Phil Sturgeon (http://philsturgeon.co.uk), for creating the CodeIgniter cURL library (http://github.com/philsturgeon/codeigniter-curl) and thus taking care of all the cURL hassle.</li>\n</ul>\n', 0, 1, '2011-03-04 10:57:22', '2011-03-04 10:57:22');
INSERT INTO `versions` VALUES(69, 34, 'v0.3', 'v0.3', 'http://getsparks.org/static/archives/assets/assets-vv0.3.zip', '# Simple Assets Library\n\nA simple assets library that has the ability to combine and minify your JavaScript and CSS assets.\nAdditionally there''s a <a href="http://leafo.net/lessphp/">LessPHP</a> compiler, based on the original Ruby implementation.\n\n## Third Party Libraries\n\nThe libraries <a href="http://code.google.com/p/jsmin-php/">JSMin</a>, <a href="http://code.google.com/p/minify/">CSSMin</a> and <a href="http://leafo.net/lessphp/">LessPHP</a> are all created by third parties, but they''re included in this package for convinience.\n\n## Requirements\n\n1. PHP 5.1+\n2. CodeIgniter 2.0\n3. Directory structure for the assets files, with a writeable cache directory\n\n## Documentation\n\nSet all your preferences in the config file (assets directories, options to minify, combine and parse with LessPHP).\nNow you can use the helper methods in your views like this:\n	\n	<?php display_css(array(''init.css'', ''style.css'')); ?>\n	<?php display_js(array(''libs/modernizr-1.6.js'', ''libs/jquery-1.4.4.js'', ''plugins.js'', ''script.js'')); ?>\n\nThere''s also a method for clearing all cached files:\n	\n	$this->assets->clear_cache();\n\nThe default configuration assumes your assets directory is in the root of your project. Be sure to set the permissions for the cache directory so it can be writeable.\n\n## Directory structure example\n\n	/application\n	/assets\n		/cache\n		/css\n		/images\n		/js\n	/sparks\n	/system\n\n## Additional info\n\nIf you set the minify options and combine option in your configuration to false, LessPHP won''t work. This will work in future releases.', '<h1>Simple Assets Library</h1>\n\n<p>A simple assets library that has the ability to combine and minify your JavaScript and CSS assets.\nAdditionally there''s a <a href="http://leafo.net/lessphp/">LessPHP</a> compiler, based on the original Ruby implementation.</p>\n\n<h2>Third Party Libraries</h2>\n\n<p>The libraries <a href="http://code.google.com/p/jsmin-php/">JSMin</a>, <a href="http://code.google.com/p/minify/">CSSMin</a> and <a href="http://leafo.net/lessphp/">LessPHP</a> are all created by third parties, but they''re included in this package for convinience.</p>\n\n<h2>Requirements</h2>\n\n<ol>\n<li>PHP 5.1+</li>\n<li>CodeIgniter 2.0</li>\n<li>Directory structure for the assets files, with a writeable cache directory</li>\n</ol>\n\n<h2>Documentation</h2>\n\n<p>Set all your preferences in the config file (assets directories, options to minify, combine and parse with LessPHP).\nNow you can use the helper methods in your views like this:</p>\n\n<pre><code>&lt;?php display_css(array(''init.css'', ''style.css'')); ?&gt;\n&lt;?php display_js(array(''libs/modernizr-1.6.js'', ''libs/jquery-1.4.4.js'', ''plugins.js'', ''script.js'')); ?&gt;\n</code></pre>\n\n<p>There''s also a method for clearing all cached files:</p>\n\n<pre><code>$this-&gt;assets-&gt;clear_cache();\n</code></pre>\n\n<p>The default configuration assumes your assets directory is in the root of your project. Be sure to set the permissions for the cache directory so it can be writeable.</p>\n\n<h2>Directory structure example</h2>\n\n<pre><code>/application\n/assets\n    /cache\n    /css\n    /images\n    /js\n/sparks\n/system\n</code></pre>\n\n<h2>Additional info</h2>\n\n<p>If you set the minify options and combine option in your configuration to false, LessPHP won''t work. This will work in future releases.</p>\n', 0, 1, '2011-03-04 16:52:34', '2011-03-04 16:52:34');
INSERT INTO `versions` VALUES(71, 35, 'v0.2', 'v0.2', 'http://getsparks.org/static/archives/assets-helper/assets-helper-vv0.2.zip', 'Helper to load Assets to your project.\n\nTo use this helper you must create a assets folder into your home directory.\n\nassets/\nassets/css\nassets/js\n\n\nIn order to use it you can do like this:\n\n$data[''css''] = load_css(''global.css'');\n// -- OR --\n$data[''css''] = load_css(array(''global.css'',''page.css''));\n// -- OR --\n$data[''css''] = load_css(array(\n	array(''screen.css'', ''screen, projection''),\n	array(''print.css'', ''print''),\n));\n\n$data[''js''] = load_js(array(''js1.js'',''js2.js''));\n\n$this->load->view(''example'',$data);\n\n\nexample.php\n<head>\n<?php echo $js; ?>\n<?php echo $css; ?>\n</head>\n', '<p>Helper to load Assets to your project.</p>\n\n<p>To use this helper you must create a assets folder into your home directory.</p>\n\n<p>assets/\nassets/css\nassets/js</p>\n\n<p>In order to use it you can do like this:</p>\n\n<p>$data[''css''] = load<em>css(''global.css'');\n// -- OR --\n$data[''css''] = load</em>css(array(''global.css'',''page.css''));\n// -- OR --\n$data[''css''] = load_css(array(\n    array(''screen.css'', ''screen, projection''),\n    array(''print.css'', ''print''),\n));</p>\n\n<p>$data[''js''] = load_js(array(''js1.js'',''js2.js''));</p>\n\n<p>$this->load->view(''example'',$data);</p>\n\n<p>example.php\n<head>\n<?php echo $js; ?>\n<?php echo $css; ?>\n</head></p>\n', 0, 1, '2011-03-04 20:11:23', '2011-03-04 20:11:23');
INSERT INTO `versions` VALUES(73, 33, '1.0', '1.0', 'http://getsparks.org/static/archives/tmdb/tmdb-v1.0.zip', 'This is the first library I have released which is a TMDb (The Movie Database) Library that I wrote that allows easy access to most of the methods in the TMDb API and returns the response in an array. It still needs a lot of work, but please let me know what you think and give me some feedback and suggestions.\n\nLoading the library is simple and works in the usual way\n\n	$this->load->library(''TMDb'');\n\nSo now the library is loaded, you will want to make your first call. Usually you would call the TMDb API URL such as http://api.themoviedb.org/2.1/Movie.getInfo/en/json/APIKEY/187 but to call this same method using this library its as simple as.\n\n	$data = $this->tmdb->call(''APIKEY'', ''Movie.getInfo'', ''187'');\n\nYou can then use this $data array to show any of the nodes that would usually appear in the TMDb response. For example, if you wanted to show the name of the movie, you would write\n\n	echo $data->name;\n\nThats a short example on how you can use this library, a more detailed documentation is coming soon.\n\nEnjoy!', '<p>This is the first library I have released which is a TMDb (The Movie Database) Library that I wrote that allows easy access to most of the methods in the TMDb API and returns the response in an array. It still needs a lot of work, but please let me know what you think and give me some feedback and suggestions.</p>\n\n<p>Loading the library is simple and works in the usual way</p>\n\n<pre><code>$this-&gt;load-&gt;library(''TMDb'');\n</code></pre>\n\n<p>So now the library is loaded, you will want to make your first call. Usually you would call the TMDb API URL such as http://api.themoviedb.org/2.1/Movie.getInfo/en/json/APIKEY/187 but to call this same method using this library its as simple as.</p>\n\n<pre><code>$data = $this-&gt;tmdb-&gt;call(''APIKEY'', ''Movie.getInfo'', ''187'');\n</code></pre>\n\n<p>You can then use this $data array to show any of the nodes that would usually appear in the TMDb response. For example, if you wanted to show the name of the movie, you would write</p>\n\n<pre><code>echo $data-&gt;name;\n</code></pre>\n\n<p>Thats a short example on how you can use this library, a more detailed documentation is coming soon.</p>\n\n<p>Enjoy!</p>\n', 0, 1, '2011-03-04 21:56:46', '2011-03-04 21:56:46');
INSERT INTO `versions` VALUES(74, 34, 'v0.4', 'v0.4', 'http://getsparks.org/static/archives/assets/assets-vv0.4.zip', '# Simple Assets Library\n\nA simple assets library that has the ability to combine and minify your JavaScript and CSS assets.\nAdditionally there''s a <a href="http://leafo.net/lessphp/">LessPHP</a> compiler, based on the original Ruby implementation.\n\n## Third Party Libraries\n\nThe libraries <a href="http://code.google.com/p/jsmin-php/">JSMin</a>, <a href="http://code.google.com/p/minify/">CSSMin</a> and <a href="http://leafo.net/lessphp/">LessPHP</a> are all created by third parties, but they''re included in this package for convinience.\n\n## Requirements\n\n1. PHP 5.1+\n2. CodeIgniter 2.0\n3. Directory structure for the assets files, with a writeable cache directory\n\n## Documentation\n\nSet all your preferences in the config file (assets directories, options to minify, combine and parse with LessPHP).\nNow you can use the helper methods in your views like this:\n	\n	<?php display_css(array(''init.css'', ''style.css'')); ?>\n	<?php display_js(array(''libs/modernizr-1.6.js'', ''libs/jquery-1.4.4.js'', ''plugins.js'', ''script.js'')); ?>\n\nThere''s also a method for clearing all cached files:\n	\n	$this->assets->clear_cache();\n\nThe default configuration assumes your assets directory is in the root of your project. Be sure to set the permissions for the cache directory so it can be writeable.\n\n## Directory structure example\n\n	/application\n	/assets\n		/cache\n		/css\n		/images\n		/js\n	/sparks\n	/system\n\n## Additional info\n\nIf you set the minify options and combine option in your configuration to false, LessPHP won''t work. This will work in future releases.', '<h1>Simple Assets Library</h1>\n\n<p>A simple assets library that has the ability to combine and minify your JavaScript and CSS assets.\nAdditionally there''s a <a href="http://leafo.net/lessphp/">LessPHP</a> compiler, based on the original Ruby implementation.</p>\n\n<h2>Third Party Libraries</h2>\n\n<p>The libraries <a href="http://code.google.com/p/jsmin-php/">JSMin</a>, <a href="http://code.google.com/p/minify/">CSSMin</a> and <a href="http://leafo.net/lessphp/">LessPHP</a> are all created by third parties, but they''re included in this package for convinience.</p>\n\n<h2>Requirements</h2>\n\n<ol>\n<li>PHP 5.1+</li>\n<li>CodeIgniter 2.0</li>\n<li>Directory structure for the assets files, with a writeable cache directory</li>\n</ol>\n\n<h2>Documentation</h2>\n\n<p>Set all your preferences in the config file (assets directories, options to minify, combine and parse with LessPHP).\nNow you can use the helper methods in your views like this:</p>\n\n<pre><code>&lt;?php display_css(array(''init.css'', ''style.css'')); ?&gt;\n&lt;?php display_js(array(''libs/modernizr-1.6.js'', ''libs/jquery-1.4.4.js'', ''plugins.js'', ''script.js'')); ?&gt;\n</code></pre>\n\n<p>There''s also a method for clearing all cached files:</p>\n\n<pre><code>$this-&gt;assets-&gt;clear_cache();\n</code></pre>\n\n<p>The default configuration assumes your assets directory is in the root of your project. Be sure to set the permissions for the cache directory so it can be writeable.</p>\n\n<h2>Directory structure example</h2>\n\n<pre><code>/application\n/assets\n    /cache\n    /css\n    /images\n    /js\n/sparks\n/system\n</code></pre>\n\n<h2>Additional info</h2>\n\n<p>If you set the minify options and combine option in your configuration to false, LessPHP won''t work. This will work in future releases.</p>\n', 0, 1, '2011-03-04 23:15:02', '2011-03-04 23:15:02');
INSERT INTO `versions` VALUES(80, 37, '1.0', '1.0', 'http://getsparks.org/static/archives/ja-geocode/ja-geocode-v1.0.zip', '', '', 1, 1, '2011-03-05 20:24:50', '2011-03-05 20:24:50');
INSERT INTO `versions` VALUES(81, 37, '1.0', '1.0', 'http://getsparks.org/static/archives/ja-geocode/ja-geocode-v1.0.zip', '', '', 1, 1, '2011-03-05 20:34:07', '2011-03-05 20:34:07');
INSERT INTO `versions` VALUES(82, 37, '1.1', '1.1', 'http://getsparks.org/static/archives/ja-geocode/ja-geocode-v1.1.zip', '', '', 0, 1, '2011-03-05 20:39:24', '2011-03-05 20:39:24');
INSERT INTO `versions` VALUES(85, 38, '1.0.0', '1.0', 'http://sparks.codeigniter.com/static/archives/spark-sdk/spark-sdk-1.0.zip', '# CodeIgniter Spark Development Kit\n\nThis is a spark that will assist in developing other sparks. Most notably, it will\nprovide spark developers with a tool the sparks they''ve written before they''re\nsubmitted to getsparks.org.\n\nIt is the exact library used on the server side to decide whether your spark\npasses or fails inspection when it''s submitted. Previously, spark developers\nwould just get an annoying email telling them what''s up.\n', '<h1>CodeIgniter Spark Development Kit</h1>\n\n<p>This is a spark that will assist in developing other sparks. Most notably, it will\nprovide spark developers with a tool the sparks they''ve written before they''re\nsubmitted to getsparks.org.</p>\n\n<p>It is the exact library used on the server side to decide whether your spark\npasses or fails inspection when it''s submitted. Previously, spark developers\nwould just get an annoying email telling them what''s up.</p>\n', 0, 1, '2011-03-21 09:48:31', '2011-03-21 09:48:31');
INSERT INTO `versions` VALUES(86, 5, '1.0.0', '', 'http://sparks.codeigniter.com/static/archives/robot-helper/robot-helper-1.0.0.zip', '# The Robot Helper\n\nCodeIgniter comes with a Captcha implementation, but sometimes you just need\nsomething quicker and easier, like a simple math question.\n\nThis spark is in use on the [GetSparks.org Registration Page](http://getsparks.org/register).\n\n## Usage\n\nThe spark doesn''t autoload anything, so you''ll need to load the spark and\nthe robot helper.\n\nThe spark''s usage  involves on two methods: `get_spam_check` and `spam_check_answer`.\n\n`get_spam_check()` returns a 2-element array. The first element contains a question\nfor the user as a string. The second element contains the answer.\n\n    class Users extends Controller\n    {\n        # .. Other stuff ..\n\n        public function register()\n        {\n            $this->load->spark(''robot-helper/VERSION'');\n            $this->load->helper(''robot'');\n\n            $submitted   = $this->input->post(''submit'');\n            $math_answer = $this->input->post(''math_answer'');\n\n            if($submitted)\n            {\n                if(spam_check_answer($math_answer))\n                {\n                    # Register the user, and redirect to the account page\n                }\n                else\n                {\n                    # Uh oh, the user didn''t pass\n                }\n            }\n\n            # Call get_spam_check(), which is created by robot-helper\n            list($question, $answer) = get_spam_check();\n\n            $data[''spam_question''] = $question;\n            $data[''spam_answer'']   = $answer;\n\n            $this->load->view(''users/register'', $data);\n        }\n\n        # .. Other stuff ..\n    }\n', '<h1>The Robot Helper</h1>\n\n<p>CodeIgniter comes with a Captcha implementation, but sometimes you just need\nsomething quicker and easier, like a simple math question.</p>\n\n<p>This spark is in use on the <a href="http://getsparks.org/register">GetSparks.org Registration Page</a>.</p>\n\n<h2>Usage</h2>\n\n<p>The spark doesn''t autoload anything, so you''ll need to load the spark and\nthe robot helper.</p>\n\n<p>The spark''s usage  involves on two methods: <code>get_spam_check</code> and <code>spam_check_answer</code>.</p>\n\n<p><code>get_spam_check()</code> returns a 2-element array. The first element contains a question\nfor the user as a string. The second element contains the answer.</p>\n\n<pre><code>class Users extends Controller\n{\n    # .. Other stuff ..\n\n    public function register()\n    {\n        $this-&gt;load-&gt;spark(''robot-helper/VERSION'');\n        $this-&gt;load-&gt;helper(''robot'');\n\n        $submitted   = $this-&gt;input-&gt;post(''submit'');\n        $math_answer = $this-&gt;input-&gt;post(''math_answer'');\n\n        if($submitted)\n        {\n            if(spam_check_answer($math_answer))\n            {\n                # Register the user, and redirect to the account page\n            }\n            else\n            {\n                # Uh oh, the user didn''t pass\n            }\n        }\n\n        # Call get_spam_check(), which is created by robot-helper\n        list($question, $answer) = get_spam_check();\n\n        $data[''spam_question''] = $question;\n        $data[''spam_answer'']   = $answer;\n\n        $this-&gt;load-&gt;view(''users/register'', $data);\n    }\n\n    # .. Other stuff ..\n}\n</code></pre>\n', 0, 1, '2011-03-21 18:54:02', '2011-03-21 18:54:02');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dependencies`
--
ALTER TABLE `dependencies`
  ADD CONSTRAINT `dependencies_ibfk_1` FOREIGN KEY (`version_id`) REFERENCES `versions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dependencies_ibfk_2` FOREIGN KEY (`needed_version_id`) REFERENCES `versions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `installs`
--
ALTER TABLE `installs`
  ADD CONSTRAINT `installs_ibfk_1` FOREIGN KEY (`spark_id`) REFERENCES `sparks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`contributor_id`) REFERENCES `contributors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`spark_id`) REFERENCES `sparks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sparks`
--
ALTER TABLE `sparks`
  ADD CONSTRAINT `sparks_ibfk_1` FOREIGN KEY (`contributor_id`) REFERENCES `contributors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `versions`
--
ALTER TABLE `versions`
  ADD CONSTRAINT `versions_ibfk_1` FOREIGN KEY (`spark_id`) REFERENCES `sparks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `url` varchar(400) NOT NULL,
  `posted` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;