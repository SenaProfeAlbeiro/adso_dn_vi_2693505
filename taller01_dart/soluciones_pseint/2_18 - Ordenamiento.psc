Algoritmo estructurasOrdenamiento
	// Declarar variables
	Definir volver, menu Como Caracter;	
	Definir menuEnt, i, num1, num2, num3, aux como Entero;	
	// Proceso1: Se repite el menú si se selecciona 's'
	Repetir
		Limpiar Pantalla;
		// Objetivo del Algoritmo
		Escribir Sin Saltar "Diseñe un programa que por teclado solicite tres números y que según ";
		Escribir "la decisión del usuario los organice de forma ascendente o descendente.";
		// Iniciar Variables
		menu <- '';
		num1 <- 0;
		num2 <- 0;
		num3 <- 0;		
		// Entrada de Datos: Se solicitan los números
		Escribir "";
		Escribir Sin Saltar "Digite el valor del primer número";
		Leer num1;
		Escribir Sin Saltar "Digite el valor del segundo número";
		Leer num2;
		Escribir Sin Saltar "Digite el valor del tercer número";
		Leer num3;
		// Proceso2: Se repite n-1 veces la cantidad de números
		Para i <- 0 Hasta 1 Con Paso 1 Hacer
			// Proceso3: Si num1 es mayor o igual a num2, se cambian de posición
			Si num1 >= num2 Entonces 
				aux <- num1; 
				num1 <- num2; 
				num2 <- aux; 
			FinSi
			// Proceso4: Si num2 es mayor o igual a num3, se cambian de posición
			Si num2 >= num3 Entonces
				aux <- num2;
				num2 <- num3;
				num3 <- aux;
			FinSi
		FinPara
		// Proceso5: Se repite el menu de ordenamiento hasta que menu NO sea igual al número 1 o 2		
		Repetir
			// Iniciar Variable: Cuando se repita el ciclo, la variable menu Entero vuelve a cero
			menuEnt <- 0;
			// Salida de Datos: Menu de ordenamiento
			Escribir "";
			Escribir "----- Ordenamiento -----";
			Escribir "1. Ascendente";
			Escribir "2. Descendente";
			Escribir "";
			// Entrada de Datos: Opción del menu
			Escribir Sin Saltar "Digite una opción del menu, de lo contrario cualquier tecla para salir";
			Leer menu;
			// Proceso6: Mientras el menu sea igual a 1 o 2 se repite
			Mientras (menu = '1' O menu = '2') Hacer
				// Proceso7: Se convierte el menu a número y se asigma al menu Entero
				menuEnt <- ConvertirANumero(menu);
				// Iniciar Variable: Cuando se repita el ciclo, la variable menu queda vacía
				menu <- '';
				// Proceso8: Selecciona una opción del menu
				Segun menuEnt Hacer
					1:
						// Salida de Datos: Muestra en pantalla los números en orden ascendente
						Escribir "";					
						Escribir num1, " - ", num2, " - ", num3;
					2:
						// Salida de Datos: Muestra en pantalla los números en orden descendente
						Escribir "";
						Escribir num3, " - ", num2, " - ", num1;
				FinSegun
			FinMientras
		Hasta Que No(menuEnt = 1 O menuEnt = 2)
		// Entrada de Datos: Volver al Menú Principal
		Escribir "";
		Escribir Sin Saltar "Para repetir digite < s >, para salir cualquier tecla:";
		Leer volver;
	Hasta Que (volver <> 's')
FinAlgoritmo