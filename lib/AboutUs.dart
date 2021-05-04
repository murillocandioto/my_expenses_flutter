import 'package:flutter/material.dart';
import 'package:myexpenses_project/Logo.dart';

class AboutUs extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.only(top: 10.0, left: 30.0),
                child: Text('Aplicativo para Controle de Gastos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 255, 0),
                        fontFamily: 'Money Honey',
                        fontSize: 30.0))),
            Container(
                padding: EdgeInsets.only(top: 100.0, left: 10.0),
                child: Text(
                    'Neste aplicativo será possível cadastrar os seus gastos e visualizar gráficos diários, ' +
                        'mensais, semanais e anuais sobre eles, além de mostrar também o período que você mais gasta em determinado dia.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 255, 0),
                      fontSize: 30.0,
                    ))),
            Container(
              padding: EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                  Text('Desenvolvedor do Sotware: \n Murillo Henrique Candioto',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 255, 0),
                        fontSize: 30.0,
                      )),
                  Card(
                    elevation: 10,
                    child: Container(
                        width: 300.0,
                        height: 300.0,
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('lib/imagens/murillo.jpg'),
                                fit: BoxFit.fill))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
