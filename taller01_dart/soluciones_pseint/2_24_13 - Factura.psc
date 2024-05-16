Algoritmo arregloMatrizFactura
	// Declarar variables
	Definir volver, otroPrd Como Caracter;
	Definir encabezado, factura como Cadena;
	Definir i, j, k, cant Como Entero;
	Definir IVA, ivaParc, totalParc, subtotal, ivaAcm, total Como Real;
	// Dimensionar arreglos
	Dimension encabezado[8], factura[20,8];
	// Proceso1: Se repite el menú si se selecciona 's'
	Repetir
		Limpiar Pantalla;		
		// Objetivo del Algoritmo
		Escribir Sin Saltar "Diseñe un algoritmo que solicite por teclado el nombre de un artículo, su valor de unidad, ";
		Escribir Sin Saltar "cantidad a llevar, y si es o no de la canasta familiar, como resultado debe mostrar el ";
		Escribir "total del valor de los productos a llevar y si no son de la canasta familiar se le suma el IVA 19%.";
		// Iniciar variables y arreglos
		volver <- '';
		otroPrd <- '';
		i <- 0;
		cant <- 0;
		IVA <- 0.19;
		ivaAcm <- 0.0;
		total <- 0.0;
		encabezado[0] <- "Item        |";
		encabezado[1] <- "nombre      |";
		encabezado[2] <- "precio      |";
		encabezado[3] <- "cantidad    |";		
		encabezado[4] <- "canst (s/n) |";
		encabezado[5] <- "IvaProd     |";
		encabezado[6] <- "Parcial     |";
		encabezado[7] <- "SubTotal    |";
		// Proceso2: Se repite la solicitud de productos hasta que el usuario desee terminarlo (i = cant)
		Repetir
			// Iniciar variables
			ivaParc <- 0.0;
			totalParc <- 0.0;
			subtotal <- 0.0;
			// Proceso3: Se introducen los datos del producto
			Escribir "";			
			Para j <- 0 Hasta 7 Con Paso 1 Hacer
				// Proceso4: La primera columna (j = 0) de la factura contará la cantidad de productos
				factura[i,0] <- ConvertirATexto(i + 1);
				// Proceso5: Si el valor de está entre 1 y 4, entonces se piden los valores al usuario
				Si (j > 0 Y j < 5) Entonces
					// Entrada de Datos: Se solicita al usuario el nombre, precio, cantidad y canasta familiar
					Escribir Sin Saltar "[",i,",",j,"]. ", encabezado[j], ": ";
					Leer factura[i,j];				
				FinSi
				// Proceso6: Si la columna es el IVA del producto (j = 5), entonces se halla
				Si (j = 5) Entonces
					// Proceso7: Se halla el subtotal del producto y se va acumulando el IVA de la compra
					subtotal <- ConvertirANumero(factura[i,2]) * ConvertirANumero(factura[i,3]);
					// Proceso8: Si no es de la canasta familiar se saca el IVA y la canasta familiar cambia al 19%,
					//          Si no, el iva es cero y la canasta familiar 0%
					Si (factura[i,4] <> "s") Entonces
						ivaParc <- subtotal * IVA;
						factura[i,5] <- ConvertirATexto(ivaParc);						
						factura[i,4] <- "19 %";						
					SiNo
						factura[i,5] <- "0";
						factura[i,4] <- " 0 %";
					FinSi					
					ivaAcm <- ivaAcm + ConvertirANumero(factura[i,5]);
				FinSi
				// Proceso9: Si la columna es el Total Parcial, entonces se halla restándolo del subtotal y se va 
				//          acumulando el total de la compra
				Si (j = 6) Entonces
					totalParc <- subtotal - ivaParc;
					factura[i,6] <- ConvertirATexto(totalParc);
					total <- total + totalParc;
				FinSi
				// Proceso10: Si la columna es el Subtotal se almacena
				Si (j = 7) Entonces
					factura[i,7] <- ConvertirATexto(subtotal);
				FinSi
			FinPara
			// Proceso11: el valor de 'i' se incrementa y la cantidad se iguala a 'i'
			i <- i + 1;
			cant <- i;
			// Salida de Datos: Se muestra en pantalla los resultados del producto y el acumulado de la compra
			Escribir "      IVA Producto |: > ", ivaParc;
			Escribir "     Total Parcial |: > ", totalParc;
			Escribir " Subtotal Producto |: > ", subtotal;
			Escribir "";
			Escribir "         Total IVA |: > ", ivaAcm;
			Escribir "   SubTotal Compra |: > ", total;
			Escribir "     Total a Pagar |: > ", total + ivaAcm;			
			Escribir "";
			// Entrada de Datos: Se pide al usuario que cargue otro producto
			Escribir Sin Saltar "¿Desea agregar otro articulo? ( s / n ) ";
			Leer otroPrd;
			// Proceso12: Si el usuario quiere cargar otro producto, entonces la cantidad de incrementa en 1
			//           para que no sea igual a 'i' y salga del ciclo
			Si (otroPrd = "s") Entonces
				cant <- cant + 1;			
			FinSi
		Hasta Que (i = cant)
		// Salida de Datos: Se imprime el encabezado a través de un arreglo de una dimensión (vector)
		Escribir "";
		Escribir "-----------------------------------------------------------------------------------------------------------------------------------------------|";
		Para i <- 0 Hasta 7 Con Paso 1 Hacer
			Escribir Sin Saltar "     ", encabezado[i];
		FinPara
		Escribir "";
		Escribir "-----------------------------------------------------------------------------------------------------------------------------------------------|";
		// Salida de Datos: Se recorre el arreglo de dos dimensiones (matriz) para agregar espacios y que todas
		//                 las columnas queden del mismo tamaño (11 caracteres incluyendo espacios)
		Para i <- 0 Hasta cant - 1 Con Paso 1 Hacer			
			Para j <- 0 Hasta 7 Con Paso 1 Hacer
				Para k <- Longitud(factura[i,j]) Hasta 11 Con Paso 1 Hacer
					factura[i,j] <- Concatenar(factura[i,j]," ");
				FinPara
				factura[i,j] <- Concatenar(factura[i,j],"|");
			FinPara			
		FinPara
		// Salida de Datos: Se imprimen los productos a través de un arreglo en dos dimensiones (matriz)
		Para i <- 0 Hasta cant - 1 Con Paso 1 Hacer			
			Para j <- 0 Hasta 7 Con Paso 1 Hacer
				Escribir Sin Saltar "     ", factura[i,j];
			FinPara
			Escribir "";
		FinPara
		// Salida de Datos: Se imprime el total del iva, subtotal de la compra y total a pagar
		Escribir "-----------------------------------------------------------------------------------------------------------------------------------------------|";
		Escribir "";
		Escribir "                                                                                                                   Total IVA :     ", ivaAcm;
		Escribir "                                                                                                             SubTotal Compra :     ", total;
		Escribir "                                                                                                               Total a Pagar :     ", total + ivaAcm;
		Escribir "-----------------------------------------------------------------------------------------------------------------------------------------------|";
		// Entrada de Datos: Se pregunta al usuario si quiere ejecutar nuevamente el programa
		Escribir ""; 
		Escribir Sin Saltar "Para repetir digite < s >, para salir cualquier tecla:";
		leer volver;
	Hasta Que (volver <> 's')	
FinAlgoritmo
	