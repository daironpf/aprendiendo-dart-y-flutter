// Clases metodos de extension en listas de mapas avanzadas
extension MapListAdvancedExtensions<K, V> on List<Map<K, V>> {
  // Método de extensión para filtrar mapas que contienen una clave específica
  List<Map<K, V>> filtrarPorClave(K clave) {
    return this.where((mapa) => mapa.containsKey(clave)).toList();
  }

  // Método de extensión para obtener una lista de todos los valores asociados a una clave específica
  List<V?> valoresPorClave(K clave) {
    return this.map((mapa) => mapa[clave]).toList();
  }
}

void main() {
  List<Map<String, int>> mapas = [
    {'a': 1, 'b': 2},
    {'b': 3, 'c': 4},
    {'d': 5},
  ];
  print('Mapas con clave "b": ${mapas.filtrarPorClave('b')}');
  print('Valores para clave "b": ${mapas.valoresPorClave('b')}');
}
