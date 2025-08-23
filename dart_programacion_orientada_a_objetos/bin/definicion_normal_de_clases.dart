// Definir una clase llamada Persona
class Persona {
  // Atributos de la clase
  final String nombre;
  final int edad;

  // Constructor de la clase
  Persona(this.nombre, this.edad);

  // Método de la clase
  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }
}

void main() {
  // Crear una instancia de la clase Persona
  Persona persona1 = Persona('Juan', 25);
  Persona persona2 = Persona('Ana', 30);

  // Acceder a los atributos y métodos de la clase
  print('Nombre: ${persona1.nombre}, Edad: ${persona1.edad}');
  persona1.saludar();

  print('Nombre: ${persona2.nombre}, Edad: ${persona2.edad}');
  persona2.saludar();
}
