// Clases metodos de extension en listas de fechas
extension DateTimeListExtensions on List<DateTime> {
  // Método de extensión para obtener la fecha más reciente en la lista
  DateTime? fechaMasReciente() {
    if (isEmpty) return null;
    return reduce((a, b) => a.isAfter(b) ? a : b);
  }

  // Método de extensión para obtener la fecha más antigua en la lista
  DateTime? fechaMasAntigua() {
    if (isEmpty) return null;
    return reduce((a, b) => a.isBefore(b) ? a : b);
  }
}

void main() {
  List<DateTime> fechas = [
    DateTime(2023, 1, 15),
    DateTime(2022, 12, 25),
    DateTime(2023, 3, 10),
  ];
  print('Fecha más reciente: ${fechas.fechaMasReciente()?.toLocal()}');
  print('Fecha más antigua: ${fechas.fechaMasAntigua()?.toLocal()}');
}
