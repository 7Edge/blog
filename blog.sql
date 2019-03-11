/*
SQLyog Ultimate v12.4.0 (64 bit)
MySQL - 10.1.10-MariaDB : Database - blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `blog`;

/*Data for the table `auth_group` */

/*Data for the table `auth_group_permissions` */

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can add permission',2,'add_permission'),
(5,'Can change permission',2,'change_permission'),
(6,'Can delete permission',2,'delete_permission'),
(7,'Can add group',3,'add_group'),
(8,'Can change group',3,'change_group'),
(9,'Can delete group',3,'delete_group'),
(10,'Can add content type',4,'add_contenttype'),
(11,'Can change content type',4,'change_contenttype'),
(12,'Can delete content type',4,'delete_contenttype'),
(13,'Can add session',5,'add_session'),
(14,'Can change session',5,'change_session'),
(15,'Can delete session',5,'delete_session'),
(16,'Can add user',6,'add_userinfo'),
(17,'Can change user',6,'change_userinfo'),
(18,'Can delete user',6,'delete_userinfo'),
(19,'Can add article',7,'add_article'),
(20,'Can change article',7,'change_article'),
(21,'Can delete article',7,'delete_article'),
(22,'Can add article2 tag',8,'add_article2tag'),
(23,'Can change article2 tag',8,'change_article2tag'),
(24,'Can delete article2 tag',8,'delete_article2tag'),
(25,'Can add article up down',9,'add_articleupdown'),
(26,'Can change article up down',9,'change_articleupdown'),
(27,'Can delete article up down',9,'delete_articleupdown'),
(28,'Can add blog',10,'add_blog'),
(29,'Can change blog',10,'change_blog'),
(30,'Can delete blog',10,'delete_blog'),
(31,'Can add category',11,'add_category'),
(32,'Can change category',11,'change_category'),
(33,'Can delete category',11,'delete_category'),
(34,'Can add comment',12,'add_comment'),
(35,'Can change comment',12,'change_comment'),
(36,'Can delete comment',12,'delete_comment'),
(37,'Can add tag',13,'add_tag'),
(38,'Can change tag',13,'change_tag'),
(39,'Can delete tag',13,'delete_tag');

/*Data for the table `django_admin_log` */

insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values 
(1,'2018-08-14 07:49:09.059918','1','花果山',1,'[{\"added\": {}}]',10,1),
(2,'2018-08-14 07:50:03.694813','1','JavaScript',1,'[{\"added\": {}}]',11,1),
(3,'2018-08-14 07:55:31.908768','1','ES6中的类继承和ES5中的继承模式详解',1,'[{\"added\": {}}]',7,1),
(4,'2018-08-14 07:56:26.468678','6','rulai',2,'[{\"changed\": {\"fields\": [\"blog\"]}}]',6,1),
(5,'2018-08-14 07:58:10.578813','2','西天',1,'[{\"added\": {}}]',10,1),
(6,'2018-08-14 07:58:14.967618','6','rulai',2,'[{\"changed\": {\"fields\": [\"blog\"]}}]',6,1),
(7,'2018-08-14 07:58:29.667500','2','sunwukong',2,'[{\"changed\": {\"fields\": [\"blog\"]}}]',6,1),
(8,'2018-08-14 07:59:54.477196','3','流沙河',1,'[{\"added\": {}}]',10,1),
(9,'2018-08-14 07:59:56.398301','5','shaheshang',2,'[{\"changed\": {\"fields\": [\"blog\"]}}]',6,1),
(10,'2018-08-14 08:00:52.641847','4','长安',1,'[{\"added\": {}}]',10,1),
(11,'2018-08-14 08:00:58.802216','4','tangseng',2,'[{\"changed\": {\"fields\": [\"blog\"]}}]',6,1),
(12,'2018-08-14 08:01:43.557549','5','高老庄',1,'[{\"added\": {}}]',10,1),
(13,'2018-08-14 08:01:44.976185','3','zhubajie',2,'[{\"changed\": {\"fields\": [\"blog\"]}}]',6,1),
(14,'2018-08-14 08:02:37.862029','6','ZJiQi',1,'[{\"added\": {}}]',10,1),
(15,'2018-08-14 08:03:10.879954','1','root',2,'[{\"changed\": {\"fields\": [\"telephone\", \"avatar\", \"blog\"]}}]',6,1),
(16,'2018-08-14 08:04:21.155069','1','js',1,'[{\"added\": {}}]',13,1),
(17,'2018-08-14 08:04:32.028085','2','python',1,'[{\"added\": {}}]',13,1),
(18,'2018-08-14 08:04:50.852250','3','css',1,'[{\"added\": {}}]',13,1),
(19,'2018-08-14 08:05:06.520259','4','html',1,'[{\"added\": {}}]',13,1),
(20,'2018-08-14 08:34:59.606271','2','C++学习',1,'[{\"added\": {}}]',11,1),
(21,'2018-08-14 08:35:02.486591','2','C++系统学习之六：函数',1,'[{\"added\": {}}]',7,1),
(22,'2018-08-14 08:37:16.513370','3','WEB前端',1,'[{\"added\": {}}]',11,1),
(23,'2018-08-14 08:37:25.264834','3','WEB安全 - 认识与防御XSS攻击',1,'[{\"added\": {}}]',7,1),
(24,'2018-08-14 08:38:02.846216','4','Java设计模式学习记录-外观模式',1,'[{\"added\": {}}]',7,1),
(25,'2018-08-14 08:39:04.123872','4','数据库',1,'[{\"added\": {}}]',11,1),
(26,'2018-08-14 08:39:09.530077','5','Mysql系列六：Mycat常用分片规则介绍和对应源码',1,'[{\"added\": {}}]',7,1),
(27,'2018-08-14 08:40:40.364954','5','架构',1,'[{\"added\": {}}]',11,1),
(28,'2018-08-14 08:40:42.936338','6','微服务架构理论-扩展立方体篇',1,'[{\"added\": {}}]',7,1),
(29,'2018-08-14 08:41:31.482653','6','WEB前端',1,'[{\"added\": {}}]',11,1),
(30,'2018-08-14 08:41:38.360451','7','jQuery 动画效果 与 动画队列',1,'[{\"added\": {}}]',7,1),
(31,'2018-08-14 08:42:23.498054','7','MySQL',1,'[{\"added\": {}}]',11,1),
(32,'2018-08-14 08:42:25.011993','8','MySQL 5.7中如何定位DDL被阻塞的问题',1,'[{\"added\": {}}]',7,1),
(33,'2018-08-14 08:50:26.988513','9','ajax跨域问题处理',1,'[{\"added\": {}}]',7,1),
(34,'2018-08-14 08:53:08.265272','8','JAVA开发',1,'[{\"added\": {}}]',11,1),
(35,'2018-08-14 08:53:10.502071','10','Java 中的国际化',1,'[{\"added\": {}}]',7,1),
(36,'2018-08-14 08:53:52.872373','11','sql server 备份与恢复系列五 完整模式下的备份与还原',1,'[{\"added\": {}}]',7,1),
(37,'2018-08-16 08:07:04.410569','1','ES6中的类继承和ES5中的继承模式详解---js',1,'[{\"added\": {}}]',8,1),
(38,'2018-08-16 08:07:30.473770','5','C/C++',1,'[{\"added\": {}}]',13,1),
(39,'2018-08-16 08:07:32.030027','2','C++系统学习之六：函数---C/C++',1,'[{\"added\": {}}]',8,1),
(40,'2018-08-16 08:08:03.492162','6','前端安全',1,'[{\"added\": {}}]',13,1),
(41,'2018-08-16 08:08:06.414867','3','WEB安全 - 认识与防御XSS攻击---前端安全',1,'[{\"added\": {}}]',8,1),
(42,'2018-08-16 08:09:18.275875','7','WEB',1,'[{\"added\": {}}]',13,1),
(43,'2018-08-16 08:09:20.576601','4','WEB安全 - 认识与防御XSS攻击---WEB',1,'[{\"added\": {}}]',8,1),
(44,'2018-08-16 08:10:29.015211','8','强类型语言',1,'[{\"added\": {}}]',13,1),
(45,'2018-08-16 08:10:38.505744','5','Java设计模式学习记录-外观模式---强类型语言',1,'[{\"added\": {}}]',8,1),
(46,'2018-08-16 08:11:04.285407','9','database',1,'[{\"added\": {}}]',13,1),
(47,'2018-08-16 08:11:06.530444','6','Mysql系列六：Mycat常用分片规则介绍和对应源码---database',1,'[{\"added\": {}}]',8,1),
(48,'2018-08-16 08:11:38.200159','10','前端安全',1,'[{\"added\": {}}]',13,1),
(49,'2018-08-16 08:11:48.723910','7','ajax跨域问题处理---前端安全',1,'[{\"added\": {}}]',8,1),
(50,'2018-08-16 08:12:20.826469','8','Java 中的国际化---强类型语言',1,'[{\"added\": {}}]',8,1),
(51,'2018-08-16 08:12:38.095309','9','sql server 备份与恢复系列五 完整模式下的备份与还原---database',1,'[{\"added\": {}}]',8,1),
(52,'2018-08-16 08:13:07.275493','11','database',1,'[{\"added\": {}}]',13,1),
(53,'2018-08-16 08:13:14.699374','10','MySQL 5.7中如何定位DDL被阻塞的问题---database',1,'[{\"added\": {}}]',8,1),
(54,'2018-08-16 08:13:39.056781','12','架构',1,'[{\"added\": {}}]',13,1),
(55,'2018-08-16 08:13:46.097909','11','微服务架构理论-扩展立方体篇---架构',1,'[{\"added\": {}}]',8,1),
(56,'2018-08-17 15:16:29.311634','9','Python基础',1,'[{\"added\": {}}]',11,1),
(57,'2018-08-17 15:16:35.764400','12','Python 入门之基本数据类型',1,'[{\"added\": {}}]',7,1),
(58,'2018-08-24 11:07:27.079494','7','seven',1,'[{\"added\": {}}]',10,1),
(59,'2018-08-24 11:07:30.883239','7','seven',2,'[{\"changed\": {\"fields\": [\"blog\"]}}]',6,1);

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'contenttypes','contenttype'),
(7,'myblog','article'),
(8,'myblog','article2tag'),
(9,'myblog','articleupdown'),
(10,'myblog','blog'),
(11,'myblog','category'),
(12,'myblog','comment'),
(13,'myblog','tag'),
(6,'myblog','userinfo'),
(5,'sessions','session');

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2018-08-07 04:46:33.390073'),
(2,'contenttypes','0002_remove_content_type_name','2018-08-07 04:46:34.310666'),
(3,'auth','0001_initial','2018-08-07 04:46:37.476130'),
(4,'auth','0002_alter_permission_name_max_length','2018-08-07 04:46:38.042838'),
(5,'auth','0003_alter_user_email_max_length','2018-08-07 04:46:38.082864'),
(6,'auth','0004_alter_user_username_opts','2018-08-07 04:46:38.112898'),
(7,'auth','0005_alter_user_last_login_null','2018-08-07 04:46:38.149067'),
(8,'auth','0006_require_contenttypes_0002','2018-08-07 04:46:38.172079'),
(9,'auth','0007_alter_validators_add_error_messages','2018-08-07 04:46:38.216120'),
(10,'auth','0008_alter_user_username_max_length','2018-08-07 04:46:38.257369'),
(11,'auth','0009_alter_user_last_name_max_length','2018-08-07 04:46:38.296392'),
(12,'myblog','0001_initial','2018-08-07 04:47:00.490939'),
(13,'admin','0001_initial','2018-08-07 04:47:02.877545'),
(14,'admin','0002_logentry_remove_auto_add','2018-08-07 04:47:02.992629'),
(15,'sessions','0001_initial','2018-08-07 04:47:03.508384');

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('nxxhe5gbulz3ri1oqgq687jgklfmsvni','MTVmOWNhMzUyOGZhZjhjMGM1YmUwNmE2YTIxYTA1NWU3NDY0YTBmMjp7InZhbGlkX2NvZGUiOiJaTm5oMCJ9','2018-09-07 13:59:16.353977'),
('rvzohehndjofgi5j59326nmajk4tvxvh','ZmRlZGY4M2ZhYjlhZGJlNzY0MGY3ODc4MzVlNmMxYzZmYjFlMjQ1OTp7InZhbGlkX2NvZGUiOiJVa3BCNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOGM1OGM1NjEwYTU2MGM3ODU4MjVjOTY4MWVhY2E4MTc0YTg2N2U5In0=','2018-09-07 16:11:19.045036'),
('zg6rp0siey4u2l48rnzrc5ujmitr11x4','NzkwZDMwMzdhMDk3ZWYxYzUzZDY5NGUzMDA1OTE0MWZkNDM3MWRhYjp7InZhbGlkX2NvZGUiOiJmcHpyQSIsIl9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZGVmNWQyNzQ5YWNjNWQyNDZmOTk0NjdjNDdiMDk1MTZjOTgzM2FkIn0=','2018-09-07 15:10:38.972905');

