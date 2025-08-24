// Clases metodos de extension en listas de listas avanzadas
extension ListOfListAdvancedExtensions<T> on List<List<T>> {
  // Método de extensión para transponer una lista de listas (matriz)
  List<List<T>> transponer() {
    if (this.isEmpty) return [];
    int filas = this.length;
    int columnas = this[0].length;
    List<List<T>> transpuesta = List.generate(
      columnas,
      (_) => List.filled(filas, this[0][0]),
    );
    for (int i = 0; i < filas; i++) {
      for (int j = 0; j < columnas; j++) {
        transpuesta[j][i] = this[i][j];
      }
    }
    return transpuesta;
  }

  // Método de extensión para obtener la suma de cada sublista
  List<num> sumaDeSublistas() {
    return this
        .map((sublist) => sublist.whereType<num>().fold(0, (a, b) => a + b))
        .toList();
  }
}

void main() {
  List<List<int>> matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  print('Matriz transpuesta: ${matriz.transponer()}');
  print('Suma de sublistas: ${matriz.sumaDeSublistas()}');
}
