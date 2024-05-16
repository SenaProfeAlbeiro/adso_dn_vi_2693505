Algoritmo estructuraRepetitivaRepetirTipoTriangulo
	// Declarar variables
	Definir volver como Caracter;
	Definir angA, angB, angC, ladoA, ladoB, ladoC, sumaAng como Real;
	Definir menu Como Entero;
	// Proceso1: Se repite el men� si se selecciona 's'
	Repetir
		Limpiar Pantalla;		
		// Objetivo del Algoritmo
		Escribir Sin Saltar "Dise�e un algoritmo que encuentre el tipo de tri�ngulo que se tiene, mostrando un men� que pida si se ";
		Escribir Sin Saltar "ingresaran �ngulos o lados y se d� la opci�n para escoger uno de los dos. Si se selecciona por �ngulos ";
		Escribir Sin Saltar "la suma de los 3 �ngulos debe ser 180� y si se selecciona por lados, la suma de los dos lados m�s ";
		Escribir Sin Saltar "cortos debe ser mayor a la longitud del lado m�s largo, para que sean un tri�ngulo. Y mostrar en ";
		Escribir Sin Saltar "pantalla su tri�ngulo es: equil�tero, is�sceles o escaleno; rect�ngulo, acut�ngulo u obtus�ngulo). ";
		Escribir "Recuerde que no existen lados ni �ngulos menores o iguales a cero.";
		// Iniciar variables		
		volver <- 's';
		menu <- 0;
		angA <- 0.0;
		angB <- 0.0;
		angC <- 0.0;
		ladoA <- 0.0;
		ladoB <- 0.0;
		ladoC <- 0.0;
		// Entrada de Datos: Muestra el Men� en pantalla
		Escribir "";
		Escribir "---------- MENU ----------";
		Escribir "1. �ngulos";		
		Escribir "2. Lados";
		Escribir Sin Saltar "Seleccione una opci�n del men�: ";
		Leer menu;
		// Proceso2: Si la opci�n men� existe, va hasta el tipo de tri�ngulo.
		//           Si no existe, muestra en pantalla un mensaje de error.
		Segun menu Hacer
			1:
				// Entrada de Datos
				Escribir "";
				Escribir "-------------- Tri�ngulo x �ngulos ------------------";
				// Proceso3: Se repiten las opciones hasta que la los �ngulos sean mayores a 0
				Repetir
					// Salida de Datos
					Escribir "";
					Escribir "Recuerde que los �ngulos deben ser mayores a 0";
					Escribir "";
					// Entrada de Datos
					Escribir Sin Saltar "Digite el �ngulo A: ";
					Leer angA;
					Escribir Sin Saltar "Digite el �ngulo B: ";
					Leer angB;
				Hasta Que (angA > 0 Y angB > 0)
				// Proceso4: Se asigna el �ngulo C
				angC <- 180 - (angA + angB);
				// Proceso5: Se valida si el �ngulo c es mayor a 0.
				//           Si no, Muestra un mensaje de error.			
				Si (angC > 0) Entonces	
					// Proceso6: Tri�ngulo Rect�ngulo
					Si (angA == 90 O angB == 90 O angC == 90) Entonces
						Escribir "Es un tri�ngulo: RECT�NGULO";
					FinSi
					// Proceso7: Tri�ngulo Obtus�ngulo
					Si (angA > 90 O angB > 90 O angC > 90) Entonces
						Escribir "Es un tri�ngulo: OBTUS�NGULO";
					FinSi
					// Proceso8: Tri�ngulo Acut�ngulo
					Si (angA < 90 Y angB < 90 Y angC < 90) Entonces
						Escribir "Es un tri�ngulo: ACUT�NGULO";
					FinSi					
				SiNo
					Escribir "�ngulos Incorrectos";
				FinSi			
			2:
				// Entrada de Datos
				Escribir "";
				Escribir "-------------- Tri�ngulo x Lados ------------------";
				// Proceso9: Se repiten las opciones hasta que la los lados sean mayores a 0
				Repetir
					// Salida de Datos
					Escribir "";
					Escribir "Recuerde que los lados deben ser mayores a 0";
					// Entrada de Datos
					Escribir Sin Saltar "Digite el lado A: ";
					Leer ladoA;
					Escribir Sin Saltar "Digite el lado B: ";
					Leer ladoB;
					Escribir Sin Saltar "Digite el lado C: ";
					Leer ladoC;
				Hasta Que (ladoA > 0 Y ladoB > 0 Y ladoC > 0)
				// Proceso10: Se valida si la suma de los lados m�s cortos es mayor al lado m�s largo
				//            Si no, muestra un mensaje de error
				Si (ladoA < ladoB + ladoC Y ladoB < ladoA + ladoC Y ladoC < ladoA + ladoB) Entonces
					// Proceso11: Si dos lados son iguales, puede ser Is�sceles o Equilatero
					//            Si no, es Escaleno
					Si (ladoA = ladoB O ladoB = ladoC O ladoC = ladoA) Entonces
						// Proceso12: Si los tres lados son iguales es Equilatero
						//            si no, es Is�sceles.
						Si (ladoA = ladoB Y ladoB = ladoC) Entonces						
							Escribir "Es un tri�ngulo: EQUILATERO";
						SiNo
							Escribir "Es un tri�ngulo: IS�SCELES";
						FinSi
					SiNo
						Escribir "Es un tri�ngulo: ESCALENO";
					FinSi					
				SiNo
					Escribir "Lados Incorrectos";
				FinSi
			De Otro Modo:
				Escribir "La opci�n del men� no existe";
		FinSegun
		// Entrada de Datos: Volver al Men�
		Escribir "";		
		Escribir Sin Saltar "Para repetir digite < s >, para salir cualquier tecla:";
		leer volver;
	Hasta Que (volver <> 's');
FinAlgoritmo
