use aulasql;

#mostrar as tabelas
show tables;

#descrive as colunas tabela
describe users;

#inserir informações na base de dados
insert into users
(first_name, last_name, email) values
("Andrey","Mendonca","andrey@gmail.com");

insert into users
(first_name, last_name, email) values
("Jorge","Wagner","jorge@gmail.com"),
("Valeria","Cadu","valeria@gmail.com"),
("Roger","Wagner","roger@gmail.com"),
("Vitor","Viana","vitor@gmail.com");

---
#selecionar colunas
select * from users; 
select first_name as primeiroNome, last_name as "Sobrenome users" from users;
 
 ---
 #usando where para filtrar registros
 select * from users
 where id=4;
 
 #operadores = / < / > / <= / >= / != <> 
 select * from users
 where id > 5;

 #operadores logicos and / or 
 select * from users 
 where id >5 and first_name = "Andrey";
 
 ------
 INSERT INTO users (first_name, last_name, email) VALUES
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@example.com'),
('Michael', 'Johnson', 'michael.johnson@example.com'),
('Emily', 'Brown', 'emily.brown@example.com'),
('William', 'Jones', 'william.jones@example.com'),
('Olivia', 'Taylor', 'olivia.taylor@example.com'),
('James', 'Miller', 'james.miller@example.com'),
('Emma', 'Anderson', 'emma.anderson@example.com'),
('Benjamin', 'Wilson', 'benjamin.wilson@example.com'),
('Ava', 'Davis', 'ava.davis@example.com'),
('Daniel', 'Thomas', 'daniel.thomas@example.com'),
('Sophia', 'Martinez', 'sophia.martinez@example.com'),
('Joseph', 'Anderson', 'joseph.anderson@example.com'),
('Mia', 'White', 'mia.white@example.com'),
('David', 'Taylor', 'david.taylor@example.com'),
('Abigail', 'Lee', 'abigail.lee@example.com'),
('John', 'Harris', 'john.harris@example.com'),
('Elizabeth', 'Clark', 'elizabeth.clark@example.com'),
('Jacob', 'Lewis', 'jacob.lewis@example.com'),
('Emily', 'Johnson', 'emily.johnson@example.com'),
('James', 'Walker', 'james.walker@example.com'),
('Sofia', 'Hall', 'sofia.hall@example.com'),
('Liam', 'Allen', 'liam.allen@example.com'),
('Ella', 'King', 'ella.king@example.com'),
('Henry', 'Young', 'henry.young@example.com'),
('Amelia', 'Green', 'amelia.green@example.com'),
('Daniel', 'Martin', 'daniel.martin@example.com'),
('Charlotte', 'Baker', 'charlotte.baker@example.com');
 
 
 #between -- operação entre dados
 select * from users
 where id between 5 and 10;
 
 #in -- operacao que seleciona elementos entre os valores enviados
 select * from users 
 where id in(10,20,30);
 
 #like (parecido), usamos o % = qualquer coisa antes // _ para um caracter 
 select * from users
 where first_name like'%e';
 
 select * from users
 where first_name like '_n%';
 
 #oder_by ordernar por, podemos usar asc = crescente desc = decresente
 select * from users
 where id between 10 and 30
 order by first_name  desc;
 
 #limit - podemos usar limit para limitar a quantidade de registros
select * from users
 where id between 10 and 30
 order by first_name  desc
 limit 3; 
 
 #offset - operacao para mover o cursor
select * from users
 where id between 10 and 30
 order by first_name  desc
 limit 3
 offset 3;
 
 
 --
 #DELETE feito para apagar registros e usamos ele como a operação select, ou seja, dessa forma, teremos uma operação com where.
 delete from users where id = 10;
 
 delete from users
 where id between 40 and 50;
 
 
 
 
 
 
 
 





