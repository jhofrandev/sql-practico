-- 1
SELECT EXTRACT(
        YEAR
        FROM fecha_incorporacion
    ) AS anio_incorporacion
FROM platzi.alumnos;
-- 2
SELECT DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion
FROM platzi.alumnos;
-- 3
SELECT DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion,
    DATE_PART('MONTH', fecha_incorporacion) AS mes_incorporacion,
    DATE_PART('DAY', fecha_incorporacion) AS dia_incorporacion
FROM platzi.alumnos;