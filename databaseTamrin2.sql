create table student (
stu_id char(30),
stu_name char(35),
stu_level char(30),
stu_field char(35),
stu_eid char(1),
primary key(stu_id))

create table lesson (
less_id char(4),
less_name char(40),
credit int,
less_type char(40),
less_eid char(1),
primary key(less_id))

create table stu_less (
stu_id char(30),
less_id char(4),
term int,
yearr char(4),
grade numeric(4,2)
primary key(stu_id,less_id,term,yearr),
foreign key(stu_id) references student
					on delete cascade
					on update cascade,
foreign key(less_id) references lesson
					 on delete cascade
					 on update cascade)


-- Inserting into the lesson table
INSERT INTO lesson
VALUES ('1011', 'Literatur 1', 3, 'General', '1');

INSERT INTO lesson
VALUES ('1012', 'Language 1', 3, 'General', '1');

INSERT INTO lesson
VALUES ('1013', 'Language 2', 4, 'General', '1');

INSERT INTO lesson
VALUES ('1014', 'Economics', 2, 'General', '1');

INSERT INTO lesson
VALUES ('1015', 'Thought', 4, 'General', '1');

INSERT INTO lesson
VALUES ('2016', 'Artificial Intelligence', 4, 'Specialized', '2');

INSERT INTO lesson
VALUES ('2017', 'Database', 4, 'Specialized', '2');

INSERT INTO lesson
VALUES ('2018', 'Programming', 3, 'Specialized', '2');

INSERT INTO lesson
VALUES ('2019', 'Probability', 3, 'Optional', '2');

INSERT INTO lesson
VALUES ('2020', 'Combinatorics', 3, 'Optional', '2');

INSERT INTO lesson
VALUES ('2021', 'Numerical Analysis', 3, 'Optional', '2');

INSERT INTO lesson
VALUES ('3022', 'Linear Algebra', 3, 'Optional', '3');

INSERT INTO lesson
VALUES ('3023', 'Number Theory', 3, 'Specialized', '3');

INSERT INTO lesson
VALUES ('3024', 'Combinatorics', 3, 'Optional', '3');

INSERT INTO lesson
VALUES ('3025', 'Mathematical Foundations', 4, 'Specialized', '3');

INSERT INTO lesson
VALUES ('3026', 'Matrix Foundations', 2, 'Optional', '3');

INSERT INTO lesson
VALUES ('3027', 'Programming', 3, 'Optional', '3');

INSERT INTO lesson
VALUES ('4028', 'Statistics', 3, 'Specialized', '4');

INSERT INTO lesson
VALUES ('4029', 'Numerical Analysis', 3, 'Specialized', '4');

INSERT INTO lesson
VALUES ('4030', 'Number Theory', 3, 'Optional', '4');

INSERT INTO lesson
VALUES ('4031', 'Linear Algebra', 4, 'Specialized', '4');

INSERT INTO lesson
VALUES ('4032', 'Programming', 3, 'Optional', '4');


-- Inserting into the student table
INSERT INTO student
VALUES ('992112101', 'Ali Gheyre Dashti', 'Bachelor', 'Computer Science', '2');

INSERT INTO student
VALUES ('992112102', 'Hafez Janoubi', 'Bachelor', 'Computer Science', '2');

INSERT INTO student
VALUES ('992112103', 'Baqrat Aristotlei', 'Bachelor', 'Computer Science', '2');

INSERT INTO student
VALUES ('992112104', 'Jean Valjean', 'Bachelor', 'Computer Science', '2');

INSERT INTO student
VALUES ('992112105', 'Rostam Zohakzadeh', 'Bachelor', 'Computer Science', '2');

INSERT INTO student
VALUES ('4002112101', 'Saadi Nakonam', 'Bachelor', 'Computer Science', '2');

INSERT INTO student
VALUES ('4002112102', 'Kazem Openheimer', 'Bachelor', 'Computer Science', '2');

INSERT INTO student
VALUES ('4002112103', 'Morteza Ahmadi', 'Bachelor', 'Computer Science', '2');

INSERT INTO student
VALUES ('4002112104', 'Shahin Americayi', 'Bachelor', 'Computer Science', '2');

INSERT INTO student
VALUES ('4002112105', 'Arezoo Royayi', 'Bachelor', 'Computer Science', '2');

INSERT INTO student
VALUES ('4012112101', 'Mahsa Bohoneh', 'Bachelor', 'Computer Science', '2');

INSERT INTO student
VALUES ('4012112102', 'Maryam Rajaei', 'Bachelor', 'Computer Science', '2');

INSERT INTO student
VALUES ('4012112103', 'Sajede Mahbii', 'Bachelor', 'Computer Science', '2');

INSERT INTO student
VALUES ('4012112104', 'Sohail Shakibayi', 'Bachelor', 'Computer Science', '2');

INSERT INTO student
VALUES ('4012112105', 'Naser Tahmasbi', 'Bachelor', 'Computer Science', '2');


-- Inserting into the student table
INSERT INTO student
VALUES ('993113101', 'Qaisar Aminpour', 'Bachelor', 'Mathematics', '3');

