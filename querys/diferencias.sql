SELECT a.nombre,
    a.apellido,
    a.carrera_id,
    c.id,
    c.carrera_id
FROM platzi.alumnos AS a
    INNER JOIN platzi.carreras AS c ON a.carrera_id = c.id
WHERE c.id IS NULL
ORDER BY a.carrera_id;