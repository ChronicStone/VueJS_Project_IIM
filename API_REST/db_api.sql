/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : deadpool

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-02-16 23:44:45
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `accounts`
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `guid` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` char(21) NOT NULL,
  `pass` varchar(1048) NOT NULL,
  `mail` char(21) NOT NULL,
  `rank` char(35) DEFAULT '1',
  `avatar` char(25) DEFAULT 'default.png',
  `desc_user` varchar(1500) DEFAULT NULL,
  `fb` char(60) DEFAULT NULL,
  `insta` char(60) DEFAULT NULL,
  `twitter` char(60) DEFAULT NULL,
  `nom` char(60) DEFAULT NULL,
  `prenom` char(60) DEFAULT NULL,
  `siteweb` char(60) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES ('1', 'cyprien', 'password', 'mail@gmail.com', 'Administrateur', 'dzqdz', null, null, null, null, null, null, null);
INSERT INTO `accounts` VALUES ('2', 'test', '1a1dc91c907325c69271ddf0c944bc72', 'mail@mail.fr', 'Membre novice', '0', null, null, null, null, null, null, null);
INSERT INTO `accounts` VALUES ('3', 'pseudo', 'b6edd10559b20cb0a3ddaeb15e5267cc', 'mail@mail.fr', 'Membre expert', '0', null, null, null, null, null, null, null);
INSERT INTO `accounts` VALUES ('4', 'salut', '1a1dc91c907325c69271ddf0c944bc72', 'mail@mail.fr', 'Membre novice', '0', null, null, null, null, null, null, null);
INSERT INTO `accounts` VALUES ('5', 'admin', '1a1dc91c907325c69271ddf0c944bc72', 'cyprienthao@gmail.com', 'Administrateur', '5.png', null, 'Cyprien.thao', '@schronicstone', '@cyprithao', 'THAO', 'Cyprien', 'deadpool.byethost11.com');
INSERT INTO `accounts` VALUES ('6', 'user', '1a1dc91c907325c69271ddf0c944bc72', 'cyprienthao@gmail.com', 'Membre novice', '0', null, null, null, null, null, null, null);
INSERT INTO `accounts` VALUES ('7', 'blabla', '1a1dc91c907325c69271ddf0c944bc72', 'mail@mail.fr', 'Membre novice', '0', null, null, null, null, null, null, null);
INSERT INTO `accounts` VALUES ('8', 'testlog', '1a1dc91c907325c69271ddf0c944bc72', 'maol@maol.fr', 'Membre expert', '0', null, null, null, null, null, null, null);
INSERT INTO `accounts` VALUES ('9', 'admin2', '1a1dc91c907325c69271ddf0c944bc72', 'mail@mail.fr', 'Membre novice', '0', null, null, null, null, null, null, null);
INSERT INTO `accounts` VALUES ('10', 'account', '1a1dc91c907325c69271ddf0c944bc72', 'mail@mail.fr', 'Administrateur', '1', null, null, null, null, null, null, null);
INSERT INTO `accounts` VALUES ('11', 'accnt', '1a1dc91c907325c69271ddf0c944bc72', 'mail@mail.fr', 'Membre expert', 'default.png', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `contactrescue`
-- ----------------------------
DROP TABLE IF EXISTS `contactrescue`;
CREATE TABLE `contactrescue` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_account` int(10) NOT NULL,
  `titre` char(150) NOT NULL,
  `message` varchar(10000) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contactrescue
-- ----------------------------
INSERT INTO `contactrescue` VALUES ('1', '5', 'test', '<p>test</p>\r\n', '2019-07-01');
INSERT INTO `contactrescue` VALUES ('2', '5', 'HELP ME', '<p>I&#39;ve been stabbed in manhattan between the 8th main street and the Extra Corner, help me soon pls</p>\r\n', '2019-07-01');
INSERT INTO `contactrescue` VALUES ('3', '5', 'HELP ME', '<p>I&#39;ve been stabbed in manhattan between the 8th main street and the Extra Corner, help me soon pls</p>\r\n', '2019-07-01');