/*Data for the table `myblog_article` */

insert  into `myblog_article`(`nid`,`title`,`desc`,`create_time`,`content`,`up_count`,`down_count`,`comment_count`,`category_id`,`user_id`) values 
(1,'ES6中的类继承和ES5中的继承模式详解','1、ES5中的继承模式 我们先看ES5中的继承。 既然要实现继承，首先我们得要有一个父类。 1.1、原型链继承 原型链继承核心: 将父类的实例作为子类的原型。 原型链式继承模式实现了子类对父类的原型的继承。 但是，原型链式继承并没有实现代码的复用，一些共同的属性：如name，在子类中还是得重新写一遍...','2018-05-14 07:55:31.000000','1、ES5中的继承模式 我们先看ES5中的继承。 既然要实现继承，首先我们得要有一个父类。 1.1、原型链继承 原型链继承核心: 将父类的实例作为子类的原型。 原型链式继承模式实现了子类对父类的原型的继承。 但是，原型链式继承并没有实现代码的复用，一些共同的属性：如name，在子类中还是得重新写一遍',3,0,19,1,2),
(2,'C++系统学习之六：函数','1、函数基础 典型的函数定义包括：返回类型、函数名、由0个或多个形参组成的列表以及函数体。 2、参数传递 形参初始化的机理和变量初始化一样。 有两种方式：引用传递和值传递 2.1 传值参数 当形参是非引用类型时，形参初始化和变量初始化一样，将实参的值拷贝给形参。 指针形参 当执行指针拷贝操作时，拷贝 ...','2018-06-14 08:35:02.000000','1、函数基础 典型的函数定义包括：返回类型、函数名、由0个或多个形参组成的列表以及函数体。 2、参数传递 形参初始化的机理和变量初始化一样。 有两种方式：引用传递和值传递 2.1 传值参数 当形参是非引用类型时，形参初始化和变量初始化一样，将实参的值拷贝给形参。 指针形参 当执行指针拷贝操作时，拷贝 ...',1,2,6,2,2),
(3,'WEB安全 - 认识与防御XSS攻击','目录 什么是xss攻击？ XSS的危害 XSS攻击分类 xss攻击示例 反射型攻击 前端URL参数解析 反射型攻击 后端URL参数解析 注入型攻击 留言评论 如何规避xss攻击？ 总结 什么是xss攻击？ XSS，即（Cross Site Scripting）中文名称为“跨站脚本攻击”。 XSS的重','2018-02-14 08:37:25.000000','目录 什么是xss攻击？ XSS的危害 XSS攻击分类 xss攻击示例 反射型攻击 前端URL参数解析 反射型攻击 后端URL参数解析 注入型攻击 留言评论 如何规避xss攻击？ 总结 什么是xss攻击？ XSS，即（Cross Site Scripting）中文名称为“跨站脚本攻击”。 XSS的重',1,0,0,3,1),
(4,'Java设计模式学习记录-外观模式','前言 这次要介绍的是外观模式（也称为门面模式），外观模式也属于结构型模式，其实外观模式还是非常好理解的，简单的来讲就是将多个复杂的业务封装成一个方法，在调用此方法时可以不必关系具体执行了哪些业务，而只关心结果即可。这个场景其实在日常开发中使用的频率还是非常高的，下面来简单了解一下吧。 外观模式 概念','2018-07-14 08:38:02.000000','前言 这次要介绍的是外观模式（也称为门面模式），外观模式也属于结构型模式，其实外观模式还是非常好理解的，简单的来讲就是将多个复杂的业务封装成一个方法，在调用此方法时可以不必关系具体执行了哪些业务，而只关心结果即可。这个场景其实在日常开发中使用的频率还是非常高的，下面来简单了解一下吧。 外观模式 概念',1,0,0,3,1),
(5,'Mysql系列六：Mycat常用分片规则介绍和对应源码','一、Mycat常用分片规则 1. 时间类：按天分片、自然月分片、单月小时分片 2. 哈希类：Hash固定分片、日期范围Hash分片、截取数字Hash求模范围分片、截取数字Hash分片、一致性Hash分片 3. 取模类：取模分片、取模范围分片、范围求模分片 4. 其他类：枚举分片、范围约定分片、应用指','2018-08-14 08:39:09.497556','一、Mycat常用分片规则 1. 时间类：按天分片、自然月分片、单月小时分片 2. 哈希类：Hash固定分片、日期范围Hash分片、截取数字Hash求模范围分片、截取数字Hash分片、一致性Hash分片 3. 取模类：取模分片、取模范围分片、范围求模分片 4. 其他类：枚举分片、范围约定分片、应用指',0,0,0,4,1),
(6,'微服务架构理论-扩展立方体篇','近几年的的微服务概念大火特火，随之框架也变得大火起来，尤其是spring boot，可能是因为spring cloud火起来的原因 搞得沉寂多年的dubbo也开始更新变得火起来。 说起微服务对于不了解整个系统架构历史的小伙伴可能有些迷惑，怎么就突然一下子就微服务了，有点摸不着头脑，到底咋回事那？听我','2018-08-14 08:40:42.889307','近几年的的微服务概念大火特火，随之框架也变得大火起来，尤其是spring boot，可能是因为spring cloud火起来的原因 搞得沉寂多年的dubbo也开始更新变得火起来。 说起微服务对于不了解整个系统架构历史的小伙伴可能有些迷惑，怎么就突然一下子就微服务了，有点摸不着头脑，到底咋回事那？听我',0,0,0,5,1),
(7,'jQuery 动画效果 与 动画队列','基础效果 .hide([duration ] [,easing ] [,complete ]) 用于隐藏元素，没有参数的时候等同于直接设置 display 属性 .show() 用于显示元素，用法和hide类似 .toggle() 用来切换元素的隐藏、显示，类似于toggleClass，用法和sho...','2018-07-14 08:41:38.000000','基础效果 .hide([duration ] [,easing ] [,complete ]) 用于隐藏元素，没有参数的时候等同于直接设置 display 属性 .show() 用于显示元素，用法和hide类似 .toggle() 用来切换元素的隐藏、显示，类似于toggleClass，用法和sho',1,0,0,6,2),
(8,'MySQL 5.7中如何定位DDL被阻塞的问题','在上篇文章《MySQL表结构变更，不可不知的Metadata Lock》中，我们介绍了MDL引入的背景，及基本概念，从“道”的层面知道了什么是MDL。下面就从“术”的层面看看如何定位MDL的相关问题。 在MySQL 5.7中，针对MDL，引入了一张新表performance_schema.metad','2018-08-14 08:42:24.970964','在上篇文章《MySQL表结构变更，不可不知的Metadata Lock》中，我们介绍了MDL引入的背景，及基本概念，从“道”的层面知道了什么是MDL。下面就从“术”的层面看看如何定位MDL的相关问题。 在MySQL 5.7中，针对MDL，引入了一张新表performance_schema.metad',1,0,3,7,2),
(9,'ajax跨域问题处理','1、函数基础 典型的函数定义包括：返回类型、函数名、由0个或多个形参组成的列表以及函数体。 2、参数传递 形参初始化的机理和变量初始化一样。 有两种方式：引用传递和值传递 2.1 传值参数 当形参是非引用类型时，形参初始化和变量初始化一样，将实参的值拷贝给形参。 指针形参 当执行指针拷贝操作时，拷贝 ...','2018-05-14 08:50:26.000000','这段时间面试 经常会问到这个问题。也就是说，如果你的前端想要获取其他域名下的数据，前端需要如何请求，后端需要如何设置。 最常见的处理方式有两种 方法一，在java代码中设置response.setHeader(\"Access-Control-Allow-Origin\",\"*\");即可解决ajax跨域',2,1,2,6,2),
(10,'Java 中的国际化','国际化 ，英文叫 internationalization 单词太长 ，又被简称为 i18n（取头取尾中间有18个字母）不经大声呼喊 ，这都行 ！接着看什么是国际化 ， 国际化是指让产品或是程序在无需做出改变的情况下就能够适应不同语言和地区的需要 。同样是打招呼在中国你会说 “ 你好 ” ，在美国你','2018-08-14 08:53:10.474381','国际化 ，英文叫 internationalization 单词太长 ，又被简称为 i18n（取头取尾中间有18个字母）不经大声呼喊 ，这都行 ！接着看什么是国际化 ， 国际化是指让产品或是程序在无需做出改变的情况下就能够适应不同语言和地区的需要 。同样是打招呼在中国你会说 “ 你好 ” ，在美国你',1,0,0,8,1),
(11,'sql server 备份与恢复系列五 完整模式下的备份与还原','一.概述 前面介绍了简单恢复模式和大容量恢复模式，这篇继续写完整恢复模式下的备份与还原。在完整恢复模式里最大的优点是只要能成功备份尾日志，就可以还原到日志备份内包含的任何时点(\"时点恢复\")。当然对比前二种模式它是牺牲了磁盘I/O性能。 恢复模式 备份策略 数据安全性 I/O性能 简单恢复 完整备份','2018-08-14 08:53:52.862366','一.概述 前面介绍了简单恢复模式和大容量恢复模式，这篇继续写完整恢复模式下的备份与还原。在完整恢复模式里最大的优点是只要能成功备份尾日志，就可以还原到日志备份内包含的任何时点(\"时点恢复\")。当然对比前二种模式它是牺牲了磁盘I/O性能。 恢复模式 备份策略 数据安全性 I/O性能 简单恢复 完整备份',1,0,1,4,1),
(13,'用python实现自动玩Npubits的21点游戏','\n\r\n		用python实现自动玩Npubits的21点游戏\r\n	\n\r\n		21点的主页面\r\n	\n\r\n		https://---\r\n	\n\r\n		(此处不提供链接，用户直接在网站首页点击21点后，地址栏的链接便是。)\r\n	\n\r\n		需要知道的关键点\r\n	\n\r\n		（写代码时用来抓取数据的关键点）\r\n	...','2018-08-23 16:05:31.309428','<div class=\"blogpost-body cnblogs-markdown\" id=\"cnblogs_post_body\">\n<h3 id=\"用python实现自动玩npubits的21点游戏\">\r\n		用python实现自动玩Npubits的21点游戏\r\n	</h3>\n<h4 id=\"点的主页面\">\r\n		21点的主页面\r\n	</h4>\n<p>\r\n		https://---\r\n	</p>\n<p>\r\n		(<strong>此处不提供链接，用户直接在网站首页点击21点后，地址栏的链接便是。</strong>)\r\n	</p>\n<h4 id=\"需要知道的关键点\">\r\n		需要知道的关键点\r\n	</h4>\n<p>\r\n		（<em>写代码时用来抓取数据的关键点</em>）\r\n	</p>\n<h5 id=\"等待开局\">\r\n		1. 等待开局\r\n	</h5>\n<p>\r\n		若之前的21点还没有结束（暂时没有对手上线），那么不能开局，需等待之前的结束。若需等待，主页面包含以下内容\r\n	</p>\n<pre class=\"html\"><span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">button</span> <span class=\"hljs-attr\">type</span>=<span class=\"hljs-string\">\"submit\"</span> <span class=\"hljs-attr\">class</span>=<span class=\"hljs-string\">\"btn btn-default\"</span>&gt;</span>刷新<span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">button</span>&gt;</span></pre>\n<h5 id=\"可以开始\">\r\n		2. 可以开始\r\n	</h5>\n<p>\r\n		若可以开始游戏，主页面包含以下内容\r\n	</p>\n<pre class=\"html\"><span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">button</span> <span class=\"hljs-attr\">type</span>=<span class=\"hljs-string\">\"submit\"</span> <span class=\"hljs-attr\">class</span>=<span class=\"hljs-string\">\"btn btn-primary\"</span>&gt;</span>开始游戏！<span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">button</span>&gt;</span></pre>\n<h5 id=\"开始21点\">\r\n		3. 开始21点\r\n	</h5>\n<p>\r\n		向主页面post数据\r\n	</p>\n<pre class=\"json\">game: hit,\r\nstart: yes</pre>\n<h5 id=\"判断点数\">\r\n		4. 判断点数\r\n	</h5>\n<p>\r\n		判断每次操作后，主页面返回的网页内容。点数的html样式如下：\r\n	</p>\n<pre class=\"html\"><span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">b</span>&gt;</span>点数 = 16<span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">b</span>&gt;</span></pre>\n<h5 id=\"继续摸牌\">\r\n		5. 继续摸牌\r\n	</h5>\n<p>\r\n		向主页面post数据\r\n	</p>\n<pre><span class=\"hljs-attr\">game:</span> hit</pre>\n<h5 id=\"停止摸牌\">\r\n		6. 停止摸牌\r\n	</h5>\n<p>\r\n		向主页面post数据\r\n	</p>\n<pre>game: <span class=\"hljs-keyword\">stop</span></pre>\n<h4 id=\"python脚本思路\">\r\n		Python脚本思路\r\n	</h4>\n<ol>\n<li>\r\n			等待开局。\r\n		</li>\n<li>\r\n			开始21点。\r\n		</li>\n<li>\r\n			判断点数。\r\n		</li>\n<li>\r\n			若点数大于20，回到第1步。\r\n		</li>\n<li>\r\n			若点数大于17，则去到第8步。<strong>（17可变，只是我认为17点够大了）</strong>\n</li>\n<li>\r\n			若点数小于等于17，则去到第7步。\r\n		</li>\n<li>\r\n			继续摸牌，回到第3步。\r\n		</li>\n<li>\r\n			停止摸牌，回到第1步。\r\n		</li>\n</ol>\n<p>\n<em>toulanboy - http://www.cnblogs.com/toulanboy/</em>\n</p>\n<h4 id=\"代码实现\">\r\n		代码实现\r\n	</h4>\n<h5 id=\"关键逻辑开始-摸牌-停止\">\r\n		1. 关键逻辑：开始-摸牌-停止\r\n	</h5>\n<pre class=\"python\"><span class=\"hljs-comment\">#(**此处不提供链接，用户直接在网站首页点击21点后，地址栏的链接便是。**)</span> url = <span class=\"hljs-string\">\'https://----\'</span> <span class=\"hljs-comment\">#不停地玩21点</span> <span class=\"hljs-keyword\">while</span> <span class=\"hljs-keyword\">True</span>: <span class=\"hljs-comment\">#先看之前的是否结束了</span> result = getData(url)\r\n    time.sleep(<span class=\"hljs-number\">5</span>) <span class=\"hljs-comment\"># toulanboy - http://www.cnblogs.com/toulanboy/</span> <span class=\"hljs-keyword\">if</span> result == <span class=\"hljs-number\">0</span>: <span class=\"hljs-comment\">#如果还没结束，则继续刷新</span> <span class=\"hljs-keyword\">print</span> <span class=\"hljs-string\">\"之前的尚没结束，等待中\"</span> <span class=\"hljs-keyword\">elif</span> result == <span class=\"hljs-number\">1</span>:<span class=\"hljs-comment\">#如果结束了，则开始游戏</span> point = postData(url, startValues)<span class=\"hljs-comment\">#发出“开始游戏”请求</span> <span class=\"hljs-keyword\">print</span> <span class=\"hljs-string\">\"已开局，当前点数 = %d\"</span> % point <span class=\"hljs-comment\">#大于20点，系统会自动结束，故在这里我只需在小于21点的情况下摸牌</span> <span class=\"hljs-keyword\">while</span> point &lt;= <span class=\"hljs-number\">20</span>: <span class=\"hljs-keyword\">if</span> point &gt;= <span class=\"hljs-number\">17</span>:<span class=\"hljs-comment\">#我认为只要大于17点我满足了，所以大于17点就停止摸牌</span> time.sleep(<span class=\"hljs-number\">1</span>)\r\n                postData(url, stopValues)<span class=\"hljs-comment\">#发出“停止摸牌”请求</span> <span class=\"hljs-keyword\">print</span> <span class=\"hljs-string\">\"停止摸牌了，当前点数 = %d\"</span> % point <span class=\"hljs-keyword\">break</span> <span class=\"hljs-keyword\">else</span>:<span class=\"hljs-comment\">#小于17点则继续摸牌</span> time.sleep(<span class=\"hljs-number\">1</span>)\r\n                point = postData(url, hitValues)<span class=\"hljs-comment\">#发出“继续摸牌”请求</span> <span class=\"hljs-keyword\">print</span> <span class=\"hljs-string\">\"又摸牌了，当前点数 = %d\"</span> % point <span class=\"hljs-keyword\">print</span> <span class=\"hljs-string\">\"这局结束了，当前点数 = %d\"</span> % point <span class=\"hljs-keyword\">else</span>:<span class=\"hljs-comment\">#出现异常，则停止游戏。等待渣渣看日志看看哪里出问题了。</span> sendEmail(<span class=\"hljs-string\">\"xxx@qq.com\"</span>, <span class=\"hljs-string\">\"Some errors occurred in python script for npubits\"</span>, <span class=\"hljs-string\">\"Some errors occurred in python script for npubits\"</span>) <span class=\"hljs-keyword\">break</span></pre>\n<h5 id=\"用get请求判断是否可以开始游戏\">\r\n		2. 用get请求判断是否可以开始游戏\r\n	</h5>\n<pre class=\"python\"><span class=\"hljs-comment\">#function - Get网页</span> <span class=\"hljs-comment\">#若网页显示之前的没结束，则返回0</span> <span class=\"hljs-comment\">#若网页显示可以开始新的一局，则返回1</span> <span class=\"hljs-comment\">#其它情况返回-1</span> <span class=\"hljs-function\"><span class=\"hljs-keyword\">def</span> <span class=\"hljs-title\">getData</span><span class=\"hljs-params\">(url)</span>:</span> headers = { <span class=\"hljs-string\">\'User-Agent\'</span> : <span class=\"hljs-string\">\'-\'</span>,<span class=\"hljs-comment\">#建议设置</span> <span class=\"hljs-string\">\'cookie\'</span>:<span class=\"hljs-string\">\'-\'</span><span class=\"hljs-comment\">#我没做登陆，所以手动弄cookie</span> } <span class=\"hljs-keyword\">try</span>:\r\n        response = requests.get(url, headers=headers)\r\n        indexHtmlCode = response.text\r\n        indexHtmlCode =  indexHtmlCode.encode(<span class=\"hljs-string\">\'utf-8\'</span>) <span class=\"hljs-comment\">#判断是否有刷新按钮，若有，说明上局没结束</span> freshRegex = <span class=\"hljs-string\">r\'刷新&lt;/button&gt;\'</span> result = re.findall(freshRegex, indexHtmlCode) <span class=\"hljs-keyword\">if</span> result: <span class=\"hljs-keyword\">return</span> <span class=\"hljs-number\">0</span> <span class=\"hljs-comment\"># toulanboy - http://www.cnblogs.com/toulanboy/ </span> <span class=\"hljs-comment\">#判断是否有开始游戏按钮，若有，说明可以开始游戏</span> beginRegex = <span class=\"hljs-string\">r\'开始游戏！&lt;/button&gt;\'</span> result = re.findall(beginRegex, indexHtmlCode) <span class=\"hljs-keyword\">if</span> result: <span class=\"hljs-keyword\">return</span> <span class=\"hljs-number\">1</span> <span class=\"hljs-keyword\">return</span> <span class=\"hljs-number\">-1</span> <span class=\"hljs-keyword\">except</span> Exception <span class=\"hljs-keyword\">as</span> e: <span class=\"hljs-keyword\">return</span> <span class=\"hljs-number\">-1</span></pre>\n<h5 id=\"用post请求实现开始摸牌停止的动作\">\r\n		3. 用Post请求实现开始/摸牌/停止的动作\r\n	</h5>\n<p>\n<em>toulanboy - http://www.cnblogs.com/toulanboy/</em>\n</p>\n<pre class=\"python\"><span class=\"hljs-comment\">### 不同动作需要的数据不一样</span> <span class=\"hljs-comment\"># 开始游戏</span> startValues = { <span class=\"hljs-string\">\"game\"</span>:<span class=\"hljs-string\">\"hit\"</span>, <span class=\"hljs-string\">\"start\"</span>:<span class=\"hljs-string\">\"yes\"</span> } <span class=\"hljs-comment\"># 继续摸牌</span> hitValues = { <span class=\"hljs-string\">\"game\"</span>:<span class=\"hljs-string\">\"hit\"</span> } <span class=\"hljs-comment\"># 停止摸牌</span> stopValues = { <span class=\"hljs-string\">\"game\"</span>:<span class=\"hljs-string\">\"stop\"</span> } <span class=\"hljs-comment\">#function - Post网页</span> <span class=\"hljs-comment\">#若是开始和摸牌，则返回点数</span> <span class=\"hljs-comment\">#页面没有点数（停止摸牌操作会出现），则返回0</span> <span class=\"hljs-comment\">#异常，返回-1</span> <span class=\"hljs-function\"><span class=\"hljs-keyword\">def</span> <span class=\"hljs-title\">postData</span><span class=\"hljs-params\">(url, values)</span>:</span> dd = urllib.urlencode(values)\r\n    headers = { <span class=\"hljs-string\">\"Content-Length\"</span>:str(len(dd)), <span class=\"hljs-string\">\"Content-Type\"</span>:<span class=\"hljs-string\">\"application/x-www-form-urlencoded\"</span>, <span class=\"hljs-string\">\'Cache-Control\'</span>:<span class=\"hljs-string\">\'max-age=0\'</span>,<span class=\"hljs-comment\">#上述三个参数其实应该不用手动添加，有可能request库会帮我们添加。有待验证。</span> <span class=\"hljs-string\">\'User-Agent\'</span> : <span class=\"hljs-string\">\'-\'</span>,<span class=\"hljs-comment\">#自己补充</span> <span class=\"hljs-string\">\'cookie\'</span>:<span class=\"hljs-string\">\'-\'</span><span class=\"hljs-comment\">#自己补充</span> } <span class=\"hljs-keyword\">try</span>:\r\n        response = requests.post(url, data=dd,headers=headers)\r\n        indexHtmlCode = response.text\r\n        indexHtmlCode =  indexHtmlCode.encode(<span class=\"hljs-string\">\'utf-8\'</span>) <span class=\"hljs-comment\"># toulanboy - http://www.cnblogs.com/toulanboy/</span> <span class=\"hljs-comment\"># 查看返回的网页的点数</span> pointRegex = <span class=\"hljs-string\">r\'点数\\s?=\\s?(\\d*)&lt;\'</span> result = re.findall(pointRegex, indexHtmlCode) <span class=\"hljs-keyword\">if</span> result: <span class=\"hljs-keyword\">return</span> int(result[<span class=\"hljs-number\">0</span>]) <span class=\"hljs-keyword\">else</span>: <span class=\"hljs-keyword\">return</span> <span class=\"hljs-number\">0</span> <span class=\"hljs-keyword\">except</span> Exception <span class=\"hljs-keyword\">as</span> e: <span class=\"hljs-keyword\">return</span> <span class=\"hljs-number\">-1</span></pre>\n<h4 id=\"完整代码\">\r\n		完整代码\r\n	</h4>\n<p>\n<strong>为了便于维护，完整代码中增加了日志记录和邮件提醒</strong>\n</p>\n<pre class=\"python\"><span class=\"hljs-comment\">#!/usr/bin/python</span> <span class=\"hljs-comment\"># coding=utf-8</span> <span class=\"hljs-comment\"># 时间：2018-08-22</span> <span class=\"hljs-comment\"># 作者：toulanboy</span> <span class=\"hljs-comment\"># 缘由：想实现自动玩npubits的21点游戏</span> <span class=\"hljs-keyword\">import</span> requests <span class=\"hljs-keyword\">import</span> re <span class=\"hljs-keyword\">import</span> urllib <span class=\"hljs-keyword\">import</span> time <span class=\"hljs-keyword\">import</span> logging <span class=\"hljs-keyword\">import</span> smtplib <span class=\"hljs-keyword\">from</span> email.mime.text <span class=\"hljs-keyword\">import</span> MIMEText <span class=\"hljs-comment\">#配置日志</span> logging.basicConfig(filename=<span class=\"hljs-string\">\'my.log\'</span>,format=<span class=\"hljs-string\">\'[%(asctime)s-%(filename)s-%(levelname)s:%(message)s]\'</span>, level = logging.INFO,filemode=<span class=\"hljs-string\">\'a\'</span>,datefmt=<span class=\"hljs-string\">\'%Y-%m-%d %I:%M:%S %p\'</span>) <span class=\"hljs-comment\">### 不同动作需要的数据不一样</span> <span class=\"hljs-comment\"># 开始游戏</span> startValues = { <span class=\"hljs-string\">\"game\"</span>:<span class=\"hljs-string\">\"hit\"</span>, <span class=\"hljs-string\">\"start\"</span>:<span class=\"hljs-string\">\"yes\"</span> } <span class=\"hljs-comment\"># 继续摸牌</span> hitValues = { <span class=\"hljs-string\">\"game\"</span>:<span class=\"hljs-string\">\"hit\"</span> } <span class=\"hljs-comment\"># 停止摸牌</span> stopValues = { <span class=\"hljs-string\">\"game\"</span>:<span class=\"hljs-string\">\"stop\"</span> } <span class=\"hljs-comment\"># toulanboy - http://www.cnblogs.com/toulanboy/</span> <span class=\"hljs-comment\">#function - Post网页</span> <span class=\"hljs-comment\">#若是开始和摸牌，则返回点数</span> <span class=\"hljs-comment\">#页面没有点数（停止摸牌操作会出现），则返回0</span> <span class=\"hljs-comment\">#异常，返回-1</span> <span class=\"hljs-function\"><span class=\"hljs-keyword\">def</span> <span class=\"hljs-title\">postData</span><span class=\"hljs-params\">(url, values)</span>:</span> dd = urllib.urlencode(values)\r\n    headers = { <span class=\"hljs-string\">\"Content-Length\"</span>:str(len(dd)), <span class=\"hljs-string\">\"Content-Type\"</span>:<span class=\"hljs-string\">\"application/x-www-form-urlencoded\"</span>, <span class=\"hljs-string\">\'Cache-Control\'</span>:<span class=\"hljs-string\">\'max-age=0\'</span>,<span class=\"hljs-comment\">#上述三个参数其实应该不用手动添加，有可能request库会帮我们添加。有待验证。</span> <span class=\"hljs-string\">\'User-Agent\'</span> : <span class=\"hljs-string\">\'-\'</span>,<span class=\"hljs-comment\">#自己补充</span> <span class=\"hljs-string\">\'cookie\'</span>:<span class=\"hljs-string\">\'-\'</span><span class=\"hljs-comment\">#自己补充</span> } <span class=\"hljs-keyword\">try</span>:\r\n        response = requests.post(url, data=dd,headers=headers)\r\n        indexHtmlCode = response.text\r\n        indexHtmlCode =  indexHtmlCode.encode(<span class=\"hljs-string\">\'utf-8\'</span>) <span class=\"hljs-comment\"># 提取网页主干，存入日志(方便后期的分析)</span> body = re.findall(<span class=\"hljs-string\">r\'&lt;div\\s?id=\\\'main\\\'\\s?class=\\\'well\\s?no-border-radius\\\'&gt;.*?&lt;/div&gt;\'</span>,indexHtmlCode, re.S) <span class=\"hljs-keyword\">if</span> body:\r\n            logging.info(body[<span class=\"hljs-number\">0</span>]) <span class=\"hljs-keyword\">else</span>:\r\n            logging.info(indexHtmlCode) <span class=\"hljs-comment\"># 查看返回的网页的点数</span> pointRegex = <span class=\"hljs-string\">r\'点数\\s?=\\s?(\\d*)&lt;\'</span> result = re.findall(pointRegex, indexHtmlCode) <span class=\"hljs-keyword\">if</span> result: <span class=\"hljs-keyword\">return</span> int(result[<span class=\"hljs-number\">0</span>]) <span class=\"hljs-keyword\">else</span>: <span class=\"hljs-keyword\">return</span> <span class=\"hljs-number\">0</span> <span class=\"hljs-keyword\">except</span> Exception <span class=\"hljs-keyword\">as</span> e:\r\n        logging.error(e) <span class=\"hljs-keyword\">return</span> <span class=\"hljs-number\">-1</span> <span class=\"hljs-comment\">#function - Get网页</span> <span class=\"hljs-comment\">#若网页显示之前的没结束，则返回0</span> <span class=\"hljs-comment\">#若网页显示可以开始新的一局，则返回1</span> <span class=\"hljs-comment\">#其它情况返回-1</span> <span class=\"hljs-function\"><span class=\"hljs-keyword\">def</span> <span class=\"hljs-title\">getData</span><span class=\"hljs-params\">(url)</span>:</span> headers = { <span class=\"hljs-string\">\'User-Agent\'</span> : <span class=\"hljs-string\">\'-\'</span>,<span class=\"hljs-comment\">#建议设置</span> <span class=\"hljs-string\">\'cookie\'</span>:<span class=\"hljs-string\">\'-\'</span><span class=\"hljs-comment\">#我没做登陆，所以手动弄cookie</span> } <span class=\"hljs-keyword\">try</span>:\r\n        response = requests.get(url, headers=headers)\r\n        indexHtmlCode = response.text\r\n        indexHtmlCode =  indexHtmlCode.encode(<span class=\"hljs-string\">\'utf-8\'</span>) <span class=\"hljs-comment\">#判断是否有刷新按钮，若有，说明上局没结束</span> freshRegex = <span class=\"hljs-string\">r\'刷新&lt;/button&gt;\'</span> result = re.findall(freshRegex, indexHtmlCode) <span class=\"hljs-keyword\">if</span> result: <span class=\"hljs-keyword\">return</span> <span class=\"hljs-number\">0</span> <span class=\"hljs-comment\">#判断是否有开始游戏按钮，若有，说明可以开始游戏</span> beginRegex = <span class=\"hljs-string\">r\'开始游戏！&lt;/button&gt;\'</span> result = re.findall(beginRegex, indexHtmlCode) <span class=\"hljs-keyword\">if</span> result: <span class=\"hljs-keyword\">return</span> <span class=\"hljs-number\">1</span> <span class=\"hljs-comment\"># 若以上情况都不是，有可能是cookie过期了</span> loginRegex = <span class=\"hljs-string\">r\'您尚未登录&lt;/body&gt;\'</span> result = re.findall(loginRegex, indexHtmlCode) <span class=\"hljs-keyword\">if</span> result: <span class=\"hljs-keyword\">return</span> <span class=\"hljs-number\">2</span> <span class=\"hljs-comment\"># 如果不是cookie过期，则需打印当前错误信息（记录返回的网页源代码），方便后面找错</span> logging.error(indexHtmlCode) <span class=\"hljs-keyword\">except</span> Exception <span class=\"hljs-keyword\">as</span> e:\r\n        logging.error(e) <span class=\"hljs-keyword\">return</span> <span class=\"hljs-number\">-1</span> <span class=\"hljs-comment\">#发邮件 (收件人 ,邮件主题 ,邮件正文)</span> <span class=\"hljs-function\"><span class=\"hljs-keyword\">def</span> <span class=\"hljs-title\">sendEmail</span><span class=\"hljs-params\">(_to, subject, mainText)</span>:</span> _user = <span class=\"hljs-string\">\"-\"</span> <span class=\"hljs-comment\">#登录的163邮箱</span> _pwd = <span class=\"hljs-string\">\"-\"</span> <span class=\"hljs-comment\">#163邮箱授权码</span> msg = MIMEText(mainText) <span class=\"hljs-comment\">#邮件正文</span> msg[<span class=\"hljs-string\">\"Subject\"</span>] = subject <span class=\"hljs-comment\">#邮件主题</span> msg[<span class=\"hljs-string\">\"From\"</span>]    = _user <span class=\"hljs-comment\">#发件人</span> msg[<span class=\"hljs-string\">\"To\"</span>]      = _to <span class=\"hljs-comment\">#收件人</span> <span class=\"hljs-keyword\">try</span>:\r\n        s = smtplib.SMTP_SSL(<span class=\"hljs-string\">\"smtp.163.com\"</span>, <span class=\"hljs-number\">465</span>)\r\n        s.login(_user, _pwd)<span class=\"hljs-comment\">#登录</span> s.sendmail(_user, _to, msg.as_string())<span class=\"hljs-comment\">#发送</span> s.quit()<span class=\"hljs-comment\">#退出登录</span> logging.info(<span class=\"hljs-string\">\"邮件发送成功!\"</span>) <span class=\"hljs-keyword\">print</span> <span class=\"hljs-string\">\"邮件发送成功!\"</span> <span class=\"hljs-keyword\">except</span> smtplib.SMTPException,e:\r\n        logging.info(<span class=\"hljs-string\">\"邮件发送失败,%s\"</span>%e[<span class=\"hljs-number\">0</span>]) <span class=\"hljs-keyword\">print</span> <span class=\"hljs-string\">\"邮件发送失败,%s\"</span>%e[<span class=\"hljs-number\">0</span>] <span class=\"hljs-comment\">#(**此处不提供链接，用户直接在网站首页点击21点后，地址栏的链接便是。**)</span> url = <span class=\"hljs-string\">\'https://----\'</span> <span class=\"hljs-comment\">#不停地玩21点</span> <span class=\"hljs-keyword\">while</span> <span class=\"hljs-keyword\">True</span>: <span class=\"hljs-comment\">#先看之前的是否结束了</span> result = getData(url)\r\n    time.sleep(<span class=\"hljs-number\">5</span>) <span class=\"hljs-keyword\">if</span> result == <span class=\"hljs-number\">0</span>: <span class=\"hljs-comment\">#如果还没结束，则继续刷新</span> <span class=\"hljs-keyword\">print</span> <span class=\"hljs-string\">\"之前的尚没结束，等待中\"</span> <span class=\"hljs-keyword\">elif</span> result == <span class=\"hljs-number\">1</span>:<span class=\"hljs-comment\">#如果结束了，则开始游戏</span> point = postData(url, startValues)<span class=\"hljs-comment\">#发出“开始游戏”请求</span> logging.info(<span class=\"hljs-string\">\"已开局，当前点数 = %d\"</span> % point) <span class=\"hljs-keyword\">print</span> <span class=\"hljs-string\">\"已开局，当前点数 = %d\"</span> % point <span class=\"hljs-comment\">#大于20点，系统会自动结束，故在这里我只需在小于21点的情况下摸牌</span> <span class=\"hljs-keyword\">while</span> point &lt;= <span class=\"hljs-number\">20</span>: <span class=\"hljs-keyword\">if</span> point &gt;= <span class=\"hljs-number\">17</span>:<span class=\"hljs-comment\">#我认为只要大于17点我满足了，所以大于17点就停止摸牌</span> time.sleep(<span class=\"hljs-number\">1</span>)\r\n                postData(url, stopValues)<span class=\"hljs-comment\">#发出“停止摸牌”请求</span> logging.info(<span class=\"hljs-string\">\"停止摸牌了，当前点数 = %d\"</span> % point) <span class=\"hljs-keyword\">print</span> <span class=\"hljs-string\">\"停止摸牌了，当前点数 = %d\"</span> % point <span class=\"hljs-keyword\">break</span> <span class=\"hljs-keyword\">else</span>:<span class=\"hljs-comment\">#小于17点则继续摸牌</span> time.sleep(<span class=\"hljs-number\">1</span>)\r\n                point = postData(url, hitValues)<span class=\"hljs-comment\">#发出“继续摸牌”请求</span> logging.info(<span class=\"hljs-string\">\"又摸牌了，当前点数 = %d\"</span> % point) <span class=\"hljs-keyword\">print</span> <span class=\"hljs-string\">\"又摸牌了，当前点数 = %d\"</span> % point\r\n        \r\n        logging.info(<span class=\"hljs-string\">\"这局结束了，当前点数 = %d\"</span> % point) <span class=\"hljs-keyword\">print</span> <span class=\"hljs-string\">\"这局结束了，当前点数 = %d\"</span> % point <span class=\"hljs-keyword\">else</span>:<span class=\"hljs-comment\">#出现异常，则停止游戏。等待渣渣看日志看看哪里出问题了。</span> sendEmail(<span class=\"hljs-string\">\"xxx@qq.com\"</span>, <span class=\"hljs-string\">\"Some errors occurred in python script for npubits\"</span>, <span class=\"hljs-string\">\"Some errors occurred in python script for npubits\"</span>) <span class=\"hljs-keyword\">break</span> </pre>\n<p>\n<em>toulanboy - http://www.cnblogs.com/toulanboy/</em>\n</p>\n<h4 id=\"完毕python刚刚学到点皮毛代码习惯可能不好希望大佬多多包涵\">\r\n		完毕。python刚刚学到点皮毛，代码习惯可能不好，希望大佬多多包涵。\r\n	</h4>\n<h4 id=\"如若有大佬愿意指点非常感谢\">\r\n		如若有大佬愿意指点，非常感谢。\r\n	</h4>\n</div>',1,0,1,9,1),
(14,'testtest','testetastea...','2018-08-23 17:31:04.510031','testetastea',0,1,2,4,1),
(15,'测试测试测试','测试测试...','2018-08-24 11:56:39.181489','<strong>测试测试</strong>',1,1,5,10,8),
(18,'第三百一十一节，Django框架，Form表单验证','\n\r\n		1）普通传递select数据\r\n	\n\n\n\n\n    # -*- coding:utf-8 -*- __author__ = \'shisanjun\' from django import forms from django.forms import fields,widgets class ...','2018-08-24 14:35:02.437566','<div class=\"blogpost-body\" id=\"cnblogs_post_body\">\n<h2>\r\n		1）普通传递select数据\r\n	</h2>\n<div class=\"cnblogs_code\">\n<div class=\"cnblogs_code_toolbar\">\n<span class=\"cnblogs_code_copy\"><a href=\"javascript:void(0);\"><img alt=\"复制代码\" src=\"//common.cnblogs.com/images/copycode.gif\"/></a></span>\n</div>\n<pre>    <span style=\"color:#008000;\">#</span><span style=\"color:#008000;\"> -*- coding:utf-8 -*-</span> <span style=\"color:#800080;\">__author__</span> = <span style=\"color:#800000;\">\'</span><span style=\"color:#800000;\">shisanjun</span><span style=\"color:#800000;\">\'</span> <span style=\"color:#0000ff;\">from</span> django <span style=\"color:#0000ff;\">import</span><span style=\"color:#000000;\"> forms </span><span style=\"color:#0000ff;\">from</span> django.forms <span style=\"color:#0000ff;\">import</span><span style=\"color:#000000;\"> fields,widgets </span><span style=\"color:#0000ff;\">class</span><span style=\"color:#000000;\"> UserInfoForm(forms.Form):\r\n        user</span>=<span style=\"color:#000000;\">fields.CharField(\r\n            required</span>=<span style=\"color:#000000;\">False,\r\n            widget</span>=widgets.Textarea(attrs={<span style=\"color:#800000;\">\"</span><span style=\"color:#800000;\">class</span><span style=\"color:#800000;\">\"</span>:<span style=\"color:#800000;\">\"</span><span style=\"color:#800000;\">c1</span><span style=\"color:#800000;\">\"</span><span style=\"color:#000000;\">}),\r\n        )\r\n        pwd</span>=<span style=\"color:#000000;\">fields.CharField(\r\n            max_length</span>=12<span style=\"color:#000000;\">,\r\n            widget</span>=widgets.PasswordInput(attrs={<span style=\"color:#800000;\">\"</span><span style=\"color:#800000;\">class</span><span style=\"color:#800000;\">\"</span>:<span style=\"color:#800000;\">\"</span><span style=\"color:#800000;\">c1</span><span style=\"color:#800000;\">\"</span><span style=\"color:#000000;\">})\r\n        ) <span style=\"color:#ff0000;\"><strong> user_type</strong></span></span><span style=\"color:#ff0000;\"><strong>=fields.ChoiceField(\r\n            choices=[(1,\"普通用户\"),(2,\"超级用户\")],\r\n            widget=widgets.Select,\r\n    ) </strong></span>&lt;form action=<span style=\"color:#800000;\">\'</span><span style=\"color:#800000;\">{% url \"index\" %}</span><span style=\"color:#800000;\">\'</span> method=<span style=\"color:#800000;\">\"</span><span style=\"color:#800000;\">post</span><span style=\"color:#800000;\">\"</span>&gt;\r\n        &lt;p&gt;<span style=\"color:#000000;\"> {{ obj.user }} </span>&lt;/p&gt;\r\n        &lt;p&gt;{{ obj.pwd }}&lt;/p&gt;\r\n        &lt;p&gt;{{ obj.user_type }}&lt;/p&gt;\r\n    &lt;/form&gt;</pre>\n<div class=\"cnblogs_code_toolbar\">\n<span class=\"cnblogs_code_copy\"><a href=\"javascript:void(0);\"><img alt=\"复制代码\" src=\"//common.cnblogs.com/images/copycode.gif\"/></a></span>\n</div>\n</div>\n<h2>\r\n		2）上面choice应该从数据库中取数据\r\n	</h2>\n<pre>from django import forms\r\nfrom django.forms import fields,widgets\r\nfrom app01 import models\r\nclass UserInfoForm(forms.Form):\r\n    user=fields.CharField(\r\n        required=False,\r\n        widget=widgets.Textarea(attrs={\"class\":\"c1\"}),\r\n    )\r\n    pwd=fields.CharField(\r\n        max_length=12,\r\n        widget=widgets.PasswordInput(attrs={\"class\":\"c1\"})\r\n    ) <span style=\"color:#ff0000;\"><strong> user_type=fields.ChoiceField(\r\n        #choices=[(1,\"普通用户\"),(2,\"超级用户\")],\r\n        choices=models.UserType.objects.all().values_list(\"id\",\"name\"),#要返回元组列表\r\n        widget=widgets.Select,\r\n    ) </strong></span></pre>\n<h2>\r\n		3）上面有个问题，就是数据库中新增加的数据，需要重起服务才能加载新数据。\r\n	</h2>\n<pre>这是什么原因造成的？\r\n上面user,pwd,user_type都是放在类里面的，都是静态字段，数据加载都是一次性加载在内存里面的。\r\n\r\n\r\n#解决：\r\ndef index(request):\r\n    from app01 import forms\r\n    obj=forms.UserInfoForm() <span style=\"color:#ff0000;\"><strong>obj.fields#这里面封装了user,pwd,user_type,当数据库有新的数据的时候从新赋值</strong></span> obj.fields[\"user_type\"].choices=models.UserType.objects.all().values_list(\"id\",\"name\")\r\n    return render(request,\"index.html\",{\"obj\":obj})</pre>\n<pre></pre>\n<h2>\r\n		4）上面如果有很多choince，那要写很多，怎么改进（两种方法）\r\n	</h2>\n<pre></pre>\n<pre>重新构造form的__init__()方法。在init里面赋值上面也是对类对象的实例重新赋值。\r\n\r\n\r\n#方法1\r\n# -*- coding:utf-8 -*-\r\n__author__ = \'shisanjun\'\r\n\r\nfrom django import forms\r\nfrom django.forms import fields,widgets\r\nfrom app01 import models\r\nclass UserInfoForm(forms.Form):\r\n    user=fields.CharField(\r\n        required=False,\r\n        widget=widgets.Textarea(attrs={\"class\":\"c1\"}),\r\n    )\r\n    pwd=fields.CharField(\r\n        max_length=12,\r\n        widget=widgets.PasswordInput(attrs={\"class\":\"c1\"})\r\n    )\r\n    user_type=fields.ChoiceField(\r\n        #choices=[(1,\"普通用户\"),(2,\"超级用户\")],\r\n        choices=models.UserType.objects.all().values_list(\"id\",\"name\"),\r\n        widget=widgets.Select,\r\n    )\r\n\r\n    def __init__(self,*args,**kwargs):\r\n        super(UserInfoForm,self).__init__(*args,**kwargs)\r\n        self.fields[\"user_type\"].choices=models.UserType.objects.all().values_list(\"id\",\"name\")\r\n\r\n#方法2\r\n\r\n\r\n -*- coding:utf-8 -*-\r\n__author__ = \'shisanjun\'\r\n\r\nfrom django import forms\r\nfrom django.forms import fields,widgets\r\nfrom app01 import models\r\nclass UserInfoForm(forms.Form):\r\n    user=fields.CharField(\r\n        required=False,\r\n        widget=widgets.Textarea(attrs={\"class\":\"c1\"}),\r\n    )\r\n    pwd=fields.CharField(\r\n        max_length=12,\r\n        widget=widgets.PasswordInput(attrs={\"class\":\"c1\"})\r\n    ) <strong><span style=\"color:#ff0000;\">  #方法1</span></strong> user_type=fields.ChoiceField(\r\n        #choices=[(1,\"普通用户\"),(2,\"超级用户\")],\r\n        choices=[],#这里不用赋值，原因实例化的时候init会赋值\r\n        widget=widgets.Select,\r\n    ) <strong><span style=\"color:#ff0000;\">#方法2</span></strong> <strong><span style=\"color:#ff0000;\"> user_type2=fields.CharField(widget=widgets.Select(choices=[])) </span></strong> def __init__(self,*args,**kwargs):\r\n        super(UserInfoForm,self).__init__(*args,**kwargs) <strong><span style=\"color:#ff0000;\">self.fields[\"user_type\"].choices=models.UserType.objects.all().values_list(\"id\",\"name\")</span></strong> #方法2 <strong><span style=\"color:#ff0000;\"> self.fields[\"user_type2\"].widget.choices=models.UserType.objects.all().values_list(\"i</span></strong><strong><span style=\"color:#ff0000;\">d\",\"name\")</span></strong></pre>\n<pre></pre>\n<h2>\r\n		5）上面从数据库取数据也django也可以自己做，但是不太好。\r\n	</h2>\n<pre></pre>\n<pre>from django.forms.models import ModelChoiceField\r\nuser_type3=ModelChoiceField(\r\n        queryset=models.UserType.objects.all(),#django会自动取\r\n    )\r\n\r\n这里是有代价的，要在model里面加__str__,不然显示的名称是对象\r\nclass UserType(models.Model):\r\n    name=models.CharField(max_length=32)\r\n    def __str__(self):\r\n        return self.name\r\n\r\n\r\n\r\n# -*- coding:utf-8 -*-\r\n__author__ = \'shisanjun\'\r\n\r\nfrom django import forms\r\nfrom django.forms import fields,widgets\r\nfrom app01 import models\r\nfrom django.forms.models import ModelChoiceField\r\nclass UserInfoForm(forms.Form):\r\n    user=fields.CharField(\r\n        required=False,\r\n        widget=widgets.Textarea(attrs={\"class\":\"c1\"}),\r\n    )\r\n    pwd=fields.CharField(\r\n        max_length=12,\r\n        widget=widgets.PasswordInput(attrs={\"class\":\"c1\"})\r\n    )\r\n    user_type=fields.ChoiceField(\r\n        #choices=[(1,\"普通用户\"),(2,\"超级用户\")],\r\n        choices=[],#这里不用赋值，原因实例化的时候init会赋值\r\n        widget=widgets.Select,\r\n    )\r\n    #方法2\r\n    user_type2=fields.CharField(widget=widgets.Select(choices=[])) <span style=\"color:#ff0000;\"><strong> #方法3\r\n    user_type3=ModelChoiceField(\r\n        empty_label=\"请选择\",\r\n        queryset=models.UserType.objects.all(),#django会自动取\r\n    )</strong></span> def __init__(self,*args,**kwargs):\r\n        super(UserInfoForm,self).__init__(*args,**kwargs)\r\n        self.fields[\"user_type\"].choices=models.UserType.objects.all().values_list(\"id\",\"name\")\r\n      #方法2\r\n        self.fields[\"user_type2\"].widget.choices=models.UserType.objects.all().values_list(\"id\",\"name\")</pre>\n<pre></pre>\n<h2>\r\n		6）默认值\r\n	</h2>\n<pre></pre>\n<pre>def index(request):\r\n    from app01 import forms <strong><span style=\"color:#ff0000;\"> obj=forms.UserInfoForm()#如果这里赋值字典就是显示默认值（初始化）\r\n    obj.fields#这里面封装了user,pwd,user_type,当数据库有新的数据的时候从新赋值</span></strong> #obj.fields[\"user_type\"].choices=models.UserType.objects.all().values_list(\"id\",\"name\")\r\n    return render(request,\"index.html\",{\"obj\":obj})</pre>\n<pre></pre>\n<h2>\r\n		7)用户验证\r\n	</h2>\n<pre></pre>\n<pre>def index(request):\r\n    if request.method==\"GET\":\r\n        obj=forms.UserInfoForm()#如果这里赋值字典就是显示默认值（初始化）\r\n        obj.fields#这里面封装了user,pwd,user_type,当数据库有新的数据的时候从新赋值\r\n        #obj.fields[\"user_type\"].choices=models.UserType.objects.all().values_list(\"id\",\"name\")\r\n        return render(request,\"index.html\",{\"obj\":obj})\r\n    elif request.method==\"POST\":\r\n        obj=forms.UserInfoForm(request.POST,request.FILES) <strong><span style=\"color:#ff0000;\">obj.is_valid()#他是基于什么验证的，根据from模板验证。form会为长度，为空等验证，但是如果用户已存在，就不应该进行上面验证。</span></strong> # -*- coding:utf-8 -*-\r\n__author__ = \'shisanjun\'\r\n\r\nfrom django import forms\r\nfrom django.forms import fields,widgets\r\nfrom app01 import models\r\nfrom django.forms.models import ModelChoiceField\r\nfrom django.core.exceptions import ValidationError\r\nclass UserInfoForm(forms.Form):\r\n    user=fields.CharField(\r\n        required=False,\r\n        widget=widgets.Textarea(attrs={\"class\":\"c1\"}),\r\n    )\r\n    pwd=fields.CharField(\r\n        max_length=12,\r\n        widget=widgets.PasswordInput(attrs={\"class\":\"c1\"})\r\n    )\r\n    user_type=fields.ChoiceField(\r\n        #choices=[(1,\"普通用户\"),(2,\"超级用户\")],\r\n        choices=[],#这里不用赋值，原因实例化的时候init会赋值\r\n        widget=widgets.Select,\r\n    )\r\n    #方法2\r\n    user_type2=fields.CharField(widget=widgets.Select(choices=[]))\r\n\r\n    #方法3\r\n    user_type3=ModelChoiceField(\r\n         empty_label=\"请选择\",\r\n        queryset=models.UserType.objects.all(),#django会自动取\r\n    )\r\n\r\n    def __init__(self,*args,**kwargs):\r\n        super(UserInfoForm,self).__init__(*args,**kwargs)\r\n        self.fields[\"user_type\"].choices=models.UserType.objects.all().values_list(\"id\",\"name\")\r\n      #方法2\r\n        self.fields[\"user_type2\"].widget.choices=models.UserType.objects.all().values_list(\"id\",\"name\")\r\n\r\n\r\n\r\nclass RegiesterForm(forms.Form):\r\n    user=fields.CharField()#<strong><span style=\"color:#ff0000;\">一个字段一个字段的循环，这里通过了，才会到clean_user,下面以次类推</span></strong> email=fields.EmailField() <strong><span style=\"color:#ff0000;\"> def clean_user(self): #通过调用form预留的钩子，clean_user单独对user做验证\r\n        c=models.Userinfo.objects.filter(name=self.cleaned_data[\'user\'])\r\n        #如果数据库中有，应该给页面报错了，显示用户已存在\r\n        if not c:\r\n            return self.cleaned_data[\'user\'] #返回原来值\r\n        else:\r\n            #如果没有抛出valideionError\r\n             raise ValidationError(\"用户名已存在\",code=\"xxx\")</span></strong> def clean_email(self):\r\n        pass</pre>\n<pre><span style=\"color:#ff0000;\"><strong>    </strong></span></pre>\n<h2>\r\n		8）如果用户名不对，错误显示在用户名旁边。（上面是单独给字段写的钩子），也可以对整个form做钩子验证。\r\n	</h2>\n<pre>class LoginForm(forms.Form):\r\n    user=fields.CharField()#一个字段一个字段的循环，这里通过了，才会到clean_user,下面以次类推\r\n    pwd=fields.CharField()\r\n    email=fields.EmailField()\r\n\r\n    def clean_user(self): #通过调用form预留的钩子，clean_user单独对user做验证\r\n        c=models.Userinfo.objects.filter(name=self.cleaned_data[\'user\'])\r\n        #如果数据库中有，应该给页面报错了，显示用户已存在\r\n        if not c:\r\n            return self.cleaned_data[\'user\'] #返回原来值\r\n        else:\r\n            #如果没有抛出valideionError\r\n             raise ValidationError(\"用户名已存在\",code=\"user\")\r\n    def clean_email(self):\r\n        pass <strong><span style=\"color:#ff0000;\"> def clean(self): #对整体验证\r\n\r\n        #判断用户名和密码是否存在\r\n        c= models.Userinfo.objects.filter(user=self.cleaned_data[\"user\"],password=self.cleaned_data[\"pwd\"])\r\n        if not c:\r\n            return self.cleaned_data #源码中self.cleaned_data＝cleaned_data\r\n        else:\r\n            raise   ValidationError(\"用户名或密码错误\") </span></strong></pre>\n<h2>\r\n		源码中一共有3个钩子\r\n	</h2>\n<pre>self._clean_fields()对字段验证\r\nself._clean_form()对整体验证\r\nself._post_clean()</pre>\n<h2>\r\n		form验证经历阶段：数据来了－－&gt;到相应的form--&gt;先拿到第一个字段，先进行正则表达式判断完，然后执行字段的钩子，－－〉所有字段运行完了到clean(),最后到<em>post</em>clean()\r\n	</h2>\n<pre>is_valid()---&gt;self.errors--&gt;full_clean --&gt;  self._clean_fields()对字段验证\r\n                                            self._clean_form()对整体验证\r\n                                            self._post_clean()</pre>\n<h2>\r\n		views中错误信息\r\n	</h2>\n<pre>#views.py\r\ndef register(request):\r\n    obj=forms.RegiesterForm(request.POST)\r\n    if obj.is_valid(): #下面操作，可以在is_valid做验证\r\n        #obj.cleaned_data[\'\']\r\n        obj.cleaned_data()\r\n    else:\r\n        obj.errors\r\n        #obj.errors就是个字段,每个字段的错误放在各自的字段里面，整体clean错误放在那里了\r\n        from django.core.exceptions import NON_FIELD_ERRORS\r\n        \"\"\" <strong><span style=\"color:#ff0000;\">\'__all__\':[],整体的错误信息clean抛出的异常都在这里＝＝〉NON_FIELD_ERRORS</span></strong> NON_FIELD_ERRORS:[],\r\n        \'user\':[\'code\':required,\'message\':\'xxx\'],\r\n        \'pwd\':[\'code\':required,\'message\':\'xxx\'],\r\n\r\n   \"\"\"\r\n\r\n\r\naccount.py\r\nfrom django.shortcuts import redirect,render,HttpResponse\r\nfrom django import forms\r\nfrom django.forms import fields\r\nfrom django.forms import widgets\r\nfrom app01 import models\r\nfrom django.core.exceptions import ValidationError\r\nimport json\r\nclass LoginForm(forms.Form):\r\n    user=fields.CharField()#一个字段一个字段的循环，这里通过了，才会到clean_user,下面以次类推\r\n    pwd=fields.CharField()\r\n    email=fields.EmailField()\r\n\r\n    def clean_user(self): #通过调用form预留的钩子，clean_user单独对user做验证\r\n        c=models.Userinfo.objects.filter(name=self.cleaned_data[\'user\'])\r\n        #如果数据库中有，应该给页面报错了，显示用户已存在\r\n        if not c:\r\n            return self.cleaned_data[\'user\'] #返回原来值\r\n        else:\r\n            #如果没有抛出valideionError\r\n            raise  ValidationError(\"用户名已存在\",code=\"user\")\r\n    def clean_email(self):\r\n        pass\r\n    #\r\n    # def clean(self): #对整体验证\r\n    #\r\n    #     #判断用户名和密码是否存在\r\n    #     c= models.Userinfo.objects.filter(user=self.cleaned_data[\"user\"],password=self.cleaned_data[\"pwd\"])\r\n    #     if not c:\r\n    #         return self.cleaned_data #源码中self.cleaned_data＝cleaned_data\r\n    #     else:\r\n    #          ValidationError(\"用户名或密码错误\") <strong><span style=\"color:#ff0000;\">class JsonCustomEncoder(json.JSONEncoder):\r\n    from django.core.exceptions import ValidationError\r\n    def default(self, field):\r\n        if isinstance(field,ValidationError):\r\n            return {\'code\':field.code,\'message\':field.messages}\r\n        else:\r\n            return json.JSONEncoder.default(self,field)</span></strong> def  login(request):\r\n    res={\"status\":False,\"data\":None,\"error\":None}\r\n    if request.method==\"GET\":\r\n        return render(request,\"login.html\")\r\n    elif request.method==\"POST\":\r\n        obj=LoginForm(request.POST)\r\n        if obj.is_valid():\r\n            print(obj.cleaned_data)\r\n            res[\"status\"]=True\r\n        else:\r\n            #res[\"error\"]=obj.errors.as_json()\r\n            #为什么不用as_json，as_json返回的是字典，所以res就会变成嵌套字典，json不能转嵌套字典，下面用as_data()结合cls定制\r\n            #print(obj.errors.as_data())#errors.as_data()返回的是 ValidationError类型，不是字典,不能直接序列化\r\n            res[\"error\"]=obj.errors.as_data()\r\n        result=json.dumps(res,cls=JsonCustomEncoder)#dumps有个参数cls，可以定制\r\n\r\n        return HttpResponse(json.dumps(result)) <strong><span style=\"color:#ff0000;\">#obj.errors返回的是ErrorDict,不是字典（虽然继承字典）\r\n#obj.errors.as_json() 返回的字符串（前端要连续反解两次）\r\n#obj.errors.as_data()  返回原生的字典 但是返回value 是ValidationError，不能直接序列化</span></strong> 模板\r\n&lt;!DOCTYPE html&gt;\r\n&lt;html lang=\"en\"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset=\"UTF-8\"&gt;\r\n    &lt;title&gt;Title&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;form id=\"fm\"&gt;\r\n        {% csrf_token %}\r\n        &lt;p&gt;\r\n            &lt;input type=\"text\" name=\"username\"&gt;\r\n        &lt;/p&gt;\r\n        &lt;p&gt;\r\n            &lt;input type=\"text\" name=\"password\"&gt;\r\n        &lt;/p&gt;\r\n        &lt;a id=\"submit\"&gt;提交&lt;/a&gt;\r\n    &lt;/form&gt;\r\n    &lt;script src=\"/static/jquery-1.12.4.js\"&gt;&lt;/script&gt;\r\n    &lt;script&gt;\r\n        $(function(){\r\n            //框架自加载\r\n            $(\"#submit\").click(\r\n                    function(){\r\n                        $.ajax(\r\n                                {\r\n                                    url:\"{% url \'login\' %}\",\r\n                                    type:\"post\",\r\n                                    data:$(\"#fm\").serialize(),\r\n                                    success:function(arg){\r\n                                        arg=JSON.parse(arg);\r\n                                        console.log(arg);\r\n                                    },\r\n                                    error:function(arg){\r\n                                        console.log(arg);\r\n                                    }\r\n\r\n                                }\r\n                        )\r\n                    }\r\n            )\r\n        })\r\n    &lt;/script&gt;\r\n&lt;/body&gt;</pre>\n<p>\r\n		 \r\n	</p>\n<h2>\r\n		 \r\n	</h2>\n</div>',0,1,2,12,9),
(19,'测试文章dfg','\r\n	测试文章\r\n\n\n\n...','2018-08-24 15:57:34.322342','<p>\r\n	测试文章\r\n</p>\n<p>\n<img alt=\"\" src=\"/media/user_upload/bafc56e931c7674bd2f79774b79f8dd4.jpeg\"/>\n</p>',1,0,3,14,3);

