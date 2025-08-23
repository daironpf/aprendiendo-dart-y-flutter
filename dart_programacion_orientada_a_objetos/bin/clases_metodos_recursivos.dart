// creame ahora las clases metodos recursivos
int factorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void mainRecursivos() {
  int numero = 5;
  int resultado = factorial(numero);
  print('El factorial de $numero es $resultado');
}

//Creame ahora las clases metodos recursivos ahora
class Nodo {
  int valor;
  Nodo? izquierdo;
  Nodo? derecho;

  Nodo(this.valor);
}

class ArbolBinario {
  Nodo? raiz;

  void insertar(int valor) {
    raiz = _insertarRecursivo(raiz, valor);
  }

  Nodo _insertarRecursivo(Nodo? nodo, int valor) {
    if (nodo == null) {
      return Nodo(valor);
    }
    if (valor < nodo.valor) {
      nodo.izquierdo = _insertarRecursivo(nodo.izquierdo, valor);
    } else {
      nodo.derecho = _insertarRecursivo(nodo.derecho, valor);
    }
    return nodo;
  }

  void recorridoInOrden() {
    _recorridoInOrdenRecursivo(raiz);
  }

  void _recorridoInOrdenRecursivo(Nodo? nodo) {
    if (nodo != null) {
      _recorridoInOrdenRecursivo(nodo.izquierdo);
      print(nodo.valor);
      _recorridoInOrdenRecursivo(nodo.derecho);
    }
  }
}

void main() {
  ArbolBinario arbol = ArbolBinario();
  arbol.insertar(5);
  arbol.insertar(3);
  arbol.insertar(7);
  arbol.insertar(2);
  arbol.insertar(4);
  arbol.insertar(6);
  arbol.insertar(8);

  print('Recorrido In-Orden del árbol binario:');
  arbol.recorridoInOrden();
}
