DROP DATABASE IF EXISTS `dromitory`;
CREATE DATABASE `dromitory` CHARACTER SET 'utf8mb4';
USE `dromitory`;

DROP TABLE IF EXISTS `d_admin`;
CREATE TABLE `d_admin`
(
    `a_id`       int(0)      NOT NULL AUTO_INCREMENT,
    `a_username` varchar(20) NOT NULL,
    `a_password` varchar(50) NOT NULL,
    `a_name`     varchar(20) NULL DEFAULT NULL,
    `a_phone`    bigint(0)   NULL DEFAULT NULL,
    `a_power`    varchar(20) NULL DEFAULT NULL,
    `a_describe` varchar(40) NULL DEFAULT NULL,
    PRIMARY KEY (`a_id`) USING BTREE
);

INSERT INTO `d_admin`
VALUES (1, 'admin', 'E10ADC3949BA59ABBE56E057F20F883E', 'xuanz', 234234, '1', '高');

-- ----------------------------
-- Table structure for d_class
-- ----------------------------
DROP TABLE IF EXISTS `d_class`;
CREATE TABLE `d_class`
(
    `c_id`         int(0)      NOT NULL AUTO_INCREMENT,
    `c_classid`    int(0)      NULL DEFAULT NULL,
    `c_classname`  varchar(30) NULL DEFAULT NULL,
    `c_counsellor` varchar(30) NULL DEFAULT NULL,
    PRIMARY KEY (`c_id`) USING BTREE,
    UNIQUE INDEX `cidsfa` (`c_classid`) USING BTREE
);

-- ----------------------------
-- Records of d_class
-- ----------------------------
INSERT INTO `d_class`
VALUES (1, 141, '生物', '徐超');
INSERT INTO `d_class`
VALUES (2, 151, '应化', '刘晨');
INSERT INTO `d_class`
VALUES (3, 142, '土木', '孙玲');
INSERT INTO `d_class`
VALUES (4, 161, '物流', '刘阳');
INSERT INTO `d_class`
VALUES (5, 153, '数师', '张宇');
INSERT INTO `d_class`
VALUES (6, 162, '物流', '刘阳');
INSERT INTO `d_class`
VALUES (7, 171, '自动化', '周涵涵');
INSERT INTO `d_class`
VALUES (8, 154, '土木', '孙玲');
INSERT INTO `d_class`
VALUES (10, 160, '金融', '刘培');
INSERT INTO `d_class`
VALUES (11, 111, '计算机', '陈三');
INSERT INTO `d_class`
VALUES (13, 158, '护理', '张东');

-- ----------------------------
-- Table structure for d_dormgrade
-- ----------------------------
DROP TABLE IF EXISTS `d_dormgrade`;
CREATE TABLE `d_dormgrade`
(
    `g_id`           int(0)      NOT NULL AUTO_INCREMENT,
    `d_id`           int(0)      NOT NULL,
    `d_dormbuilding` varchar(20) NULL DEFAULT NULL,
    `d_grade`        int(0)      NULL DEFAULT NULL,
    `create_time`    datetime(0) NULL DEFAULT NULL,
    `update_time`    datetime(0) NULL DEFAULT NULL,
    PRIMARY KEY (`g_id`) USING BTREE
);

-- ----------------------------
-- Records of d_dormgrade
-- ----------------------------
INSERT INTO `d_dormgrade`
VALUES (1, 606, '丹华1', 6, '2024-06-19 10:51:17', '2024-06-19 17:28:38');
INSERT INTO `d_dormgrade`
VALUES (2, 607, '丹华1', 7, '2024-06-19 16:36:47', '2024-06-19 16:36:55');
INSERT INTO `d_dormgrade`
VALUES (3, 608, '丹华1', 8, '2024-06-19 16:37:42', '2024-06-19 16:37:47');
INSERT INTO `d_dormgrade`
VALUES (4, 609, '丹华1', 7, '2024-06-19 16:38:25', '2024-06-19 16:38:30');
INSERT INTO `d_dormgrade`
VALUES (5, 610, '丹华1', 7, '2024-06-19 16:38:53', '2024-06-19 16:39:00');
INSERT INTO `d_dormgrade`
VALUES (6, 611, '丹华1', 9, '2024-06-19 16:39:37', '2024-06-19 16:39:41');
INSERT INTO `d_dormgrade`
VALUES (7, 612, '丹华1', 8, '2024-06-19 16:40:02', '2024-06-19 16:40:08');