/*Data for the table `myblog_article2tag` */

insert  into `myblog_article2tag`(`nid`,`article_id`,`tag_id`) values 
(23,1,1),
(2,2,5),
(3,3,6),
(4,3,7),
(5,4,8),
(6,5,9),
(11,6,12),
(24,7,1),
(10,8,11),
(7,9,10),
(8,10,8),
(9,11,9),
(21,18,14),
(22,18,15),
(28,19,16),
(29,19,17);

/*Data for the table `myblog_articleupdown` */

insert  into `myblog_articleupdown`(`nid`,`is_up`,`article_id`,`user_id`) values 
(1,1,1,1),
(2,0,2,1),
(3,1,1,6),
(4,0,9,6),
(5,1,10,6),
(6,1,1,2),
(7,0,2,2),
(8,1,7,2),
(9,1,3,2),
(10,1,9,1),
(11,1,13,1),
(12,0,14,1),
(13,1,4,2),
(14,0,15,8),
(15,0,18,9),
(16,1,9,9),
(17,1,11,9),
(18,1,2,3),
(19,1,8,3),
(20,1,19,3),
(21,1,15,3);

/*Data for the table `myblog_blog` */

insert  into `myblog_blog`(`nid`,`title`,`name`,`theme`) values 
(1,'花果山','sunwukong','gold.css'),
(2,'西天','rulai','yellow.css'),
(3,'流沙河','shaheshang','water.css'),
(4,'长安','tangseng','flower.css'),
(5,'高老庄','zhubajie','pig.css'),
(6,'ZJiQi','ZJiQi','default.css'),
(7,'seven','seven','seven.css'),
(8,'Eleven','Eleven','Eleven.css'),
(9,'four','four','four.css');

