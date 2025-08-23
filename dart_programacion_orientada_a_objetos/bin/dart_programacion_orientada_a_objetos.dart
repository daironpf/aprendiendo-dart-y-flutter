// dart y su manejo de la programacion orientada a objetos

// creame ahora las clases metodos de extension en mapas
extension MapExtensions<K, V> on Map<K, V> {
  // Método de extensión para obtener las claves como una lista
  List<K> clavesComoLista() {
    return this.keys.toList();
  }

  // Método de extensión para obtener los valores como una lista
  List<V> valoresComoLista() {
    return this.values.toList();
  }
}

void mainMapas() {
  Map<String, int> edades = {'Alice': 30, 'Bob': 25, 'Charlie': 35};
  print('Claves: ${edades.clavesComoLista()}');
  print('Valores: ${edades.valoresComoLista()}');
}

// creame ahora las clases metodos de extension en conjuntos
extension SetExtensions<T> on Set<T> {
  // Método de extensión para verificar si un conjunto es subconjunto de otro
  bool esSubconjuntoDe(Set<T> otro) {
    return this.every((element) => otro.contains(element));
  }

  // Método de extensión para obtener la intersección de dos conjuntos
  Set<T> interseccion(Set<T> otro) {
    return this.where((element) => otro.contains(element)).toSet();
  }
}

void mainConjuntos() {
  Set<int> conjuntoA = {1, 2, 3};
  Set<int> conjuntoB = {2, 3, 4, 5};
  print('¿A es subconjunto de B? ${conjuntoA.esSubconjuntoDe(conjuntoB)}');
  print('Intersección de A y B: ${conjuntoA.interseccion(conjuntoB)}');
}

// creame ahora las clases metodos de extension en cadenas de texto
extension StringExtensionsAdvanced on String {
  // Método de extensión para verificar si una cadena es un palíndromo
  bool esPalindromo() {
    String textoLimpio = this.replaceAll(RegExp(r'\W'), '').toLowerCase();
    String textoInvertido = textoLimpio.split('').reversed.join();
    return textoLimpio == textoInvertido;
  }

  // Método de extensión para contar la cantidad de vocales en una cadena
  int contarVocales() {
    return this
        .toLowerCase()
        .split('')
        .where((char) => 'aeiou'.contains(char))
        .length;
  }
}

void mainCadenasAvanzadas() {
  String texto1 = 'Anita lava la tina';
  String texto2 = 'Hola Mundo';
  print('"$texto1" es palíndromo? ${texto1.esPalindromo()}');
  print('"$texto2" es palíndromo? ${texto2.esPalindromo()}');
  print('Número de vocales en "$texto2": ${texto2.contarVocales()}');
}

// creame ahora las clases metodos de extension en numeros
extension NumExtensions on num {
  // Método de extensión para verificar si un número es par
  bool esPar() {
    return this % 2 == 0;
  }

  // Método de extensión para calcular el factorial de un número
  int factorial() {
    if (this is int && this >= 0) {
      int resultado = 1;
      for (int i = 1; i <= this; i++) {
        resultado *= i;
      }
      return resultado;
    } else {
      throw ArgumentError(
        'El factorial solo está definido para enteros no negativos.',
      );
    }
  }
}

void mainNumeros() {
  int numero1 = 4;
  int numero2 = 5;
  print('$numero1 es par? ${numero1.esPar()}');
  print('$numero2 es par? ${numero2.esPar()}');
  print('Factorial de $numero1: ${numero1.factorial()}');
  print('Factorial de $numero2: ${numero2.factorial()}');
}

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

void mainFechas() {
  DateTime fecha1 = DateTime(2023, 10, 14); // Sábado
  DateTime fecha2 = DateTime(2023, 10, 16); // Lunes
  print('${fecha1.formatear()} es fin de semana? ${fecha1.esFinDeSemana()}');
  print('${fecha2.formatear()} es fin de semana? ${fecha2.esFinDeSemana()}');
}

// creame ahora las clases metodos de extension en booleanos
extension BoolExtensions on bool {
  // Método de extensión para convertir un booleano a cadena "Sí" o "No"
  String aCadena() {
    return this ? 'Sí' : 'No';
  }

  // Método de extensión para negar el valor booleano
  bool negar() {
    return !this;
  }
}

