import 'package:flutter/material.dart';
import '../controllers/sueldo_controller.dart';
import '../widgets/input_dato.dart';
import '../widgets/button_calcular.dart';
import '../themes/theme_backgrounds.dart';
import '../themes/schema_color.dart';
import '../themes/theme_typography.dart';

class ReajustePage extends StatefulWidget {
  const ReajustePage({super.key});

  @override
  State<ReajustePage> createState() => _ReajustePageState();
}

class _ReajustePageState extends State<ReajustePage> {
  final controller = SueldoController();
  final antiguedadCtrl = TextEditingController();
  final sueldoCtrl = TextEditingController();

  void _calcular() {
    final resultado =
    controller.calcularReajuste(antiguedadCtrl.text, sueldoCtrl.text);
    Navigator.pushNamed(context, '/resultado', arguments: resultado);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reajuste de Sueldos - Hernández Carlos'),
      ),
      body: Container(
        decoration: BackgroundTheme.mainFade,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Reajuste Salarial',
                    style: TypographyApp.text.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  InputDato(
                    controller: antiguedadCtrl,
                    label: 'Años de antiguedad:',
                  ),
                  const SizedBox(height: 15),
                  InputDato(
                    controller: sueldoCtrl,
                    label: 'Sueldo actual:',
                  ),
                  const SizedBox(height: 25),
                  ButtonCalcular(onPressed: _calcular),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