-- ----------------------------
-- Table structure for d_dormitoryinfo
-- ----------------------------
DROP TABLE IF EXISTS `d_dormitoryinfo`;
CREATE TABLE `d_dormitoryinfo`
(
    `d_id`           int(0)      NOT NULL AUTO_INCREMENT,
    `s_dormitoryid`  int(0)      NOT NULL,
    `d_dormbuilding` varchar(20) NULL DEFAULT NULL,
    `d_bedtotal`     varchar(20) NULL DEFAULT NULL,
    `d_bed`          varchar(20) NULL DEFAULT NULL,
    `a_name`         varchar(20) NULL DEFAULT NULL,
    PRIMARY KEY (`d_id`) USING BTREE
);

-- ----------------------------
-- Records of d_dormitoryinfo
-- ----------------------------
INSERT INTO `d_dormitoryinfo`
VALUES (1, 606, '丹华1', '4', '3', 'xuanz');
INSERT INTO `d_dormitoryinfo`
VALUES (2, 607, '丹华1', '4', '4', 'xuanz');
INSERT INTO `d_dormitoryinfo`
VALUES (3, 608, '丹华1', '6', '6', 'xuanz');
INSERT INTO `d_dormitoryinfo`
VALUES (4, 609, '丹华1', '6', '5', 'xuanz');
INSERT INTO `d_dormitoryinfo`
VALUES (5, 610, '丹华1', '4', '4', 'xuanz');
INSERT INTO `d_dormitoryinfo`
VALUES (6, 611, '丹华1', '4', '3', 'xuanz');
INSERT INTO `d_dormitoryinfo`
VALUES (7, 612, '丹华1', '6', '6', 'xuanz');
INSERT INTO `d_dormitoryinfo`
VALUES (8, 613, '丹华1', '4', '4', 'xuanz');
INSERT INTO `d_dormitoryinfo`
VALUES (9, 614, '丹华1', '6', '6', 'xuanz');
INSERT INTO `d_dormitoryinfo`
VALUES (10, 615, '丹华1', '4', '4', 'xuanz');
INSERT INTO `d_dormitoryinfo`
VALUES (11, 616, '丹华1', '6', '5', 'xuanz');
INSERT INTO `d_dormitoryinfo`
VALUES (12, 617, '丹华1', '6', '6', 'xuanz');
INSERT INTO `d_dormitoryinfo`
VALUES (13, 618, '丹华1', '6', '6', 'xuanz');
INSERT INTO `d_dormitoryinfo`
VALUES (14, 619, '丹华1', '4', '3', 'xuanz');

-- ----------------------------
-- Table structure for d_dormrepair
-- ----------------------------
DROP TABLE IF EXISTS `d_dormrepair`;
CREATE TABLE `d_dormrepair`
(
    `r_id`           int(0)                                                       NOT NULL AUTO_INCREMENT,
    `d_id`           int(0)                                                       NOT NULL,
    `d_dormbuilding` varchar(30)  NOT NULL,
    `r_name`         varchar(20)                                                  NULL DEFAULT NULL,
    `reason`         varchar(50)                                                  NULL DEFAULT NULL,
    `create_time`    datetime(0)                                                  NULL DEFAULT NULL,
    `update_time`    datetime(0)                                                  NULL DEFAULT NULL,
    PRIMARY KEY (`r_id`) USING BTREE
);

-- ----------------------------
-- Records of d_dormrepair
-- ----------------------------
INSERT INTO `d_dormrepair`
VALUES (1, 607, '丹华1', '王涛', '水池', '2024-06-19 22:39:58', '2024-06-19 22:39:58');
INSERT INTO `d_dormrepair`
VALUES (2, 606, '丹华1', '王涛', '灯管', '2024-06-19 16:29:20', '2024-06-19 16:29:35');
INSERT INTO `d_dormrepair`
VALUES (3, 608, '丹华1', '冯军', '水龙头', '2024-06-19 16:31:14', '2024-06-19 16:31:20');
INSERT INTO `d_dormrepair`
VALUES (4, 609, '丹华1', '冯军', '插孔', '2019-05-15 16:31:56', '2024-06-19 16:32:04');
INSERT INTO `d_dormrepair`
VALUES (5, 611, '丹华1', '冯军', '排风扇', '2024-06-19 16:32:54', '2019-05-14 16:33:00');
INSERT INTO `d_dormrepair`
VALUES (6, 620, '丹华1', '彭建国', '空调', '2024-06-19 16:33:56', '2024-06-19 16:34:01');

