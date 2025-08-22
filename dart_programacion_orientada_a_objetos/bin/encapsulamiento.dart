// creame ahora el Encapsulamiento y getters/setters
class CuentaBancaria {
  // Atributos privados
  String _numeroCuenta;
  double _saldo;

  // Constructor
  CuentaBancaria(this._numeroCuenta, this._saldo);

  // Getter para el número de cuenta
  String get numeroCuenta => _numeroCuenta;

  // Getter para el saldo
  double get saldo => _saldo;

  // Método para depositar dinero
  void depositar(double cantidad) {
    if (cantidad > 0) {
      _saldo += cantidad;
      print('Depósito de \$${cantidad} realizado. Nuevo saldo: \$${_saldo}');
    } else {
      print('Cantidad inválida para depósito.');
    }
  }

  // Método para retirar dinero
  void retirar(double cantidad) {
    if (cantidad > 0 && cantidad <= _saldo) {
      _saldo -= cantidad;
      print('Retiro de \$${cantidad} realizado. Nuevo saldo: \$${_saldo}');
    } else {
      print('Cantidad inválida para retiro o saldo insuficiente.');
    }
  }
}

// Ejemplo de uso
void main() {
  var cuenta = CuentaBancaria('123456789', 1000.0);

  print('Número de cuenta: ${cuenta.numeroCuenta}');
  print('Saldo inicial: \$${cuenta.saldo}');

  cuenta.depositar(500.0);
  cuenta.retirar(200.0);
  cuenta.retirar(2000.0); // Intento de retiro con saldo insuficiente
}
// --- IGNORE ---
// Creado por ChatGPT
// Fecha: 2024-10-05
// Proyecto: aprendiendo-dart
// Archivo: bin/encapsulamiento.dart
// Descripción: Ejemplo de encapsulamiento y uso de getters/setters en Dart
// --- IGNORE ---