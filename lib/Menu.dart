import 'package:flutter/material.dart';
import 'package:myexpenses_project/CadastrarGastos.dart';
import 'package:myexpenses_project/EmprestarDinheiro.dart';
import 'package:myexpenses_project/LateralMenu.dart';
import 'package:myexpenses_project/ListaDeCompras.dart';
import 'package:myexpenses_project/Logo.dart';
import 'package:myexpenses_project/container.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 40, 40, 40),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 255, 0)),
          backgroundColor: Color.fromARGB(255, 40, 40, 40),
          centerTitle: true,
          title: Container(
            padding: EdgeInsets.only(top: 50.0),
            child: logo(20.0, 90.0, 10.0),
          ),
        ),
        drawer: lateralmenu(
            'lib/imagens/murillo.jpg', 'Murillo Henrique Candioto', context),
        body: Container(
            height: 150.0,
            //margin: EdgeInsets.symmetric(vertical: 300),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                containertype('Cadastrar \nGastos', context, CadastrarGastos(),
                    Icons.monetization_on_outlined),
                containertype('Lista de\nCompras \nMensais', context,
                    ListaDeCompras(), Icons.monetization_on_outlined),
                containertype('Emprestar \nDinheiro', context,
                    EmprestarDinheiro(), Icons.monetization_on_outlined),
                containertype('Pré-Cadastro \nde Tipos de \nGastos', context,
                    Menu(), Icons.monetization_on_outlined),
                containertype('Pré-Cadastro \nde Produtos', context, Menu(),
                    Icons.monetization_on_outlined),
              ],
            )));
  }
}
