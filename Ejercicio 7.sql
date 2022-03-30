/*Ejercicios 7*/ 

/*7.1*/
Select * from empleados;

/*7.2*/
Select * from departamentos;

/*7.3*/
select * from empleados where cargoE = "Secretaria";

/*7.4*/
select nomEmp, salEmp from empleados;

/*7.5*/
select * from empleados where cargoE= "Vendedor" order by nomEmp;

/*7.6*/
select distinct nombreDpto from empleados ;

/*7.7*/
select nomEmp, cargoE, salEmp from empleados order by salEmp, nomEmp




