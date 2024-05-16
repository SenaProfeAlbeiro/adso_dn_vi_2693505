Algoritmo estructurasParImpar
	// Declarar variables
	Definir volver, menu Como Caracter;
	Definir menuEnt, num1, num2, aux, i Como Entero;
	// Proceso1: Se repite el men� si se selecciona 's'
	Repetir
		Limpiar Pantalla;
		// Objetivo del Algoritmo
		Escribir Sin Saltar "Dise�e un programa que solicite 2 n�meros por teclado, luego indique al usuario si desea la serie ";
		Escribir sin saltar "par o impar, despu�s muestre en pantalla la serie par o impar seg�n la elecci�n desde el n�mero ";
		Escribir "menor que se ingres� al inicio hasta el n�mero mayor.";
		// Iniciar Variables
		menu <- '';		
		num1 <- 0;
		num2 <- 0;		
		// Entrada de Datos: Se solicitan los n�meros
		Escribir "";
		Escribir Sin Saltar "Digite el primer n�mero";
		Leer num1;		
		Escribir Sin Saltar "Digite el segundo n�mero";
		Leer num2;
		// Proceso2: Mientras el num1 y num2 sean iguales se solicita el num2
		Mientras (num1 = num2) Hacer
			Escribir "";
			Escribir "Digite nuevamente el segundo n�mero, ya que no puede ser igual al primero";
			Leer num2;
		FinMientras
		// Proceso3: Si num1 es mayor o igual a num2, se cambian de posici�n
		Si (num1 > num2) Entonces
			aux <- num2;
			num2 <- num1;
			num1 <- aux;		
		FinSi		
		// Proceso4: Se repite el Men� hasta que el men� sea diferente al n�mero 1 y 2
		Repetir
			// Iniciar Variable: Cuando se repita el ciclo, la variable menu Entero vuelve a cero
			menuEnt <- 0;
			// Entrada de Datos: Se solicita una opci�n del men�
			Escribir "";
			Escribir "----- Series -----";
			Escribir "1. Impar";
			Escribir "2. Par";
			Escribir "";
			Escribir Sin Saltar "Digite una opci�n del menu, de lo contrario cualquier otra tecla para salir";
			Leer menu;
			// Proceso5: Mientras el menu sea igual a 1 o 2 se repite
			Mientras (menu = '1' O menu = '2') Hacer
				// Proceso6: Se convierte el menu a n�mero y se asigma al menu Entero
				menuEnt <- ConvertirANumero(menu);
				// Iniciar Variable: Cuando se repita el ciclo, la variable menu queda vac�a
				menu <- '';
				// Proceso7: Selecciona una opci�n del menu Entero
				Segun menuEnt Hacer
					1:
						// Salida de Datos
						Escribir "";
						Escribir "Serie Impar";
						// Proceso8: Repetir desde el num1 al num2
						Para i <- num1 Hasta num2 Con Paso 1 Hacer						
							// Proceso9: Si el residuo es diferente de 0, entonces es impar
							Si i MOD 2 <> 0 Entonces
								// Salida de Datos: Muestra en pantalla el n�mero impar
								Escribir Sin Saltar " - ", i;						
							FinSi						
						FinPara
						Escribir "";					
					2:
						// Salida de Datos
						Escribir "";
						Escribir "Serie Par";
						// Proceso8: Repetir desde el num1 al num2
						Para i <- num1 Hasta num2 Con Paso 1 Hacer						
							// Proceso10: Si el residuo es igual a 0, entonces es par
							Si i MOD 2 == 0 Entonces
								// Salida de Datos: Muestra en pantalla el n�mero par
								Escribir Sin Saltar " - ", i;						
							FinSi						
						FinPara
						Escribir "";					
				FinSegun
			FinMientras
		Hasta Que No(menuEnt = 1 O menuEnt = 2)
		// Entrada de Datos: Volver al Men� Principal		
		Escribir "";		
		Escribir Sin Saltar "Para repetir digite < s >, para salir cualquier tecla:";
		Leer volver;
	Hasta Que (volver <> 's')
FinAlgoritmo