CREATE TABLE `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(100) DEFAULT NULL,
  `FIRST_NAME` varchar(255) NOT NULL,
  `LAST_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;


CREATE TABLE `user_order` (
  `ORDER_ID` int(10) NOT NULL AUTO_INCREMENT,
  `ORDER_DATE` date DEFAULT NULL,
  `USER_ID` int(10) NOT NULL DEFAULT '0',
  `ORDER_DESC` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`,`USER_ID`),
  KEY `USER_ID` (`USER_ID`),
  CONSTRAINT `user_order_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

