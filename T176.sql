/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t176`;
CREATE DATABASE IF NOT EXISTS `t176` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t176`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/yimiaofabuhejiezhong/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/yimiaofabuhejiezhong/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/yimiaofabuhejiezhong/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'yiyuan_types', '医院类型', 1, '医院类型1', NULL, NULL, '2022-03-04 05:43:55'),
	(2, 'yiyuan_types', '医院类型', 2, '医院类型2', NULL, NULL, '2022-03-04 05:43:55'),
	(3, 'yiyuan_types', '医院类型', 3, '医院类型3', NULL, NULL, '2022-03-04 05:43:55'),
	(4, 'yimiao_types', '疫苗类型', 1, '疫苗类型1', NULL, NULL, '2022-03-04 05:43:55'),
	(5, 'yimiao_types', '疫苗类型', 2, '疫苗类型2', NULL, NULL, '2022-03-04 05:43:55'),
	(6, 'yimiao_types', '疫苗类型', 3, '疫苗类型3', NULL, NULL, '2022-03-04 05:43:55'),
	(7, 'yuyuejiezong_yesno_types', '预约审核', 1, '未处理', NULL, NULL, '2022-03-04 05:43:55'),
	(8, 'yuyuejiezong_yesno_types', '预约审核', 2, '同意', NULL, NULL, '2022-03-04 05:43:55'),
	(9, 'yuyuejiezong_yesno_types', '预约审核', 3, '拒绝', NULL, NULL, '2022-03-04 05:43:55'),
	(10, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-03-04 05:43:55'),
	(11, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-03-04 05:43:55'),
	(12, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-04 05:43:55'),
	(13, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-04 05:43:55'),
	(14, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-03-04 05:43:55'),
	(15, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-03-04 05:43:55'),
	(16, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-03-04 05:43:55');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yisheng_id` int DEFAULT NULL COMMENT 'zhiyuanzhe',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `yisheng_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, 1, NULL, '发布内容1', NULL, 1, '2022-03-04 05:44:02', '2022-03-04 05:44:02', '2022-03-04 05:44:02'),
	(2, '帖子标题2', 2, 2, NULL, '发布内容2', NULL, 1, '2022-03-04 05:44:02', '2022-03-04 05:44:02', '2022-03-04 05:44:02'),
	(3, '帖子标题3', 3, 3, NULL, '发布内容3', NULL, 1, '2022-03-04 05:44:02', '2022-03-04 05:44:02', '2022-03-04 05:44:02'),
	(4, '帖子标题4', 2, 4, NULL, '发布内容4', NULL, 1, '2022-03-04 05:44:02', '2022-03-04 05:44:02', '2022-03-04 05:44:02'),
	(5, '帖子标题5', 3, 5, NULL, '发布内容5', NULL, 1, '2022-03-04 05:44:02', '2022-03-04 05:44:02', '2022-03-04 05:44:02'),
	(6, '疫苗管用吗 有副作用吗', 1, NULL, NULL, '疫苗管用吗 有副作用吗', NULL, 1, '2022-03-04 06:32:10', NULL, '2022-03-04 06:32:10'),
	(7, NULL, 1, NULL, NULL, '没副作用', 6, 2, '2022-03-04 06:32:27', NULL, '2022-03-04 06:32:27'),
	(8, NULL, NULL, NULL, 1, '管理回复', 6, 2, '2022-03-04 06:33:02', NULL, '2022-03-04 06:33:02'),
	(11, NULL, NULL, 1, NULL, '没副作用', 6, 2, '2022-03-04 07:23:08', NULL, '2022-03-04 07:23:08'),
	(12, '11', 1, NULL, NULL, '111', NULL, 1, '2024-04-29 13:47:32', NULL, '2024-04-29 13:47:32');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'http://localhost:8080/yimiaofabuhejiezhong/upload/news1.jpg', '2022-03-04 05:44:02', '公告详情1', '2022-03-04 05:44:02'),
	(2, '公告标题2', 2, 'http://localhost:8080/yimiaofabuhejiezhong/upload/news2.jpg', '2022-03-04 05:44:02', '公告详情2', '2022-03-04 05:44:02'),
	(3, '公告标题3', 1, 'http://localhost:8080/yimiaofabuhejiezhong/upload/news3.jpg', '2022-03-04 05:44:02', '公告详情3', '2022-03-04 05:44:02'),
	(4, '公告标题4', 2, 'http://localhost:8080/yimiaofabuhejiezhong/upload/news4.jpg', '2022-03-04 05:44:02', '公告详情4', '2022-03-04 05:44:02'),
	(5, '公告标题5', 3, 'http://localhost:8080/yimiaofabuhejiezhong/upload/news5.jpg', '2022-03-04 05:44:02', '公告详情5', '2022-03-04 05:44:02');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '7cs15jyyw5798nhb4souob77ily8q0he', '2022-03-04 05:58:36', '2024-04-29 14:45:43'),
	(2, 1, 'a1', 'yonghu', '用户', '4svnzp6cdsqg8fk8bhkpjpnkzrle41p3', '2022-03-04 06:04:09', '2024-04-29 14:47:21'),
	(3, 1, 'a1', 'yisheng', '医生', '4h4napuyoy1jxuqwtmxb99wnk5d7hzju', '2022-03-04 06:35:03', '2024-04-29 14:46:54');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yimiao`;
CREATE TABLE IF NOT EXISTS `yimiao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yimiao_name` varchar(200) DEFAULT NULL COMMENT '疫苗标题 Search111 ',
  `yimiao_types` int DEFAULT NULL COMMENT '疫苗类型 Search111 ',
  `yimiao_photo` varchar(200) DEFAULT NULL COMMENT '疫苗图片 ',
  `yiyuan_id` int DEFAULT NULL COMMENT '医院信息',
  `yimiao_clicknum` int DEFAULT '0' COMMENT '点击次数',
  `insert_time` date DEFAULT NULL COMMENT '发布日期',
  `yimiao_content` text COMMENT '疫苗详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='疫苗信息';

DELETE FROM `yimiao`;
INSERT INTO `yimiao` (`id`, `yimiao_name`, `yimiao_types`, `yimiao_photo`, `yiyuan_id`, `yimiao_clicknum`, `insert_time`, `yimiao_content`, `create_time`) VALUES
	(1, '疫苗标题1', 2, 'http://localhost:8080/yimiaofabuhejiezhong/upload/1646373782145.jpeg', 1, 348, '2022-03-04', '<p>疫苗详情1</p>', '2022-03-04 05:44:02'),
	(2, '疫苗标题2', 2, 'http://localhost:8080/yimiaofabuhejiezhong/upload/1646373774865.jpeg', 2, 499, '2022-03-04', '<p>疫苗详情2</p>', '2022-03-04 05:44:02'),
	(3, '疫苗标题3', 1, 'http://localhost:8080/yimiaofabuhejiezhong/upload/1646373766857.jpeg', 3, 352, '2022-03-04', '<p>疫苗详情3</p>', '2022-03-04 05:44:02'),
	(4, '疫苗标题4', 1, 'http://localhost:8080/yimiaofabuhejiezhong/upload/1646373759174.jpeg', 4, 332, '2022-03-04', '<p>疫苗详情4</p>', '2022-03-04 05:44:02'),
	(5, '疫苗标题5', 1, 'http://localhost:8080/yimiaofabuhejiezhong/upload/1646373752031.jpeg', 5, 134, '2022-03-04', '<p>疫苗详情5</p>', '2022-03-04 05:44:02');

DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE IF NOT EXISTS `yisheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生姓名 Search111 ',
  `yisheng_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yisheng_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yisheng_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='医生';

DELETE FROM `yisheng`;
INSERT INTO `yisheng` (`id`, `username`, `password`, `yisheng_name`, `yisheng_photo`, `sex_types`, `yisheng_phone`, `yisheng_email`, `yisheng_delete`, `create_time`) VALUES
	(1, '医生1', '123456', '医生姓名1', 'http://localhost:8080/yimiaofabuhejiezhong/upload/yisheng1.jpg', 2, '17703786901', '1@qq.com', 1, '2022-03-04 05:44:02'),
	(2, '医生2', '123456', '医生姓名2', 'http://localhost:8080/yimiaofabuhejiezhong/upload/yisheng2.jpg', 1, '17703786902', '2@qq.com', 1, '2022-03-04 05:44:02'),
	(3, '医生3', '123456', '医生姓名3', 'http://localhost:8080/yimiaofabuhejiezhong/upload/yisheng3.jpg', 2, '17703786903', '3@qq.com', 1, '2022-03-04 05:44:02');

DROP TABLE IF EXISTS `yiyuan`;
CREATE TABLE IF NOT EXISTS `yiyuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yiyuan_name` varchar(200) DEFAULT NULL COMMENT '医院名称 Search111 ',
  `yiyuan_types` int DEFAULT NULL COMMENT '医院类型 Search111 ',
  `yiyuan_photo` varchar(200) DEFAULT NULL COMMENT '医院图片 ',
  `yiyuan_address` varchar(200) DEFAULT NULL COMMENT '医院地址',
  `yiyuan_content` text COMMENT '医院详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='医院信息';

DELETE FROM `yiyuan`;
INSERT INTO `yiyuan` (`id`, `yiyuan_name`, `yiyuan_types`, `yiyuan_photo`, `yiyuan_address`, `yiyuan_content`, `create_time`) VALUES
	(1, '医院名称1', 1, 'http://localhost:8080/yimiaofabuhejiezhong/upload/yiyuan1.jpg', '医院地址1', '医院详情1', '2022-03-04 05:44:02'),
	(2, '医院名称2', 2, 'http://localhost:8080/yimiaofabuhejiezhong/upload/yiyuan2.jpg', '医院地址2', '医院详情2', '2022-03-04 05:44:02'),
	(3, '医院名称3', 1, 'http://localhost:8080/yimiaofabuhejiezhong/upload/yiyuan3.jpg', '医院地址3', '医院详情3', '2022-03-04 05:44:02'),
	(4, '医院名称4', 3, 'http://localhost:8080/yimiaofabuhejiezhong/upload/yiyuan4.jpg', '医院地址4', '医院详情4', '2022-03-04 05:44:02'),
	(5, '医院名称5', 3, 'http://localhost:8080/yimiaofabuhejiezhong/upload/yiyuan5.jpg', '医院地址5', '医院详情5', '2022-03-04 05:44:02');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `sex_types`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/yimiaofabuhejiezhong/upload/yonghu1.jpg', 1, '17703786901', '410224199610232001', '1@qq.com', 1, '2022-03-04 05:44:02'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/yimiaofabuhejiezhong/upload/yonghu2.jpg', 2, '17703786902', '410224199610232002', '2@qq.com', 1, '2022-03-04 05:44:02'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/yimiaofabuhejiezhong/upload/yonghu3.jpg', 2, '17703786903', '410224199610232003', '3@qq.com', 1, '2022-03-04 05:44:02');

DROP TABLE IF EXISTS `yuyuejiezong`;
CREATE TABLE IF NOT EXISTS `yuyuejiezong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yimiao_id` int DEFAULT NULL COMMENT '疫苗',
  `yuyuejiezong_time` date DEFAULT NULL COMMENT '预约日期',
  `yuyuejiezong_text` text COMMENT '预约备注',
  `yuyuejiezong_yesno_types` int DEFAULT NULL COMMENT '预约审核',
  `yuyuejiezong_yesno_text` text COMMENT '审核原因',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='预约接种';

DELETE FROM `yuyuejiezong`;
INSERT INTO `yuyuejiezong` (`id`, `yonghu_id`, `yimiao_id`, `yuyuejiezong_time`, `yuyuejiezong_text`, `yuyuejiezong_yesno_types`, `yuyuejiezong_yesno_text`, `create_time`) VALUES
	(1, 1, 1, '2022-03-04', '预约备注1', 1, NULL, '2022-03-04 05:44:02'),
	(2, 3, 2, '2022-03-04', '预约备注2', 1, NULL, '2022-03-04 05:44:02'),
	(3, 3, 3, '2022-03-04', '预约备注3', 1, NULL, '2022-03-04 05:44:02'),
	(4, 1, 4, '2022-03-04', '预约备注4', 1, NULL, '2022-03-04 05:44:02'),
	(5, 2, 5, '2022-03-04', '预约备注5', 1, NULL, '2022-03-04 05:44:02'),
	(13, 1, 3, '2022-03-17', ' 备注信息11111', 2, '可以的', '2022-03-04 07:21:44');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
