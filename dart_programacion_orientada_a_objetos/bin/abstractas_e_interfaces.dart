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
