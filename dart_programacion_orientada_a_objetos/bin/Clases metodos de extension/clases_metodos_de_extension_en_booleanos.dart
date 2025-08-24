// Clases metodos de extension en booleanos
extension BoolExtensions on bool {
  // Método de extensión para convertir un booleano a cadena "Sí" o "No"
  String aCadena() {
    return this ? 'Sí' : 'No';
  }

  // Método de extensión para negar el valor booleano
  bool negar() {
    return !this;
  }
}

void main() {
  bool valor1 = true;
  bool valor2 = false;
  print('$valor1 en cadena: ${valor1.aCadena()}');
  print('$valor2 en cadena: ${valor2.aCadena()}');
  print('Negación de $valor1: ${valor1.negar()}');
  print('Negación de $valor2: ${valor2.negar()}');
}
