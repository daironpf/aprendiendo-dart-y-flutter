// creame ahora las clases metodos de extension en mapas
extension MapExtensions<K, V> on Map<K, V> {
  // Método de extensión para obtener las claves como una lista
  List<K> clavesComoLista() {
    return keys.toList();
  }

  // Método de extensión para obtener los valores como una lista
  List<V> valoresComoLista() {
    return values.toList();
  }
}

void main() {
  Map<String, int> edades = {'Alice': 30, 'Bob': 25, 'Charlie': 35};
  print('Claves: ${edades.clavesComoLista()}');
  print('Valores: ${edades.valoresComoLista()}');
}
