-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-07-05 09:53:36
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
  PRIMARY KEY (`enterprise_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单位信息表' AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单位与模块关系表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `t_module`
--

CREATE TABLE IF NOT EXISTS `t_module` (
  `moudle_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `module_name` varchar(50) NOT NULL COMMENT '名称',
  `create_time` timestamp NOT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL COMMENT '更新时间',
  `role_id` bigint(20) NOT NULL COMMENT '本模块所属角色',
  PRIMARY KEY (`moudle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表' AUTO_INCREMENT=1 ;

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
