Algoritmo estructuraCondicionalMultipleCalculadora
	// Objetivo del Algoritmo
	Escribir sin saltar "Dise�e un algoritmo para seleccionar un men� con 10 operaciones ";
	Escribir sin saltar "matem�ticas b�sicas: suma, resta, multiplicaci�n, divisi�n, ";
	Escribir "m�dulo, cuadrado, ra�z cuadrada, potencia, porcentaje y un n�mero aleatorio.";
	// Declarar variables
	Definir volver Como Caracter;
	Definir menu Como Entero;
	Definir num1, num2, res Como Real;
	// Iniciar variables
	volver <- '';
	menu <- 0;
	num1 <- 0.0;
	num2 <- 0.0;
	res <- 0.0;				
	// Entrada de Datos: Muestra el Men� en pantalla
	Escribir "";
	Escribir "-------------------- Bienvenido a la Calculadora -------------------";
	Escribir "1. Suma";
	Escribir "2. Resta";
	Escribir "3. Multiplicaci�n";
	Escribir "4. Divisi�n";
	Escribir "5. M�dulo";		
	Escribir "6. Cuadrado";
	Escribir "7. Ra�z Cuadrada";
	Escribir "8. Potencia";		
	Escribir "9. Porcentaje";
	Escribir "10. N�mero aleatorio";
	Escribir Sin Saltar "Digite una opci�n del men� ";		
	Leer menu;
	// Proceso1: Si la opci�n men� existe, selecciona una operaci�n matem�tica.
	//           Si no existe, muestra en pantalla un mensaje de error.		
	Segun menu Hacer
		1:
			// Entrada de Datos
			Escribir "";
			Escribir "------------------- Bienvenido a la Suma ------------------";
			Escribir Sin Saltar "Digite el primer sumando ";
			Leer num1;
			Escribir Sin Saltar "Digite el segundo sumando ";
			Leer num2;
			// Proceso2: Suma
			res <- num1 + num2;
			// Salida de Datos
			Escribir "";
			Escribir "El resultado de la suma es: ", res;
		2:
			// Entrada de Datos
			Escribir "";
			Escribir "------------------ Bienvenido a la Resta ------------------";				
			Escribir Sin Saltar "Digite el minuendo ";
			Leer num1;
			Escribir Sin Saltar "Digite el sustraendo ";
			Leer num2;
			// Proceso3: Resta
			res <- num1 - num2;
			// Salida de Datos
			Escribir "";
			Escribir "El resultado de la resta es: ", res;
		3:
			// Entrada de Datos
			Escribir "";
			Escribir "-------------- Bienvenido a la Multiplicaci�n --------------";				
			Escribir Sin Saltar "Digite el primer multiplicando ";
			Leer num1;
			Escribir Sin Saltar "Digite el segundo multiplicando ";
			Leer num2;
			// Proceso4: Multiplicaci�n
			res <- num1 * num2;
			// Salida de Datos
			Escribir "";
			Escribir "El resultado de la multiplicaci�n es: ", res;
		4:
			// Entrada de Datos
			Escribir "";
			Escribir "----------------- Bienvenido a la Divisi�n -----------------";				
			Escribir Sin Saltar "Digite el dividendo ";
			Leer num1;
			Escribir Sin Saltar "Digite el divisor ";
			Leer num2;				
			// Proceso5: Si el denominador es diferente de 0 'cero' realice la divisi�n
			//          Si no, muestre en pantalla un mensaje de error	
			Si (num2 <> 0) Entonces
				// Proceso6: Realiza la divisi�n 
				res <- num1 / num2;
				// Salida de Datos
				Escribir "";
				Escribir "El resultado de la divisi�n es: ", res;	
			SiNo
				// Salida de Datos
				Escribir "";
				Escribir "Imposible la divisi�n por 0";
			FinSi
		5:
			// Entrada de Datos
			Escribir "";
			Escribir "---------- Bienvenido al M�dulo de la Divisi�n ------------";
			Escribir Sin Saltar "Digite el dividendo ";
			Leer num1;
			Escribir Sin Saltar "Digite el divisor ";
			Leer num2;				
			// Proceso7: Si el denominador es diferente de 0 'cero' realice el m�dulo de la divisi�n
			//          Si no, muestre en pantalla un mensaje de error	
			Si (num2 <> 0) Entonces
				// Proceso8: M�dulo de la divisi�n
				res <- num1 MOD num2;				
				// Salida de Datos
				Escribir "";
				Escribir "El m�dulo de la divisi�n es ", res;
			SiNo
				// Salida de Datos
				Escribir "";
				Escribir "Imposible la divisi�n por 0";
			FinSi
		6:
			// Entrada de Datos
			Escribir "";
			Escribir "-------------- Bienvenido al Cuadrado --------------------";
			Escribir Sin Saltar "Digite la base ";
			Leer num1;
			// Proceso9: Cuadrado
			res <- num1^2;
			// Salida de Datos
			Escribir "";
			Escribir "El cuadrado de ", num1, " es ", res;
		7:
			// Entrada de Datos
			Escribir "";
			Escribir "----------- Bienvenido a la Ra�z Cuadrada ----------------";				
			Escribir Sin Saltar "Digite la base ";
			Leer num1;
			// Proceso10: Ra�z cuadrada
			res <- raiz(num1);
			// Salida de Datos				
			Escribir "";
			Escribir "La ra�z cuadrada de ", num1, " es ", res;
		8:
			// Entrada de Datos
			Escribir "";
			Escribir "-------------- Bienvenido a la Potencia ------------------";
			Escribir Sin Saltar "Digite la base ";
			Leer num1;
			Escribir Sin Saltar "Digite el exponente ";
			Leer num2;
			// Proceso11: Potencia
			res <- num1^num2;
			// Salida de Datos
			Escribir "";
			Escribir "La potencia cuya base es ", num1, " y exponente ", num2, " es ", res;	
		9:
			// Entrada de Datos
			Escribir "";
			Escribir "---------------- Bienvenido al Porcentaje ---------------";				
			Escribir Sin Saltar "Digite el n�mero ";
			Leer num1;
			Escribir Sin Saltar "Digite el porcentaje ";
			Leer num2;
			//Proceso12: Porcentaje
			res <- (num1 * num2)/100;				
			// Salida de Datos
			Escribir "";
			Escribir "El ", num2, " porciento de ", num1, " es ", res;
		10:
			// Entrada de Datos
			Escribir "";
			Escribir "----------- Bienvenido al N�mero Aleatorio --------------";				
			Escribir Sin Saltar "Digite el n�mero m�ximo de aleatoriedad ";
			Leer num1;				
			//Proceso13: Aleatorio
			res <- azar(num1) + 1;
			// Salida de Datos
			Escribir "";
			Escribir "El n�mero aleatorio entre 0 y ", num1, " es: ", res;
		De Otro Modo:
			Escribir "";
			Escribir "La opci�n no est� en el men�";
	FinSegun
FinAlgoritmo
