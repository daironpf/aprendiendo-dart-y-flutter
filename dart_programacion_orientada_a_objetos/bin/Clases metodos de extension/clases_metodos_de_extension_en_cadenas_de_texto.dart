// creame ahora las clases metodos de extension en cadenas de texto
extension StringExtensionsAdvanced on String {
  // Método de extensión para verificar si una cadena es un palíndromo
  bool esPalindromo() {
    String textoLimpio = replaceAll(RegExp(r'\W'), '').toLowerCase();
    String textoInvertido = textoLimpio.split('').reversed.join();
    return textoLimpio == textoInvertido;
  }

  // Método de extensión para contar la cantidad de vocales en una cadena
  int contarVocales() {
    return toLowerCase()
        .split('')
        .where((char) => 'aeiou'.contains(char))
        .length;
  }
}

void main() {
  String texto1 = 'Anita lava la tina';
  String texto2 = 'Hola Mundo';
  print('"$texto1" es palíndromo? ${texto1.esPalindromo()}');
  print('"$texto2" es palíndromo? ${texto2.esPalindromo()}');
  print('Número de vocales en "$texto2": ${texto2.contarVocales()}');
}
