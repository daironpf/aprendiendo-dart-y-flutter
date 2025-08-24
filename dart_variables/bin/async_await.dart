/*
Flutter se apoya muchísimo en asincronía para:
> Llamar APIs.
> Leer bases de datos locales.
> Mostrar loaders mientras esperas resultados.
 */
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Datos recibidos";
}

void main() async {
  print(await fetchData());
}
