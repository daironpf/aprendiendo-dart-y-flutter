// Clases metodos async generators
class ContadorAsyncGenerator {
  final int max;

  ContadorAsyncGenerator(this.max);

  Stream<int> contador() async* {
    for (int i = 1; i <= max; i++) {
      await Future.delayed(Duration(seconds: 1)); // Simula una espera
      yield i; // Genera el siguiente valor en la secuencia
    }
  }
}

void main() async {
  final contador = ContadorAsyncGenerator(5);
  print('Contador iniciado:');
  await for (var numero in contador.contador()) {
    print('Número: $numero');
  }
  print('Contador finalizado.');
}
