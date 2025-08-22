// creame ahora las clases async/await con programacion orientada a objetos
class Servicio {
  // Método que simula una operación asíncrona
  Future<String> obtenerDatos() async {
    await Future.delayed(Duration(seconds: 2)); // Simula una espera
    return 'Datos obtenidos del servicio';
  }
}

void main() async {
  Servicio servicio = Servicio();
  print('Solicitando datos...');
  String datos = await servicio.obtenerDatos();
  print(datos);
}
