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

void main() {
  List<bool> valores = [true, false, true, true, false];
  print('Cantidad de verdaderos: ${valores.contarVerdaderos()}');
  print('¿Todos son verdaderos? ${valores.todosVerdaderos()}');
}
