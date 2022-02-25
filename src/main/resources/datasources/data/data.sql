DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `mobileNumber` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_UNIQUE_USERNAME` (`username`)
);

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE IF NOT EXISTS `hotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_UNIQUE_NAME` (`name`)
);

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `hotelId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_HOTELID` (`hotelId`)
);

insert  into `users`(`id`,`username`,`password`,`age`,`mobileNumber`,`role`) values (1,'admin','admin','18','0706076517','ROLE_ADMIN');
insert into `hotels`(`id`, `address`, `name`, `star`) values (1, 'Thoai Ngoc Hau, TPHCM', 'Xuan Anh Hotel', 5);
insert into `hotels`(`id`, `address`, `name`, `star`) values (2, 'Binh Tan, TPHCM', 'Anh Trang Hotel', 2);
insert into `hotels`(`id`, `address`, `name`, `star`) values (3, 'Dong Da, Ha Noi', 'Binh Minh Hotel', 4);
insert into `hotels`(`id`, `address`, `name`, `star`) values (4, 'Binh Thanh, TPHCM', 'Com Tro Hotel', 1);
insert into `rooms`(`id`, `type`, `hotelId`) values (1, 'VIP', 1);
insert into `rooms`(`id`, `type`, `hotelId`) values (2, 'NOR', 1);
insert into `rooms`(`id`, `type`, `hotelId`) values (3, 'VIP', 1);
insert into `rooms`(`id`, `type`, `hotelId`) values (4, 'VIP', 1);
insert into `rooms`(`id`, `type`, `hotelId`) values (5, 'VIP', 2);
insert into `rooms`(`id`, `type`, `hotelId`) values (6, 'NOR', 2);
insert into `rooms`(`id`, `type`, `hotelId`) values (7, 'VIP', 2);
insert into `rooms`(`id`, `type`, `hotelId`) values (8, 'VIP', 2);
insert into `rooms`(`id`, `type`, `hotelId`) values (9, 'VIP', 3);
insert into `rooms`(`id`, `type`, `hotelId`) values (10, 'NOR', 3);
insert into `rooms`(`id`, `type`, `hotelId`) values (11, 'VIP', 3);
insert into `rooms`(`id`, `type`, `hotelId`) values (12, 'VIP', 3);
insert into `rooms`(`id`, `type`, `hotelId`) values (13, 'VIP', 4);
insert into `rooms`(`id`, `type`, `hotelId`) values (14, 'NOR', 4);
insert into `rooms`(`id`, `type`, `hotelId`) values (15, 'VIP', 4);
insert into `rooms`(`id`, `type`, `hotelId`) values (16, 'VIP', 4);