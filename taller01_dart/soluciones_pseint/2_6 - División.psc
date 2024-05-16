Algoritmo estructuraCondicionalDobleDivision
	// Objetivo del Algoritmo
	Escribir Sin Saltar "Diseñe un algoritmo que solicite dos números y los divida, como resultado "; 
	Escribir Sin Saltar "debe mostrar en pantalla (La división del número A entre el número B es: ";
	Escribir "resultado). Si el denominador es cero, deben salir en pantalla: Imposible la división por 0.";
	Escribir "";	
	// Declarar variables
	Definir num1, num2, res Como Real;	
	// Iniciar variables	
	num1 <- 0;
	num2 <- 0;
	res <- 0;	
	// Entrada de Datos
	Escribir Sin Saltar "Digite el primer número:";
	Leer num1;
	Escribir Sin Saltar "Digite el segundo número:";
	Leer num2;	
	// Proceso1: Si el denominador es diferente de 0 'cero' realice la división
	//          Si no, muestre en pantalla un mensaje de error	
	Si (num2 <> 0) Entonces
		// Proceso2: Realiza la división 
		res <- num1 / num2;
		// Salida de Datos
		Escribir "";
		Escribir "la división de su número ", num1, " entre su número ", num2, " es: ", res;	
	SiNo
		// Salida de Datos
		Escribir "";
		Escribir "Imposible la división por 0";
	FinSi
	Escribir "";
FinAlgoritmo