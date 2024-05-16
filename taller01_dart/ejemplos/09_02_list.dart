void main() {
  // Esta lista puede contener cualquier tipo de elemento.
  var lista1 = [];
  lista1.add(true);
  lista1.add(5);
  lista1.add("Hola");
  print(lista1);

  List lista2 = [32, "a", 21, true, 5, 1.4];
  print(lista2);

  dynamic lista3 = [];
  lista3.add(10);
  lista3.add(5);
  lista3.add(3);  
  print(lista3);

  // Lista ordenada Ascendente y Descendente en int
  List randomNumbers = [14, 51, 23, 45, 6, 3, 22, 1];
  randomNumbers.sort();
  print(randomNumbers);
  randomNumbers = randomNumbers.reversed.toList();
  print(randomNumbers);
}
