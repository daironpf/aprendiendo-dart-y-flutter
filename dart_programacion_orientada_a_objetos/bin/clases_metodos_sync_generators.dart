// Clases metodos sync generators
class Contador {
  Iterable<int> contadorSync(int max) sync* {
    for (int i = 1; i <= max; i++) {
      yield i; // Genera el siguiente valor en la secuencia
    }
  }

  void iniciarContador(int max) {
    print('Contador síncrono iniciado:');
    for (var numero in contadorSync(max)) {
      print('Número: $numero');
    }
    print('Contador síncrono finalizado.');
  }
}

void main() {
  Contador contador = Contador();
  contador.iniciarContador(5);
}
