-- functions 

select ascii('B') ;

select ascii('A') ;

select character_length('1234  ');

select character_length(-234); -- not to use

select concat("yo",1," fdf");

select concat(1,23,5);

select CONCAT_WS("--seperator--","dsadsd","dsadsad","fhhh"); -- Adds two or more expressions together with a separator

select FIELD("1value to find","12354","7","1value to find","2"); -- int can be used also what to find in *first element*

select  FIND_IN_SET("hell","world,hel,kelo,hello,hell"); -- int can be used also what to find in *first element*

select FIND_IN_SET(1,"3,15,4,1"); -- int can be used also what to find in *first element*

select format(24455.423,2);
-- same as truncate without formating
select round(245.212423);

select insert(/* string */"hello_ artik" , 7 /* position  of str2 in sting */ , 1 /* number char to replace */ , 'K' /* string2 */ );

select INSTR("kelok","lok"); -- Returns the position of the first occurrence of a string in another str

select LCASE("fdsfdsUPPER");

select ucase("MDKFMlower");

select left("123456",3); -- Extracts 3 characters from a string (starting from left)
-- only use for string

select right("123456",3);


select LENGTH("fdsdf z"); -- Returns the length of a string (in bytes)

select LOCATE("12","34p125");

select LPAD("123",10,"-");

select RPAD("123",10,"-");

select ltrim("     ABC    "); -- Removes leading spaces from a string

select rtrim("     ABC    "); -- Removes trailing spaces from a string

select MID("1234567890",4,3); -- Extracts a substring from a string (starting at any position)
-- same as substr


select position("fg" in "123fg456" );

select replace("123456","34","+=");

select reverse("123456");

select space(4);

select strcmp("12","123"); -- -1 for right, 1 for left, 0 if equal str

select substr("1234567890",4,5);

select substring_index("123-56-7890","-",1);

select substring_index("123-56-78-90","-",2);

select trim("                    fdfs             ");

select abs(-123.5),ceil(12.4),floor(12.4),sin(0), 10 div 5 as '10/5'
,exp(1),greatest(3,4,6,54),least(3,4,6,54)
;

select pi(), sign(-2) ,pow(4,2) ,sqrt(16) , degrees(1.05), radians(60)  ;

select rand()*4 as numder_between_0to4, rand()*100 as numder_between_0to100;

select round(132.434), 8 mod 3;

select truncate(1234.2323,2);

select ln(1032),
log(1032), -- same as ln
log10(10),
log2(10);


select * from data2.insurance_data limit 2 ;

select adddate("2022/11/09", interval 2 month );
 -- month can be replaced with day other values

select adddate("2022/11/09", 3 ); -- add 3 days to date

select addtime("2022/11/09 22:15:06",4);
 -- month can be replaced with day other values

select addtime("22:15:06", 3 ); -- add 3 seconds to time

select curdate();

select current_time();

select current_date();

select current_timestamp();

select curtime();

select date("2022/11/09");

select datediff("2022/11/09","2022/11/19");

select datediff("2022/11/09","2022/11/19");

select timediff("22:08:32","22:08:52");

select date_format("2022/11/19","2022-11+09");

select date_sub("2022/11/09", interval 2 month );
-- Subtracts a time/date interval from a date

select subdate("2022/11/09", interval 2 month );
-- same as /\ upper function 

select subtime("22:11:09","00:02:10");
-- Subtracts a time/date interval from a date

select day("2022/11/09");

select dayname("2022/11/09");

select dayofmonth("2022/11/09");

select dayofweek("2022/11/09");

select dayofyear("2022/11/09");

select extract( month from "2022/11/09");

select from_days(367); -- start from 366 

select from_days(2000);

select hour("2022/11/09 23:15:06");

select last_day("2022/11/09 23:15:06"); -- last day of month

select localtime();

select localtimestamp();

select makedate(2017,1);
--              year, days to add

select makedate(2017,366); 

select maketime(22,3,4);
--             hour, minute,second

select microsecond("2022/11/09 23:15:06.3030");

select minute("2022/11/09 23:15:06");

select month("2022/11/09 23:15:06");

select monthname("2022/11/09 23:15:06");

select now(); -- current time date

select from_days(201805);

select period_add(201805,-5);
-- 05 is month
-- Adds a specified number of months to a period

select period_diff(201810,201803); 
-- 7 month diff in 10 and 03

select period_diff(20180310,20180312);
-- 2 day diff in 10 and 12 

select quarter("2022/11/09"); -- nov in 4th quater
select quarter("2022/04/09"); -- april comes in 2 quater of a year

select second("23:15:06");

select sec_to_time(60);
select sec_to_time(120);

select str_to_date("aug 10 2022", "%M %d %Y"); -- input with its format

select sysdate();

select time("2022/04/09 23:15:06");

select time_format("23:15:06", "%H+%i+%s");

select time_to_sec("00:01:30");

select timediff("23:15:06","23:10:06");

select timestamp("22-12-06","22:10:06");

select to_days("2022-11-09");

select week("2022-11-09");

select weekday("2022-11-09");

select yearweek("2022-11-09");

select year("2022-11-09");

select weekofyear("2022-11-09");

select bin(134); -- to binary

select binary "13A" = "13A" ;

select binary "13A";

select cast("2022-11-09" as datetime);

select convert("2022-11-09",date);

select convert("2022-11-09" using cp1250 ); -- no idea but itis a char set

select conv(4,10,2); -- Converts a number from one numeric base system to another
 -- numder ,from base ,to base

select coalesce(null ,null ,"a",null,"b"); -- give 1st no null

select database();

select if(2<5,100,50);

select ifnull(null,"dsad"); -- if 1st expresion arg is null return the second arg

select isnull(null);

select isnull(12);

select last_insert_id(); 
-- Returns the AUTO_INCREMENT id of the last row that has been
-- inserted or updated in a table

select nullif(25,2); -- returns NULL if they are equal.
-- Otherwise, the first expression is returned

select session_user();

select system_user();

select user();

select version();

select repeat(12,3);