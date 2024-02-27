-- 1
SELECT a.nombre,
    a.apellido,
    a.carrera_id,
    c.id,
    c.carrera_id
FROM platzi.alumnos AS a
    LEFT JOIN platzi.carreras AS c ON a.carrera_id = c.id
ORDER BY c.id DESC;
-- 2
SELECT a.nombre,
    a.apellido,
    a.carrera_id,
    c.id,
    c.carrera_id
FROM platzi.alumnos AS a
    RIGHT JOIN platzi.carreras AS c ON a.carrera_id = c.id
ORDER BY c.id DESC;
-- 2 exclusivo
SELECT a.nombre,
    a.apellido,
    a.carrera_id,
    c.id,
    c.carrera_id
FROM platzi.alumnos AS a
    RIGHT JOIN platzi.carreras AS c ON a.carrera_id = c.id
WHERE a.id IS NULL
ORDER BY c.id DESC;
-- 3 inner join
SELECT a.nombre,
    a.apellido,
    a.carrera_id,
    c.id,
    c.carrera_id
FROM platzi.alumnos AS a
    INNER JOIN platzi.carreras AS c ON a.carrera_id = c.id
ORDER BY c.id DESC;
-- 4 en a y en b pero no la union
SELECT a.nombre,
    a.apellido,
    a.carrera_id,
    c.id,
    c.carrera_id
FROM platzi.alumnos AS a
    FULL OUTER JOIN platzi.carreras AS c ON a.carrera_id = c.id
WHERE a.id IS NULL
    OR c.id IS NULL
ORDER BY c.id DESC;