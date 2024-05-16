Algoritmo Taller2_Ejericio7
	
	//Declarar variables
	Definir volver Como Caracter;
	Definir num1, num2, cont, i, pares, impares, menu, aux Como Entero;	
	Definir band1, band2 como Logico;
	
	//Dimensionar el vector
	Dimension pares[1000000]; //Dimensionar el vector
	Dimension impares[1000000]; //Dimensionar el vector
	
	Repetir
		
		//Asignar valores
		menu <- 0;
		num1 <- 0;
		num2 <- 0;
		cont <- 0;
		aux <- 0;
		band1 <- Verdadero;
		band2 <- Verdadero;
		
		//Objetivo del algoritmo
		Escribir Sin Saltar "Dise�e un programa que solicite 2 n�meros por teclado, luego indique al usuario si desea la serie ";
		Escribir sin saltar "par o impar, despu�s muestre en pantalla la serie par o impar seg�n la elecci�n desde el n�mero ";
		Escribir "menor que se ingres� al inicio hasta el n�mero mayor.";
		
		//Ingreso de datos del primer n�mero
		Escribir "";
		Escribir Sin Saltar "Digite el primer n�mero";
		Leer num1;		
		
		//Proceso para repetir en caso que los n�meros sean iguales
		Repetir
			Escribir Sin Saltar "Digite el segundo n�mero";
			Leer num2;
			//Procesos para volver a solicitar el n�mero dos en caso que sea igual al primero
			Si num1 == num2 Entonces
				Escribir "";
				Escribir "Digite nuevamente el segundo n�mero, ya que no puede ser igual al primero";
				Escribir "";
			Sino
				//Proceso para cambiar los n�meros en caso que el primero sea mayor al segundo
				Si num1 > num2 Entonces
					aux <- num2;
					num2 <- num1;
					num1 <- aux;
				FinSi
			FinSi			
		Hasta Que (num1 <> num2)
		
		//Contar las posiciones del vector de acuerdo a los n�meros dados
		cont <- trunc(num2/2);
		
		//Almacenar los valores en los vectores pares e impares
		Para i<-0 Hasta cont Con Paso 1 Hacer
			band1 <- verdadero;
			band2 <- Verdadero;
			Repetir
				aux <- num1;
				Si aux%2 == 0 Entonces
					pares[i] <- num1;
					band1 <- Falso;
				Sino
					impares[i] <-num1;
					band2 <- Falso;
				FinSi
				num1 = num1 + 1;
			Hasta Que band1 == band2
		FinPara
		
		//Men� para seleccionar la serie par o impar
		Repetir
			Escribir "";
			Escribir "----- Series -----";
			Escribir "1. Impar";
			Escribir "2. Par";
			Escribir "";
			Escribir Sin Saltar "Digite una opci�n del menu, de lo contrario cualquier otra tecla para salir";
			Leer menu;
			
			Segun menu Hacer
				1:
					Escribir "";
					Escribir "Serie Impar";					
					Si num1%2 == 0 & num2%2 <> 0 | num1%2 <> 0 & num2%2 == 0 Entonces
						Para i<-0 Hasta cont-1 Con Paso 1 Hacer
							Escribir Sin Saltar " - ", impares[i];
						FinPara
						Escribir "";					
					Sino
						Si num1%2 == 0 & num2%2 == 0 Entonces
							Para i<-0 Hasta cont-2 Con Paso 1 Hacer
								Escribir Sin Saltar " - ", impares[i];
							FinPara
							Escribir "";					
						FinSi
						Si num1%2 <> 0 & num2%2 <> 0 Entonces
							Para i<-0 Hasta cont Con Paso 1 Hacer
								Escribir Sin Saltar " - ", impares[i];
							FinPara
							Escribir "";						
						FinSi
					FinSi				
				2:
					Escribir "";
					Escribir "Serie Par";					
					Para i<-0 Hasta cont-1 Con Paso 1 Hacer
						Escribir Sin Saltar " - ", pares[i];
					FinPara
					Escribir "";										
			FinSegun
		Hasta Que No(menu == 1 | menu == 2)
		
		//Repetir el Ejercicio		
		Escribir "";		
		Escribir Sin Saltar "Si desea volver al ejercicio digite (s), de lo contrario cualquier tecla ";
		Leer volver;
		Limpiar Pantalla;
		
	Hasta Que volver <> 's'
	
FinAlgoritmo
