// Clases metodos de extension en listas de mapas
extension MapListExtensions<K, V> on List<Map<K, V>> {
  // Método de extensión para combinar una lista de mapas en un solo mapa
  Map<K, V> combinar() {
    Map<K, V> resultado = {};
    for (var mapa in this) {
      resultado.addAll(mapa);
    }
    return resultado;
  }

  // Método de extensión para obtener todas las claves únicas en la lista de mapas
  Set<K> clavesUnicas() {
    return this.expand((mapa) => mapa.keys).toSet();
  }
}

void main() {
  List<Map<String, int>> mapas = [
    {'a': 1, 'b': 2},
    {'b': 3, 'c': 4},
    {'d': 5},
  ];
  print('Mapa combinado: ${mapas.combinar()}');
  print('Claves únicas: ${mapas.clavesUnicas()}');
}