INSERT INTO student
VALUES ('993113102', 'Qasem Rezaei', 'Bachelor', 'Mathematics', '3');

INSERT INTO student
VALUES ('993113103', 'Mohammadreza Banaei', 'Bachelor', 'Mathematics', '3');

INSERT INTO student
VALUES ('993113104', 'Shahrokh Tavakoli', 'Bachelor', 'Mathematics', '3');

INSERT INTO student
VALUES ('993113105', 'Naser Majidi', 'Bachelor', 'Mathematics', '3');

INSERT INTO student
VALUES ('4003113101', 'Shida Majidi', 'Bachelor', 'Mathematics', '3');

INSERT INTO student
VALUES ('4003113102', 'Majid Salehi', 'Bachelor', 'Mathematics', '3');

INSERT INTO student
VALUES ('4003113103', 'Shima Tajri', 'Bachelor', 'Mathematics', '3');

INSERT INTO student
VALUES ('4003113104', 'Mahmoud Shami', 'Bachelor', 'Mathematics', '3');

INSERT INTO student
VALUES ('4003113105', 'Qasem Qasemi', 'Bachelor', 'Mathematics', '3');

INSERT INTO student
VALUES ('4013113101', 'Dante Aliari', 'Bachelor', 'Mathematics', '3');

INSERT INTO student
VALUES ('4013113102', 'Shakespeare Trump', 'Bachelor', 'Mathematics', '3');

INSERT INTO student
VALUES ('4013113103', 'John Nash', 'Bachelor', 'Mathematics', '3');

INSERT INTO student
VALUES ('4013113104', 'John Connor', 'Bachelor', 'Mathematics', '3');

INSERT INTO student
VALUES ('4013113105', 'Rahim Qandahari', 'Bachelor', 'Mathematics', '3');


-- Inserting into the student table
INSERT INTO student
VALUES ('994114101', 'Jim Carey', 'Bachelor', 'Statistics', '4');

INSERT INTO student
VALUES ('994114102', 'Karim Prideuma', 'Bachelor', 'Statistics', '4');

INSERT INTO student
VALUES ('994114103', 'Justin Babaei', 'Bachelor', 'Statistics', '4');

INSERT INTO student
VALUES ('994114104', 'Selena Golzar', 'Bachelor', 'Statistics', '4');

INSERT INTO student
VALUES ('994114105', 'Aida Shamloo', 'Bachelor', 'Statistics', '4');

INSERT INTO student
VALUES ('4004114101', 'Soraya Khirabadi', 'Bachelor', 'Statistics', '4');

INSERT INTO student
VALUES ('4004114102', 'Hemira Tavakoli', 'Bachelor', 'Statistics', '4');

INSERT INTO student
VALUES ('4004114103', 'Baqer Baqeri', 'Bachelor', 'Statistics', '4');

INSERT INTO student
VALUES ('4004114104', 'Saghar Yildayi', 'Bachelor', 'Statistics', '4');

INSERT INTO student
VALUES ('4004114105', 'Khayyam Saqadoshi', 'Bachelor', 'Statistics', '4');

INSERT INTO student
VALUES ('4014114101', 'Golnoosh Mehrabi', 'Bachelor', 'Statistics', '4');

INSERT INTO student
VALUES ('4014114102', 'Khodadad Nafrati', 'Bachelor', 'Statistics', '4');

INSERT INTO student
VALUES ('4014114103', 'Mashalla Ghorayi', 'Bachelor', 'Statistics', '4');

INSERT INTO student
VALUES ('4014114104', 'Sahar Shabkhiz', 'Bachelor', 'Statistics', '4');

INSERT INTO student
VALUES ('4014114105', 'Bamdad Shabkhosh', 'Bachelor', 'Statistics', '4');



