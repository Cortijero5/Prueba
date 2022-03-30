/* EJERCICIO 10 */
-- 10.1 
SELECT nomEmp, nombreDpto, cargoE, nombreDpto, salEmp, fecIncorporacion
	FROM empleados e JOIN departamentos d
		 ON e.codDepto = d.codDepto
         WHERE e.cargoE IN ('Secretaria','Vendedor') and (nombreDpto) != 'PRODUCCIÓN' and salEmp > "1000000"
         ORDER BY fecIncorporacion;  


-- 10.2
SELECT * FROM empleados WHERE LENGTH(nomEmp) >= 11;


-- 10.3. Listar los datos de los empleados cuyo nombre inicia por la letra ‘M’, su salario es mayor a $800.000 o 
-- reciben comisión y trabajan para el departamento de 'VENTAS'
SELECT * 
	FROM empleados e JOIN departamentos d
    ON e.codDepto = d.codDepto
	WHERE nomEmp LIKE 'M%' and (salEmp > 800000 || comisionE != 0 and d.nombreDpto = 'VENTAS');
    
    
-- 10.4. Obtener los nombres, salarios y comisiones de los empleados que reciben un salario situado entre la
-- mitad de la comisión y la propia comisión.
SELECT nomEmp, salEmp, comisionE FROM empleados WHERE salEmp BETWEEN comisionE/2 AND comisionE;



-- 10.5. Mostrar el salario más alto de la empresa.
SELECT MAX(salEmp) FROM empleados;
-- ¿A quien corresponde ese salario?
SELECT nomEmp, MAX(salEmp) FROM empleados WHERE(salEmp = (SELECT MAX(salEmp) FROM EMPLEADOS));


-- 10.6. Mostrar cada una de las comisiones y el número de empleados que las reciben. Solo si tiene comisión.
SELECT comisionE, COUNT(comisionE) FROM empleados WHERE comisionE != 0 GROUP BY comisionE ORDER BY comisionE DESC;


-- 10.7. Mostrar el nombre del último empleado de la lista por orden alfabético.
SELECT MAX(nomEmp) FROM empleados;