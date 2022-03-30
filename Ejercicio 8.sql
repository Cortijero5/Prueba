/*Ejercicio8*/

/*8.1*/
select e.salEmp, e.comisionE, e.codDpto 
from empleados as e 
where e.codDpto ="2000" 
ORDER BY e.comisionE;

-- 8.2. (Es raro) Obtener el total de comisiones y salarios de los empleados del dpto. de ventas por ciudad
SELECT SUM(salEmp) AS sumaSalario, SUM(comisionE) AS sumaComision, nombreDpto, ciudad FROM empleados e JOIN departamentos d
ON e.codDepto = d.codDepto
WHERE d.nombreDpto = 'VENTAS'
GROUP BY d.ciudad -- Si no lo pongo, se suman para todos los registros de ventas. Si lo pongo, lo diferencia. 
ORDER BY d.ciudad, e.comisionE;


-- 8.3. Listar todas las comisiones.
SELECT DISTINCT comisionE FROM empleados ORDER BY comisionE DESC;


-- 8.4. Obtener el valor total a pagar en el departamento 3000 que resulta de sumar a todos los empleados una bonificación 
--  de 500.000, en orden alfabético del empleado
SELECT nomEmp, salEmp, (salEmp + 500000) AS totalPago FROM empleados WHERE CodDepto = 3000;
-- Obtener el valor total a pagar para todos los empleados si le sumamos a los empleados  del departamento 3000 una bonificación de 500.000
SELECT SUM(salEmp + 500000) AS totalPagoJefe FROM empleados WHERE CodDepto = 3000 ORDER BY nomEmp;



-- 8.5. Obtener la lista de los empleados que ganan una comisión superior a su sueldo.
SELECT nomEmp, comisionE, salEmp FROM empleados WHERE comisionE > salEmp ORDER BY comisionE DESC;



-- 8.6 Obtener la lista de los empleados de cada departamento que ganan una comisión superior a su sueldo listado por departamento
SELECT nomEmp, salEmp, comisionE, nombreDpto FROM empleados e
JOIN departamentos d ON e.codDepto = d.codDepto
WHERE comisionE > salEmp
ORDER BY d.nombreDpto;



-- 8.7. Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo.
SELECT nomEmp, salEmp, comisionE FROM empleados WHERE comisionE <= 0.3*salEmp ORDER BY nomEmp;



-- 8.8. Elabore un listado donde para cada fila, figure ‘Nombre’ y ‘Cargo’ antes del valor respectivo para cada empleado.
SELECT CONCAT('Nombre: ', nomEmp) AS nombre, CONCAT('Cargo: ',cargoE) AS cargo FROM empleados; 



-- 8.9. Hallar el salario y la comisión de aquellos empleados cuyo número de documento de identidad es superior
--  al ‘19.709.802’.
SELECT salEmp AS salario, comisionE AS comision, nDIEmp FROM empleados 
WHERE REPLACE(nDIEmp,'.', '') > 19709802;