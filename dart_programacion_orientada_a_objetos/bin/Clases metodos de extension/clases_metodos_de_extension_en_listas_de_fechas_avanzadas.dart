// Clases metodos de extension en listas de fechas avanzadas
extension DateTimeListAdvancedExtensions on List<DateTime> {
  // Método de extensión para ordenar las fechas en orden ascendente
  List<DateTime> ordenarAscendente() {
    List<DateTime> fechasOrdenadas = List.from(this);
    fechasOrdenadas.sort((a, b) => a.compareTo(b));
    return fechasOrdenadas;
  }

  // Método de extensión para ordenar las fechas en orden descendente
  List<DateTime> ordenarDescendente() {
    List<DateTime> fechasOrdenadas = List.from(this);
    fechasOrdenadas.sort((a, b) => b.compareTo(a));
    return fechasOrdenadas;
  }
}

void main() {
  List<DateTime> fechas = [
    DateTime(2023, 3, 10),
    DateTime(2022, 12, 25),
    DateTime(2023, 1, 15),
  ];
  print('Fechas ordenadas ascendente: ${fechas.ordenarAscendente()}');
  print('Fechas ordenadas descendente: ${fechas.ordenarDescendente()}');
}
