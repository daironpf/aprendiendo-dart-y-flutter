// Flutter los usa para manejar eventos en tiempo real (ej: sockets, Firebase, inputs de usuario).
// También son útiles para manejar flujos de datos como archivos o respuestas HTTP.
Stream<int> contador() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  await for (var n in contador()) {
    print("Tick $n");
  }
}
