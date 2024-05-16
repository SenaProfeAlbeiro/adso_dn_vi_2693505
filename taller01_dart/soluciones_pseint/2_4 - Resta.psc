Algoritmo estructuraSecuencialResta
	// Objetivo del Algoritmo
	Escribir Sin Saltar "Diseñe un algoritmo que solicite dos números y los reste, como resultado ";
	Escribir "debe mostrar en pantalla (La diferencia del número A con el número B es: resultado).";
	Escribir "";	
	// Declarar variables
	Definir num1, num2, res Como Real;
	Definir volver Como caracter;	
	// Iniciar variables	
	num1 <- 0;
	num2 <- 0;
	res <- 0;	
	// Entrada de Datos
	Escribir Sin Saltar "Digite el primer número:";
	Leer num1;
	Escribir Sin Saltar "Digite el segundo número:";
	Leer num2;	
	// Proceso
	res <- num1 - num2;	
	// Salida de Datos
	Escribir "";
	Escribir "La diferencia del número ", num1, " con el número ", num2, " es: ", res;
	Escribir "";	
FinAlgoritmo
