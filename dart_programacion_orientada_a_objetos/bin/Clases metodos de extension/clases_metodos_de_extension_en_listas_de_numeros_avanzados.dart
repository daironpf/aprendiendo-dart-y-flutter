// Clases metodos de extension en listas de numeros avanzados
extension NumListAdvancedExtensions on List<num> {
  // Método de extensión para encontrar el número máximo en la lista
  num? numeroMaximo() {
    if (isEmpty) return null;
    return reduce((a, b) => a >= b ? a : b);
  }

  // Método de extensión para encontrar el número mínimo en la lista
  num? numeroMinimo() {
    if (isEmpty) return null;
    return reduce((a, b) => a <= b ? a : b);
  }
}

void main() {
  List<num> numeros = [3, 1, 4, 1, 5, 9, 2, 6, 5];
  print('Número máximo: ${numeros.numeroMaximo()}');
  print('Número mínimo: ${numeros.numeroMinimo()}');
}