/*Data for the table `myblog_category` */

insert  into `myblog_category`(`nid`,`title`,`blog_id`) values 
(1,'JavaScript',1),
(2,'C++学习',1),
(3,'WEB前端',6),
(4,'数据库',6),
(5,'架构',6),
(6,'WEB前端',1),
(7,'MySQL',1),
(8,'JAVA开发',6),
(9,'Python基础',6),
(10,'Python',8),
(11,'学习',8),
(12,'Django',9),
(13,'Python',9),
(14,'测试分类',5);

/*Data for the table `myblog_comment` */

insert  into `myblog_comment`(`nid`,`comment_content`,`create_time`,`article_id`,`parent_comment_id_id`,`user_id`) values 
(1,'赞一个！','2018-08-22 00:36:49.196287',1,NULL,1),
(2,'推荐！','2018-08-22 00:54:42.109738',1,NULL,1),
(3,'写得好！','2018-08-22 00:54:47.788519',1,NULL,1),
(4,'不错','2018-08-22 00:56:55.711770',1,NULL,1),
(5,'你好！','2018-08-22 00:57:33.365854',1,NULL,1),
(6,'嘻嘻嘻！<img src=\"/media/user_upload/93b17ff9ea31996a8bb1d9aa4bfc8889.jpg\" alt=\"\" />','2018-08-22 11:34:39.856883',1,NULL,1),
(7,'<s>你好呀！</s>','2018-08-22 11:35:54.585809',1,NULL,1),
(8,'@root你好呀！','2018-08-22 15:54:18.878244',1,5,1),
(9,'	@root\n</p>\n<p>\n	你好呀你那里冷吗\n</p>','2018-08-22 15:56:10.011943',1,7,1),
(10,'你好呀！','2018-08-22 15:58:16.580771',1,1,1),
(12,'我是第八楼','2018-08-22 16:26:14.503784',1,NULL,1),
(13,'我是第酒楼','2018-08-22 16:26:30.970569',1,NULL,1),
(14,'图片好看！','2018-08-22 16:27:09.138765',1,6,1),
(15,'你难道不冷吗？','2018-08-22 17:17:30.438918',1,9,1),
(16,'我佛如来！','2018-08-22 17:19:09.698884',1,15,6),
(17,'沙发！','2018-08-22 17:19:56.812140',2,NULL,6),
(18,'佛祖来互怼呀！看老孙！','2018-08-22 17:21:50.026912',1,16,2),
(19,'<strong>板凳</strong>！来哦','2018-08-22 17:22:54.720734',2,NULL,2),
(20,'你快你牛逼！','2018-08-22 17:29:43.343930',2,19,2),
(21,'地板！','2018-08-22 17:30:29.338577',2,NULL,2),
(22,'来呀来呀！','2018-08-22 17:39:34.756273',2,20,2),
(23,'你好!','2018-08-22 17:40:23.501664',2,21,2),
(24,'哈哈哈','2018-08-22 18:04:29.156309',1,16,2),
(25,'\n</p>\n<p>\n	你好！\n</p>','2018-08-23 09:14:06.864804',1,3,1),
(26,'新增加的文章！','2018-08-23 16:05:56.261121',13,NULL,1),
(27,'自己沙发！','2018-08-24 15:23:02.254385',18,NULL,9),
(28,'adsfasfda','2018-08-24 15:23:23.222278',18,NULL,9),
(29,'sdfasdfasdf','2018-08-24 15:23:37.829527',15,NULL,9),
(30,'11111111','2018-08-24 15:26:35.518654',15,NULL,9),
(31,'自己沙发！','2018-08-24 15:32:12.052152',14,NULL,9),
(32,'sadfasfd','2018-08-24 15:32:33.781618',14,31,9),
(33,'沙发！！！','2018-08-24 15:33:01.268861',11,NULL,9),
(34,'沙发！','2018-08-24 15:48:47.085562',9,NULL,2),
(35,'你真快','2018-08-24 15:48:56.208717',9,34,2),
(36,'沙发！','2018-08-24 15:52:08.220185',8,NULL,3),
(37,'沙发上','2018-08-24 15:52:17.801220',8,36,3),
(38,'阿萨德发','2018-08-24 15:52:25.317577',8,NULL,3),
(39,'沙发自己！','2018-08-24 15:57:48.544972',19,NULL,3),
(40,'呵呵呵！','2018-08-24 15:57:56.974695',19,39,3),
(41,'sadfasfdasfdasdf','2018-08-24 16:00:47.066570',19,NULL,3),
(42,'&lt;script&gt;sladkjfsa&lt;/script&gt;hahaha','2018-08-24 16:02:03.265176',15,NULL,3),
(43,'\nladskjfa;lsdjf','2018-08-24 16:02:23.226940',15,NULL,3),
(44,'','2018-08-24 16:02:54.177470',15,NULL,3);

