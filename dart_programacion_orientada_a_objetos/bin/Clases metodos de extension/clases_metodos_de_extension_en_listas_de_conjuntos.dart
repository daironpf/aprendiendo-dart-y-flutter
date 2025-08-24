// Clases metodos de extension en listas de conjuntos
extension SetListExtensions<T> on List<Set<T>> {
  // Método de extensión para obtener la unión de todos los conjuntos en la lista
  Set<T> union() {
    return this.expand((conjunto) => conjunto).toSet();
  }

  // Método de extensión para obtener la intersección de todos los conjuntos en la lista
  Set<T> interseccion() {
    if (this.isEmpty) return {};
    return this.reduce((a, b) => a.intersection(b));
  }
}

void main() {
  List<Set<int>> conjuntos = [
    {1, 2, 3},
    {2, 3, 4},
    {3, 4, 5},
  ];
  print('Unión de conjuntos: ${conjuntos.union()}');
  print('Intersección de conjuntos: ${conjuntos.interseccion()}');
}