-- ----------------------------
-- Table structure for `dislikes`
-- ----------------------------
DROP TABLE IF EXISTS `dislikes`;
CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_news` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dislikes
-- ----------------------------
INSERT INTO `dislikes` VALUES ('7', '11', '5');

-- ----------------------------
-- Table structure for `dislikes_comment`
-- ----------------------------
DROP TABLE IF EXISTS `dislikes_comment`;
CREATE TABLE `dislikes_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_comment` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dislikes_comment
-- ----------------------------
INSERT INTO `dislikes_comment` VALUES ('2', '11', '5');

-- ----------------------------
-- Table structure for `gallery`
-- ----------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` char(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gallery
-- ----------------------------
INSERT INTO `gallery` VALUES ('1', '1.jpg');
INSERT INTO `gallery` VALUES ('2', '2.jpg');
INSERT INTO `gallery` VALUES ('3', '3.jpg');
INSERT INTO `gallery` VALUES ('4', '4.jpg');
INSERT INTO `gallery` VALUES ('5', '5.jpg');
INSERT INTO `gallery` VALUES ('6', '6.jpg');
INSERT INTO `gallery` VALUES ('7', '7.jpg');
INSERT INTO `gallery` VALUES ('8', '8.jpg');
INSERT INTO `gallery` VALUES ('9', '9.jpg');
INSERT INTO `gallery` VALUES ('10', '10.jpg');
INSERT INTO `gallery` VALUES ('27', '11.jpg');
INSERT INTO `gallery` VALUES ('28', '12.jpg');

-- ----------------------------
-- Table structure for `guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `guestbook`;
CREATE TABLE `guestbook` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `note` tinyint(2) NOT NULL DEFAULT '5',
  `creation` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for `likes`
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_news` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO `likes` VALUES ('8', '13', '5');
INSERT INTO `likes` VALUES ('12', '12', '5');
INSERT INTO `likes` VALUES ('14', '16', '5');

-- ----------------------------
-- Table structure for `likes_comment`
-- ----------------------------
DROP TABLE IF EXISTS `likes_comment`;
CREATE TABLE `likes_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_comment` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of likes_comment
-- ----------------------------
INSERT INTO `likes_comment` VALUES ('3', '11', '5');
INSERT INTO `likes_comment` VALUES ('4', '12', '5');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `titre` varchar(150) NOT NULL,
  `message` varchar(15000) NOT NULL,
  `nom` char(21) NOT NULL,
  `date` datetime NOT NULL,
  `type` int(5) NOT NULL,
  `avatar` int(2) DEFAULT NULL,
  `nbcomm` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', 'A Visit to This Key Level Could Send Ethereum on a Violent Rally to $370', 'Canadian entrepreneur and software engineer Joseph Lubin helped spearhead the development of the open-source smart contract blockchain platform that came to be known as Ethereum. Lubin has long believed that this technology could serve “as an organizing princ… [+12372 chars]', 'admin', '2019-07-01 00:00:00', '0', null, '0');
INSERT INTO `news` VALUES ('2', 'Sunday Digest: Bitcoin Price, Ethereum Gains and Other News', 'fter more than a decade of Bitcoin’s existence, Satoshi Nakamoto, author of Bitcoin’s white paper back in 2008, remains the most mysterious person within the crypto community. Despite who he, she or they might be, Satoshi’s brainchild — the first decentraliz… [+4296 chars]', 'admin', '2019-07-01 00:00:00', '0', null, '0');
INSERT INTO `news` VALUES ('3', 'Bitcoin Price Falls to $9.6K Amid Bloody Sunday for XRP, ETH, Altcoins', 'L\'intelligence artificielle sera de plus en plus présente dans les entreprises, en particulier dans les ressources humaines. Willyam Bradberry/Shutterstock Mon DRH est une IA (intelligence artificielle). Elle s’appelle Alex. Elle est asexuée. Alex n’a pas de … [+9325 chars]', 'admin', '2019-07-01 00:00:00', '0', null, '0');
INSERT INTO `news` VALUES ('18', 'The Mind Behind the “World Computer”: Ethereum’s Vitalik Buterin', 'By Avi Mizrahi\\r\\nResearch has shown that government paper money is a hotbed for bacteria and that, at least in the U.S., most bank notes in circulation are tainted by cocaine. Now you can also worry about a new threat possibly sticking to your fingers when you… [+3946 chars]', 'admin', '2019-07-01 00:00:00', '0', null, '0');
INSERT INTO `news` VALUES ('19', 'These Simple Factors Show Bitcoin Could Be in for Intense Bearishness', 'Earlier this year, Ripple CEO Brad Garlinghouse responded to controversy surrounding XRP movements by saying that Ripple cannot control the price of its associated token any more than Bitcoin (BTC) whales control the price of the seminal cryptocurrency.\\r\\nRega… [+10617 chars]', 'admin', '2019-07-01 00:00:00', '0', null, '0');
INSERT INTO `news` VALUES ('20', 'op 5 Cryptos This Week (Feb 16): LINK, HT, XTZ, ETH, NEO', 'Bitcoin dropped below the psychologically important level of $10,000 on Feb. 15. This has dragged the crypto markets lower, whose market capitalization has dropped below $300 billion. Though Bitcoin has declined, its market dominance has risen from below 61% … [+7248 chars]', 'admin', '2019-07-01 00:00:00', '0', null, '0');
INSERT INTO `news` VALUES ('21', 'Chinese Quarantines Cash To Stop Coronavirus, Not an Issue With Bitcoin', 'It has been reported that China has started a quarantine of its used bank notes to try to stop the spread of the coronavirus. Meanwhile, the crypto community began to pick up on the news commenting that the use of Bitcoin as a means of payment should fix the … [+1529 chars]', 'admin', '2019-07-01 00:00:00', '0', null, '0');
INSERT INTO `news` VALUES ('22', 'DEADPOOL SERA LE SEUL SUPER-HÃ‰ROS MARVEL DE LA FOX Ã€ NE PAS ÃŠTRE REBOOTÃ‰ PAR DISNEY', '<h3><strong>Le rachat du studio 20th Century Fox par Disney ne devrait engendrer de changements pour Deadpool qui continuera sa route sans passer par la case reboot !</strong></h3>', 'admin', '2019-07-01 00:00:00', '0', null, '0');
INSERT INTO `news` VALUES ('23', 'DEADPOOL SERA LE SEUL SUPER-HÃ‰ROS MARVEL DE LA FOX Ã€ NE PAS ÃŠTRE REBOOTÃ‰ PAR DISNEY', '<h3><strong>Le rachat du studio 20th Century Fox par Disney ne devrait engendrer de changements pour Deadpool qui continuera sa route sans passer par la case reboot !</strong></h3>', 'admin', '2019-07-01 00:00:00', '0', null, '0');

-- ----------------------------
-- Table structure for `news_comment`
-- ----------------------------
DROP TABLE IF EXISTS `news_comment`;
CREATE TABLE `news_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_news` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `message` varchar(1500) NOT NULL,
  `date` char(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of news_comment
-- ----------------------------
INSERT INTO `news_comment` VALUES ('16', '17', '7', '<p>C&#39;est un scandale!!!!!!!!!!!! Des ann&eacute;es qu&#39;on attends et pas de deadpool ? Ils vont voir marvel studios, j&#39;vais me pointer chez eux moi ! ca se passera pas comme ca</p>\r\n', '07.01.19');
INSERT INTO `news_comment` VALUES ('17', '17', '11', '<p>Deadpool est trop mis en arri&egrave;re, je d&eacute;saprouve totalement ce choix ridicule</p>\r\n', '07.01.19');
INSERT INTO `news_comment` VALUES ('18', '19', '3', '<p>Un studio tr&egrave;s talentueux ! J&#39;aime beaucoup leur travail, tr&egrave;s investis, un peu d&eacute;jant&eacute;s sur les bords ils conviennent parfaitement au style deadpool</p>\r\n', '07.01.19');

-- ----------------------------
-- Table structure for `user_mp`
-- ----------------------------
DROP TABLE IF EXISTS `user_mp`;
CREATE TABLE `user_mp` (
  `mp_id` int(11) NOT NULL AUTO_INCREMENT,
  `mp_expediteur` int(11) NOT NULL,
  `mp_receveur` int(11) NOT NULL,
  `mp_titre` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `mp_text` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `mp_time` int(11) NOT NULL,
  `mp_lu` enum('0','1') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`mp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_mp
-- ----------------------------
INSERT INTO `user_mp` VALUES ('1', '2', '5', 'test', 'test', '1', '0');
