--1. 테이블 생성하기(4개)
--2. 조인문 사용하기(3개)
--3. SELECT문을 사용하여 데이터 탐색하기(3개)
Create TABLE course(
	id bigserial,
	last_name varchar(50),
	teacher_id integer
);

INSERT INTO course(last_name, teacher_id)
VALUES ('Database design', 1),
		('English literature', 2),
		('Python programing', 1);

SELECT * from course;

Create TABLE student(
	id bigserial,
	first_name varchar(50),
	last_name varchar(50)
);

INSERT INTO student(first_name, last_name)
VALUES ('Shreya', 'Bain'),
		('Rianna', 'Foster'),
		('Yosef', 'Naylor');

SELECT * from student;

Create TABLE student_course(
	student_id integer,
	course_id integer
);

INSERT INTO student_course(student_id, course_id)
VALUES (1, 2),
		(1, 3),
		(2, 1),
		(2, 2),
		(2, 3),
		(3, 1);
		
SELECT * from student_course;

Create TABLE teacher(
	id bigserial,
	first_name varchar(50),
	last_name varchar(50)
);

INSERT INTO teacher(first_name, last_name)
VALUES ('Taylah', 'Booker'),
		('Sarah-Louise', 'Blake');

SELECT * from teacher;

SELECT * FROM student
LEFT JOIN student_course ON student.id = student_course.student_id;

SELECT * FROM course
Right JOIN student_course ON course.id = student_course.course_id;

SELECT * FROM teacher
INNER JOIN course ON teacher.id = course.teacher_id;

SELECT first_name, last_name
FROM student;

SELECT c.*
FROM course c
JOIN teacher t ON c.teacher_id = t.id
WHERE t.first_name = 'Taylah' AND t.last_name = 'Booker';

SELECT first_name, last_name
FROM student
WHERE last_name LIKE 'B%'

UNION

SELECT first_name, last_name
FROM teacher
WHERE last_name LIKE 'B%';