import '../models/sueldo_model.dart';

class SueldoController {
  String calcularReajuste(String antiguedadStr, String sueldoStr) {
    try {
      final int antiguedad = int.parse(antiguedadStr);
      final double sueldo = double.parse(sueldoStr);

      final modelo = SueldoModel(antiguedad: antiguedad, sueldoActual: sueldo);

      final double nuevo = modelo.nuevoSueldo;
      final double incremento = nuevo - sueldo;
      final double porcentaje = (incremento / sueldo) * 100;

      return '''
        Antigüedad: $antiguedad años
        Sueldo actual: \$${sueldo.toStringAsFixed(2)}
        Reajuste aplicado: ${porcentaje.toStringAsFixed(2)}%
        Nuevo sueldo: \$${nuevo.toStringAsFixed(2)}
        ''';
    } catch (e) {
      return "Por favor, ingrese valores válidos para la antigüedad y el sueldo.";
    }
  }
}
