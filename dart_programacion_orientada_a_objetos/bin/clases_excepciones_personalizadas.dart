// creame ahora las clases excepciones personalizadas
class ExcepcionPersonalizada implements Exception {
  String mensaje;
  ExcepcionPersonalizada(this.mensaje);
  @override
  String toString() => 'ExcepcionPersonalizada: $mensaje';
}

class Calculadora {
  double dividir(double a, double b) {
    if (b == 0) {
      throw ExcepcionPersonalizada('No se puede dividir por cero.');
    }
    return a / b;
  }
}

void main() {
  Calculadora calculadora = Calculadora();
  try {
    double resultado = calculadora.dividir(10, 0);
    print('Resultado: $resultado');
  } catch (e) {
    print(e);
  }
}
