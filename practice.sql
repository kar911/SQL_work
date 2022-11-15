-- show databases;

-- use data1;

-- show tables;

-- create table dsd (
-- mk int,
-- ld varchar(3)
-- );

-- desc dsd;

-- select * from dsd;

-- drop table dsd; 

-- insert into dsd value (147,'da5');

-- select * from diabetes limit 5;

-- select distinct * from diabetes;

use data9;

CREATE table Backup AS
SELECT *
FROM employee;


CREATE table Replica AS
SELECT *
FROM employee
WHERE 1=2;



ALTER TABLE employee
RENAME COLUMN dep TO dept;

ALTER TABLE sale
RENAME TO sales;

GRANT SELECT ON Users TO 'Test';

GRANT INSERT, UPDATE ON Users TO 'Test';

GRANT ALL ON Users TO 'Test';

SAVEPOINT point;

SELECT name, salary, dept
FROM employee
WHERE (dept, salary) IN (
SELECT dept, MAX(salary)
FROM employee
GROUP BY dept
);


SELECT name, dept, salary
FROM employee E1
WHERE salary > (
SELECT AVG(salary)
FROM employee E2
WHERE E2.dept = E1.dept
);


use data1;

select name ,Survived,avg(age) over(partition by Survived) as mm from titn;

select name ,Survived,row_number() over() as mm from titn;

select name ,Survived,row_number() over(partition by Survived) as mm from titn;

select name , fare,rank() over(order by Fare) as mm from titn;

select name , fare,dense_rank() over(order by Fare) as mm from titn;

select name , fare,lag(fare,4,10) over(order by Fare) as mm from titn;
-- column , number of steps to lag , null control

select name , fare,lag(fare) over(order by Fare) as mm from titn;

select name , fare,lead(fare,4) over(order by Fare) as mm from titn;

select name , fare,lead(fare,4,10) over(order by Fare) as mm from titn;
-- column , number of steps to lead , null control

select name , fare,lead(fare) over(order by Fare) as mm from titn;

select name , fare,(lead(fare) over(order by Age) - lag(fare) over(order by Age) )as mm  from titn;

select name , fare,age,first_value(name) over(partition by sex order by age) as mm from titn;

select name , fare,age,first_value(name) over(partition by sex order by age desc) as mm from titn;

select name , fare,age,last_value(name) over(partition by sex order by age) as mm from titn;

select name , fare,age,last_value(name) over(partition by sex order by age) as mm from titn;

-- views 

create view dsdsd as select name from titn limit 5;

create view dsdsdfdsf as select name from titn limit 5;

create view dsdsd1 as select name,age from titn limit 5;

select * from dsdsdfdsf; 

select * from dsdsd1; 

drop view dsdsd ;

select * from data1.views;


SELECT * FROM Sys.Objects WHERE Type='PK';

savepoint p1;

UPDATE titn SET  age=name ,name=age;

rollback to p1;

commit;

select * from titn;

truncate table titn;

select name,age from titn where age between 25 and 30;

select name from titn
union 
select age from titn where age < 20;-- vertiacl append 

SELECT pclass FROM titn
WHERE Sex = any(SELECT sex FROM titn
WHERE age < 5);


SELECT pclass FROM titn
WHERE Sex = all(SELECT sex FROM titn
WHERE age < 5);

select age,ntile(5) over (order by age) as bined
from titn;

select distinct age,ntile(5) over (order by age) as bined
from titn;

select var_pop(age),
var_samp(age),
stddev_pop(age),
stddev_samp(age),
variance(age)
from titn;




-- select sds,
-- lag(dsd) over(f),
-- lead,
-- first_value
-- rank() over(fd),
-- dense_rank,
-- row_number() over