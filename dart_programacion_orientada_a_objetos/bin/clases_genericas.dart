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
