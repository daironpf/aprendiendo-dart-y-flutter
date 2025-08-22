// dart y su manejo de la programacion orientada a objetos
void main() {
  // Crear una instancia de la clase Persona
  Persona persona1 = Persona('Juan', 25);
  Persona persona2 = Persona('Ana', 30);

  // Acceder a los atributos y métodos de la clase
  print('Nombre: ${persona1.nombre}, Edad: ${persona1.edad}');
  persona1.saludar();

  print('Nombre: ${persona2.nombre}, Edad: ${persona2.edad}');
  persona2.saludar();
}

// Definir una clase llamada Persona
class Persona {
  // Atributos de la clase
  final String nombre;
  final int edad;

  // Constructor de la clase
  Persona(this.nombre, this.edad);

  // Método de la clase
  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }
}

// creame ahora el Encapsulamiento y getters/setters
class CuentaBancaria {
  // Atributos privados
  String _numeroCuenta;
  double _saldo;

  // Constructor
  CuentaBancaria(this._numeroCuenta, this._saldo);

  // Getter para el número de cuenta
  String get numeroCuenta => _numeroCuenta;

  // Getter para el saldo
  double get saldo => _saldo;

  // Método para depositar dinero
  void depositar(double cantidad) {
    if (cantidad > 0) {
      _saldo += cantidad;
      print('Depósito de \$${cantidad} realizado. Nuevo saldo: \$${_saldo}');
    } else {
      print('Cantidad inválida para depósito.');
    }
  }

  // Método para retirar dinero
  void retirar(double cantidad) {
    if (cantidad > 0 && cantidad <= _saldo) {
      _saldo -= cantidad;
      print('Retiro de \$${cantidad} realizado. Nuevo saldo: \$${_saldo}');
    } else {
      print('Cantidad inválida para retiro o saldo insuficiente.');
    }
  }
}

// creame ahora la herencia
class Animal {
  // Atributo de la clase base
  String nombre;    
  int edad;
  // Constructor de la clase base
  Animal(this.nombre, this.edad);
  // Método de la clase base
  void hacerSonido() {
    print('El animal hace un sonido.');
  }
} 

// Clase derivada que hereda de Animal
class Perro extends Animal {
  // Atributo adicional de la clase derivada
  String raza;  
  // Constructor de la clase derivada
  Perro(String nombre, int edad, this.raza) : super(nombre, edad);
  // Sobrescribir el método de la clase base
  @override
  void hacerSonido() {
    print('El perro ladra.');
  }
}

class Gato extends Animal {
  // Atributo adicional de la clase derivada
  String color;  
  // Constructor de la clase derivada
  Gato(String nombre, int edad, this.color) : super(nombre, edad);
  // Sobrescribir el método de la clase base
  @override
  void hacerSonido() {
    print('El gato maúlla.');
  }
}

// creame ahora el polimorfismo
void mainPolimorfismo() {
  // Crear una lista de animales
  List<Animal> animales = [
    Perro('Rex', 5, 'Labrador'),
    Gato('Mittens', 3, 'Siames') 
  ];
  // Iterar sobre la lista y llamar al método hacerSonido
  for (var animal in animales) {
    animal.hacerSonido(); // Llama al método sobrescrito
  }
} 

// creame ahora las clases abstractas e interfaces
abstract class Figura {
  // Método abstracto que debe ser implementado por las clases derivadas
  double area();
  double perimetro();
} 
// Clase que implementa la interfaz Figura
class Circulo implements Figura {
  double radio;
  Circulo(this.radio);
  @override
  double area() {
    return 3.1416 * radio * radio;
  }
  @override
  double perimetro() {
    return 2 * 3.1416 * radio;
  }
}
// Clase que implementa la interfaz Figura
class Rectangulo implements Figura {
  double ancho;
  double alto;
  Rectangulo(this.ancho, this.alto);
  @override
  double area() {
    return ancho * alto;
  }
  @override
  double perimetro() {  
    return 2 * (ancho + alto);
  }
} 
void mainFiguras() {
  Figura circulo = Circulo(5);
  Figura rectangulo = Rectangulo(4, 6);
  print('Área del círculo: ${circulo.area()}');
  print('Perímetro del círculo: ${circulo.perimetro()}');
  print('Área del rectángulo: ${rectangulo.area()}');
  print('Perímetro del rectángulo: ${rectangulo.perimetro()}');
}
// creame ahora las clases genericas
class Caja<T> {
  T contenido;
  Caja(this.contenido);
  void mostrarContenido() {
    print('Contenido: $contenido');
  }
}
void mainGenericos() {
  Caja<int> cajaEntero = Caja<int>(123);
  cajaEntero.mostrarContenido();  
  Caja<String> cajaString = Caja<String>('Hola Mundo');
  cajaString.mostrarContenido();
}

