class Usuario {
  final String id;
  final String nombre;

  // Normal
  Usuario(this.id, this.nombre);

  // Nombrado
  Usuario.min(String id) : this(id, "Sin nombre");

  // Con parámetros nombrados (más legible)
  Usuario.from({required this.id, required this.nombre});

  // Redireccionado
  Usuario.soloId(String id) : this(id, "Anónimo");

  // Factory (puede devolver instancias existentes)
  factory Usuario.cacheado(String id) {
    return _cache.putIfAbsent(id, () => Usuario(id, "Nuevo"));
  }
}

final Map<String, Usuario> _cache = {};

//implementame un ejemplo de uso de esta clase
