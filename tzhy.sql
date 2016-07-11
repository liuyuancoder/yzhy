-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-07-11 12:01:46
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tzhy`
--

-- --------------------------------------------------------

--
-- 表的结构 `t_enterprise_info`
--

CREATE TABLE IF NOT EXISTS `t_enterprise_info` (
  `enterprise_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `enterprise_name` varchar(200) NOT NULL COMMENT '名称',
  `enterprise_addr` varchar(500) NOT NULL COMMENT '地址',
  `enterprise_url` varchar(200) NOT NULL COMMENT '网址',
  `enterprise_phone` varchar(15) NOT NULL COMMENT '电话',
  `create_time` timestamp NOT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL COMMENT '更新时间',
  `status` char(1) NOT NULL COMMENT '0：待审核；1：正常',
  `disorder` int(11) NOT NULL COMMENT '显示顺序',
  PRIMARY KEY (`enterprise_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='单位信息表' AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `t_enterprise_info`
--

INSERT INTO `t_enterprise_info` (`enterprise_id`, `enterprise_name`, `enterprise_addr`, `enterprise_url`, `enterprise_phone`, `create_time`, `update_time`, `status`, `disorder`) VALUES
(1, '泰州市政府', '江苏省泰州市凤凰东路58号', 'http://www.taizhou.gov.cn/index.html', '0523-86839138', '2016-07-07 03:45:06', '2016-07-07 03:45:06', '1', 0),
(2, '泰州市财政局', '泰州市海陵南路302号', 'http://www.tzcz.com/', '0523-86888001', '2016-07-07 03:45:54', '2016-07-07 03:45:54', '1', 0),
(3, '泰州市国税局', '泰州市海陵区青年南路68号', 'http://tz.jsgs.gov.cn/', '12366', '2016-07-07 03:46:38', '2016-07-07 03:46:38', '1', 0),
(4, '泰州市工商局', '青年南路99号', 'http://www.tzgsj.gov.cn/baweb/show/shiju/index.jsp', '12315', '2016-07-07 03:47:25', '2016-07-07 03:47:25', '1', 0),
(5, '泰州市交通局', '泰州市鼓楼南路301号', 'http://www.tzjtj.gov.cn/', '', '2016-07-07 03:49:04', '2016-07-07 03:49:04', '1', 0),
(6, '泰州市地税局', '江苏省泰州市医药高新区药城大道3号商务楼西楼', 'http://tz.jsds.gov.cn/', '12366', '2016-07-07 03:49:04', '2016-07-07 03:49:04', '1', 0),
(7, '泰州国家电网', '凤凰西路2号', 'http://www.js.sgcc.com.cn/tz/', '95598', '2016-07-07 03:49:48', '2016-07-07 03:49:48', '1', 0),
(8, '泰州移动', '海陵区凤凰东路139号', 'http://www.js.10086.cn/citys/taizhou/', '10086', '2016-07-07 03:50:25', '2016-07-07 03:50:25', '1', 0),
(9, '泰州市粮食局', '江苏省泰州市鼓楼南路516号', 'http://www.tzls.com/', '0523-86361000', '2016-07-07 03:51:01', '2016-07-07 03:51:01', '1', 0),
(10, '泰州联通', '凤凰东路100号', 'http://www.chinaunicom.com.cn/city/jiangsu/dspd/taizhou/', '10010', '2016-07-07 03:51:46', '2016-07-07 03:51:46', '1', 0),
(11, '泰州电信', '凤凰东路88号', 'http://www.189.cn/js/', '10000', '2016-07-07 03:52:28', '2016-07-07 03:52:28', '1', 0),
(12, '泰州公安局', '泰州市凤凰东路69号', 'http://www.tzpolice.gov.cn/', '', '2016-07-07 03:53:00', '2016-07-07 03:53:00', '1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `t_enterprise_info_correct`
--

CREATE TABLE IF NOT EXISTS `t_enterprise_info_correct` (
  `corr_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `enterprise_id` bigint(20) NOT NULL COMMENT '单位id',
  `enterprise_name` varchar(200) NOT NULL COMMENT '名称',
  `enterprise_addr` varchar(500) NOT NULL COMMENT '地址',
  `enterprise_url` varchar(200) NOT NULL COMMENT '网址',
  `enterprise_phone` varchar(15) NOT NULL COMMENT '电话',
  `create_time` timestamp NOT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL COMMENT '更新时间',
  `status` char(1) NOT NULL COMMENT '0：待审核；1：已采用；2：已丢弃',
  `corr_name` varchar(50) DEFAULT NULL COMMENT '纠正热名称',
  `corr_phone` varchar(15) DEFAULT NULL COMMENT '纠正人联系方式',
  `corr_email` varchar(100) DEFAULT NULL COMMENT '纠正人邮箱',
  PRIMARY KEY (`corr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单位信息纠正表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `t_enterprise_module_rela`
--

CREATE TABLE IF NOT EXISTS `t_enterprise_module_rela` (
  `rela_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `enterprise_id` bigint(20) NOT NULL COMMENT '单位id',
  `module_id` bigint(20) NOT NULL COMMENT '模块id',
  `create_time` timestamp NOT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`rela_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='单位与模块关系表' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `t_enterprise_module_rela`
--

INSERT INTO `t_enterprise_module_rela` (`rela_id`, `enterprise_id`, `module_id`, `create_time`, `update_time`) VALUES
(1, 1, 3, '2016-07-11 08:47:07', '2016-07-11 08:47:07'),
(2, 2, 3, '2016-07-11 08:47:18', '2016-07-11 08:47:18'),
(3, 3, 3, '2016-07-11 08:47:32', '2016-07-11 08:47:32'),
(4, 4, 3, '2016-07-11 08:47:32', '2016-07-11 08:47:32'),
(5, 5, 3, '2016-07-11 08:47:56', '2016-07-11 08:47:56'),
(6, 6, 3, '2016-07-11 08:47:56', '2016-07-11 08:47:56'),
(7, 9, 3, '2016-07-11 08:48:08', '2016-07-11 08:48:08'),
(8, 12, 3, '2016-07-11 08:48:08', '2016-07-11 08:48:08');

-- --------------------------------------------------------

--
-- 表的结构 `t_module`
--

CREATE TABLE IF NOT EXISTS `t_module` (
  `module_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `module_name` varchar(50) NOT NULL COMMENT '名称',
  `create_time` timestamp NOT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL COMMENT '更新时间',
  `role_id` bigint(20) NOT NULL COMMENT '本模块所属角色',
  `disorder` int(11) NOT NULL COMMENT '显示顺序',
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='模块表' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `t_module`
--

INSERT INTO `t_module` (`module_id`, `module_name`, `create_time`, `update_time`, `role_id`, `disorder`) VALUES
(1, '学校', '2016-07-05 09:51:34', '2016-07-05 09:51:34', 1, 0),
(2, '医院', '2016-07-05 09:51:22', '2016-07-05 09:51:22', 1, 0),
(3, '机关', '2016-07-05 09:52:08', '2016-07-05 09:52:08', 1, 0),
(4, '美食', '2016-07-05 09:53:11', '2016-07-05 09:53:11', 0, 0),
(5, '美食', '2016-07-05 09:53:31', '2016-07-05 09:53:31', 1, 0),
(6, '酒店', '2016-07-11 09:32:23', '2016-07-11 09:32:23', 1, 2),
(7, '企业', '2016-07-05 09:54:06', '2016-07-05 09:54:06', 1, 0),
(8, '购物', '2016-07-05 09:54:20', '2016-07-05 09:54:20', 1, 0),
(9, '视频', '2016-07-05 09:54:31', '2016-07-05 09:54:31', 1, 0),
(10, '新闻', '2016-07-05 09:54:41', '2016-07-05 09:54:41', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `t_role`
--

CREATE TABLE IF NOT EXISTS `t_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_name` varchar(50) NOT NULL COMMENT '角色名称',
  `auth` varchar(50) NOT NULL COMMENT '权限',
  `create_time` timestamp NOT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(50) NOT NULL COMMENT '用户名',
  `user_pwd` varchar(100) NOT NULL COMMENT '密码',
  `create_time` timestamp NOT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户基本信息表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `t_user_info`
--

CREATE TABLE IF NOT EXISTS `t_user_info` (
  `user_info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `birth` varchar(20) NOT NULL COMMENT '生日',
  `create_time` timestamp NOT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_info_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户信息表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `t_user_role_rela`
--

CREATE TABLE IF NOT EXISTS `t_user_role_rela` (
  `rela_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  `create_time` timestamp NOT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`rela_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户角色关系表' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
