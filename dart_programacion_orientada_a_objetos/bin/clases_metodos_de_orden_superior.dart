// Clases con metodos de orden superior
class Calculadora {
  // Función de orden superior que toma otra función como argumento
  void ejecutarOperacion(int a, int b, int Function(int, int) operacion) {
    int resultado = operacion(a, b);
    print('Resultado de la operación: $resultado');
  }

  // Funciones que se pueden pasar como argumentos
  int sumar(int x, int y) => x + y;
  int multiplicar(int x, int y) => x * y;
}

void main() {
  Calculadora calc = Calculadora();
  // Usar la función de orden superior con diferentes operaciones
  calc.ejecutarOperacion(4, 5, calc.sumar);
  calc.ejecutarOperacion(4, 5, calc.multiplicar);
}
