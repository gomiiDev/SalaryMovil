import 'package:flutter/material.dart';
import 'package:hernandez_carlos_conjunta/themes/theme_general.dart';
import 'package:hernandez_carlos_conjunta/views/reajuste_page.dart';
import 'package:hernandez_carlos_conjunta/views/resultado_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reajuste de Sueldos',
      theme: GeneralTheme.light,
      initialRoute: '/',
      routes: {
        '/': (context) => const ReajustePage(),
        '/resultado': (context) => const ResultadoView(),
      },
    );
  }
}
