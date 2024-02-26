-- 1
SELECT *
FROM platzi.alumnos
WHERE tutor_id IN (1, 2, 3, 4);
-- 2
SELECT *
FROM platzi.alumnos
WHERE tutor_id >= 1
    AND tutor_id <= 10;
-- 3
SELECT *
FROM platzi.alumnos
WHERE tutor_id BETWEEN 1 AND 10;
-- 4
-- false
SELECT int4range(10, 20) @> 3;
-- true
SELECT int4range(1, 20) @> 3;
-- 5
SELECT numrange(11.1, 19.9) && numrange(20.0, 30.0);
-- 6
SELECT UPPER(int4range(15, 25));
SELECT LOWER(int4range(15, 25));
-- 7
SELECT int4range(10, 20) * int4range(15, 25);
-- 8
SELECT ISEMPTY(numrange(1, 5));
-- 9
SELECT *
FROM platzi.alumnos
WHERE int4range(10, 20) @> tutor_id;