/*Data for the table `myblog_tag` */

insert  into `myblog_tag`(`nid`,`title`,`blog_id`) values 
(1,'js',1),
(2,'python',1),
(3,'css',1),
(4,'html',1),
(5,'C/C++',1),
(6,'前端安全',6),
(7,'WEB',6),
(8,'强类型语言',6),
(9,'database',6),
(10,'前端安全',1),
(11,'database',1),
(12,'架构',6),
(13,'人生苦短',8),
(14,'WEB',9),
(15,'生活',9),
(16,'测试标签',5),
(17,'测试标签2',5);

/*Data for the table `myblog_userinfo` */

insert  into `myblog_userinfo`(`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`,`nid`,`telephone`,`avatar`,`create_time`,`blog_id`) values 
('pbkdf2_sha256$100000$rZS52UE2uCm6$FsmX/tT605wFt1U7X2xfA41IvAJEPSTDIcbko3xkDwk=','2018-08-24 16:11:19.012445',1,'root','','','1399622866@qq.com',1,1,'2018-08-07 17:14:50.000000',1,'15198138198','avatars/default_VEcIk0F.png','2018-08-07 17:14:50.197722',6),
('pbkdf2_sha256$100000$l0KGqhbIS2P1$+ChI/depJHq3deHREIimAtbIASXLpAZD6MYwWPqw1jg=','2018-08-24 15:48:31.938975',0,'sunwukong','','','1111@qq.com',0,1,'2018-08-13 07:13:52.000000',2,'11111111111','avatars/default.png','2018-08-13 07:13:53.089491',1),
('pbkdf2_sha256$100000$UnGswsgfCmGa$kEM9uyXJSGuU91M2/e1fgBhV0LU3KqnJCV3a5pR+7NY=','2018-08-24 15:51:30.706034',0,'zhubajie','','','222@qq.com',0,1,'2018-08-13 07:22:28.000000',3,'22222222222','avatars/default.png','2018-08-13 07:22:28.764018',5),
('pbkdf2_sha256$100000$o6u5AuT9uNBF$BQ/no7Lg2J7EQVdAXabPEYKkjXs5qcSDJpE9PvXvaXE=',NULL,0,'tangseng','','','333@qq.com',0,1,'2018-08-13 07:26:45.000000',4,'33333333333','avatars/896986f06f6ae589b098533d7fa0d30d.jpg','2018-08-13 07:26:45.326541',4),
('pbkdf2_sha256$100000$mqva3lriFbbN$tYQnmgtsR76uMgPUb8yTN0kvrmzRMIQNjU87RX/ZM0Q=','2018-08-14 07:09:14.000000',0,'shaheshang','','','444@qq.com',0,1,'2018-08-13 07:32:59.000000',5,'44444444444','avatars/default_kSWwGqn.png','2018-08-13 07:32:59.433182',3),
('pbkdf2_sha256$100000$aCzKr9Vh1Rm5$xUDX/nYXG3h475vBWok9uUxIVVqPLHwZpSn83u5E0lA=','2018-08-22 17:18:45.028289',0,'rulai','','','555@qq.com',0,1,'2018-08-13 07:43:30.000000',6,'55555555555','avatars/default_CmZibjE.png','2018-08-13 07:43:30.538775',2),
('pbkdf2_sha256$100000$Du4hHuoN230j$VpYDPqIpFc6bqK1NTGoLLL7dVA615gy27qJLbPiQZHA=','2018-08-24 11:00:21.000000',0,'seven','','','222@qq.com',0,1,'2018-08-24 10:59:10.000000',7,'10000000000','avatars/896986f06f6ae589b098533d7fa0d30d_kobQCD1.jpg','2018-08-24 10:59:10.853218',7),
('pbkdf2_sha256$100000$xZKath8LhPe9$G5mmC6OJXIvXOWY7mivAjOK5pvbboydawDaiMJZCDaQ=','2018-08-24 11:09:51.375687',0,'Eleven','','','333@qq.com',0,1,'2018-08-24 11:09:13.917799',8,'20000000000','avatars/93b17ff9ea31996a8bb1d9aa4bfc8889_TLjFOwU.jpg','2018-08-24 11:09:14.109926',8),
('pbkdf2_sha256$100000$JZPQqasmJgfj$B0w/K89oXbTtr84B7BzatzIW9MjVXc1auP9xN41q0Ak=','2018-08-24 15:10:38.935869',0,'four','','','333@qq.com',0,1,'2018-08-24 14:33:08.479537',9,'50000000000','avatars/bafc56e931c7674bd2f79774b79f8dd4.jpeg','2018-08-24 14:33:08.635669',9);

/*Data for the table `myblog_userinfo_groups` */

/*Data for the table `myblog_userinfo_user_permissions` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
