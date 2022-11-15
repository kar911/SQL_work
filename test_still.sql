use data1;

select * from titn limit 3;

select name ,sex,survived from titn;

select name as fname from titn;

select name from titn where name like '% Dr. %';

select name,  (sibsp + parch) as family from titn limit 10; -- expression

select name,  (sibsp + parch) as family from titn limit 1 , 2 ;

select name,  (sibsp + parch) as family from titn limit 1 /* starting index */ , 3  /* number of rows after starting index */ ; -- expression

select name, 1000 as Muaauza from titn;

select distinct(pclass) as pclasses , avg(age) as avg_age from titn group by pclass order by avg_age ;

select case 
	when Cabin = "" then "NO cabin" 
	when Cabin != "" then Cabin
end as cabin , count(name) as counts from titn group by cabin order by counts desc ;

select distinct(Embarked),Pclass from titn order by pclass;

select count(distinct(sibsp)) from titn where sex = 'male';

select * from titn where Pclass = 1 and Survived =0;

select * from titn where age between 0 and 1;

/*
quary order of execution
form first to last

FROM
JOIN
WHERE
GROUP BY 
HAVING 
SELECT
DISTINCT
ORDER BY

*/ 


select name from titn where sibsp in (1,0,3);

select name from titn where sibsp not in (1,0,3);

select name from titn where name like '% Dr. %' order by name limit 3;

select * from simple1;

update `simple1` set  id = 12 where id1 = 7  ;

update simple1 set  id = 2 , id1 = 9 where id2 > 5;

delete from simple1 where id = 2 and id1 = 9;

truncate table simple1;

select rand();


-- agg function

select id-id1 from simple1;

select abs(id-id1) from simple1; 

select (id-id1)/3 as randomops from simple1;

select ceil((id-id1)/3) as randomops from simple1;

select floor((id-id1)/3) as randomops from simple1;

select concat(id,'->',id2) as concating from simple1;

select length(id2) as show_lenght from simple1; -- support int also 

desc simple1;

select substr(id2,1,2) as show_lenght from simple1; -- support int also 

select max(id2),min(id2),sum(id) from simple1;

select count(distinct(id2)) from simple1;

select * from titn order by sibsp;

select * from titn ;

select (sibsp+Parch) as pss , count(*) as cont from titn group by  pss order by cont desc;

select (sibsp+Parch) as pss , avg(age) as cont from titn where Age > 10 group by  pss order by cont desc;


select age as mk , substr(name,1,6) fam_name ,
case
	when age >= 50 then 'old'
    when age < 50 and age >= 20 then 'adult'
    when age < 20 and age >=10 then 'teen'
    else 'kids'
end as type_s
from titn; -- alias not work in case