void mainBooleanos() {
  bool valor1 = true;
  bool valor2 = false;
  print('$valor1 en cadena: ${valor1.aCadena()}');
  print('$valor2 en cadena: ${valor2.aCadena()}');
  print('Negación de $valor1: ${valor1.negar()}');
  print('Negación de $valor2: ${valor2.negar()}');
}

// creame ahora las clases metodos de extension en listas de cadenas
extension StringListExtensions on List<String> {
  // Método de extensión para concatenar todas las cadenas en la lista
  String concatenar(String separador) {
    return this.join(separador);
  }

  // Método de extensión para filtrar cadenas que contienen una subcadena específica
  List<String> filtrarPorSubcadena(String subcadena) {
    return this.where((str) => str.contains(subcadena)).toList();
  }
}

void mainListasCadenas() {
  List<String> palabras = [
    'Dart',
    'es',
    'un',
    'lenguaje',
    'de',
    'programación',
  ];
  print('Concatenado: ${palabras.concatenar(' ')}');
  print('Filtrado por "un": ${palabras.filtrarPorSubcadena('un')}');
}

// creame ahora las clases metodos de extension en listas de numeros
extension NumListExtensions on List<num> {
  // Método de extensión para calcular la suma de todos los números en la lista
  num sumar() {
    return this.reduce((a, b) => a + b);
  }

  // Método de extensión para calcular el promedio de los números en la lista
  double promedio() {
    if (this.isEmpty) return 0;
    return this.sumar() / this.length;
  }
}

void mainListasNumeros() {
  List<num> numeros = [1, 2, 3, 4, 5];
  print('Suma: ${numeros.sumar()}');
  print('Promedio: ${numeros.promedio()}');
}

// creame ahora las clases metodos de extension en listas de booleanos
extension BoolListExtensions on List<bool> {
  // Método de extensión para contar cuántos valores son verdaderos en la lista
  int contarVerdaderos() {
    return this.where((b) => b).length;
  }

  // Método de extensión para verificar si todos los valores son verdaderos
  bool todosVerdaderos() {
    return this.every((b) => b);
  }
}

void mainListasBooleanos() {
  List<bool> valores = [true, false, true, true, false];
  print('Cantidad de verdaderos: ${valores.contarVerdaderos()}');
  print('¿Todos son verdaderos? ${valores.todosVerdaderos()}');
}

// creame ahora las clases metodos de extension en listas de fechas
extension DateTimeListExtensions on List<DateTime> {
  // Método de extensión para obtener la fecha más reciente en la lista
  DateTime? fechaMasReciente() {
    if (this.isEmpty) return null;
    return this.reduce((a, b) => a.isAfter(b) ? a : b);
  }

  // Método de extensión para obtener la fecha más antigua en la lista
  DateTime? fechaMasAntigua() {
    if (this.isEmpty) return null;
    return this.reduce((a, b) => a.isBefore(b) ? a : b);
  }
}

void mainListasFechas() {
  List<DateTime> fechas = [
    DateTime(2023, 1, 15),
    DateTime(2022, 12, 25),
    DateTime(2023, 3, 10),
  ];
  print('Fecha más reciente: ${fechas.fechaMasReciente()?.toLocal()}');
  print('Fecha más antigua: ${fechas.fechaMasAntigua()?.toLocal()}');
}

// creame ahora las clases metodos de extension en listas de listas
extension ListOfListExtensions<T> on List<List<T>> {
  // Método de extensión para aplanar una lista de listas en una sola lista
  List<T> aplanar() {
    return this.expand((sublist) => sublist).toList();
  }

  // Método de extensión para obtener la longitud total de todos los sublistas
  int longitudTotal() {
    return this.fold(0, (total, sublist) => total + sublist.length);
  }
}

void mainListasDeListas() {
  List<List<int>> listas = [
    [1, 2, 3],
    [4, 5],
    [6, 7, 8, 9],
  ];
  print('Lista aplanada: ${listas.aplanar()}');
  print('Longitud total: ${listas.longitudTotal()}');
}

// creame ahora las clases metodos de extension en listas de mapas
extension MapListExtensions<K, V> on List<Map<K, V>> {
  // Método de extensión para combinar una lista de mapas en un solo mapa
  Map<K, V> combinar() {
    Map<K, V> resultado = {};
    for (var mapa in this) {
      resultado.addAll(mapa);
    }
    return resultado;
  }

