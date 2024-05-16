Algoritmo estructuraCondicionalMultipleCalculadora
	// Objetivo del Algoritmo
	Escribir sin saltar "Diseñe un algoritmo para seleccionar un menú con 10 operaciones ";
	Escribir sin saltar "matemáticas básicas: suma, resta, multiplicación, división, ";
	Escribir "módulo, cuadrado, raíz cuadrada, potencia, porcentaje y un número aleatorio.";
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
	// Entrada de Datos: Muestra el Menú en pantalla
	Escribir "";
	Escribir "-------------------- Bienvenido a la Calculadora -------------------";
	Escribir "1. Suma";
	Escribir "2. Resta";
	Escribir "3. Multiplicación";
	Escribir "4. División";
	Escribir "5. Módulo";		
	Escribir "6. Cuadrado";
	Escribir "7. Raíz Cuadrada";
	Escribir "8. Potencia";		
	Escribir "9. Porcentaje";
	Escribir "10. Número aleatorio";
	Escribir Sin Saltar "Digite una opción del menú ";		
	Leer menu;
	// Proceso1: Si la opción menú existe, selecciona una operación matemática.
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
			Escribir "-------------- Bienvenido a la Multiplicación --------------";				
			Escribir Sin Saltar "Digite el primer multiplicando ";
			Leer num1;
			Escribir Sin Saltar "Digite el segundo multiplicando ";
			Leer num2;
			// Proceso4: Multiplicación
			res <- num1 * num2;
			// Salida de Datos
			Escribir "";
			Escribir "El resultado de la multiplicación es: ", res;
		4:
			// Entrada de Datos
			Escribir "";
			Escribir "----------------- Bienvenido a la División -----------------";				
			Escribir Sin Saltar "Digite el dividendo ";
			Leer num1;
			Escribir Sin Saltar "Digite el divisor ";
			Leer num2;				
			// Proceso5: Si el denominador es diferente de 0 'cero' realice la división
			//          Si no, muestre en pantalla un mensaje de error	
			Si (num2 <> 0) Entonces
				// Proceso6: Realiza la división 
				res <- num1 / num2;
				// Salida de Datos
				Escribir "";
				Escribir "El resultado de la división es: ", res;	
			SiNo
				// Salida de Datos
				Escribir "";
				Escribir "Imposible la división por 0";
			FinSi
		5:
			// Entrada de Datos
			Escribir "";
			Escribir "---------- Bienvenido al Módulo de la División ------------";
			Escribir Sin Saltar "Digite el dividendo ";
			Leer num1;
			Escribir Sin Saltar "Digite el divisor ";
			Leer num2;				
			// Proceso7: Si el denominador es diferente de 0 'cero' realice el módulo de la división
			//          Si no, muestre en pantalla un mensaje de error	
			Si (num2 <> 0) Entonces
				// Proceso8: Módulo de la división
				res <- num1 MOD num2;				
				// Salida de Datos
				Escribir "";
				Escribir "El módulo de la división es ", res;
			SiNo
				// Salida de Datos
				Escribir "";
				Escribir "Imposible la división por 0";
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
			Escribir "----------- Bienvenido a la Raíz Cuadrada ----------------";				
			Escribir Sin Saltar "Digite la base ";
			Leer num1;
			// Proceso10: Raíz cuadrada
			res <- raiz(num1);
			// Salida de Datos				
			Escribir "";
			Escribir "La raíz cuadrada de ", num1, " es ", res;
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
			Escribir Sin Saltar "Digite el número ";
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
			Escribir "----------- Bienvenido al Número Aleatorio --------------";				
			Escribir Sin Saltar "Digite el número máximo de aleatoriedad ";
			Leer num1;				
			//Proceso13: Aleatorio
			res <- azar(num1) + 1;
			// Salida de Datos
			Escribir "";
			Escribir "El número aleatorio entre 0 y ", num1, " es: ", res;
		De Otro Modo:
			Escribir "";
			Escribir "La opción no está en el menú";
	FinSegun
FinAlgoritmo
