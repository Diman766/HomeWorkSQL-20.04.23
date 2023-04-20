USE homework_3;

CREATE TABLE salesPeaple(
snum INT,
sname VARCHAR(20),
city VARCHAR(20),
comm VARCHAR (10)
);
INSERT INTO salesPeaple(snum,sname,city,comm)
VALUES
(1001,'Peel','London','.12'),(1002,'Serres','San_Jose','.13'),(1004,'Motika','London','.11'),
(1007,'Rifkin','Barcelona','.15'),(1003,'Axelrod','New_York','.10');

CREATE TABLE customers(
cnum int,
cname VARCHAR(20),
city VARCHAR(20),
rating int,
snum int
);
INSERT INTO customers(cnum,cname,city,rating,snum)
VALUES
(2001,'Hoffman','London',100,1001),(2002,'Giovanni','Rome',200,1003),
(2003,'Liu','SanJose',200,1002),(2004,'Grass','Berlin',300,1002),
(2006,'Clemens','London',100,1001),(2008,'Cisneros','SanJose',300,1007),
(2007,'Pereira','Rome',100,1004);

CREATE TABLE orders(
onum int,
amt float,
odate DATE,
cnum int,
snum int
);
INSERT INTO orders(onum,amt,odate,cnum,snum)
VALUES
(3001,18.69,19900310,2008,1007),(3003,767.19,19900310,2001,1001),
(3002,1900.10,19900310,2007,1004),(3005,5160.45,19900310,2003,1002),
(3006,1098.16,19900310,2008,1007),(3009,1713.23,19900410,2002,1003),
(3007,75.75,19900410,2004,1002),(3008,4723.00,19900510,2006,1001),
(3010,1309.95,19900610,2004,1002),(3011,9891.88,19900610,2006,1001);

SELECT city,sname,snum,comm
from salespeaple;

SELECT cname,rating
FROM customers
WHERE city = 'SanJose';

SELECT DISTINCT snum
FROM customers;

SELECT *
FROM customers
WHERE cname LIKE 'G%';

SELECT amt
FROM orders
WHERE amt > 1.000;

SELECT MIN(amt)
FROM orders;

SELECT *
FROM customers
WHERE rating > 100 AND city != 'Rome';

CREATE TABLE staff (
id INT AUTO_INCREMENT PRIMARY KEY,
firstname VARCHAR(45),
lastname VARCHAR(45),
post VARCHAR(100),
seniority INT,
salary INT,
age INT
);

INSERT INTO staff (firstname, lastname, post, seniority, salary, age)
VALUES
('Вася', 'Петров', 'Начальник', '40', 100000, 60),
('Петр', 'Власов', 'Начальник', '8', 70000, 30),
('Катя', 'Катина', 'Инженер', '2', 70000, 25),
('Саша', 'Сасин', 'Инженер', '12', 50000, 35),
('Иван', 'Иванов', 'Рабочий', '40', 30000, 59),
('Петр', 'Петров', 'Рабочий', '20', 25000, 40),
('Сидр', 'Сидоров', 'Рабочий', '10', 20000, 35),
('Антон', 'Антонов', 'Рабочий', '8', 19000, 28),
('Юрий', 'Юрков', 'Рабочий', '5', 15000, 25),
('Максим', 'Максимов', 'Рабочий', '2', 11000, 22),
('Юрий', 'Галкин', 'Рабочий', '3', 12000, 24),
('Людмила', 'Маркина', 'Уборщик', '10', 10000, 49);

SELECT *
FROM staff
ORDER BY salary DESC;

SELECT * 
FROM staff 
ORDER BY salary LIMIT 5;

SELECT post, SUM(salary) as sum
FROM staff
GROUP BY post
HAVING sum > 100000;

