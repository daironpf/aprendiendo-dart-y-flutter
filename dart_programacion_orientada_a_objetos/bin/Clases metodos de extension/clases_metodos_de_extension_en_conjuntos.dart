// Clases metodos de extension en conjuntos
extension SetExtensions<T> on Set<T> {
  // Método de extensión para verificar si un conjunto es subconjunto de otro
  bool esSubconjuntoDe(Set<T> otro) {
    return every((element) => otro.contains(element));
  }

  // Método de extensión para obtener la intersección de dos conjuntos
  Set<T> interseccion(Set<T> otro) {
    return where((element) => otro.contains(element)).toSet();
  }
}

void main() {
  Set<int> conjuntoA = {1, 2, 3};
  Set<int> conjuntoB = {2, 3, 4, 5};
  print('¿A es subconjunto de B? ${conjuntoA.esSubconjuntoDe(conjuntoB)}');
  print('Intersección de A y B: ${conjuntoA.interseccion(conjuntoB)}');
}
