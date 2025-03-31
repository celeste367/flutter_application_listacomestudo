import 'package:flutter/material.dart';
import 'package:flutter_application_listacomestudo/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),

      debugShowCheckedModeBanner: false,
    );
  }
}
