// Clases metodos de extension en listas de cadenas
extension StringListExtensions on List<String> {
  // Método de extensión para concatenar todas las cadenas en la lista
  String concatenar(String separador) {
    return join(separador);
  }

  // Método de extensión para filtrar cadenas que contienen una subcadena específica
  List<String> filtrarPorSubcadena(String subcadena) {
    return where((str) => str.contains(subcadena)).toList();
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
  print('Concatenado: ${palabras.concatenar(' ')}');
  print('Filtrado por "un": ${palabras.filtrarPorSubcadena('un')}');
}
