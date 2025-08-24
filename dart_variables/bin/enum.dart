enum Rol {
  admin(permisos: 3),
  editor(permisos: 2),
  lector(permisos: 1);

  final int permisos;
  const Rol({required this.permisos});

  bool puedeEditar() => permisos >= 2;
  bool esAdmin() => this == Rol.admin;
}

// Clase Usuario con rol
class Usuario {
  final String nombre;
  final Rol rol;

  Usuario(this.nombre, this.rol);

  void intentarEditar() {
    if (rol.puedeEditar()) {
      print("✅ $nombre con rol $rol puede editar contenido");
    } else {
      print("❌ $nombre con rol $rol NO tiene permiso para editar");
    }
  }

  void eliminarUsuario(Usuario otro) {
    if (rol.esAdmin()) {
      print("🗑️ $nombre eliminó a ${otro.nombre}");
    } else {
      print("🚫 $nombre no tiene permiso para eliminar usuarios");
    }
  }
}

void main() {
  final ana = Usuario("Ana", Rol.admin);
  final luis = Usuario("Luis", Rol.editor);
  final pedro = Usuario("Pedro", Rol.lector);

  // Intentar editar
  ana.intentarEditar(); // ✅ Ana con rol Rol.admin puede editar contenido
  luis.intentarEditar(); // ✅ Luis con rol Rol.editor puede editar contenido
  pedro
      .intentarEditar(); // ❌ Pedro con rol Rol.lector NO tiene permiso para editar

  // Intentar eliminar usuario
  ana.eliminarUsuario(pedro); // 🗑️ Ana eliminó a Pedro
  luis.eliminarUsuario(
    pedro,
  ); // 🚫 Luis no tiene permiso para eliminar usuarios
}
