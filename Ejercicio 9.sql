/*Ejercicios 9*/

select nomemp, cargoe
from empleados
where nomEmp  between'j' and 'z'
order by nomemp;


select nomemp, salemp, comisionE, salemp + comisione,nDIEmp
from empleados
where comisione > 1000000
order by cast( Replace (nDIEmp, ".","")as decimal) ;


select nomemp, salemp, comisionE, salemp + comisione,nDIEmp
from empleados
where not comisione
order by nDIEmp;

select nompemp
from empleados
where nomemp not like 'Ma%';


select nombredpto
from departamentos
where nombredpto not in ('VENTAS','INVESTIGACIÓN','MANTENIMINETO');


select *
from empleados
where char_length(nomemp) = 11; 
