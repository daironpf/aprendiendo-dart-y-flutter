// creame ahora las clases singleton
class Singleton {
  // Instancia privada y estática
  static final Singleton _instancia = Singleton._internal();
  // Constructor privado
  Singleton._internal();
  // Método factory para acceder a la instancia única
  factory Singleton() {
    return _instancia;
  }
  // Método de ejemplo
  void mostrarMensaje() {
    print('Hola, soy una instancia singleton!');
  }
}

void main() {
  Singleton singleton1 = Singleton();
  Singleton singleton2 = Singleton();
  singleton1.mostrarMensaje();
  // Verificar que ambas referencias apuntan a la misma instancia
  print(identical(singleton1, singleton2)); // true
}
