
create table employee (
employee_name char(10),
street char(10),
city char(10),
primary key(employee_name)
)

create table company(
company_name char(10),
city char(10),
primary key(company_name)
)

create table works(
employee_name char (10),
company_name char (10),
salary numeric(10,2),
primary key(employee_name,company_name),
foreign key(company_name) references company
						  on delete cascade
						  on update cascade,
foreign key(employee_name) references employee
						  on delete cascade
						  on update cascade
)

create table manage(
employee_name char(10),
manager char(10),
primary key(employee_name,manager),
foreign key(employee_name) references employee
						   on delete cascade
						   on update cascade
)

insert into employee
values('jones','downtown','washington')
insert into employee
values('john','emaining','newtown')
insert into employee
values('lucy','bridge','washington')
insert into employee
values('emily','harber','boston')
insert into employee
values('nash','mainland','boston')
insert into employee
values('austin','lincoln','washington')
insert into employee
values('james','wallstreet','newtown')
insert into employee
values('victoria','hollywood','losvegas')
insert into employee
values('monica','mississipi','texas')
insert into employee
values('paul','harber','boston')
insert into employee
values('alex','dirtroad','texas')
insert into employee
values('brad','newtown','losvegas')
insert into employee
values('dan','times','newtown')
insert into employee
values('lara','domain','losvegas')
insert into employee
values('donald','lincoln','washington')
insert into employee
values('justin','baker','boston')
insert into employee
values('sarah','wallstreet','newtown')

insert into company
values('microsoft','newtown')
insert into company
values('ibm','texas')
insert into company
values('apple','newtown')
insert into company
values('google','boston')
insert into company
values('green','washington')
insert into company
values('paradise','losvegas')

insert into works
values('jones','green','960')
insert into works
values('john','microsoft','700')
insert into works
values('lucy','green','850')
insert into works
values('emily','google','1300')
insert into works
values('nash','google','1400')
insert into works
values('austin','green','990')
insert into works
values('james','apple','1200')
insert into works
values('monica','ibm','640')
insert into works
values('paul','apple','1900')
insert into works
values('alex','ibm','950')
insert into works
values('brad','paradise','1050')
insert into works
values('dan','microsoft','1500')
insert into works
values('lara','paradise','350')
insert into works
values('donald','green','1300')
insert into works
values('justin','google','1100')
insert into works
values('sarah','microsoft','990')
insert into works
values('john','apple','1450')
insert into works
values('nash','microsoft','1250')
insert into works
values('lara','ibm','700')
insert into works
values('lara','green','690')

insert into manage
values('justin','emily')
insert into manage
values('nash','emily')
insert into manage
values('jones','austin')
insert into manage
values('lucy','austin')
insert into manage
values('lara','donald')
insert into manage
values('john','nash')
insert into manage
values('sarah','dan')
insert into manage
values('james','paul')
insert into manage
values('john','paul')
insert into manage
values('lara','alex')
insert into manage
values('monica','alex')
insert into manage
values('lara','brad')

select employee_name
from works
where company_name = 'green' and salary >= 1000


/* 1 */
select city , street
from employee , 
				(select employee_name
					from works
					where company_name = 'green' and salary >= 1000) as G1000
where employee.employee_name=G1000.employee_name



/* 2 */
select distinct employee_name
from works
except
select employee_name
from works 
where company_name = 'green'


/* 3 */
select distinct employee_name
from works 
where works.salary > (select max(salary)
				      from works
                      where company_name = 'paradise')


/* 4 */
select count(employee_name),company_name
from works
group by (company_name)
having count(employee_name) >= all (select count(employee_name)
								   from works
								   group by company_name)


/* 5 */
select employee_name
from employee
where street like '%main%'


/* 6 */
select company_name,avg(salary)
from works
group by company_name
having avg(salary) > (select avg(salary)
					  from works
					  where company_name='green')

/* 7 */
update employee
set city='washington'
where employee_name='jones'
