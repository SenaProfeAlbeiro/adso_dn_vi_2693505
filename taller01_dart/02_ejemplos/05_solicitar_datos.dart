import 'dart:io';

void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

  // Declarar constantes y variables
  const CODIGO = "AR05";
  final DOCUMENTO = 1001053569;
  var nombre;
  var apellido;
  var sexo;
  var edad;
  var salario;
  var estatura;
  var transporte;

  // Entrada de Datos
  stdout.write('Digite su nombre: \t');
  nombre = stdin.readLineSync();
  stdout.write('Digite su apellido: \t');
  apellido = stdin.readLineSync();
  stdout.write('Digite su sexo m/f: \t');
  sexo = stdin.readLineSync();
  stdout.write('Digite su edad: \t');
  edad = stdin.readLineSync();
  stdout.write('Digite su salario: \t');
  salario = stdin.readLineSync();
  stdout.write('Digite su estatura: \t');
  estatura = stdin.readLineSync();
  stdout.write('Digite su transporte true/false: \t');
  transporte = stdin.readLineSync();
  print("\n" + ("-" * 50) + "\n");

  // Salida de datos
  print("Código:        $CODIGO");
  print("Documento:     $DOCUMENTO");
  print("Nombre:        $nombre");
  print("Apellido:      $apellido");
  print("Sexo:          $sexo");
  print("Edad:          $edad");
  print("Salario:       $salario");
  print("Estatura:      $estatura");
  print("Transporte:    $transporte");

  // Fin del algoritmo
  print("\n" + ("-" * 50) + "\n");
}
