use latha;
create table technology( id int ,technology varchar(20));

insert into technology values(1,"data science");
insert into technology values(1,"tableau");
insert into technology values(1,"sql");
insert into technology values(2,"R");
insert into technology values(2,"powerBI");
insert into technology values(1,"Python");

select * from technology;

# To list the candidate which possess  all the required skills


select technology as t
from technology 
where technology in ( "data science", "tableau", "sql", "R", "powerBI" ,"python")
group by id
having count(distinct technology) = 6;

