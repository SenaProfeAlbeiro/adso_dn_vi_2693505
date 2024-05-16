Algoritmo  arregloMatrizDatosPersonales
	// Declarar variables
	Definir volver Como Caracter;
	Definir vector, matriz como Cadena;
	Definir i, j, k Como Entero;
	// Dimensionar arreglos
	Dimension vector[5], matriz[5,5];	
	// Proceso 
	Repetir
		Limpiar Pantalla;
		// Objetivo del Algoritmo 
		Escribir Sin Saltar "Llene un vector de dimensión 5 con las palabras nombre, sexo, cumpleaños, ";
		Escribir Sin Saltar "estado civil y teléfono; y llene una matriz de 4 por 5 con los datos de ";
		Escribir "sus compañeros. Luego de llenar la matriz, la muestre en pantalla de forma organizada.";
		// Iniciar variables
		volver <- '';
		vector[0] <- "nombre      |";
		vector[1] <- "apellido    |";
		vector[2] <- "edad        |";
		vector[3] <- "estado      |";
		vector[4] <- "telefono    |";
		// Proceso 		
		Para i <- 0 Hasta 4 Con Paso 1 Hacer
			Escribir "";
			Para j <- 0 Hasta 4 Con Paso 1 Hacer
				Escribir Sin Saltar "[",i,",",j,"]. ", vector[j], ": ";
				Leer matriz[i,j];
				Para k <- Longitud(matriz[i,j]) Hasta 11 Con Paso 1 Hacer
					matriz[i,j] <- Concatenar(matriz[i,j]," ");
				FinPara
				matriz[i,j] <- Concatenar(matriz[i,j],"|");
			FinPara
		FinPara
		// Salida de Datos
		Escribir "";
		Escribir "-----------------------------------------------------------------------------------------|";
		Para i <- 0 Hasta 4 Con Paso 1 Hacer
			Escribir Sin Saltar "     ", vector[i];
		FinPara
		Escribir "";
		Escribir "-----------------------------------------------------------------------------------------|";
		Para i <- 0 Hasta 4 Con Paso 1 Hacer			
			Para j <- 0 Hasta 4 Con Paso 1 Hacer
				Escribir Sin Saltar "     ", matriz[i,j] ;
			FinPara
			Escribir "";
		FinPara
		Escribir "-----------------------------------------------------------------------------------------|";
		// Entrada de Datos
		Escribir "";
		Escribir "";
		Escribir Sin Saltar "Digite < s > para repetir o cualquier tecla para salir";
		Leer volver;
	Hasta Que (volver <> 's')
FinAlgoritmo