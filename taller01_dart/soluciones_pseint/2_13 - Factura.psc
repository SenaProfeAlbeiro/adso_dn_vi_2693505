Algoritmo estructuraRepetitivaRepetirFactura
	// Declarar variables
	Definir volver, canasta, mas como Caracter;
	Definir articulo como Cadena;
	Definir cantidad Como Entero;	
	Definir IVA Como Real;
	Definir precio, ivaPrd, ivaAcm, subtotal, totalParcial, acumIva, total Como Real;		
	// Proceso1: Se repite el menú si se selecciona 's'
	Repetir
		Limpiar Pantalla;		
		// Objetivo del Algoritmo
		Escribir Sin Saltar "Diseñe un algoritmo que solicite por teclado el nombre de un artículo, su valor de unidad, ";
		Escribir Sin Saltar "cantidad a llevar, y si es o no de la canasta familiar, como resultado debe mostrar el ";
		Escribir "total del valor de los productos a llevar y si no son de la canasta familiar se le suma el IVA 19%.";
		// Iniciar variables
		volver <- '';
		canasta <- '';
		articulo <- "";
		cantidad <- 0;
		IVA <- 0.19;		
		ivaAcm <- 0.0;
		precio <- 0.0;		
		total <- 0.0;
		// Proceso2: Se solicita el producto al seleccionar 's'
		Repetir
			// Proceso 3: Se reinicia iva del producto en 0
			ivaPrd <- 0.0;
			totalParcial <- 0.0;
			subtotal <- 0.0;
			// Entrada de Datos: Solicitar nombre, precio, cantidad y canasta familiar de un producto
			Escribir "";
			Escribir Sin Saltar "Nombre del Artículo: ";
			Leer articulo;
			Escribir Sin Saltar "             Precio: ";
			Leer precio;
			Escribir Sin Saltar "           Cantidad: ";
			Leer cantidad;
			Escribir Sin Saltar "      Canasta (s/n): ";
			Leer canasta;
			// Proceso4: Calcula el precio x la cantidad
			totalParcial <- precio * cantidad;
			// Proceso5: Si no es de la canasta familiar se calcula el iva
			Si (canasta <> 's') Entonces
				ivaPrd <- totalParcial * IVA;
			FinSi
			// Proceso6: Se calcula el total parcial restándole el iva
			totalParcial <- totalParcial - ivaPrd;
			// Proceso7: Se calcula el subtotal x producto
			subtotal <- totalParcial + ivaPrd;
			// Proceso8: Se acumula el total de los productos			
			total <- total + totalParcial;
			// Proceso9: Se acumula el iva de los productos			
			ivaAcm <- ivaAcm + ivaPrd;
			// Salida de Datos
			Escribir "      Total Parcial:   ", totalParcial;
			Escribir "                IVA:   ", ivaPrd;			
			Escribir "  Subtotal Producto:   ", subtotal;
			Escribir "";
			Escribir "    Subtotal Compra:   ", total;
			Escribir "      IVA Acumulado:   ", ivaAcm;
			// Entrada de Datos: Otro artículo
			Escribir "";
			Escribir Sin Saltar "Digite < s > para ingresar otro articulo, de lo contrario cualquier tecla: ";
			leer mas;
		Hasta Que (mas <> 's')		
		// Salida de Datos: Total compra e IVA acumulado
		Escribir "";
		Escribir "----------- GRACIAS POR SU COMPRA -----------------";
		Escribir "";
		Escribir "    Subtotal Compra:   ", total;
		Escribir "      IVA Acumulado:   ", ivaAcm;
		// Proceso10: Se calcula el total a pagar por la compra
		total <- total + ivaAcm;
		// Salida de Datos: Total a pagar por la compra
		Escribir "      Total a Pagar:   ", total;
		
		// Entrada de Datos: Volver al Menú
		Escribir "";
		Escribir Sin Saltar "Para repetir digite < s >, para salir cualquier tecla:";
		leer volver;
	Hasta Que (volver <> 's')
FinAlgoritmo
