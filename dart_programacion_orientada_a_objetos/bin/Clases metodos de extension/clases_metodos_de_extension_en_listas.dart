// Clases metodos de extension en listas
extension ListExtensions<T> on List<T> {
  // Método de extensión para obtener el segundo elemento de la lista
  T? segundoElemento() {
    if (length >= 2) {
      return this[1];
    }
    return null; // Retorna null si no hay un segundo elemento
  }

  // Método de extensión para obtener una lista sin duplicados
  List<T> sinDuplicados() {
    return toSet().toList();
  }
}

void mainListas() {
  List<int> numeros = [1, 2, 3, 2, 4, 3, 5];
  print('Segundo elemento: ${numeros.segundoElemento()}');
  print('Lista sin duplicados: ${numeros.sinDuplicados()}');
}
