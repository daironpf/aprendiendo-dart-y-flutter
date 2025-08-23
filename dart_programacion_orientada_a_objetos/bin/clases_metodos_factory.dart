// Clases metodos factory
class Vehiculo {
  String tipo;
  Vehiculo._internal(this.tipo); // Constructor privado
  // Método factory para crear instancias de Vehiculo
  factory Vehiculo(String tipo) {
    if (tipo == 'coche') {
      return Vehiculo._internal('Coche');
    } else if (tipo == 'moto') {
      return Vehiculo._internal('Moto');
    } else {
      throw ArgumentError('Tipo de vehículo no soportado');
    }
  }
  void mostrarTipo() {
    print('Tipo de vehículo: $tipo');
  }
}

void main() {
  Vehiculo coche = Vehiculo('coche');
  Vehiculo moto = Vehiculo('moto');
  coche.mostrarTipo();
  moto.mostrarTipo();
}
//revisa el codigo y dimer si esta bien o mal en representa un buen uso de los metodos factory en dart
// El código está bien y representa un buen uso de los métodos factory en Dart. Aquí hay algunas razones por las que es un buen ejemplo:
// 1. **Encapsulamiento**: El constructor privado `Vehiculo._internal` asegura que las instancias de `Vehiculo` solo puedan ser creadas a través del método factory, lo que permite controlar la creación de objetos.
// 2. **Flexibilidad**: El método factory `Vehiculo` permite crear diferentes tipos de vehículos (coche y moto) basándose en el parámetro de entrada. Esto facilita la extensión futura si se desean agregar más tipos de vehículos.
// 3. **Manejo de errores**: El uso de `ArgumentError` para manejar tipos de vehículos no soportados es una buena práctica, ya que proporciona retroalimentación clara sobre el uso incorrecto del método factory.
// 4. **Simplicidad**: El código es sencillo y fácil de entender, lo que es importante para el mantenimiento y la colaboración en equipo.
// En resumen, este código utiliza correctamente los métodos factory para gestionar la creación de objetos de manera controlada y flexible.