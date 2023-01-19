CREATE TABLE IF NOT EXISTS `gang_reputation` (
  `gangname` varchar(100) NOT NULL,
  `reputation` int(11) DEFAULT 0,
  PRIMARY KEY (`gangname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `gang_reputation` (`gangname`, `reputation`) VALUES
	('altruists', 0),
	('aztecas', 0),
	('ballas', 0),
	('families', 0),
	('lostmc', 0),
	('marabunta', 0),
	('triads', 0),
	('vagos', 0);
