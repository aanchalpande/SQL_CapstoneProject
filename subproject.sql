create database ablejobs3;
use ablejobs3;
create table nobel (years int , subjects varchar(25),winner varchar(25), country varchar(25), 
category varchar(25));

insert into nobel ( years,subjects,winner,country,category) values (1970, "physics","hannes alfavin",
 "sweden","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1970, "physics","louis neel",
 "france","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1970, "chemistry","luis fedrico leloir",
 "france","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1970, "physiology","ulf von euler",
 "sweden","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1970, "physics","bernard katz",
 "germany","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1970, "literature","aleksandr solzhenitsyn",
 "russia","linguist");
 insert into nobel ( years,subjects,winner,country,category) values (1970, "economics","paul samuelson",
 "USA","economist");
 insert into nobel ( years,subjects,winner,country,category) values (1970, "physiology","julius axelrod",
 "USA","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1971, "physics","dennis gabor",
 "hungary","scientist");
  insert into nobel ( years,subjects,winner,country,category) values (1971, "chemistry","gerhard herzberg",
 "germany","scientist");
  insert into nobel ( years,subjects,winner,country,category) values (1971, "peace","willy brandt",
 "germany","chancellor");
  insert into nobel ( years,subjects,winner,country,category) values (1971, "literature","pablo neruda",
 "chile","linguist");
  insert into nobel ( years,subjects,winner,country,category) values (1971, "economics","simon kuznets",
 "russia","economist");
  insert into nobel ( years,subjects,winner,country,category) values (1978, "peace","anwar al-sadat",
 "egypt","president");
  insert into nobel ( years,subjects,winner,country,category) values (1978, "peace","menachem begin",
 "isreal","prime minister");
 insert into nobel ( years,subjects,winner,country,category) values (1987, "chemistry","donald j.cram",
 "USA","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1987, "chemistry","jean-marie lehn",
 "france","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1987, "physiology","susumu tonegawa",
 "japan","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1994, "economics","reinhard selten",
 "germany","economist");
 insert into nobel ( years,subjects,winner,country,category) values (1994, "peace","yitzhak rabin",
 "isreal","prime minister");
 insert into nobel ( years,subjects,winner,country,category) values (1987, "physics","johannes georg bednorz",
 "germany","scientist");
 insert into nobel ( years,subjects,winner,country,category) values (1987, "literature","joseph brodsky",
 "russia","linguist");
  insert into nobel ( years,subjects,winner,country,category) values (1987, "economics","robert solow",
 "USA","economist");
  insert into nobel ( years,subjects,winner,country,category) values (1994, "literature","kenzaburo oe",
 "japan","linguist");
 
 select * from nobel;
   
 select years, subjects,winner from nobel
 where years=1970
 and years=1987;
 
   
   select subjects, years, winner from nobel
   where years=1971
   and subjects="literature";
   
   select years, subjects from nobel
   where winner ="dennis gabor";
   
    select subjects, years, winner from nobel
    where years>1950
    and subjects="physics";

    select subjects, years, winner, country from nobel
    where years between 1965 and 1975
    and subjects="chemistry";
    
     select * from nobel
    where years>=1972
    and category="prime minister";
    
    select * from nobel
    where winner like "louis%";
    
    select * from nobel
    where winner="Johannes Georg Bednorz";
    
    SELECT * FROM nobel  
    WHERE (subjects ='Physics' AND years=1970) 
    UNION (SELECT * FROM nobel WHERE (subjects ='Economics' AND years=1971));
