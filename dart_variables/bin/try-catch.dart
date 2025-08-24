// Try catch en dart
void main() {
  try {
    int result = 10 ~/ 0; // División por cero
    print('Result: $result');
  } catch (e) {
    print('Caught an exception: $e');
  } finally {
    print('Execution completed.');
  }
}