-- ----------------------------
-- Table structure for d_stgrade
-- ----------------------------
DROP TABLE IF EXISTS `d_stgrade`;
CREATE TABLE `d_stgrade`
(
    `g_id`          int(0)      NOT NULL AUTO_INCREMENT,
    `s_studentid`   int(0)      NOT NULL,
    `s_name`        varchar(20) NULL DEFAULT NULL,
    `s_grade`       int(0)      NULL DEFAULT NULL,
    `s_classid`     int(0)      NULL DEFAULT NULL,
    `s_dormitoryid` int(0)      NULL DEFAULT NULL,
    `create_time`   datetime(0) NULL DEFAULT NULL,
    `update_time`   datetime(0) NULL DEFAULT NULL,
    PRIMARY KEY (`g_id`) USING BTREE
);

-- ----------------------------
-- Records of d_stgrade
-- ----------------------------


-- ----------------------------
-- Table structure for d_student
-- ----------------------------
DROP TABLE IF EXISTS `d_student`;
CREATE TABLE `d_student`
(
    `s_id`          int(0)      NOT NULL AUTO_INCREMENT,
    `s_studentid`   int(0)      NOT NULL,
    `s_name`        varchar(20) NULL DEFAULT NULL,
    `s_sex`         varchar(20) NULL DEFAULT NULL,
    `s_age`         int(0)      NULL DEFAULT NULL,
    `s_phone`       bigint(0)   NULL DEFAULT NULL,
    `s_classid`     int(0)      NOT NULL,
    `s_classname`   varchar(20) NULL DEFAULT NULL,
    `s_dormitoryid` int(0)      NOT NULL,
    PRIMARY KEY (`s_id`) USING BTREE,
    UNIQUE INDEX `unique` (`s_studentid`) USING BTREE COMMENT '学号唯一'
);

-- ----------------------------
-- Records of d_student
-- ----------------------------
INSERT INTO `d_student`
VALUES (1, 1413032001, '戴暄哲', '男', 22, 138138138, 221, '智科22-1', 606);
INSERT INTO `d_student`
VALUES (2, 1413032002, '陈书', '男', 22, 138138138, 141, '生物', 301);
INSERT INTO `d_student`
VALUES (3, 1413032003, '许文文', '男', 21, 138138138, 141, '生物', 301);
INSERT INTO `d_student`
VALUES (4, 1413032004, '王浩', '男', 22, 138138138, 141, '生物', 301);
INSERT INTO `d_student`
VALUES (5, 1413032005, '张伟', '男', 22, 138138138, 141, '土木', 301);
INSERT INTO `d_student`
VALUES (6, 1413032006, '郭顶', '男', 21, 138138138, 141, '土木', 301);
INSERT INTO `d_student`
VALUES (7, 1513112411, '曹原', '男', 20, 138138138, 151, '应化', 112);
INSERT INTO `d_student`
VALUES (8, 1513112412, '赵跃', '男', 21, 138138138, 151, '纺织', 112);
INSERT INTO `d_student`
VALUES (9, 1513112413, '孙畅', '男', 21, 138138138, 151, '纺织', 112);
INSERT INTO `d_student`
VALUES (10, 1513122417, '周帆', '男', 21, 138138138, 161, '物流', 213);
INSERT INTO `d_student`
VALUES (11, 1513122418, '田野', '男', 21, 138138138, 153, '数师', 213);
INSERT INTO `d_student`
VALUES (12, 1513122419, '张嘉佳', '男', 20, 138138138, 153, '金融', 213);
INSERT INTO `d_student`
VALUES (13, 1513122420, '陈昊', '男', 21, 138138138, 153, '金融', 213);
INSERT INTO `d_student`
VALUES (14, 324353, 'jack', '男', 23, 43253453, 33, '23', 543);

-- ----------------------------
-- Table structure for d_visitor
-- ----------------------------
DROP TABLE IF EXISTS `d_visitor`;
CREATE TABLE `d_visitor`
(
    `v_id`           int(0)      NOT NULL AUTO_INCREMENT,
    `v_name`         varchar(20) NULL DEFAULT NULL,
    `v_phone`        bigint(0)   NULL DEFAULT NULL,
    `v_dormitoryid`  int(0)      NULL DEFAULT NULL,
    `v_dormbuilding` varchar(20) NULL DEFAULT NULL,
    `create_time`    datetime(0) NULL DEFAULT NULL,
    PRIMARY KEY (`v_id`) USING BTREE
);

-- ----------------------------
-- Records of d_visitor
-- ----------------------------
