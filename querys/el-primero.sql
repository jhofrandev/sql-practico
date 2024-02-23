-- Seleccionar el primer query
-- 1
SELECT *
FROM platzi.alumnos
FETCH FIRST 1 ROWS ONLY;
-- 2
SELECT *
FROM platzi.alumnos
LIMIT 1;
-- 3
SELECT *
FROM (
        SELECT ROW_NUMBER() OVER() AS row_id,
            *
        FROM platzi.alumnos
    ) AS alumnos_with_row_num
WHERE row_id = 1;
-- Los primeros 5 query
-- 1
SELECT *
FROM platzi.alumnos
FETCH FIRST 5 ROWS ONLY;
-- 2
SELECT *
FROM platzi.alumnos
LIMIT 5;
-- 3
SELECT *
FROM (
        SELECT ROW_NUMBER() OVER() AS row_id,
            *
        FROM platzi.alumnos
    ) AS alumnos_with_row_num
WHERE row_id <= 5;