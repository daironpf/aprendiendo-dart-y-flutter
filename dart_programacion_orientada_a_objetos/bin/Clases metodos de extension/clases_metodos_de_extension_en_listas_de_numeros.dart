// Clases metodos de extension en listas de numeros
extension NumListExtensions on List<num> {
  // Método de extensión para calcular la suma de todos los números en la lista
  num sumar() {
    return this.reduce((a, b) => a + b);
  }

  // Método de extensión para calcular el promedio de los números en la lista
  double promedio() {
    if (this.isEmpty) return 0;
    return this.sumar() / this.length;
  }
}

void main() {
  List<num> numeros = [1, 2, 3, 4, 5];
  print('Suma: ${numeros.sumar()}');
  print('Promedio: ${numeros.promedio()}');
}
