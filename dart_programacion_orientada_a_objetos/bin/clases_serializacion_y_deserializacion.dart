// creame ahora las clases serializacion/deserializacion
import 'dart:convert';

class PersonaSer {
  String nombre;
  int edad;
  PersonaSer(this.nombre, this.edad);
  // Convertir un objeto Persona a un mapa (para JSON)
  Map<String, dynamic> toJson() {
    return {'nombre': nombre, 'edad': edad};
  }

  // Crear un objeto Persona a partir de un mapa (desde JSON)
  factory PersonaSer.fromJson(Map<String, dynamic> json) {
    return PersonaSer(json['nombre'], json['edad']);
  }
}

void main() {
  PersonaSer persona = PersonaSer('Laura', 22);
  // Serializar a JSON
  String jsonString = jsonEncode(persona.toJson());
  print('JSON: $jsonString');
  // Deserializar desde JSON
  Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  PersonaSer nuevaPersona = PersonaSer.fromJson(jsonMap);
  print('Nombre: ${nuevaPersona.nombre}, Edad: ${nuevaPersona.edad}');
}