insert into stu_less
values('992112101','2016',1,'1401',14.25)
insert into stu_less
values('992112102','1011',2,'1400',19.25)
insert into stu_less
values('992112102','1012',2,'1400',19.0)
insert into stu_less
values('992112102','1013',2,'1400',16.5)
insert into stu_less
values('992112102','1014',2,'1400',18.75)
insert into stu_less
values('992112102','1015',2,'1400',13.25)
insert into stu_less
values('992112103','1011',1,'1400',18.75)
insert into stu_less
values('992112103','1012',1,'1400',15.25)
insert into stu_less
values('992112103','1013',1,'1400',16.0)
insert into stu_less
values('992112103','1014',1,'1400',17.0)
insert into stu_less
values('992112103','1015',1,'1400',12.5)
insert into stu_less
values('992112104','1011',1,'1399',17.5)
insert into stu_less
values('992112104','1012',2,'1399',18.25)
insert into stu_less
values('992112104','2018',2,'1399',18.0)
insert into stu_less
values('993113103','1011',2,'1399',19.5)
insert into stu_less
values('993113103','3025',2,'1399',19.25)
insert into stu_less
values('992112104','1014',1,'1401',15.0)
insert into stu_less
values('992112104','1015',2,'1401',13.0)
insert into stu_less
values('4002112101','1011',1,'1400',16.5)
insert into stu_less
values('4002112101','1012',1,'1400',20.0)
insert into stu_less
values('4002112101','1013',1,'1400',19.2)
insert into stu_less
values('4002112102','1011',1,'1400',19.5)
insert into stu_less
values('4002112102','1012',1,'1400',20)
insert into stu_less
values('4002112102','2018',1,'1400',18.25)
insert into stu_less
values('4002112102','2019',1,'1400',17.5)
insert into stu_less
values('4002112102','2016',2,'1400',17)
insert into stu_less
values('4002112102','1013',2,'1400',19.5)
insert into stu_less
values('4002112102','1014',2,'1400',17.55)
insert into stu_less
values('4002112103','1011',1,'1400',20)
insert into stu_less
values('4002112103','1012',1,'1400',18.5)
insert into stu_less
values('4002112103','2018',1,'1400',19.5)
insert into stu_less
values('4003113103','1011',1,'1400',18)
insert into stu_less
values('4003113103','1012',1,'1400',19.5)
insert into stu_less
values('4003113103','3022',1,'1400',20)
insert into stu_less
values('4003113103','1013',2,'1400',17.75)
insert into stu_less
values('4003113103','3023',2,'1400',19)
insert into stu_less
values('4003113103','3024',2,'1400',19.5)
insert into stu_less
values('992112105','2016',2,'1401',17.5)
insert into stu_less
values('992112105','2017',2,'1401',16.75)
insert into stu_less
values('992112105','2018',2,'1401',15.9)
insert into stu_less
values('992112105','3023',2,'1401',17.5)
insert into stu_less
values('992112105','3025',2,'1401',18)
insert into stu_less
values('4012112105','2018',2,'1401',18.25)



-- 1
SELECT s.stu_name
FROM student s, stu_less sl, lesson l
WHERE s.stu_id = sl.stu_id
      AND sl.less_id = l.less_id
      AND sl.term = 1
      AND sl.yearr = '1400'
      AND l.less_type = 'General'
GROUP BY s.stu_id, s.stu_name
HAVING COUNT(sl.less_id) > 4;

-- 2
SELECT l.less_name
FROM lesson l, stu_less sl
WHERE l.credit = 3
      AND l.less_type = 'Specialized'
      AND sl.less_id = l.less_id
      AND sl.term = 2
GROUP BY l.less_id, l.less_name;

-- 3

SELECT l.less_id, l.less_name, COUNT(sl.stu_id) AS student_count
FROM lesson l, stu_less sl
WHERE l.less_id = sl.less_id
GROUP BY l.less_id, l.less_name;

-- 4

SELECT s.stu_id, s.stu_name, COUNT(sl.less_id) AS specialization_count, AVG(sl.grade) AS average_grade
FROM student s
JOIN stu_less sl ON s.stu_id = sl.stu_id
WHERE sl.term = 2
      AND sl.yearr = '1401'
      AND sl.grade > (SELECT AVG(grade) FROM stu_less)
      AND sl.less_id IN (SELECT less_id FROM lesson WHERE less_type = 'Specialized')
GROUP BY s.stu_id, s.stu_name
HAVING COUNT(sl.less_id) >= 4;


-- 5 hal 1

SELECT DISTINCT s.stu_name
FROM student s
JOIN stu_less sl ON s.stu_id = sl.stu_id
JOIN lesson l ON sl.less_id = l.less_id
WHERE sl.term = 2
      AND sl.yearr = '1399'
      AND l.less_type IN ('Specialized', 'General');

-- 5 hal 2

SELECT DISTINCT s.stu_name
FROM student s, stu_less sl, lesson l
WHERE s.stu_id = sl.stu_id
      AND sl.less_id = l.less_id
      AND sl.term = 2
      AND sl.yearr = '1399'
      AND l.less_type IN ('Specialized', 'General');

-- 6 hal 2
SELECT s.stu_id, s.stu_name, AVG(l.credit) AS average_credits
FROM student s, stu_less sl, lesson l
WHERE s.stu_id = sl.stu_id
      AND sl.less_id = l.less_id
      AND sl.yearr = '1400'
      AND sl.grade < 15
      AND s.stu_field = 'Computer Science'
GROUP BY s.stu_id, s.stu_name;

-- 6 hal 1
SELECT s.stu_id, s.stu_name, AVG(l.credit) AS average_credits
FROM student s
JOIN stu_less sl ON s.stu_id = sl.stu_id
JOIN lesson l ON sl.less_id = l.less_id
WHERE sl.yearr = '1400'
      AND sl.grade < 15
      AND s.stu_field = 'Computer Science'
GROUP BY s.stu_id, s.stu_name;

-- 7

DELETE FROM lesson
WHERE less_type = 'General'
      AND credit > 3
      AND less_id NOT IN (
          SELECT sl.less_id
          FROM stu_less sl
          WHERE sl.grade > 15
      );
-- 8

UPDATE stu_less
SET grade = grade + 2
WHERE less_id = '2016'
      AND grade < 10;


