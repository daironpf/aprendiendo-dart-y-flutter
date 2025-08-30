# Para esta carpeta de estudio, lo estudié todo de este tutorial en youtube: https://youtu.be/IRLLVmN7nQI

## 🔹 ¿Qué es `BuildContext`?

* Es **un objeto que Flutter crea automáticamente** cuando construye el árbol de widgets.
* Representa **la ubicación de un widget en el árbol de widgets**.
* Gracias a él, un widget puede acceder a información de su entorno, por ejemplo:

  * El **tema** (Theme.of(context))
  * La **navegación** (Navigator.of(context))
  * El tamaño de la pantalla (MediaQuery.of(context))
  * Widgets “padres” que lo rodean.

👉 Entonces, **no lo creamos manualmente**. Flutter lo genera y lo pasa como parámetro a métodos como `build`.

---

## 🔹 ¿Dónde aparece?

Cada vez que declaramos un `build`, Flutter lo escribe así:

```dart
@override
Widget build(BuildContext context) {
  // aquí tienes acceso al árbol de widgets
}
```

Ese `context` **ya existe** porque Flutter lo creó.
Tú solo lo **usas** cuando quieres acceder a información o pasarlo a otros widgets/métodos.

---

## 🔹 ¿Para qué se pasa como parámetro?

1. **Acceder a recursos globales o padres**

   ```dart
   final theme = Theme.of(context); // obtiene colores, tipografía, etc.
   final size = MediaQuery.of(context).size; // tamaño de pantalla
   ```

2. **Navegar entre pantallas**

   ```dart
   Navigator.of(context).push(
     MaterialPageRoute(builder: (context) => SecondPage()),
   );
   ```

3. **Mostrar diálogos/snackbars**

   ```dart
   ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(content: Text("Hola desde Flutter!")),
   );
   ```

---

---

✅ **Resumen rápido**:

* **No “armas” un `BuildContext` tú mismo**, Flutter lo provee.
* Se pasa como parámetro para poder interactuar con el **árbol de widgets**: acceder a padres, navegación, temas, tamaños, etc.
* Es la forma en que un widget “sabe dónde está” dentro de la app.

---

Los nombres de argumentos comienzan con letras minusculas y el de los widgets en mayusculas:
Ejemplo:
```
return Scaffold(
      appBar: AppBar(title: const Text('Mi primera aplicacion')),
      body: const Center(child: Text('Hola Mundo')),
    );
```

