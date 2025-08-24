void main(List<String> arguments) {
  String name = 'Dart';
  int year = 2011;
  double version = 2.14;
  bool isAwesome = true;

  //Console output
  print("==Variables in Dart==");
  print('Welcome to $name programming language!');
  print('Dart was first released in $year.');
  print('Current stable version is $version.');
  print('Is Dart awesome? $isAwesome');

  //Seguridad de los nullables
  /* La seguridad de nulidad en Dart permite que las variables puedan ser nulas o no nulas.
     Por defecto, las variables no pueden ser nulas a menos que se especifique con un '?'.
     Esto ayuda a evitar errores comunes relacionados con valores nulos en tiempo de ejecución.
  */
  print("\n==Null Safety in Dart==");
  String? nullableString;
  print('The string is null');

  //Operadores con nullables
  print("\n==Operators with Nullables==");
  String? anotherNullableString = 'Hello, Dart!';
  //El operador '??' proporciona un valor predeterminado si la variable es nula
  String nonNullableString = anotherNullableString ?? 'Default String';
  print('The value is: $nonNullableString');

  //Var
  print("\n==Using Var in Dart==");
  /* Cuando usar Var
     Usar 'var' es útil cuando el tipo de la variable puede ser inferido por el compilador y no es necesario especificarlo explícitamente.
     Esto puede hacer que el código sea más conciso y legible.
     Sin embargo, si el tipo no puede ser inferido claramente, es mejor usar tipos explícitos para evitar confusiones. 
      Ejemplo:
  */
  var inferredString =
      'This is a string'; // El compilador infiere que es String
  int explicitInt = 42; // Tipo explícito
  double explicitDouble = 3.14; // Tipo explícito
  bool explicitBool = true; // Tipo explícito
  String? nullableVar; // Tipo explícito con null safety
  var anotherInferred = 100; // El compilador infiere que es int
  print('Inferred String: $inferredString');
  print('Explicit Int: $explicitInt');
  print('Explicit Double: $explicitDouble');
  print('Explicit Bool: $explicitBool');
  print('Another Inferred: $anotherInferred');

  //Final
  /* Cuando usar Final
     Usar 'final' es apropiado cuando se desea declarar una variable cuyo valor no cambiará después de su inicialización.
     Esto es útil para constantes que se conocen en tiempo de ejecución y que no deben ser modificadas.
     Pero el contenido puede cambiar si es un objeto mutable o una colección.
     Ejemplo:
  */
  print("\n==Using Final in Dart==");
  final String apiUrl =
      'https://api.mysocialapp.com'; // URL de la API que no cambiará
  print('API URL: $apiUrl');
  //Ejemplo de mutabilidad con final
  final List<String> fruits = ['Apple', 'Banana'];
  fruits.add(
    'Orange',
  ); // Esto es válido, ya que estamos modificando el contenido,
  print('Fruits: $fruits');
  //fruits = ['Grapes']; // Esto no es válido, ya que estamos intentando reasignar la variable final

  //Const
  /* Cuando usar Const
      Usar 'const' es adecuado cuando se desea declarar una variable cuyo valor es una constante
      en tiempo de compilación y no cambiará nunca. Las variables 'const' son inmutables y su valor debe ser conocido en tiempo de compilación.
      Ejemplo:
  */
  print("\n==Using Const in Dart==");
  const double pi = 3.14159; // Valor constante conocido en tiempo de compil
  print('Value of Pi: $pi');
  //Ejemplo de const con listas
  const List<String> colors = ['Red', 'Green', 'Blue'];
  print('Colors: $colors');
  //colors.add('Yellow'); // Esto no es válido, ya que estamos intentando modificar una lista const

  /* Cuando usas constante estas diciendo: 
  "Este objeto inmutable y su valor ya se conoce en tiempo de compilación. No se puede cambiar en tiempo de ejecución.
  Si alguien más pide el mismo valor, pueden reutilizar esta instancia en lugar de crear una nueva.
  Por lo que Dart/Flutter te darán siempre la misma instancia en memoria"
  */
  const List<int> listA = [1, 2, 3];
  const List<int> listB = [1, 2, 3];
  print(
    identical(listA, listB),
  ); // true, ambas referencias apuntan a la misma instancia

  //const en Flutter con Widgets
  /* En Flutter, usar 'const' al crear widgets es una práctica recomendada cuando el widget y sus propiedades no cambian.
     Esto mejora el rendimiento al permitir que Flutter reutilice instancias de widgets en lugar de reconstruirlos.
     Ejemplo:
  */

  //Resumen:
  print("\n==Summary of Var, Final, and Const==");
  print('''
  - var: Usar cuando el tipo puede ser inferido y no es necesario especificarlo explícitamente.
  - final: Usar cuando el valor no cambiará después de la inicialización
  - const: Usar cuando el valor es una constante en tiempo de compilación y no cambiará nunca.
  - const en Flutter: Usar para widgets inmutables para mejorar el rendimiento.
  - final y const no son intercambiables; const es más restrictivo y se evalúa en tiempo de compilación.
  - final es muy común para variables dentro de clases que no cambiarán una vez inicializadas.
  ''');
}
