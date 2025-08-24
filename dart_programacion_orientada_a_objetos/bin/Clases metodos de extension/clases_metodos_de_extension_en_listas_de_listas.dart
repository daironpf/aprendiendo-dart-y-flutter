// Clases metodos de extension en listas de listas
extension ListOfListExtensions<T> on List<List<T>> {
  // Método de extensión para aplanar una lista de listas en una sola lista
  List<T> aplanar() {
    return expand((sublist) => sublist).toList();
  }

  // Método de extensión para obtener la longitud total de todos los sublistas
  int longitudTotal() {
    return fold(0, (total, sublist) => total + sublist.length);
  }
}

void main() {
  List<List<int>> listas = [
    [1, 2, 3],
    [4, 5],
    [6, 7, 8, 9],
  ];
  print('Lista aplanada: ${listas.aplanar()}');
  print('Longitud total: ${listas.longitudTotal()}');
}
