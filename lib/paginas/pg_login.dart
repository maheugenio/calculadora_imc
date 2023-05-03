import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../componentes/botao.dart';
import '../componentes/caixa_texto.dart';

class PgLogin extends StatefulWidget {
  const PgLogin({super.key});

  @override
  State<PgLogin> createState() => _PgLoginState();
}

class _PgLoginState extends State<PgLogin> {

  final txtEmail = TextEditingController();
  final txtSenha = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    fazLogin() {
      if(txtEmail.text == 'adm' && txtSenha.text == '123') {
        Navigator.of(context).pushNamed('/imc');
        print('Login OK.');
      } else {
        Navigator.of(context).pushNamed('/erro');
        print('Errou');
      }
    }

    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login', style: TextStyle(fontSize: 30)),
              caixaTexto(
                texto: 'E-mail', 
                msgValidacao: 'Informe o e-mail: ',
                controlador: txtEmail,
                isSenha: false,
              ),
              caixaTexto(
                texto: 'Senha', 
                msgValidacao: 'Informe a senha: ',
                controlador: txtSenha,
                isSenha: true,
              ),
              botao(
                texto: 'OK', funcao: fazLogin
              ),
          ],
        ),
      ),
    );
  }
}