// Clases metodos de extension en listas de cadenas de texto avanzadas
extension StringListMoreExtensions on List<String> {
  // Método de extensión para encontrar todas las cadenas que son palíndromos
  List<String> encontrarPalindromos() {
    return this.where((str) {
      String textoLimpio = str.replaceAll(RegExp(r'\W'), '').toLowerCase();
      String textoInvertido = textoLimpio.split('').reversed.join();
      return textoLimpio == textoInvertido;
    }).toList();
  }

  // Método de extensión para ordenar las cadenas por longitud
  List<String> ordenarPorLongitud() {
    List<String> cadenasOrdenadas = List.from(this);
    cadenasOrdenadas.sort((a, b) => a.length.compareTo(b.length));
    return cadenasOrdenadas;
  }
}

void main() {
  List<String> palabras = [
    'radar',
    'Dart',
    'nivel',
    'está',
    'ana',
    'programación',
  ];
  print('Palíndromos encontrados: ${palabras.encontrarPalindromos()}');
  print('Cadenas ordenadas por longitud: ${palabras.ordenarPorLongitud()}');
}
