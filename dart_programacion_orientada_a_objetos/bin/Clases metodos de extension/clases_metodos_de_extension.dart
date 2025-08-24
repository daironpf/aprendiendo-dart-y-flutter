// Clases de metodos de extension
extension StringExtensions on String {
  // Método de extensión para contar palabras en una cadena
  int contarPalabras() {
    return split(' ').length;
  }

  // Método de extensión para invertir una cadena
  String invertir() {
    return split('').reversed.join();
  }
}

void main() {
  String texto = 'Hola mundo desde Dart';
  print('Número de palabras: ${texto.contarPalabras()}');
  print('Texto invertido: ${texto.invertir()}');
}
