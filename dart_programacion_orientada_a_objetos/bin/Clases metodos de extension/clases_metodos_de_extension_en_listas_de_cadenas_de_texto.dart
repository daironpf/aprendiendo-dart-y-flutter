// Clases metodos de extension en listas de cadenas de texto
extension StringListAdvancedExtensions on List<String> {
  // Método de extensión para encontrar la cadena más larga en la lista
  String? cadenaMasLarga() {
    if (this.isEmpty) return null;
    return this.reduce((a, b) => a.length >= b.length ? a : b);
  }

  // Método de extensión para convertir todas las cadenas a mayúsculas
  List<String> aMayusculas() {
    return this.map((str) => str.toUpperCase()).toList();
  }
}

void main() {
  List<String> palabras = [
    'Dart',
    'es',
    'un',
    'lenguaje',
    'de',
    'programación',
  ];
  print('Cadena más larga: ${palabras.cadenaMasLarga()}');
  print('Cadenas en mayúsculas: ${palabras.aMayusculas()}');
}
