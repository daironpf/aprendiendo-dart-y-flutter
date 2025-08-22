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

void main() {
  Pato pato = Pato();
  pato.hacerSonido();
  pato.volar();
  pato.nadar();
}