// creame ahora las clases mixins
mixin Volador {
  void volar() {
    print('Estoy volando!');
  }
} 
mixin Nadador {
  void nadar() {
    print('Estoy nadando!');
  }
}
class Pato with Volador, Nadador {
  void hacerSonido() {
    print('El pato hace cuac cuac!');
  }
}
void mainMixins() {
  Pato pato = Pato();
  pato.hacerSonido();
  pato.volar();
  pato.nadar();
} 
// creame ahora las clases singleton
class Singleton {
  // Instancia privada y estática
  static final Singleton _instancia = Singleton._internal();
  // Constructor privado  
  Singleton._internal();
  // Método factory para acceder a la instancia única
  factory Singleton() {
    return _instancia;
  }
  // Método de ejemplo
  void mostrarMensaje() {
    print('Hola, soy una instancia singleton!');  
  }
}
void mainSingleton() {
  Singleton singleton1 = Singleton();
  Singleton singleton2 = Singleton();
  singleton1.mostrarMensaje();
  // Verificar que ambas referencias apuntan a la misma instancia
  print(identical(singleton1, singleton2)); // true
}
// creame ahora las clases async/await con programacion orientada a objetos
class Servicio {
  // Método que simula una operación asíncrona
  Future<String> obtenerDatos() async {
    await Future.delayed(Duration(seconds: 2)); // Simula una espera
    return 'Datos obtenidos del servicio';
  }
}
void mainAsyncAwait() async {
  Servicio servicio = Servicio();
  print('Solicitando datos...');
  String datos = await servicio.obtenerDatos();
  print(datos);
}
// creame ahora las clases excepciones personalizadas
class ExcepcionPersonalizada implements Exception {
  String mensaje;
  ExcepcionPersonalizada(this.mensaje);
  @override
  String toString() => 'ExcepcionPersonalizada: $mensaje';
}
class Calculadora {
  double dividir(double a, double b) {
    if (b == 0) {
      throw ExcepcionPersonalizada('No se puede dividir por cero.');
    }
    return a / b;
  }
}
void mainExcepciones() {
  Calculadora calculadora = Calculadora();
  try { 
    double resultado = calculadora.dividir(10, 0);
    print('Resultado: $resultado');
  } catch (e) {
    print(e);
  } 
}
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
void mainAnotaciones() {
  ClaseConAnotacion clase = ClaseConAnotacion();
  clase.mostrar();
} 
// creame ahora las clases reflexion
import 'dart:mirrors';
class PersonaRef {
  String nombre;
  int edad;
  PersonaRef(this.nombre, this.edad);
  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }
}
void mainReflexion() {
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
// creame ahora las clases serializacion/deserializacion
import 'dart:convert';
class PersonaSer {
  String nombre;
  int edad;
  PersonaSer(this.nombre, this.edad);
  // Convertir un objeto Persona a un mapa (para JSON)
  Map<String, dynamic> toJson() {
    return {
      'nombre': nombre,
      'edad': edad,
    };
  }
  // Crear un objeto Persona a partir de un mapa (desde JSON)
  factory PersonaSer.fromJson(Map<String, dynamic> json) {
    return PersonaSer(
      json['nombre'],
      json['edad'],
    );
  }
}
void mainSerializacion() {
  PersonaSer persona = PersonaSer('Laura', 22);
  // Serializar a JSON
  String jsonString = jsonEncode(persona.toJson());
  print('JSON: $jsonString');
  // Deserializar desde JSON
  Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  PersonaSer nuevaPersona = PersonaSer.fromJson(jsonMap);
  print('Nombre: ${nuevaPersona.nombre}, Edad: ${nuevaPersona.edad}');
}
// creame ahora las clases composicion
class Motor {
  void encender() {
    print('El motor está encendido.');
  }
  void apagar() {
    print('El motor está apagado.');
  }
}
class Rueda {
  void rodar() {
    print('La rueda está rodando.');
  }
}
class Coche {
  Motor motor;
  List<Rueda> ruedas;
  Coche():
    motor = Motor(),
    ruedas = List.generate(4, (_) => Rueda()); 
  void conducir() {
    motor.encender();
    for (var rueda in ruedas) {
      rueda.rodar();
    }
    print('El coche está en movimiento.');
  }
  void detener() {
    motor.apagar();
    print('El coche se ha detenido.');
  }
}
void mainComposicion() {
  Coche coche = Coche();
  coche.conducir();
  coche.detener();
}
// creame ahora las clases delegacion
class MotorDelegacion {
  void encender() {
    print('El motor está encendido.');
  }
  void apagar() {
    print('El motor está apagado.');
  }
}
class CocheDelegacion {
  MotorDelegacion motor = MotorDelegacion();
  void conducir() {
    motor.encender();
    print('El coche está en movimiento.');
  }
  void detener() {
    motor.apagar();
    print('El coche se ha detenido.');
  }
}
void mainDelegacion() {
  CocheDelegacion coche = CocheDelegacion();
  coche.conducir();
  coche.detener();
}
// creame ahora las clases metodos estaticos
class Matematica {
  // Método estático para sumar dos números
  static int sumar(int a, int b) {
    return a + b;
  }
  // Método estático para restar dos números
  static int restar(int a, int b) {
    return a - b;
  }
}
void mainEstaticos() {
  int suma = Matematica.sumar(5, 3);
  int resta = Matematica.restar(10, 4);
  print('Suma: $suma');
  print('Resta: $resta');
}
// creame ahora las clases metodos de extension
extension StringExtensions on String {
  // Método de extensión para contar palabras en una cadena
  int contarPalabras() {
    return this.split(' ').length;
  }
  // Método de extensión para invertir una cadena
  String invertir() {
    return this.split('').reversed.join();
  }
}
void mainExtensiones() {
  String texto = 'Hola mundo desde Dart';
  print('Número de palabras: ${texto.contarPalabras()}');
  print('Texto invertido: ${texto.invertir()}');
}
// creame ahora las clases metodos anonimos y funciones de primera clase
void mainFunciones() {
  // Función anónima para sumar dos números
  var sumar = (int a, int b) => a + b;
  // Función anónima para filtrar números pares
  var filtrarPares = (List<int> numeros) {
    return numeros.where((num) => num.isEven).toList();
  };
  int resultadoSuma = sumar(4, 6);
  List<int> numeros = [1, 2, 3, 4, 5, 6];
  List<int> numerosPares = filtrarPares(numeros);
  print('Resultado de la suma: $resultadoSuma');
  print('Números pares: $numerosPares');
}
// creame ahora las clases metodos recursivos
int factorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}
void mainRecursivos() {
  int numero = 5;
  int resultado = factorial(numero);
  print('El factorial de $numero es $resultado');
}
// creame ahora las clases metodos de orden superior
void mainOrdenSuperior() {
  // Función de orden superior que toma otra función como argumento
  void ejecutarOperacion(int a, int b, int Function(int, int) operacion) {
    int resultado = operacion(a, b);
    print('Resultado de la operación: $resultado');
  }
  // Funciones que se pueden pasar como argumentos
  int sumar(int x, int y) => x + y;
  int multiplicar(int x, int y) => x * y;
  // Usar la función de orden superior con diferentes operaciones
  ejecutarOperacion(4, 5, sumar);
  ejecutarOperacion(4, 5, multiplicar);
}
// creame ahora las clases metodos async generators
Stream<int> contador(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1)); // Simula una espera
    yield i; // Genera el siguiente valor en la secuencia
  }
}
void mainAsyncGenerators() async {
  print('Contador iniciado:');
  await for (var numero in contador(5)) {
    print('Número: $numero');
  }
  print('Contador finalizado.');
}
// creame ahora las clases metodos sync generators
Iterable<int> contadorSync(int max) sync* {
  for (int i = 1; i <= max; i++) {
    yield i; // Genera el siguiente valor en la secuencia
  }
}
void mainSyncGenerators() {
  print('Contador síncrono iniciado:');
  for (var numero in contadorSync(5)) {
    print('Número: $numero');
  }
  print('Contador síncrono finalizado.');
}
// creame ahora las clases metodos cascada
class PersonaCascada {
  String nombre;
  int edad;
  PersonaCascada(this.nombre, this.edad);
  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }
  void cumplirAnios() {
    edad++;
    print('$nombre ha cumplido $edad años.');
  }
}
void mainCascada() {
  PersonaCascada persona = PersonaCascada('Miguel', 29)
    ..saludar()
    ..cumplirAnios()
    ..saludar();
}
// creame ahora las clases metodos factory
class Vehiculo {
  String tipo;
  Vehiculo._internal(this.tipo); // Constructor privado
  // Método factory para crear instancias de Vehiculo
  factory Vehiculo(String tipo) {
    if (tipo == 'coche') {
      return Vehiculo._internal('Coche');
    } else if (tipo == 'moto') {
      return Vehiculo._internal('Moto');
    } else {
      throw ArgumentError('Tipo de vehículo no soportado');
    }
  }
  void mostrarTipo() {
    print('Tipo de vehículo: $tipo');
  }
}
void mainFactory() {
  Vehiculo coche = Vehiculo('coche');
  Vehiculo moto = Vehiculo('moto');
  coche.mostrarTipo();
  moto.mostrarTipo();
}
// creame ahora las clases metodos de extension en listas
extension ListExtensions<T> on List<T> {
  // Método de extensión para obtener el segundo elemento de la lista
  T? segundoElemento() {
    if (this.length >= 2) {
      return this[1];
    }
    return null; // Retorna null si no hay un segundo elemento
  }
  // Método de extensión para obtener una lista sin duplicados
  List<T> sinDuplicados() {
    return this.toSet().toList();
  }
}
void mainListas() {
  List<int> numeros = [1, 2, 3, 2, 4, 3, 5];
  print('Segundo elemento: ${numeros.segundoElemento()}');
  print('Lista sin duplicados: ${numeros.sinDuplicados()}');
}
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
  Map<String, int> edades = {
    'Alice': 30,
    'Bob': 25,
    'Charlie': 35,
  };
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
    return this.toLowerCase().split('').where((char) => 'aeiou'.contains  (char)).length;
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
      throw ArgumentError('El factorial solo está definido para enteros no negativos.');
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
  List<String> palabras = ['Dart', 'es', 'un', 'lenguaje', 'de', 'programación'];
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
  List<String> palabras = ['Dart', 'es', 'un', 'lenguaje', 'de', 'programación'];
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
    List<List<T>> transpuesta = List.generate(columnas, (_) => List.filled(filas, this[0][0]));
    for (int i = 0; i < filas; i++) {
      for (int j = 0; j < columnas; j++) {
        transpuesta[j][i] = this[i][j];
      }
    }
    return transpuesta;
  }
  // Método de extensión para obtener la suma de cada sublista
  List<num> sumaDeSublistas() {
    return this.map((sublist) => sublist.whereType<num>().fold(0, (a, b) => a + b)).toList();
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
      resultado = resultado.difference(conjunto).union(conjunto.difference(resultado));
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
  print('Diferencia simétrica de conjuntos: ${conjuntos.diferenciaSimetrica()}');
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
  List<String> palabras = ['radar', 'Dart', 'nivel', 'está', 'ana', 'programación'];
  print('Palíndromos encontrados: ${palabras.encontrarPalindromos()}');
  print('Cadenas ordenadas por longitud: ${palabras.ordenarPorLongitud()}');
} 