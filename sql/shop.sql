CREATE DATABASE IF NOT EXISTS `shop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `shop`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car`
(
    `id`      int(11) NOT NULL AUTO_INCREMENT,
    `item_id` int(11)        DEFAULT NULL,
    `user_id` int(11)        DEFAULT NULL,
    `num`     int(11)        DEFAULT NULL,
    `price`   decimal(10, 2) DEFAULT NULL,
    `total`   varchar(255)   DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `car`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment`
(
    `id`      int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11)      DEFAULT NULL,
    `item_id` int(11)      DEFAULT NULL,
    `content` varchar(255) DEFAULT NULL,
    `addTime` datetime     DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 9
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment`
    DISABLE KEYS */;
INSERT INTO `comment`
VALUES (7, 3, 35, '???????????????', '2021-11-20 19:23:03'),
       (8, 3, 28, '?????????', '2021-11-21 19:32:31');
/*!40000 ALTER TABLE `comment`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item`
(
    `id`              int(11) NOT NULL AUTO_INCREMENT,
    `name`            varchar(255) DEFAULT NULL,
    `price`           varchar(255) DEFAULT NULL,
    `scNum`           int(11)      DEFAULT NULL COMMENT '?????????',
    `gmNum`           int(11)      DEFAULT NULL COMMENT '?????????',
    `url1`            varchar(255) DEFAULT NULL,
    `url2`            varchar(255) DEFAULT NULL,
    `url3`            varchar(255) DEFAULT NULL,
    `url4`            varchar(255) DEFAULT NULL,
    `url5`            varchar(255) DEFAULT NULL,
    `ms`              text,
    `pam1`            varchar(255) DEFAULT NULL COMMENT '??????1',
    `pam2`            varchar(255) DEFAULT NULL COMMENT '??????2',
    `pam3`            varchar(255) DEFAULT NULL COMMENT '??????3',
    `val3`            varchar(255) DEFAULT NULL COMMENT '???3',
    `val2`            varchar(255) DEFAULT NULL COMMENT '???2',
    `val1`            varchar(255) DEFAULT NULL COMMENT '???1',
    `type`            int(11)      DEFAULT NULL,
    `zk`              int(10)      DEFAULT NULL COMMENT '??????',
    `category_id_one` int(11)      DEFAULT NULL COMMENT '??????id',
    `category_id_two` int(11)      DEFAULT NULL COMMENT '??????2???',
    `isDelete`        int(2)       DEFAULT NULL COMMENT '0??? 1???',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 49
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item`
    DISABLE KEYS */;
INSERT INTO `item`
VALUES (27, '???????????????????????????????????????', '54.9', 2, 4,
        '\\test1_war_exploded\\resource\\ueditor\\upload\\9f0296902c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\9f030bc02c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\9f05cae02c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\9f0667202c2111e865b6dc2da7582a7aTB2faFrcFGWBuNjy0FbXXb4sXXa_!!3320501499.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\9f06dc502c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg',
        '<p><img src=\"/test1_war_exploded/resource/ueditor/upload/3ca705602c1e11e865b6dc2da7582a7a1.jpg\" title=\"\" alt=\"1.jpg\"/></p>',
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 75, 76, 1),
       (28, '????????????????????????????????? ????????? ?????????????????????', '66.5', 1, 8,
        '\\test1_war_exploded\\resource\\ueditor\\upload\\ba329bc02c1e11e865b6dc2da7582a7a811f5031-87ab-4a55-bfd2-3e29a5eb0ad7.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\ba3310f02c1e11e865b6dc2da7582a7a6431e0f4-1f60-465b-906e-25ea52bd076b.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\ba3386202c1e11e865b6dc2da7582a7ae13bedb5-c6c1-47f2-8588-5735397f0dea (1).jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\ba33d4402c1e11e865b6dc2da7582a7ae13bedb5-c6c1-47f2-8588-5735397f0dea.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\ba3449702c1e11e865b6dc2da7582a7ae37c45cf-fcea-4cb1-8b4e-c7ead141c76d.jpg',
        '<p><img src=\"/test1_war_exploded/resource/ueditor/a730e2c02c1e11e865b6dc2da7582a7a1.jpg\" title=\"\" alt=\"1.jpg\"/></p><p><img src=\"/test1_war_exploded/resource/ueditor/a93984002c1e11e865b6dc2da7582a7a2.png\" title=\"\" alt=\"2.png\"/></p><p><br/></p><p><img src=\"/test1_war_exploded/resource/ueditor/upload/ab62cca02c1e11e865b6dc2da7582a7a3.jpg\" title=\"\" alt=\"3.jpg\"/></p><p><img src=\"/test1_war_exploded/resource/ueditor/upload/ad2368602c1e11e865b6dc2da7582a7a4.png\" title=\"\" alt=\"4.png\"/></p>',
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 75, 76, 1),
       (29, '2017???????????????????????????', '49.9', 0, 0,
        '\\test1_war_exploded\\resource\\ueditor\\upload\\2cb2e5102c1f11e865b6dc2da7582a7a5f5bfef1-1183-4c8a-80f5-23a8251422eb.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\2cb333302c1f11e865b6dc2da7582a7a49e3c13e-5e8c-4c4a-8382-0721d61ae630.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\2cb3a8602c1f11e865b6dc2da7582a7adbbbca07-7c2d-4ecb-a1e3-097620517400.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\2cb41d902c1f11e865b6dc2da7582a7ae798f106-7f85-43f8-82d0-7a1918bd5876.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\2cb46bb02c1f11e865b6dc2da7582a7adbbbca07-7c2d-4ecb-a1e3-097620517400.jpg',
        '<p><img src=\"/test1_war_exploded/resource/ueditor/29418c102c1f11e865b6dc2da7582a7a1.jpg\" title=\"\" alt=\"1.jpg\"/></p><p><img src=\"/test1_war_exploded/resource/ueditor/upload/2bb683b02c1f11e865b6dc2da7582a7a2.jpg\" title=\"\" alt=\"2.jpg\"/></p>',
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 75, 76, 1),
       (30, '??????????????????????????????????????????????????????????????????????????????', '85', 0, 3,
        '\\test1_war_exploded\\resource\\ueditor\\upload\\d9a752b02c1f11e865b6dc2da7582a7aTB1pC88XOCYBuNkSnaVXXcMsVXa_!!0-item_pic.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\d9a7eef02c1f11e865b6dc2da7582a7aTB2dP17arGYBuNjy0FoXXciBFXa_!!2455418594.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\d9a864202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\d9a8b2402c1f11e865b6dc2da7582a7aTB2dP17arGYBuNjy0FoXXciBFXa_!!2455418594.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\d9aad5202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg',
        '<p><img src=\"/test1_war_exploded/resource/ueditor/upload/d89212202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg\" title=\"\"/></p>',
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 1),
       (31, '????????????????????????????????????????????? ????????????9?????? ??????4.5?????????', '36', 0, 0,
        '\\test1_war_exploded\\resource\\ueditor\\upload\\23dc83f02c2011e865b6dc2da7582a7aTB2A3FzXRLzQeBjSZFoXXc5gFXa_!!2455185564.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\23dcf9202c2011e865b6dc2da7582a7aTB2iwNJX8PzQeBjSZPiXXb0TpXa_!!2455185564.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\23dd95602c2011e865b6dc2da7582a7aTB2MpRlaqnyQeBjSsplXXaLWVXa_!!2455185564.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\23de0a902c2011e865b6dc2da7582a7aTB11gurg63z9KJjy0FmXXXiwXXa_!!0-item_pic.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\23de7fc02c2011e865b6dc2da7582a7aTB2MpRlaqnyQeBjSsplXXaLWVXa_!!2455185564.jpg_430x430q90.jpg',
        '<p>???????????????<span class=\"J_EbrandLogo\" style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51);\">?????????</span></p><p class=\"attr-list-hd tm-clear\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 20px; line-height: 22px; color: rgb(153, 153, 153); font-family: tahoma, arial, ????????????, sans-serif; font-size: 12px; font-variant-numeric: normal; font-variant-east-asian: normal; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-weight: 700; float: left;\">???????????????</span></p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>??????????????????????????????????????????</p></li><li><p>??????????????????????????????????????????</p></li><li><p>?????????????????????13521676858</p></li><li><p>????????????60 ???</p></li><li><p>?????????:&nbsp;1900g</p></li><li><p>????????????:&nbsp;??????</p></li><li><p>??????:&nbsp;?????????</p></li><li><p>????????????:&nbsp;??????</p></li><li><p>??????????????????:&nbsp;8-15???</p></li><li><p>????????????:&nbsp;1???&nbsp;2???&nbsp;8???&nbsp;9???&nbsp;10???&nbsp;11???&nbsp;12???</p></li><li><p>??????:&nbsp;????????????</p></li><li><p>??????:&nbsp;?????????</p></li><li><p>??????:&nbsp;??????????????????????????????</p></li><li><p>????????????:&nbsp;????????????</p></li><li><p>?????????:&nbsp;2.5kg(??????-5kg(??????)</p></li><li><p>??????:&nbsp;51-100???</p></li></ul><p><br/></p>',
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 71, 72, 1),
       (32, '???????????????????????????2?????????????????????????????????????????????????????????', '99', 0, 10,
        '\\test1_war_exploded\\resource\\ueditor\\upload\\92cc7a902c2011e865b6dc2da7582a7aTB1a7xUdUR1BeNjy0FmXXb0wVXa_!!0-item_pic.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\92ccefc02c2011e865b6dc2da7582a7aTB2GV6ld7fb_uJjSsD4XXaqiFXa_!!3206065077.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\92cd8c002c2011e865b6dc2da7582a7aTB2J81_nf2H8KJjy0FcXXaDlFXa_!!3206065077.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\92ce01302c2011e865b6dc2da7582a7aTB2oM1InmYH8KJjSspdXXcRgVXa_!!3206065077.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\92ce76602c2011e865b6dc2da7582a7aTB29bjrngLD8KJjSszeXXaGRpXa_!!3206065077.jpg_430x430q90.jpg',
        '<p><img src=\"/test1_war_exploded/resource/ueditor/upload/8bbe4bc02c2011e865b6dc2da7582a7a1.jpg\" title=\"\" alt=\"1.jpg\"/><img src=\"/test1_war_exploded/resource/ueditor/upload/8d8947c02c2011e865b6dc2da7582a7a2.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/test1_war_exploded/resource/ueditor/upload/8fd310b02c2011e865b6dc2da7582a7a77.jpg\" title=\"\" alt=\"77.jpg\"/></p>',
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 1),
       (33, '???????????????????????????????????????????????????????????????????????????????????????', '80', 1, 0,
        '\\test1_war_exploded\\resource\\ueditor\\upload\\dcb3b2e02c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\dcb6e7302c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\dcb75c602c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\dcb7d1902c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\dcb86dd02c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg',
        '<p><img src=\"/test1_war_exploded/resource/ueditor/upload/dbbc33802c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg\" title=\"\" alt=\"TB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg\"/></p>',
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 1),
       (34, '????????????????????????????????????', '85', 0, 4,
        '\\test1_war_exploded\\resource\\ueditor\\upload\\012eb0202c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\012f25502c2111e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\012fc1902c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\013036c02c2111e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\0130abf02c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg',
        '<p><img src=\"/test1_war_exploded/resource/ueditor/upload/004f73b02c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg\" title=\"\" alt=\"TB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg\"/></p>',
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 1),
       (35, '????????????5??? ?????????????????????????????????????????????????????????????????????', '25', 0, 8,
        '\\test1_war_exploded\\resource\\ueditor\\upload\\4152abc02c2111e865b6dc2da7582a7aTB1sRNzXSMmBKNjSZTEXXasKpXa_!!0-item_pic.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\41536f102c2111e865b6dc2da7582a7aTB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\41540b502c2111e865b6dc2da7582a7aTB1sRNzXSMmBKNjSZTEXXasKpXa_!!0-item_pic.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\415459702c2111e865b6dc2da7582a7aTB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\4154cea02c2111e865b6dc2da7582a7aTB1sRNzXSMmBKNjSZTEXXasKpXa_!!0-item_pic.jpg_430x430q90.jpg',
        '<p><img src=\"/test1_war_exploded/resource/ueditor/upload/407173802c2111e865b6dc2da7582a7aTB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg\" title=\"\" alt=\"TB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg\"/></p>',
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 73, 74, 1),
       (36, '??????3??? ??????????????? ????????????????????????????????????????????????????????????', '120', 0, 3,
        '\\test1_war_exploded\\resource\\ueditor\\upload\\88b583202c2111e865b6dc2da7582a7aTB2faFrcFGWBuNjy0FbXXb4sXXa_!!3320501499.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\88b5f8502c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\88b66d802c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\88b6e2b02c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg',
        '\\test1_war_exploded\\resource\\ueditor\\upload\\88b77ef02c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg',
        '<p><img src=\"/test1_war_exploded/resource/ueditor/upload/87d387902c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg\" title=\"\" alt=\"TB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg\"/></p>',
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 73, 74, 1),
       (37, 'php??????', '27', 0, 0,
        '/test1_war_exploded\\resource\\ueditor\\upload\\bf017560dd5311eb5dcfe79b400b67060bf587e1b7d5de74.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\bf01ea90dd5311eb5dcfe79b400b67060bf587e1b7d5de74.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\bf0286d0dd5311eb5dcfe79b400b67060bf587e1b7d5de74.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\bf032310dd5311eb5dcfe79b400b67060bf587e1b7d5de74.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\bf03e660dd5311eb5dcfe79b400b67060bf587e1b7d5de74.jpg',
        '<p>php??????</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 84, 94, 1),
       (38, 'python??????', '30', 0, 0,
        '/test1_war_exploded\\resource\\ueditor\\upload\\65c0d620dd5411eb5dcfe79b400b67065acb3627N8191c867.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\65c14b50dd5411eb5dcfe79b400b67065acb3627N8191c867.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\65c235b0dd5411eb5dcfe79b400b67065acb3627N8191c867.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\65c32010dd5411eb5dcfe79b400b67065acb3627N8191c867.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\65c4f4d0dd5411eb5dcfe79b400b67065acb3627N8191c867.jpg',
        '<p>??????python???????????????</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 83, 92, 1),
       (39, 'java????????????', '53', 0, 0,
        '/test1_war_exploded\\resource\\ueditor\\upload\\965493a0dd6611ebd385fe35310ae5e45624b582Nbc01af5b.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\96566860dd6611ebd385fe35310ae5e45624b582Nbc01af5b.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\965704a0dd6611ebd385fe35310ae5e45624b582Nbc01af5b.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\9657ef00dd6611ebd385fe35310ae5e45624b582Nbc01af5b.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\96590070dd6611ebd385fe35310ae5e45624b582Nbc01af5b.jpg',
        '<p>java????????????</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 82, 88, 1),
       (40, 'java??????????????????', '75', 0, 0,
        '/test1_war_exploded\\resource\\ueditor\\upload\\bcf61a60dd6611ebd385fe35310ae5e499742c91174d3d7a.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\bcf7ef20dd6611ebd385fe35310ae5e499742c91174d3d7a.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\bcf88b60dd6611ebd385fe35310ae5e499742c91174d3d7a.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\bcf99cd0dd6611ebd385fe35310ae5e499742c91174d3d7a.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\bcfa3910dd6611ebd385fe35310ae5e499742c91174d3d7a.jpg',
        '<p>java??????????????????</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 82, 88, 1),
       (41, 'java????????????200', '104', 0, 0,
        '/test1_war_exploded\\resource\\ueditor\\upload\\e6394e10dd6611ebd385fe35310ae5e4ccc877ab66ae0b5e.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\e639c340dd6611ebd385fe35310ae5e4ccc877ab66ae0b5e.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\e63b22d0dd6611ebd385fe35310ae5e4ccc877ab66ae0b5e.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\e63bbf10dd6611ebd385fe35310ae5e4ccc877ab66ae0b5e.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\e63cf790dd6611ebd385fe35310ae5e4ccc877ab66ae0b5e.jpg',
        '<p>java????????????200</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 82, 88, 1),
       (42, 'php????????????', '86', 0, 0,
        '/test1_war_exploded\\resource\\ueditor\\upload\\6a409740dd6711ebd385fe35310ae5e4592fb45cNac23b876.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\6a413380dd6711ebd385fe35310ae5e4592fb45cNac23b876.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\6a41a8b0dd6711ebd385fe35310ae5e4592fb45cNac23b876.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\6a429310dd6711ebd385fe35310ae5e4592fb45cNac23b876.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\6a432f50dd6711ebd385fe35310ae5e4592fb45cNac23b876.jpg',
        '<p>php????????????</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 84, 94, 1),
       (43, 'php????????????', '991', 0, 0,
        '/test1_war_exploded\\resource\\ueditor\\upload\\4dcf8df0dd6711ebd385fe35310ae5e456f63c22Nbb294bc0.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\4dd00320dd6711ebd385fe35310ae5e456f63c22Nbb294bc0.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\4dd05140dd6711ebd385fe35310ae5e456f63c22Nbb294bc0.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\4dd0c670dd6711ebd385fe35310ae5e456f63c22Nbb294bc0.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\4dd27420dd6711ebd385fe35310ae5e456f63c22Nbb294bc0.jpg',
        '<p>php????????????</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 84, 95, 1),
       (44, 'java????????????', '85', 0, 0,
        '/test1_war_exploded\\resource\\ueditor\\upload\\8b4b25e0dd6711ebd385fe35310ae5e457e09a03Nc57334e1.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\8b4b9b10dd6711ebd385fe35310ae5e457e09a03Nc57334e1.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\8b4cfaa0dd6711ebd385fe35310ae5e457e09a03Nc57334e1.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\8b4d6fd0dd6711ebd385fe35310ae5e457e09a03Nc57334e1.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\8b4de500dd6711ebd385fe35310ae5e457e09a03Nc57334e1.jpg',
        '<p>java????????????</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 82, 89, 1),
       (45, 'java????????????????????????', '95', 0, 0,
        '/test1_war_exploded\\resource\\ueditor\\upload\\b5d69100dd6711ebd385fe35310ae5e474a5a5dcd83ecc09.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\b5d817a0dd6711ebd385fe35310ae5e474a5a5dcd83ecc09.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\b5d8b3e0dd6711ebd385fe35310ae5e474a5a5dcd83ecc09.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\b5d95020dd6711ebd385fe35310ae5e474a5a5dcd83ecc09.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\b5d9c550dd6711ebd385fe35310ae5e474a5a5dcd83ecc09.jpg',
        '<p>java????????????????????????</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 82, 89, 1),
       (46, '????????????java?????????', '58', 0, 0,
        '/test1_war_exploded\\resource\\ueditor\\upload\\d53432f0dd6711ebd385fe35310ae5e4592bf167Naf49f7f6.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\d5359280dd6711ebd385fe35310ae5e4592bf167Naf49f7f6.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\d5362ec0dd6711ebd385fe35310ae5e4592bf167Naf49f7f6.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\d536cb00dd6711ebd385fe35310ae5e4592bf167Naf49f7f6.jpg',
        '/test1_war_exploded\\resource\\ueditor\\upload\\d53878b0dd6711ebd385fe35310ae5e4592bf167Naf49f7f6.jpg',
        '<p>????????????java?????????</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 82, 88, 1),
       (47, 'java????????????????????????', '33', 0, 0,
        '/1\\resource\\ueditor\\upload\\cb037510de3011eb5eef9555fe0aa5c65acb3627N8191c867.jpg',
        '/1\\resource\\ueditor\\upload\\cb04ad90de3011eb5eef9555fe0aa5c65acb3627N8191c867.jpg',
        '/1\\resource\\ueditor\\upload\\cb0549d0de3011eb5eef9555fe0aa5c65acb3627N8191c867.jpg',
        '/1\\resource\\ueditor\\upload\\cb05e610de3011eb5eef9555fe0aa5c65acb3627N8191c867.jpg',
        '/1\\resource\\ueditor\\upload\\cb065b40de3011eb5eef9555fe0aa5c65acb3627N8191c867.jpg', '<p>11</p>', NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, 3, 82, 88, 1),
       (48, 'java????????????????????????', '3', 0, 0, '/1\\resource\\ueditor\\upload\\5ef17010de3b11ebaf709f44cd33add2?????????.png',
        '/1\\resource\\ueditor\\upload\\5ef2cfa0de3b11ebaf709f44cd33add2',
        '/1\\resource\\ueditor\\upload\\5ef31dc0de3b11ebaf709f44cd33add2',
        '/1\\resource\\ueditor\\upload\\5ef392f0de3b11ebaf709f44cd33add2',
        '/1\\resource\\ueditor\\upload\\5ef3e110de3b11ebaf709f44cd33add2', '<p>8</p>', NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, 4, 82, 88, 1);
/*!40000 ALTER TABLE `item`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_category`
--

DROP TABLE IF EXISTS `item_category`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_category`
(
    `id`       int(11) NOT NULL AUTO_INCREMENT,
    `name`     varchar(255) DEFAULT NULL,
    `pid`      int(11)      DEFAULT NULL,
    `isDelete` int(11)      DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 102
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_category`
--

LOCK TABLES `item_category` WRITE;
/*!40000 ALTER TABLE `item_category`
    DISABLE KEYS */;
INSERT INTO `item_category`
VALUES (50, ' ??????', 44, 1),
       (69, '??????', NULL, 1),
       (70, '????????????', 69, 1),
       (71, '??????', NULL, 1),
       (72, '???????????????', 71, 1),
       (73, '??????', NULL, 1),
       (74, '???????????????', 73, 1),
       (75, '??????', NULL, 1),
       (76, '???????????????', 75, 1),
       (77, '??????', 75, 1),
       (78, '??????', 75, 1),
       (79, '?????????', 75, 1),
       (80, '??????', NULL, 1),
       (81, 'xx', 75, 1),
       (82, 'java', NULL, 0),
       (83, 'python', NULL, 0),
       (84, 'php', NULL, 0),
       (85, 'go', NULL, 0),
       (86, 'c', NULL, 0),
       (87, 'c++', NULL, 0),
       (88, 'javase', 82, 0),
       (89, 'javaee', 82, 0),
       (90, 'ssh??????', 82, 0),
       (91, 'ssm??????', 82, 0),
       (92, 'python??????', 83, 0),
       (93, 'python??????', 83, 0),
       (94, 'php??????', 84, 0),
       (95, 'php??????', 84, 0),
       (96, 'go????????????', 85, 0),
       (97, 'go????????????', 85, 0),
       (98, 'c????????????', 86, 0),
       (99, 'c????????????', 86, 0),
       (100, 'c++??????', 87, 0),
       (101, 'c++??????', 87, 0);
/*!40000 ALTER TABLE `item_category`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_order`
--

DROP TABLE IF EXISTS `item_order`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_order`
(
    `id`       int(11) NOT NULL AUTO_INCREMENT,
    `item_id`  int(11)      DEFAULT NULL,
    `user_id`  int(11)      DEFAULT NULL,
    `code`     varchar(255) DEFAULT NULL,
    `addTime`  datetime     DEFAULT NULL,
    `total`    varchar(255) DEFAULT NULL,
    `isDelete` int(255)     DEFAULT NULL,
    `status`   int(255)     DEFAULT NULL COMMENT '0.???????????????1.????????? 2????????????3.?????????4?????????',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 33
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_order`
--

LOCK TABLES `item_order` WRITE;
/*!40000 ALTER TABLE `item_order`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `item_order`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage`
--

DROP TABLE IF EXISTS `manage`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manage`
(
    `id`       int(11) NOT NULL AUTO_INCREMENT,
    `userName` varchar(255) DEFAULT NULL,
    `passWord` varchar(255) DEFAULT NULL,
    `realName` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage`
--

LOCK TABLES `manage` WRITE;
/*!40000 ALTER TABLE `manage`
    DISABLE KEYS */;
INSERT INTO `manage`
VALUES (1, 'admin', '111111', '?????????');
/*!40000 ALTER TABLE `manage`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message`
(
    `id`      int(11) NOT NULL AUTO_INCREMENT,
    `name`    varchar(255) DEFAULT NULL,
    `phone`   varchar(255) DEFAULT NULL,
    `content` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message`
    DISABLE KEYS */;
INSERT INTO `message`
VALUES (2, '1', '1', '                    \n             1       '),
       (3, '2', '2', '                    \n             2       ');
/*!40000 ALTER TABLE `message`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news`
(
    `id`      int(11) NOT NULL AUTO_INCREMENT,
    `name`    varchar(255) DEFAULT NULL,
    `content` text,
    `addTime` datetime     DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news`
    DISABLE KEYS */;
INSERT INTO `news`
VALUES (3, '????????????',
        '<p><img src=\"/ueditor/8fcd79b049e011e8f60304f21e6bcd90d613e0adcb8ef424fed66f6deea08d99.jpg\" title=\"\" alt=\"d613e0adcb8ef424fed66f6deea08d99.jpg\"/></p>',
        '2021-11-20 14:02:28'),
       (4, '????????????2',
        '<p><img src=\"/ueditor/a83fde2049e011e8f298b03797777b7bd613e0adcb8ef424fed66f6deea08d99.jpg\" title=\"\" alt=\"d613e0adcb8ef424fed66f6deea08d99.jpg\"/></p>',
        '2021-11-29 14:03:09'),
       (5, '????????????3',
        '<p style=\"margin: 10px auto; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Verdana, Arial, sans-serif; font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 23.8px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">?????????????????????????????????Ant?????????????????????????????????UserLibaray????????????,??????????????????????????????web app,???web app????????????????????????ClassLoader,??????JVM?????????????????????ClassLoader(???????????????),????????????????????????????????????xml??????????????????????????????class??????,?????????????????????src????????????java??????????????????,??????,?????????????????????????????????????????????lib?????????,web app ???????????????????????????xml???????????? &nbsp;.</p><p style=\"margin: 10px auto; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Verdana, Arial, sans-serif; font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 23.8px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; ???????????????,????????????classloader????????????????????????.????????????????????????????????????JVM????????????????????????????????????????????????,??????????????????,????????????,???????????????????????????.</p><p><br/></p>',
        '2021-11-27 14:03:32');
/*!40000 ALTER TABLE `news`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_detail`
(
    `id`       int(11) NOT NULL AUTO_INCREMENT,
    `item_id`  int(255)     DEFAULT NULL,
    `order_id` int(11)      DEFAULT NULL,
    `status`   int(11)      DEFAULT NULL COMMENT '0.????????? 1?????????',
    `num`      int(11)      DEFAULT NULL,
    `total`    varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 68
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail`
    DISABLE KEYS */;
INSERT INTO `order_detail`
VALUES (54, 27, 27, 0, 1, '1'),
       (55, 32, 28, 0, 5, '25'),
       (56, 27, 28, 0, 3, '9'),
       (57, 28, 28, 0, 1, '1'),
       (58, 35, 29, 0, 2, '4'),
       (59, 34, 29, 0, 4, '16'),
       (60, 32, 29, 0, 3, '9'),
       (61, 36, 29, 0, 3, '9'),
       (62, 32, 29, 0, 2, '4'),
       (63, 35, 30, 0, 6, '36'),
       (64, 30, 30, 0, 3, '9'),
       (65, 28, 31, 0, 4, '16'),
       (66, 28, 31, 0, 2, '4'),
       (67, 28, 32, 0, 1, '1');
/*!40000 ALTER TABLE `order_detail`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc`
--

DROP TABLE IF EXISTS `sc`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc`
(
    `id`      int(11) NOT NULL AUTO_INCREMENT,
    `item_id` int(11) DEFAULT NULL,
    `user_id` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 19
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc`
--

LOCK TABLES `sc` WRITE;
/*!40000 ALTER TABLE `sc`
    DISABLE KEYS */;
INSERT INTO `sc`
VALUES (17, 27, 3),
       (18, 28, 3);
/*!40000 ALTER TABLE `sc`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user`
(
    `id`       int(255) NOT NULL AUTO_INCREMENT,
    `userName` varchar(255) DEFAULT NULL,
    `passWord` varchar(255) DEFAULT NULL,
    `phone`    varchar(255) DEFAULT NULL,
    `realName` varchar(255) DEFAULT NULL,
    `sex`      varchar(255) DEFAULT NULL,
    `address`  varchar(255) DEFAULT NULL,
    `email`    varchar(255) DEFAULT NULL,
    `status`   int(1)       DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 113
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user`
    DISABLE KEYS */;
INSERT INTO `user`
VALUES (2, 'dd', 'dd', 'dd', NULL, NULL, NULL, NULL, NULL),
       (3, '?????????', 'dsalkd', '12345678933', '??????33', '???', '?????????', '1133', NULL),
       (6, 'huang1', '123456', '18888888', NULL, NULL, NULL, NULL, NULL),
       (7, 'huang1', '123456', '18888888', NULL, NULL, NULL, NULL, NULL),
       (8, '1111112', '11', '11', NULL, NULL, NULL, '111@qq.com', NULL),
       (9, '2323', '11', '18703236575', NULL, NULL, NULL, '1115062046@qq.com', NULL),
       (112, 'dasd', '3432', '3213', '312312', '1', '?????????????????????', '21ee', 1);
/*!40000 ALTER TABLE `user`
    ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2021-12-20 18:55:11
