void main() {
  List<String> listaFrutas = [
    'manzana',
    'pera',
    'banana',
    'uva',
    'arándano',
    'sandía',
    'aguacate',
    'piña'
  ];

  List<String> listaFrutasFiltradas = [
    for (String fruta in listaFrutas)
      if (fruta.length > 5 && fruta.startsWith('a')) fruta
  ];

  // Imprimir la lista
  print('Frutas con más de 5 caracteres y que comienzan con vocal "a":');
  print(listaFrutasFiltradas);
}
