// Clases metodos cascada
class PersonaCascada {
  String nombre;
  int edad;
  PersonaCascada(this.nombre, this.edad);
  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }

  void cumplirAnios() {
    edad++;
    print('$nombre ha cumplido $edad años.');
  }
}

void main() {
  PersonaCascada persona = PersonaCascada('Miguel', 29)
    ..saludar()
    ..cumplirAnios()
    ..saludar();
}
// Quiere decir con cascada ??
// el operador de cascada (..) permite llamar múltiples métodos o acceder a 
// múltiples propiedades de un objeto sin tener que repetir el nombre del objeto cada vez.
// en este ejemplo, se crea una instancia de la clase PersonaCascada y se
// utilizan los métodos saludar() y cumplirAnios() en una sola expresión
// utilizando el operador de cascada (..).
