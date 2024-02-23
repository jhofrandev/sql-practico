-- El segundo valor mas alto
-- 1
SELECT DISTINCT colegiatura
FROM platzi.alumnos AS a1
WHERE 2 = (
        SELECT COUNT (DISTINCT colegiatura)
        FROM platzi.alumnos a2
        WHERE a1.colegiatura <= a2.colegiatura
    );
-- 2
SELECT DISTINCT colegiatura
FROM platzi.alumnos
ORDER BY colegiatura DESC
LIMIT 1 OFFSET 1;
-- Mas complejo
SELECT DISTINCT colegiatura,
    tutor_id
FROM platzi.alumnos
WHERE tutor_id = 20
ORDER BY colegiatura DESC
LIMIT 1 OFFSET 1;
-- 3
SELECT *
FROM platzi.alumnos AS datos_alumnos
    INNER JOIN (
        FROM platzi.alumnos
        WHERE tutor_id = 20
        ORDER BY colegiatura DESC
        LIMIT 1 OFFSET 1
    ) AS segunda_mayor_colegiatura ON datos_alumnos.colegiatura = segunda_mayor_colegiatura.colegiatura;
-- 4
SELECT *
FROM platzi.alumnos AS datos_alumnos
WHERE (
        FROM platzi.alumnos
        WHERE tutor_id = 20
        ORDER BY colegiatura DESC
        LIMIT 1 OFFSET 1
    );