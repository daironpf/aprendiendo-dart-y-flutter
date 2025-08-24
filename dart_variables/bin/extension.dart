// Extensions
// Sirven para agregar métodos a clases existentes (muy usado en Flutter para helpers).
extension StringX on String {
  String capitalizar() => this[0].toUpperCase() + substring(1);
}

void main() {
  print("hola".capitalizar()); // Hola
}
