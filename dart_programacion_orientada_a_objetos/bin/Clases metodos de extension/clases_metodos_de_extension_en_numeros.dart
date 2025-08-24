// Clases metodos de extension en numeros
extension NumExtensions on num {
  // Método de extensión para verificar si un número es par
  bool esPar() {
    return this % 2 == 0;
  }

  // Método de extensión para calcular el factorial de un número
  int factorial() {
    if (this is int && this >= 0) {
      int resultado = 1;
      for (int i = 1; i <= this; i++) {
        resultado *= i;
      }
      return resultado;
    } else {
      throw ArgumentError(
        'El factorial solo está definido para enteros no negativos.',
      );
    }
  }
}

void main() {
  int numero1 = 4;
  int numero2 = 5;
  print('$numero1 es par? ${numero1.esPar()}');
  print('$numero2 es par? ${numero2.esPar()}');
  print('Factorial de $numero1: ${numero1.factorial()}');
  print('Factorial de $numero2: ${numero2.factorial()}');
}
