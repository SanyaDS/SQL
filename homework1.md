Homework 1 SQL.

> Таблица employees

Создать таблицу employees  
- id. serial,  primary key,  
- employee_name. Varchar(50), not null  
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

> Таблица salary

Создать таблицу salary  
- id. Serial  primary key,  
- monthly_salary. Int, not null  
Наполнить таблицу salary 15 строками.

> Таблица employee_salary

Создать таблицу employee_salary  
- id. Serial  primary key,  
- employee_id. Int, not null, unique  
- salary_id. Int, not null  
Наполнить таблицу employee_salary 40 строками:  
- в 10 строк из 40 вставить несуществующие employee_id.

> Таблица roles

Создать таблицу roles  
- id. Serial  primary key,  
- role_name. int, not null, unique  
Поменять тип столба role_name с int на varchar(30)  
Наполнить таблицу roles 20 строками.

> Таблица roles_employee

Создать таблицу roles_employee  
- id. Serial  primary key,  
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)  
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)  
Наполнить таблицу roles_employee 40 строками.
