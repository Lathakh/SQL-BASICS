use latha;
create table technology( id int ,technology varchar(20));product

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

select * from product;

create table likes( user_id int ,id int,liked_date date,
foreign key(id) references product(id));

insert into likes values(1,"1001","2000-07-5");
insert into likes values(2,"1003","2000-07-25");

# query to return IDs product information that have zero likes


# solution with subquery

select id
from product p
where p.id not in(select distinct id from likes)
order by id;

# this is without using subquery

select p.id product
from product p
left join likes l
on p.id=l.id
where l.id is null
order by p.id;

select * from product;
select * from likes;