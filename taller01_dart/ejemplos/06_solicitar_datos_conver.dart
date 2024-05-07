import 'dart:io';

void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

  // Declarar constantes y variables
  var num01;
  var num02;
  var res;

  // Entrada de Datos
  stdout.write('Digite el primer número: \t');
  num01 = stdin.readLineSync();
  stdout.write('Digite el segundo número: \t');
  num02 = stdin.readLineSync();

  // Proceso
  res = double.parse(num01) + double.parse(num02);

  // Salida de datos
  print(res);

  // Fin del algoritmo
  print("\n" + ("-" * 50) + "\n");
}
