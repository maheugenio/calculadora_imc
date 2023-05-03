

import 'package:calculadora_imc2/componentes/exp_texto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PgErro extends StatefulWidget {
  const PgErro({super.key});

  @override
  State<PgErro> createState() => _PgErroState();
}

class _PgErroState extends State<PgErro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Página de erro')),
      body: const Center(
        child: Text(
          'ERRO', 
          style: TextStyle(
            fontSize: 40, 
            color: Colors.red
            ),
        ),
      ),
    );
  }
}
