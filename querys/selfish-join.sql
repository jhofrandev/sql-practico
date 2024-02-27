-- 1
SELECT a.nombre,
    a.apellido,
    t.nombre,
    t.apellido
FROM platzi.alumnos AS a
    INNER JOIN platzi.alumnos AS t ON a tutor_id = t.id;
-- 2
SELECT CONCAT(a.nombre, ' ', a.apellido) AS alumnos,
    CONCAT(t.nombre, ' ', t.apellido) AS tutor
FROM platzi.alumnos AS a
    INNER JOIN platzi.alumnos AS t ON a tutor_id = t.id;
-- 3
SELECT CONCAT(t.nombre, ' ', t.apellido) AS tutor,
    COUNT(*) AS alumnos_por_tutor
FROM platzi.alumnos AS a
    INNER JOIN platzi.alumnos AS t ON a tutor_id = t.id
GROUP BY tutor
ORDER BY alumnos_por_tutor DESC;