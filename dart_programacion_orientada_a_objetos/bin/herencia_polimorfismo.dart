// creame ahora la herencia
class Animal {
  // Atributo de la clase base
  String nombre;
  int edad;
  // Constructor de la clase base
  Animal(this.nombre, this.edad);
  // Método de la clase base
  void hacerSonido() {
    print('El animal hace un sonido.');
  }
}

// Clase derivada que hereda de Animal
class Perro extends Animal {
  // Atributo adicional de la clase derivada
  String raza;
  // Constructor de la clase derivada
  Perro(String nombre, int edad, this.raza) : super(nombre, edad);
  // Sobrescribir el método de la clase base
  @override
  void hacerSonido() {
    print('El perro ladra.');
  }
}

class Gato extends Animal {
  // Atributo adicional de la clase derivada
  String color;
  // Constructor de la clase derivada
  Gato(String nombre, int edad, this.color) : super(nombre, edad);
  // Sobrescribir el método de la clase base
  @override
  void hacerSonido() {
    print('El gato maúlla.');
  }
}

// creame ahora el polimorfismo
void mainPolimorfismo() {
  // Crear una lista de animales
  List<Animal> animales = [
    Perro('Rex', 5, 'Labrador'),
    Gato('Mittens', 3, 'Siames'),
  ];
  // Iterar sobre la lista y llamar al método hacerSonido
  for (var animal in animales) {
    animal.hacerSonido(); // Llama al método sobrescrito
  }
}

// Ejemplo de uso
void main() {
  mainPolimorfismo();
}
