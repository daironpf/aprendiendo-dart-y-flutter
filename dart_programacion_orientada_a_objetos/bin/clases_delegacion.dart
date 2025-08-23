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

void main() {
  CocheDelegacion coche = CocheDelegacion();
  coche.conducir();
  coche.detener();
}
