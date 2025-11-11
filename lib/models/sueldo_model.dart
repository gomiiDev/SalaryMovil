class SueldoModel {
  final int antiguedad;
  final double sueldoActual;

  SueldoModel({
    required this.antiguedad,
    required this.sueldoActual,
  });

  double get nuevoSueldo {
    if (antiguedad < 0 || sueldoActual <= 0) {
      throw ArgumentError('La antigüedad y el sueldo deben ser positivos.');
    }

    double reajuste = 0;

    if (antiguedad < 10) {
      if (sueldoActual <= 300) {
        reajuste = 0.12;
      } else if (sueldoActual <= 500) {
        reajuste = 0.10;
      } else {
        reajuste = 0.08;
      }
    } else if (antiguedad >= 10 && antiguedad < 20) {
      if (sueldoActual <= 300) {
        reajuste = 0.14;
      } else if (sueldoActual <= 500) {
        reajuste = 0.12;
      } else {
        reajuste = 0.10;
      }
    } else {
      reajuste = 0.15;
    }

    return sueldoActual + (sueldoActual * reajuste);
  }
}
