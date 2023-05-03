
import 'package:calculadora_imc2/paginas/pg_erro.dart';
import 'package:calculadora_imc2/paginas/pg_imc.dart';
import 'package:calculadora_imc2/paginas/pg_login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => PgLogin(),
        '/imc': (context) => PgImc(),
        '/erro': (context) => PgErro(),
      },
    );
  }
}


