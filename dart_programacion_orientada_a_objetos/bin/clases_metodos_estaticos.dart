// creame ahora las clases metodos estaticos
class Matematica {
  // Método estático para sumar dos números
  static int sumar(int a, int b) {
    return a + b;
  }

  // Método estático para restar dos números
  static int restar(int a, int b) {
    return a - b;
  }
}

void main() {
  int suma = Matematica.sumar(5, 3);
  int resta = Matematica.restar(10, 4);
  print('Suma: $suma');
  print('Resta: $resta');
}
