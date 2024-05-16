Algoritmo estructuraRepetitivaRepetirParquesVector
	// Declarar variables
	Definir volver como Caracter;
	Definir lanzamiento como Cadena;
	Definir i, j, dados Como Entero;
	// Dimensionar arreglos
	Dimension dados[2], lanzamiento[3];
	// Proceso1: Se repite el menú si se selecciona 's'
	Repetir
		Limpiar Pantalla;
		// Objetivo del Algoritmo
		Escribir Sin Saltar "Diseñe un algoritmo que muestre dos números aleatorios del 1 al 6 (como los dados), ";
		Escribir Sin Saltar "de sacar dos números pares (1,1 o 2,2 o 3,3 o 4,4 o 5,5 o 6,6) saldrá un mensaje en ";
		Escribir Sin Saltar "pantalla que dice lanzar de nuevo, de lazar en dos ocasiones más y de nuevo sean pares, ";
		Escribir Sin Saltar "saldrá un mensaje en pantalla ¡Saca una ficha!, de no sacar pares saldrá en pantalla ";
		Escribir "un mensaje ¡Lanza de nuevo! (como en el juego parques).";
		// Iniciar variables y/o arreglos
		volver <- '';		
		lanzamiento[0] <- "Primer";
		lanzamiento[1] <- "Segundo";
		lanzamiento[2] <- "Tercer";
		// Proceso2: Se repite mientras el contador no sea 3
		Para i <- 0 Hasta 2 Con Paso 1 Hacer
			// Salida de Datos: Se muestra en pantalla el lanzamiento a través de un arreglo arreglo
			Escribir "";
			Escribir lanzamiento[i], " lanzamiento. Presione ENTER";
			// Entrada de Datos: Enter
			Esperar Tecla;
			Escribir "";
			// Proceso3: Se inicia el arreglo dados con números de 1 a 6 aleatorios
			Para j <- 0 Hasta 1 Con Paso 1 Hacer
				// Proceso4: Se asigna un valor aleatorio a los índices 0 y 1
				dados[j]<- Aleatorio(1,6);
			FinPara
			// Proceso5: Si los números de los dados son iguales, lanza de nuevo.
			//          Si no, muestra el valor de cada dado.
			Si (dados[0] = dados[1]) Entonces
				// Salida de datos
				Escribir "Ha sacado par de ", dados[0];
				// Proceso6: Si el índice es igual a 2, entonces saca una ficha
				Si (i = 2) Entonces
					// Salida de datos
					Escribir "";
					Escribir "¡Saca una Ficha!";
					i <- 3;
				FinSi
			SiNo
				// Salida de datos
				Escribir "Ha sacado ", dados[0], " y ", dados[1];
				i <- 3;
			FinSi
		FinPara
		// Entrada de Datos: Volver al Menú
		Escribir "";		
		Escribir Sin Saltar "Para repetir digite < s >, para salir cualquier tecla:";
		leer volver;
	Hasta Que (volver <> 's')
FinAlgoritmo
