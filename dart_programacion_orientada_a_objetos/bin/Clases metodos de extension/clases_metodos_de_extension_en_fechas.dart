// creame ahora las clases metodos de extension en fechas
extension DateTimeExtensions on DateTime {
  // Método de extensión para verificar si una fecha es fin de semana
  bool esFinDeSemana() {
    return this.weekday == DateTime.saturday || this.weekday == DateTime.sunday;
  }

  // Método de extensión para formatear la fecha como cadena
  String formatear() {
    return '${this.day}/${this.month}/${this.year}';
  }
}

void main() {
  DateTime fecha1 = DateTime(2023, 10, 14); // Sábado
  DateTime fecha2 = DateTime(2023, 10, 16); // Lunes
  print('${fecha1.formatear()} es fin de semana? ${fecha1.esFinDeSemana()}');
  print('${fecha2.formatear()} es fin de semana? ${fecha2.esFinDeSemana()}');
}
