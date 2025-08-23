// creame ahora las clases reflexion
import 'dart:mirrors';
import 'dart:convert';

class PersonaRef {
  String nombre;
  int edad;
  PersonaRef(this.nombre, this.edad);
  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }
}

void main1() {
  PersonaRef persona = PersonaRef('Carlos', 28);
  InstanceMirror im = reflect(persona);
  ClassMirror cm = im.type;
  print('Clase: ${cm.simpleName}');
  cm.declarations.forEach((symbol, declaration) {
    print('Declaración: ${MirrorSystem.getName(symbol)}');
  });
  MethodMirror saludarMethod = cm.declarations[#saludar] as MethodMirror;
  im.invoke(saludarMethod.simpleName, []);
}

//explicame en que podría usar la reflexión en dart para una red social por ejemplo
//La reflexión en Dart puede ser útil en una red social para varias tareas, como:
//1. Serialización y deserialización: Puedes usar reflexión para convertir objetos de usuario, publicaciones o comentarios en formatos JSON o XML y viceversa, facilitando el almacenamiento y la transmisión de datos.
//2. Validación dinámica: Puedes validar campos de formularios de manera dinámica, verificando tipos y restricciones sin necesidad de escribir código específico para cada campo.
//3. Plugins y extensiones: Si tu red social permite plugins o extensiones, la reflexión puede ayudarte a cargar y ejecutar código de manera dinámica, permitiendo a los desarrolladores agregar nuevas funcionalidades sin modificar el núcleo de la aplicación.
//4. Inspección de objetos: Puedes inspeccionar objetos en tiempo de ejecución para depurar o analizar el estado de la aplicación, lo que puede ser útil para el desarrollo y mantenimiento.
//5. Automatización de pruebas: La reflexión puede facilitar la creación de pruebas automatizadas al permitir la generación dinámica de casos de prueba basados en las propiedades y métodos de las clases.
//6. Mapeo de bases de datos: Puedes usar reflexión para mapear automáticamente las propiedades de las clases a las columnas de una base de datos, simplificando la interacción con la base de datos.
//En resumen, la reflexión puede mejorar la flexibilidad y la capacidad de adaptación de tu red social, permitiéndote manejar objetos y datos de manera más dinámica y eficiente.//dame un ejemplo de como usar la reflexión para serializar y deserializar un objeto en dart

class Usuario {
  String nombre;
  int edad;

  void Usuario(this.nombre, this.edad);
}

Map<String, dynamic> serialize(Object obj) {
  InstanceMirror im = reflect(obj);
  ClassMirror cm = im.type;
  Map<String, dynamic> result = {};
  cm.declarations.forEach((symbol, declaration) {
    if (declaration is VariableMirror && !declaration.isStatic) {
      String key = MirrorSystem.getName(symbol);
      var value = im.getField(symbol).reflectee;
      result[key] = value;
    }
  });
  return result;
}

Object deserialize(Map<String, dynamic> map, Type type) {
  ClassMirror cm = reflectClass(type);
  var instance = cm.newInstance(Symbol(''), []);
  map.forEach((key, value) {
    var symbol = Symbol(key);
    if (cm.declarations.containsKey(symbol)) {
      instance.setField(symbol, value);
    }
  });
  return instance.reflectee;
}

void main() {
  Usuario usuario = Usuario('Ana', 25);
  Map<String, dynamic> serialized = serialize(usuario);
  String jsonString = jsonEncode(serialized);
  print('Serialized JSON: $jsonString');
  Map<String, dynamic> deserializedMap = jsonDecode(jsonString);
  Usuario deserializedUsuario =
      deserialize(deserializedMap, Usuario) as Usuario;
  print(
    'Deserialized Usuario: ${deserializedUsuario.nombre}, ${deserializedUsuario.edad}',
  );
}
