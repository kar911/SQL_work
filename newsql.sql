use data1;

select Sex,Pclass,max(Age) as helldo FROM titn group by Sex,Pclass order by helldo desc;

select * from titn limit 10;

select * from titn where Survived = 1 and  Age <=10;

select Name from titn where Name like '% Dr. %';

select * from titn limit 6;

/*key
type super,foeign, sarocgate,candidate,primary,alternate,composit,compound,

 sarogate key - inserting a column when data has no candidate keys to will be assign to primary key
 compound key - a compasite key with at least one foreign key
 composit key - combination of 2 or mare candidate keys (can be primary ) 
*/

show tables;



CREATE TABLE `test` (
  `id` integer NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(30) NOT NULL,
  `fname` varchar(30) unique,
  `email` varchar(30) NOT NULL,
  `age` int CHECK ( age > 6 AND age <25 ),
  `class` int DEFAULT 100,
  -- UNIQUE (name,email), "unique_combine_name_&_email" is name of constraintfor future reff
  constraint unique_combine_name_email UNIQUE (name,email),
  PRIMARY KEY (`id`)
  );
  
use data1gf;

create table `simple1` (
`id` integer NOT NULL,
`id1` int check (id1 >6),
`id2` int default 10
);

insert into simple1 value (79,15,23);

select * from simple1;

desc simple1;

alter table test add column `section` int not null;

alter table test modify column section boolean;

alter table test add constraint dum_name unique(section);

alter table test drop constraint dum_name;

alter table test drop column section;


desc simple1;

-- drop table new_table;