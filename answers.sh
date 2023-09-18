# 88""Yb    db    .dP"Y8 88  dP""b8 .dP"Y8      dP"Yb  88   88 888888 88""Yb 88 888888 .dP"Y8 
# 88__dP   dPYb   `Ybo." 88 dP   `" `Ybo."     dP   Yb 88   88 88__   88__dP 88 88__   `Ybo." 
# 88""Yb  dP__Yb  o.`Y8b 88 Yb      o.`Y8b     Yb b dP Y8   8P 88""   88"Yb  88 88""   o.`Y8b 
# 88oodP dP""""Yb 8bodP' 88  YboodP 8bodP'      `"YoYo `YbodP' 888888 88  Yb 88 888888 8bodP' 

# 1.
 select Name from students;

# 2. 
select * from students where Age >= 30;

# 3.
 select Name from students where Gender=='F' AND Age==30;

# 4.
 select Points from students where Name=="Alex";

# 5.
 INSERT into students (id, Name,Age,Gender,Points) values (7,'Jihad',22,'M',1500);

# 6.
 update students set points= points + 50 where Name =='Basma';

# 7.
 update students set points=points - 100 where Name =='Alex';


#  dP""b8 88""Yb 888888    db    888888 88 88b 88  dP""b8     888888    db    88""Yb 88     888888 
# dP   `" 88__dP 88__     dPYb     88   88 88Yb88 dP   `"       88     dPYb   88__dP 88     88__   
# Yb      88"Yb  88""    dP__Yb    88   88 88 Y88 Yb  "88       88    dP__Yb  88""Yb 88  .o 88""   
#  YboodP 88  Yb 888888 dP""""Yb   88   88 88  Y8  YboodP       88   dP""""Yb 88oodP 88ood8 888888 

# Graduates table:

CREATE TABLE graduates (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name varchar(255)  UNIQUE ,
    Age INTEGER,
    Gender varchar(255),
    Points INTEGER,
	Graduation date
); 

# 10.
insert into graduates (Name, Age, Gender,Points) select Name, Age, Gender, Points from students where Name="Layal";

# 11.
UPDATE graduates set Graduation='08/09/2018' where Name="Layal";

# 12.
DELETE from students where Name="Layal";


#  88888  dP"Yb  88 88b 88 .dP"Y8 
#     88 dP   Yb 88 88Yb88 `Ybo." 
# o.  88 Yb   dP 88 88 Y88 o.`Y8b 
# "bodP'  YbodP  88 88  Y8 8bodP' 

# 14.
create table emp as
select e.Name, c.Name, c.Date from employees as e Full Outer join  companies as c 
on e.Company=c.Name ;

# 15.
create table emp as
select e.Name, c.Name, c.Date from employees as e Full Outer join  companies as c 
on e.Company=c.Name ;

# 16.
select c.Name from companies as c join employees as e on e.Company=c.Name where e.Role = 'Graphic Designer';

#  dP""b8  dP"Yb  88   88 88b 88 888888 888888 88""Yb        db    88b 88 8888b.      888888 88 88     888888 888888 88""Yb .dP"Y8 
# dP   `" dP   Yb 88   88 88Yb88   88   88__   88__dP       dPYb   88Yb88  8I  Yb     88__   88 88       88   88__   88__dP `Ybo." 
# Yb      Yb   dP Y8   8P 88 Y88   88   88""   88"Yb       dP__Yb  88 Y88  8I  dY     88""   88 88  .o   88   88""   88"Yb  o.`Y8b 
#  YboodP  YbodP  `YbodP' 88  Y8   88   888888 88  Yb     dP""""Yb 88  Y8 8888Y"      88     88 88ood8   88   888888 88  Yb 8bodP' 

# 18.
 select * from students where points=(Select Max(points) from students);

#  19.
select Avg (points) from students;

# 20.
SELECT count(*) from students where points=500;

# 21.
select * from students where Name like '%s%';

# 22.
select * from students ORDER BY points desc;



