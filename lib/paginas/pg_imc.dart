import 'package:calculadora_imc2/componentes/botao.dart';
import 'package:calculadora_imc2/componentes/caixa_texto.dart';
import 'package:calculadora_imc2/componentes/exp_texto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PgImc extends StatefulWidget {
  const PgImc({super.key});

  @override
  State<PgImc> createState() => _PgImcState();
}

class _PgImcState extends State<PgImc> {

  final _txtNome = TextEditingController();
  final _txtPeso = TextEditingController();
  final _txtAltura = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String resultado = 'xxxxxx';

  calculaImc() {
    if(_formKey.currentState!.validate()) {
      double pesoDouble = double.parse(_txtPeso.text);
      double alturaDouble = double.parse(_txtAltura.text);
      double imc = pesoDouble / (alturaDouble * alturaDouble);
      setState(() {
        resultado = '${_txtNome.text} IMC: + $imc';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cálculo IMC')),
      body: Form(
        key: _formKey,
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            caixaTexto(
              texto: 'Nome: ',
              msgValidacao: 'Informe o nome..',
              controlador: _txtNome,
              isSenha: false,
            ),
            Row(
              children: [
                Expanded(
                  child: caixaTexto(
                    texto: 'Peso(kg): ',
                    msgValidacao: 'Informe o peso',
                    controlador: _txtPeso,
                    isSenha: false,
                  ),
                ),
                Expanded(
                  child: caixaTexto(
                    texto: 'Altura(m): ',
                    msgValidacao: 'Informe a altura',
                    controlador: _txtAltura,
                    isSenha: false,
                  ),
                ),
              ],
            ),
            botao(
              texto: 'Calcula IMC', 
              funcao: calculaImc,
            ),
            texto(conteudo: resultado, fonteTamanho: 30, fonteCor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}