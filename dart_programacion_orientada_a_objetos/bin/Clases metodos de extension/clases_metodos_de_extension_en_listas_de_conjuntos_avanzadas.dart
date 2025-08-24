// Clases metodos de extension en listas de conjuntos avanzadas
extension SetListAdvancedExtensions<T> on List<Set<T>> {
  // Método de extensión para verificar si algún conjunto está vacío
  bool algunConjuntoVacio() {
    return any((conjunto) => conjunto.isEmpty);
  }

  // Método de extensión para obtener la diferencia simétrica de todos los conjuntos en la lista
  Set<T> diferenciaSimetrica() {
    if (isEmpty) return {};
    Set<T> resultado = first;
    for (var conjunto in skip(1)) {
      resultado = resultado
          .difference(conjunto)
          .union(conjunto.difference(resultado));
    }
    return resultado;
  }
}

void main() {
  List<Set<int>> conjuntos = [
    {1, 2, 3},
    {3, 4, 5},
    {5, 6, 7},
  ];
  print('¿Algún conjunto está vacío? ${conjuntos.algunConjuntoVacio()}');
  print(
    'Diferencia simétrica de conjuntos: ${conjuntos.diferenciaSimetrica()}',
  );
}