  // Método de extensión para obtener todas las claves únicas en la lista de mapas
  Set<K> clavesUnicas() {
    return this.expand((mapa) => mapa.keys).toSet();
  }
}

void mainListasDeMapas() {
  List<Map<String, int>> mapas = [
    {'a': 1, 'b': 2},
    {'b': 3, 'c': 4},
    {'d': 5},
  ];
  print('Mapa combinado: ${mapas.combinar()}');
  print('Claves únicas: ${mapas.clavesUnicas()}');
}

// creame ahora las clases metodos de extension en listas de conjuntos
extension SetListExtensions<T> on List<Set<T>> {
  // Método de extensión para obtener la unión de todos los conjuntos en la lista
  Set<T> union() {
    return this.expand((conjunto) => conjunto).toSet();
  }

  // Método de extensión para obtener la intersección de todos los conjuntos en la lista
  Set<T> interseccion() {
    if (this.isEmpty) return {};
    return this.reduce((a, b) => a.intersection(b));
  }
}

void mainListasDeConjuntos() {
  List<Set<int>> conjuntos = [
    {1, 2, 3},
    {2, 3, 4},
    {3, 4, 5},
  ];
  print('Unión de conjuntos: ${conjuntos.union()}');
  print('Intersección de conjuntos: ${conjuntos.interseccion()}');
}

// creame ahora las clases metodos de extension en listas de cadenas de texto
extension StringListAdvancedExtensions on List<String> {
  // Método de extensión para encontrar la cadena más larga en la lista
  String? cadenaMasLarga() {
    if (this.isEmpty) return null;
    return this.reduce((a, b) => a.length >= b.length ? a : b);
  }

  // Método de extensión para convertir todas las cadenas a mayúsculas
  List<String> aMayusculas() {
    return this.map((str) => str.toUpperCase()).toList();
  }
}

void mainListasCadenasAvanzadas() {
  List<String> palabras = [
    'Dart',
    'es',
    'un',
    'lenguaje',
    'de',
    'programación',
  ];
  print('Cadena más larga: ${palabras.cadenaMasLarga()}');
  print('Cadenas en mayúsculas: ${palabras.aMayusculas()}');
}

// creame ahora las clases metodos de extension en listas de numeros avanzados
extension NumListAdvancedExtensions on List<num> {
  // Método de extensión para encontrar el número máximo en la lista
  num? numeroMaximo() {
    if (this.isEmpty) return null;
    return this.reduce((a, b) => a >= b ? a : b);
  }

  // Método de extensión para encontrar el número mínimo en la lista
  num? numeroMinimo() {
    if (this.isEmpty) return null;
    return this.reduce((a, b) => a <= b ? a : b);
  }
}

void mainListasNumerosAvanzadas() {
  List<num> numeros = [3, 1, 4, 1, 5, 9, 2, 6, 5];
  print('Número máximo: ${numeros.numeroMaximo()}');
  print('Número mínimo: ${numeros.numeroMinimo()}');
}

// creame ahora las clases metodos de extension en listas de booleanos avanzados
extension BoolListAdvancedExtensions on List<bool> {
  // Método de extensión para verificar si al menos un valor es verdadero
  bool alMenosUnVerdadero() {
    return this.any((b) => b);
  }

  // Método de extensión para verificar si al menos un valor es falso
  bool alMenosUnFalso() {
    return this.any((b) => !b);
  }
}

void mainListasBooleanosAvanzadas() {
  List<bool> valores = [false, false, true, false];
  print('¿Al menos un verdadero? ${valores.alMenosUnVerdadero()}');
  print('¿Al menos un falso? ${valores.alMenosUnFalso()}');
}

// creame ahora las clases metodos de extension en listas de fechas avanzadas
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

void mainListasFechasAvanzadas() {
  List<DateTime> fechas = [
    DateTime(2023, 3, 10),
    DateTime(2022, 12, 25),
    DateTime(2023, 1, 15),
  ];
  print('Fechas ordenadas ascendente: ${fechas.ordenarAscendente()}');
  print('Fechas ordenadas descendente: ${fechas.ordenarDescendente()}');
}

