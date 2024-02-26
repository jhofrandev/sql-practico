-- 1
SELECT *
FROM platzi.alumnos
WHERE (
        EXTRACT(
            YEAR
            FROM fecha_incorporacion
        )
    ) = 2019;
-- 2
SELECT *
FROM platzi.alumnos
WHERE (DATE_PART('YEAR', fecha_incorporacion)) = 2019;
-- 3
SELECT *
FROM (
        SELECT *,
            DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion
        FROM platzi.alumnos
    ) AS alumnos_con_anio
WHERE anio_incorporacion = 2020;