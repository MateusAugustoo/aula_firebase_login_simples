import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens.login.dart';

import '../screens/screens.cadastro.dart';

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => const ScreenFirebase(),
        '/Cadastro':(context) => const ScreenCadastro(),
      },
    );
  }
}