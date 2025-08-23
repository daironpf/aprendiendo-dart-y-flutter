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
  Coche() : motor = Motor(), ruedas = List.generate(4, (_) => Rueda());
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

void main() {
  Coche coche = Coche();
  coche.conducir();
  coche.detener();
}
