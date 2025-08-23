// creame ahora las clases anotaciones
class MiAnotacion {
  final String descripcion;
  const MiAnotacion(this.descripcion);
}

@MiAnotacion('Esta es una clase de ejemplo con anotación')
class ClaseConAnotacion {
  void mostrar() {
    print('Método de la clase con anotación');
  }
}

void main() {
  ClaseConAnotacion clase = ClaseConAnotacion();
  clase.mostrar();
}

//pero en este fichero no se usa la anotacion, solo se define y se aplica a una clase.
//la anotacion es solo informativa, no tiene funcionalidad en tiempo de ejecucion.
//para usar anotaciones en tiempo de ejecucion se necesita usar reflectable o similar.
//las anotaciones son utiles para metaprogramacion, documentacion, etc.
//esta es una anotacion personalizada, se puede crear cualquier anotacion con cualquier nombre.
//las anotaciones se definen como clases con el constructor const.
//se pueden aplicar a clases, metodos, campos, etc.
//en este caso se aplica a una clase.
//se pueden definir varias anotaciones en un mismo fichero.
//las anotaciones no afectan al rendimiento del codigo.

//dame un ejemplo de anotacion que sea funcional pensando en una red social
class RequiereAutenticacion {
  final String rol;
  const RequiereAutenticacion(this.rol);
}
@RequiereAutenticacion('admin')
class AdminPanel {
  void acceder() {
    print('Accediendo al panel de administrador');
  }
}
@RequiereAutenticacion('usuario')
class UserProfile {
  void verPerfil() {
    print('Viendo perfil de usuario');
  }
}
//estas anotaciones podrian ser usadas por un sistema de seguridad para verificar roles
//antes de permitir el acceso a ciertos metodos o clases. 
//pero para que esto funcione en tiempo de ejecucion se necesita un sistema de refleccion
//que no es nativo en Dart, se necesita usar paquetes externos como reflectable.
//este es un ejemplo basico de como se podrian usar anotaciones en una red social
//para controlar el acceso a diferentes partes de la aplicacion segun el rol del usuario. 
//pero recuerda que las anotaciones por si solas no hacen nada, es necesario un sistema
//que las interprete y actue en consecuencia.
//dame un ejemplo de anotacion que sea funcional pensando en una api rest
class Ruta {
  final String metodo;
  final String path;
  const Ruta(this.metodo, this.path);
}
@Ruta('GET', '/usuarios')
class ObtenerUsuarios {
  void ejecutar() {
    print('Obteniendo lista de usuarios');
  }
}
@Ruta('POST', '/usuarios')
class CrearUsuario {
  void ejecutar() {
    print('Creando un nuevo usuario');
  }
}
//estas anotaciones podrian ser usadas por un framework de routing
//para mapear las clases a las rutas correspondientes en una API REST.
//pero al igual que antes, se necesita un sistema de refleccion
//para que esto funcione en tiempo de ejecucion.
//las anotaciones son una herramienta poderosa para metaprogramacion
//pero requieren de un sistema que las interprete para ser realmente utiles.
//este es un ejemplo basico de como se podrian usar anotaciones en una API REST
//para definir las rutas y metodos asociados a diferentes clases.
//pero recuerda que las anotaciones por si solas no hacen nada, es necesario un sistema
//que las interprete y actue en consecuencia.
//dame un ejemplo de anotacion que sea funcional pensando en un sistema de validacion
class Valida {
  final String regla;
  const Valida(this.regla);
} 
class Usuario {
  @Valida('no vacio')
  String nombre;

  @Valida('email')
  String email;

  Usuario(this.nombre, this.email);
}
//estas anotaciones podrian ser usadas por un sistema de validacion
//para verificar que los campos cumplen con las reglas definidas antes de guardar
//o procesar los datos.
//pero al igual que antes, se necesita un sistema de refleccion
//para que esto funcione en tiempo de ejecucion.
//las anotaciones son una herramienta poderosa para metaprogramacion  
//pero requieren de un sistema que las interprete para ser realmente utiles.

//termina el ejemplo con el sistema de refleccion
//este es un ejemplo basico de como se podrian usar anotaciones en un sistema de validacion
//para definir las reglas de validacion asociadas a diferentes campos de una clase.
//pero recuerda que las anotaciones por si solas no hacen nada, es necesario un sistema
//que las interprete y actue en consecuencia.
//dame un ejemplo de anotacion que sea funcional pensando en un sistema de logging
class Log {
  final String nivel;
  const Log(this.nivel);
}
class Servicio {
  @Log('info')
  void iniciar() {
    print('Servicio iniciado');
  }

  @Log('debug')
  void procesar() {
    print('Procesando datos');
  }
}

  @Log('error')
  void manejarError() {
    print('Manejando error');
  }
}
//estas anotaciones podrian ser usadas por un sistema de logging
//para registrar las acciones realizadas en los metodos con el nivel de log definido.
//pero al igual que antes, se necesita un sistema de refleccion
//para que esto funcione en tiempo de ejecucion.
//las anotaciones son una herramienta poderosa para metaprogramacion
//pero requieren de un sistema que las interprete para ser realmente utiles.
//este es un ejemplo basico de como se podrian usar anotaciones en un sistema de logging
//para definir los niveles de log asociados a diferentes metodos de una clase.
//pero recuerda que las anotaciones por si solas no hacen nada, es necesario un sistema
//que las interprete y actue en consecuencia.
class Servicio {
  @Log('info')
  void iniciar() {
    print('Servicio iniciado');
  }

  @Log('debug')
  void procesar() {
    print('Procesando datos');
  }

  @Log('error')
  void manejarError() {
    print('Manejando error');
  }
}
//estas anotaciones podrian ser usadas por un sistema de logging
//para registrar las acciones realizadas en los metodos con el nivel de log definido.
//pero al igual que antes, se necesita un sistema de refleccion
//para que esto funcione en tiempo de ejecucion.
//las anotaciones son una herramienta poderosa para metaprogramacion
//pero requieren de un sistema que las interprete para ser realmente utiles.
//este es un ejemplo basico de como se podrian usar anotaciones en un sistema de logging
//para definir los niveles de log asociados a diferentes metodos de una clase.
//pero recuerda que las anotaciones por si solas no hacen nada, es necesario un sistema
//que las interprete y actue en consecuencia.
class Servicio {
  @Log('info')
  void iniciar() {
    print('Servicio iniciado');
  }

  @Log('debug')
  void procesar() {
    print('Procesando datos');
  }

  @Log('error')
  void manejarError() {
    print('Manejando error');
  }
}