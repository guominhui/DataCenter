/*      管理员           */
DROP TABLE IF EXISTS `t_manager`;
CREATE TABLE `t_manager` (
  `f_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_username` varchar(255) DEFAULT NULL COMMENT '昵称',
  `f_password` varchar(255) DEFAULT NULL COMMENT '密码',
  `f_card_f_count` varchar(255) DEFAULT NULL COMMENT '永久房卡',
  `f_card_l_count` varchar(255) DEFAULT NULL COMMENT '限时房卡',
  `f_card_l_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '限时截止日期',
  `f_income` bigint(50) DEFAULT NULL COMMENT '收入',
  `f_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`f_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


/*       总代          */
DROP TABLE IF EXISTS `t_mainproxy` 
CREATE TABLE `t_mainproxy` (
  `f_user_id` int(10) NOT NULL AUTO_INCREMENT,
  `f_username` varchar(255) DEFAULT NULL COMMENT '昵称',
  `f_password` varchar(255) DEFAULT NULL COMMENT '密码',
  `f_ini_password` varchar(255) DEFAULT NULL COMMENT '初始密码',
  `f_card_l_time` date DEFAULT NULL COMMENT '限时房卡截止时间',
  `f_card_l_count` int(50) DEFAULT NULL COMMENT '限时房卡数',
  `f_card_f_count` int(50) DEFAULT NULL COMMENT '永久房卡',
  `f_income` int(20) DEFAULT NULL COMMENT '收入',
  `f_address` varchar(255) DEFAULT NULL COMMENT '地址',
  `f_contact_name` varchar(255) DEFAULT NULL COMMENT '联系人',
  `f_contact_phone` varchar(255) DEFAULT NULL COMMENT 'l联系电话',
  `f_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `f_emergency_contact` varchar(255) DEFAULT NULL COMMENT '紧急联系人',
  PRIMARY KEY (`f_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4;


/*       代理          */
DROP TABLE IF EXISTS `t_proxy`;
CREATE TABLE `t_proxy` (
  `f_user_id` int(10) NOT NULL AUTO_INCREMENT,
  `f_username` varchar(255) DEFAULT NULL COMMENT '昵称',
  `f_password` varchar(255) DEFAULT NULL COMMENT '密码',
  `f_ini_password` varchar(255) DEFAULT NULL COMMENT '初始密码',
  `f_card_l_count` varchar(255) DEFAULT NULL COMMENT '限时卡',
  `f_card_l_time` datetime DEFAULT NULL COMMENT '限时截止日期',
  `f_card_f_count` int(50) DEFAULT NULL COMMENT '永久卡数',
  `f_bonus` bigint(50) DEFAULT NULL COMMENT '三级分销积分',
  `f_income` int(20) DEFAULT NULL COMMENT '收入',
  `f_address` varchar(255) DEFAULT NULL COMMENT '地址',
  `f_contact_name` varchar(255) DEFAULT NULL COMMENT '联系人姓名',
  `f_contact_phone` varchar(255) DEFAULT NULL COMMENT '联系人电话',
  `f_emergency_contact` varchar(255) DEFAULT NULL COMMENT '紧急联系人',
  `f_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `f_recomend_person` varchar(255) DEFAULT NULL COMMENT '推荐人',
  `f_pioneer` varchar(255) DEFAULT NULL COMMENT '创建人',
  `f_game_uid` int(10) DEFAULT NULL COMMENT '游戏Id',
  PRIMARY KEY (`f_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10056 DEFAULT CHARSET=utf8;



/*      售卡记录           */
DROP TABLE IF EXISTS `t_cardrecord`;
CREATE TABLE `t_cardrecord` (
  `f_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `f_seller_id` varchar(11) NOT NULL,
  `f_seller_name` varchar(255) NOT NULL,
  `f_sell_to_type` tinyint(255) NOT NULL COMMENT '0.公司->总代，1.公司->代理，2.公司->玩家，3.总代->代理，4.总代->玩家5.代理->代理，6代理->玩家，7总代-->总代',
  `f_sell_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_income` int(255) DEFAULT NULL,
  `f_sell_type` tinyint(10) DEFAULT NULL COMMENT '0,销售,1,赠送',
  `f_card_l_count` varchar(255) DEFAULT NULL COMMENT '限时卡',
  `f_card_f_count` int(255) DEFAULT NULL COMMENT '永久卡',
  `f_buyer_id` varchar(11) NOT NULL,
  `f_buyer_name` varchar(255) NOT NULL,
  `f_memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


CREATE TABLE `t_distribution` (
  `f_id` int(20) NOT NULL AUTO_INCREMENT,
  `f_first` int(20) DEFAULT NULL COMMENT '一级分销id',
  `f_first_name` varchar(255) DEFAULT NULL COMMENT '一级分销昵称',
  `f_second` int(20) DEFAULT NULL COMMENT '二级分销Id',
  `f_second_name` varchar(255) DEFAULT NULL COMMENT '二级分销昵称',
  `f_third` int(20) DEFAULT NULL COMMENT '三级分销Id',
  `f_third_name` varchar(255) DEFAULT NULL COMMENT '三级分销昵称',
  `f_bonus1` varchar(255) DEFAULT NULL COMMENT '一级分销所得',
  `f_bonus2` varchar(255) DEFAULT NULL COMMENT '二级分销所得',
  `f_bonus3` varchar(255) DEFAULT NULL COMMENT '三级分销所得',
  `f_sell_card_num` int(11) DEFAULT NULL COMMENT '销售卡数',
  `f_seller_name` varchar(255) DEFAULT NULL COMMENT '销售人昵称',
  `f_sell_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '销售时间',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;



CREATE TABLE `t_opereate_rec` (
  `f_rec_id` int(10) NOT NULL AUTO_INCREMENT,
  `f_ope_type` int(5) DEFAULT NULL COMMENT '操作类型：1售卡，2编辑，3清卡，4删除',
  `f_ope_user_id` int(10) DEFAULT NULL COMMENT '操作人id',
  `f_be_ope_user_id` int(10) DEFAULT NULL COMMENT '被操做人id',
  `f_be_ope_param` int(10) DEFAULT NULL COMMENT '被操作参数',
  `f_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '操作产生时间',
  PRIMARY KEY (`f_rec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;



CREATE TABLE `t_proxy_del` (
  `f_user_id` int(10) NOT NULL,
  `f_username` varchar(255) DEFAULT NULL,
  `f_password` varchar(255) DEFAULT NULL,
  `f_ini_password` varchar(255) DEFAULT NULL,
  `f_card_l_count` varchar(255) DEFAULT NULL COMMENT '限时卡',
  `f_card_l_time` datetime DEFAULT NULL,
  `f_card_f_count` int(50) DEFAULT NULL COMMENT '永久卡',
  `f_bonus` bigint(50) DEFAULT NULL,
  `f_bonus1` varchar(255) DEFAULT NULL,
  `f_income` int(20) DEFAULT NULL,
  `f_address` varchar(255) DEFAULT NULL,
  `f_contact_name` varchar(255) DEFAULT NULL,
  `f_contact_phone` varchar(255) DEFAULT NULL,
  `f_emergency_contact` varchar(255) DEFAULT NULL,
  `f_create_time` datetime DEFAULT NULL,
  `f_recomend_person` varchar(255) DEFAULT NULL,
  `f_pioneer` varchar(255) DEFAULT NULL,
  `f_game_uid` int(10) DEFAULT NULL,
  PRIMARY KEY (`f_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `t_report` (
  `f_record_id` int(200) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `f_phone_number` varchar(50) DEFAULT NULL,
  `f_we_chat` varchar(255) DEFAULT NULL,
  `f_game_id` int(30) unsigned zerofill DEFAULT NULL,
  `f_address` varchar(255) DEFAULT NULL,
  `f_question_type` int(10) DEFAULT NULL,
  `f_question_desc` varchar(255) DEFAULT NULL,
  `f_save_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`f_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t_exchang_bonus` (
  `f_id` int(10) NOT NULL AUTO_INCREMENT,
  `f_exchange_type` int(10) DEFAULT NULL COMMENT '兑换类型：从1开始，对应档位值',
  `f_pre_bonus` int(10) DEFAULT NULL COMMENT '兑换前积分',
  `f_exchange_time` datetime DEFAULT NULL COMMENT '兑换时间',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*                 */
/*                 */
/*                 */
