Algoritmo estructuraCondicionalDobleDivision
	// Objetivo del Algoritmo
	Escribir Sin Saltar "Dise�e un algoritmo que solicite dos n�meros y los divida, como resultado "; 
	Escribir Sin Saltar "debe mostrar en pantalla (La divisi�n del n�mero A entre el n�mero B es: ";
	Escribir "resultado). Si el denominador es cero, deben salir en pantalla: Imposible la divisi�n por 0.";
	Escribir "";	
	// Declarar variables
	Definir num1, num2, res Como Real;	
	// Iniciar variables	
	num1 <- 0;
	num2 <- 0;
	res <- 0;	
	// Entrada de Datos
	Escribir Sin Saltar "Digite el primer n�mero:";
	Leer num1;
	Escribir Sin Saltar "Digite el segundo n�mero:";
	Leer num2;	
	// Proceso1: Si el denominador es diferente de 0 'cero' realice la divisi�n
	//          Si no, muestre en pantalla un mensaje de error	
	Si (num2 <> 0) Entonces
		// Proceso2: Realiza la divisi�n 
		res <- num1 / num2;
		// Salida de Datos
		Escribir "";
		Escribir "la divisi�n de su n�mero ", num1, " entre su n�mero ", num2, " es: ", res;	
	SiNo
		// Salida de Datos
		Escribir "";
		Escribir "Imposible la divisi�n por 0";
	FinSi
	Escribir "";
FinAlgoritmo