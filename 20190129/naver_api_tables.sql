drop table if exists BlogPost;
drop table if exists Blogger;

CREATE TABLE `Blogger` (
  `bloggerID` varchar(256) NOT NULL,
  `bloggerName` varchar(256) NOT NULL,
  `bloggerLink` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`bloggerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `BlogPost` (
  `id` int not null primary key auto_increment,
  `postName` varchar(256) NOT NULL,
  `postLink` varchar(512) DEFAULT NULL,
  `bloggerID` varchar(256) DEFAULT NULL,
  `postDate` varchar(128) DEFAULT NULL,
  CONSTRAINT `fk_BlogPost_Blogger` FOREIGN KEY (`bloggerID`) REFERENCES `Blogger` (`bloggerID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

select * from BlogPost;
select * from Blogger;