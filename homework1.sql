Homework 1 SQL.

----

Таблица employees

Создать таблицу employees

id. serial, primary key,
employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees (employee_name)
values ('Liam'), ('Emma'), ('Noah'), ('Olivia'), ('Mason'), ('Ava'), ('Ethan'), ('Sophia'), ('Logan'),
	('Isabella'), ('Lucas'), ('Mia'), ('Jackson'), ('Charlotte'), ('Aiden'), ('Amelia'), ('Oliver'), ('Emily'),
	('Jacob'), ('Madison'), ('Elijah'), ('Harper'), ('Alexander'), ('Abigail'), ('James'), ('Avery'),
	('Benjamin'), ('Lily'), ('Jack'), ('Ella'), ('Luke'), ('Chloe'), ('William'), ('Evelyn'), ('Michael'),
	('Sofia'), ('Owen'), ('Aria'), ('Daniel'), ('Ellie'), ('Carter'), ('Aubrey'), ('Gabriel'), ('Scarlett'),
	('Henry'), ('Zoey'), ('Matthew'), ('Hannah'), ('Wyatt'), ('Audrey'), ('Caleb'), ('Grace'), ('Jayden'),
	('Addison'), ('Nathan'), ('Zoe'), ('Ryan'), ('Elizabeth'), ('Isaac'), ('Nora'), ('Dmitry'), ('Fedor'),
	('Kristina'), ('Polina'), ('Nikolai'), ('Loki'), ('Ludmila'), ('Harry'), ('Vladimir'), ('Nataliya');

select* from employees;

drop table employees;

----

Таблица salary

Создать таблицу salary

id. Serial primary key,
monthly_salary. Int, not null
Наполнить таблицу salary 15 строками.

create table salary (
	id serial primary key,
	monthly_salary int not null
);

insert into salary (monthly_salary)
values ('1000'), ('1100'), ('1200'), ('1300'), ('1400'), ('1500'), ('1600'), ('1700'), ('1800'), ('1900'),
	('2000'), ('2100'), ('2200'), ('2300'), ('2400'), ('2500');

select* from salary;

drop table salary;

----

Таблица employee_salary

Создать таблицу employee_salary

id. Serial primary key,
employee_id. Int, not null, unique
salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
в 10 строк из 40 вставить несуществующие employee_id.

create table employee_salary (
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

insert into employee_salary (employee_id, salary_id)
values ('11', '16'), ('8', '3'), ('4', '4'), ('41', '12'), ('1', '10'), ('35', '8'), ('52', '9'), ('12', '6'), ('63', '15'),
	('9', '16'), ('50', '7'), ('39', '7'), ('65', '16'), ('29', '9'), ('25', '7'), ('17', '12'), ('5', '3'), ('18', '1'),
	('24', '15'), ('33', '12'), ('32', '16'), ('44', '6'), ('6', '15'), ('22', '16'), ('19', '5'), ('37', '3'), ('40', '12'),
	('34', '9'), ('45', '5'), ('16', '5'), ('49', '2'), ('55', '8'), ('2', '11'), ('30', '4'), ('3', '14'), ('15', '16'),
	('48', '5'), ('36', '4'), ('23', '6'), ('14', '16');

select* from employee_salary;

drop table employee_salary;

----

Таблица roles

Создать таблицу roles

id. Serial primary key,
role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками.

create table roles (
	id serial primary key,
	role_name int unique not null
);

alter table roles alter column role_name type varchar(30);

insert into roles (role_name)
values ('Junior Python developer'), ('Middle Python developer'), ('Senior Python developer'), ('Junior Java developer'),
	('Middle Java developer'), ('Senior Java developer'), ('Junior JavaScript developer'), ('Middle JavaScript developer'),
	('Senior JavaScript developer'), ('Junior Manual QA engineer'), ('Middle Manual QA engineer'), ('Senior Manual QA engineer'),
	('Project Manager'), ('Designer'), ('HR'), ('CEO'), ('Sales manager'), ('Junior Automation QA engineer'),
	('Middle Automation QA engineer'), ('Senior Automation QA engineer');

select* from roles;

drop table roles;

----

Таблица roles_employee

Создать таблицу roles_employee

id. Serial primary key,
employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками.

create table roles_employee (
	id serial primary key,
	employee_id int unique not null,
	foreign key (employee_id) references employees (id),
	role_id int not null,
	foreign key (role_id) references roles (id)
);

insert into roles_employee (employee_id, role_id)
values ('11', '16'), ('8', '3'), ('4', '4'), ('41', '12'), ('1', '10'), ('35', '8'), ('52', '9'), ('12', '6'), ('63', '15'),
	('9', '16'), ('50', '7'), ('39', '7'), ('65', '16'), ('29', '9'), ('25', '7'), ('17', '12'), ('5', '3'), ('18', '1'),
	('24', '15'), ('33', '12'), ('32', '16'), ('44', '6'), ('6', '15'), ('22', '16'), ('19', '5'), ('37', '3'), ('40', '12'),
	('34', '9'), ('45', '5'), ('16', '5'), ('49', '2'), ('55', '8'), ('2', '11'), ('30', '4'), ('3', '14'), ('15', '16'),
	('48', '5'), ('36', '4'), ('23', '6'), ('14', '16');

select* from roles_employee;

drop table roles_employee;