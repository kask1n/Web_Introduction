# Задача 4.2:
# Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. В таблице должно быть четыре поля: id, name, age, address. Все поля в таблице обязательны для заполнения.
# Необходимо добавить 5-10 одногруппников в данную таблицу. Необходимо написать запрос на получение только имен всех одногруппников, которые живут в Москве и их возраст находится в диапазоне [18, 30) лет.


CREATE TABLE employee
(
    id      SERIAL PRIMARY KEY,
    name    TEXT NOT NULL,
    age     INT  NOT NULL,
    address TEXT NOT NULL
);


INSERT INTO employee (name, age, address)
VALUES ('Александр', 18, 'Москва');
INSERT INTO employee (name, age, address)
VALUES ('Андрей', 22, 'Екатеринбург');
INSERT INTO employee (name, age, address)
VALUES ('Дмитрий', 35, 'Санкт-Петербург');
INSERT INTO employee (name, age, address)
VALUES ('Ольга', 18, 'Москва');
INSERT INTO employee (name, age, address)
VALUES ('Руслан', 36, 'Москва');
INSERT INTO employee (name, age, address)
VALUES ('Артём', 23, 'Санкт-Петербург');
INSERT INTO employee (name, age, address)
VALUES ('Константин', 32, 'Новосибирск');
INSERT INTO employee (name, age, address)
VALUES ('Алёна', 25, 'Москва');
INSERT INTO employee (name, age, address)
VALUES ('Кирилл', 24, 'Санкт-Петербург');
INSERT INTO employee (name, age, address)
VALUES ('Яна', 33, 'Тюмень');


SELECT name
FROM employee
WHERE address = 'Москва'
  AND age >= 18
  AND age < 30;
