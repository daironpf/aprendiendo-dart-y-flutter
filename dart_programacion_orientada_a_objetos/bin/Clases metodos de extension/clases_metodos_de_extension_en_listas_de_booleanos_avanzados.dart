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

void main() {
  List<bool> valores = [false, false, true, false];
  print('¿Al menos un verdadero? ${valores.alMenosUnVerdadero()}');
  print('¿Al menos un falso? ${valores.alMenosUnFalso()}');
}
