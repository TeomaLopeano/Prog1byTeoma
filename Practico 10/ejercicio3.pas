PROGRAM Ejercicio3 (output);
TYPE Materia = (matematicas, historia, computacion, geografia, fisica);
VAR a, b: Materia;
BEGIN 
    a := matematicas;
    b := computacion;
    IF a > b THEN
        write ('Magnifico')
    ELSE
        write ('Excelente')
END.