// creame ahora las clases metodos de extension en listas de listas avanzadas
extension ListOfListAdvancedExtensions<T> on List<List<T>> {
  // Método de extensión para transponer una lista de listas (matriz)
  List<List<T>> transponer() {
    if (this.isEmpty) return [];
    int filas = this.length;
    int columnas = this[0].length;
    List<List<T>> transpuesta = List.generate(
      columnas,
      (_) => List.filled(filas, this[0][0]),
    );
    for (int i = 0; i < filas; i++) {
      for (int j = 0; j < columnas; j++) {
        transpuesta[j][i] = this[i][j];
      }
    }
    return transpuesta;
  }

  // Método de extensión para obtener la suma de cada sublista
  List<num> sumaDeSublistas() {
    return this
        .map((sublist) => sublist.whereType<num>().fold(0, (a, b) => a + b))
        .toList();
  }
}

void mainListasDeListasAvanzadas() {
  List<List<int>> matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  print('Matriz transpuesta: ${matriz.transponer()}');
  print('Suma de sublistas: ${matriz.sumaDeSublistas()}');
}

// creame ahora las clases metodos de extension en listas de mapas avanzadas
extension MapListAdvancedExtensions<K, V> on List<Map<K, V>> {
  // Método de extensión para filtrar mapas que contienen una clave específica
  List<Map<K, V>> filtrarPorClave(K clave) {
    return this.where((mapa) => mapa.containsKey(clave)).toList();
  }

  // Método de extensión para obtener una lista de todos los valores asociados a una clave específica
  List<V?> valoresPorClave(K clave) {
    return this.map((mapa) => mapa[clave]).toList();
  }
}

void mainListasDeMapasAvanzadas() {
  List<Map<String, int>> mapas = [
    {'a': 1, 'b': 2},
    {'b': 3, 'c': 4},
    {'d': 5},
  ];
  print('Mapas con clave "b": ${mapas.filtrarPorClave('b')}');
  print('Valores para clave "b": ${mapas.valoresPorClave('b')}');
}

// creame ahora las clases metodos de extension en listas de conjuntos avanzadas
extension SetListAdvancedExtensions<T> on List<Set<T>> {
  // Método de extensión para verificar si algún conjunto está vacío
  bool algunConjuntoVacio() {
    return this.any((conjunto) => conjunto.isEmpty);
  }

  // Método de extensión para obtener la diferencia simétrica de todos los conjuntos en la lista
  Set<T> diferenciaSimetrica() {
    if (this.isEmpty) return {};
    Set<T> resultado = this.first;
    for (var conjunto in this.skip(1)) {
      resultado = resultado
          .difference(conjunto)
          .union(conjunto.difference(resultado));
    }
    return resultado;
  }
}

void mainListasDeConjuntosAvanzadas() {
  List<Set<int>> conjuntos = [
    {1, 2, 3},
    {3, 4, 5},
    {5, 6, 7},
  ];
  print('¿Algún conjunto está vacío? ${conjuntos.algunConjuntoVacio()}');
  print(
    'Diferencia simétrica de conjuntos: ${conjuntos.diferenciaSimetrica()}',
  );
}

// creame ahora las clases metodos de extension en listas de cadenas de texto avanzadas
extension StringListMoreExtensions on List<String> {
  // Método de extensión para encontrar todas las cadenas que son palíndromos
  List<String> encontrarPalindromos() {
    return this.where((str) {
      String textoLimpio = str.replaceAll(RegExp(r'\W'), '').toLowerCase();
      String textoInvertido = textoLimpio.split('').reversed.join();
      return textoLimpio == textoInvertido;
    }).toList();
  }

  // Método de extensión para ordenar las cadenas por longitud
  List<String> ordenarPorLongitud() {
    List<String> cadenasOrdenadas = List.from(this);
    cadenasOrdenadas.sort((a, b) => a.length.compareTo(b.length));
    return cadenasOrdenadas;
  }
}

void mainListasCadenasMasAvanzadas() {
  List<String> palabras = [
    'radar',
    'Dart',
    'nivel',
    'está',
    'ana',
    'programación',
  ];
  print('Palíndromos encontrados: ${palabras.encontrarPalindromos()}');
  print('Cadenas ordenadas por longitud: ${palabras.ordenarPorLongitud()}');
}
