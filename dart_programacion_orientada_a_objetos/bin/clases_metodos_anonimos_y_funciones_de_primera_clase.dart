// creame ahora las clases metodos anonimos y funciones de primera clase
class Calculadora {
  // Método que recibe una función anónima para realizar una operación
  int operar(int a, int b, int Function(int, int) operacion) {
    return operacion(a, b);
  }

  // Método que recibe una lista y una función anónima para filtrar elementos
  List<T> filtrar<T>(List<T> lista, bool Function(T) criterio) {
    return lista.where(criterio).toList();
  }
}

void main() {
  Calculadora calc = Calculadora();

  // Usando una función anónima para sumar
  int suma = calc.operar(5, 10, (x, y) => x + y);
  print('Suma: $suma');

  // Usando una función anónima para filtrar números pares
  List<int> numeros = [1, 2, 3, 4, 5, 6];
  List<int> pares = calc.filtrar(numeros, (num) => num.isEven);
  print('Números pares: $pares');
}
