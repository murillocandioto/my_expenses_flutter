import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:myexpenses_project/AlertDialog.dart';
import 'package:myexpenses_project/Button.dart';
import 'package:myexpenses_project/TextField.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'Logo.dart';

class CadastrarGastos extends StatefulWidget {
  @override
  _CadastrarGastosState createState() => _CadastrarGastosState();
}

class _CadastrarGastosState extends State<CadastrarGastos> {
  FocusNode focus;
  DateTime data = DateTime.now();
  TextEditingController txtNomeGasto = TextEditingController();
  TextEditingController txtValor = MoneyMaskedTextController(
      initialValue: 0.0,
      decimalSeparator: ',',
      thousandSeparator: '.',
      leftSymbol: 'R\$');
  bool checked = false;
  int selectedRadio;
  TextEditingController txtDataAtual = TextEditingController();
  @override
  void initState() {
    super.initState();
    txtDataAtual.text = DateFormat('dd/MM/yyyy - hh:mm:ss').format(data);
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 40, 40),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 255, 0)),
        backgroundColor: Color.fromARGB(255, 40, 40, 40),
        centerTitle: true,
        title: Container(
          child: Row(children: [
            Text('Cadastro de Gastos',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 255, 0),
                    fontFamily: 'Money Honey')),
            Container(
                padding: EdgeInsets.only(top: 50.0, left: 80.0),
                child: logo(20.0, 90.0, 10.0))
          ]),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: textfield(txtNomeGasto, 'Etiqueta do Gasto',
                TextInputType.emailAddress, 'Ex: Riot Points', context, true),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: textfield(txtValor, 'Valor do Gasto', TextInputType.number,
                '', context, false),
          ),
          Container(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
              child: CheckboxListTile(
                  activeColor: Color.fromARGB(255, 43, 43, 43),
                  checkColor: Color.fromARGB(255, 0, 120, 0),
                  title: Text(
                    "Gasto recorrente",
                    style: TextStyle(color: Color.fromARGB(255, 0, 255, 0)),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: checked,
                  onChanged: (bool value) {
                    setState(() {
                      if (checked == false) {
                        ok(context,
                            'Esta marcação tornará o gasto recorrente para os próximos meses.');
                        checked = value;
                      } else {
                        checked = value;
                      }
                    });
                  })),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: textfield(txtDataAtual, 'Data e Hora do Gasto',
                TextInputType.datetime, '', context, false),
          ),
          Container(
            padding: EdgeInsets.all(50),
            child: Column(
              children: [
                Text('Tipo de Gasto',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 255, 0),
                      fontSize: 20.0,
                    )),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Row(children: [
                        Radio(
                            activeColor: Color.fromARGB(255, 0, 255, 0),
                            focusColor: Color.fromARGB(255, 0, 255, 0),
                            value: 1,
                            groupValue: selectedRadio,
                            onChanged: (value) {
                              setState(() {
                                setSelectedRadio(value);
                              });
                            }),
                        Text('Entrenimento',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 255, 0),
                              fontSize: 20.0,
                            )),
                      ]),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Row(children: [
                        Radio(
                            activeColor: Color.fromARGB(255, 0, 255, 0),
                            focusColor: Color.fromARGB(255, 0, 255, 0),
                            value: 2,
                            groupValue: selectedRadio,
                            onChanged: (value) {
                              setState(() {
                                setSelectedRadio(value);
                              });
                            }),
                        Text('Alimentação',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 255, 0),
                              fontSize: 20.0,
                            )),
                      ]),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Row(children: [
                        Radio(
                            activeColor: Color.fromARGB(255, 0, 255, 0),
                            focusColor: Color.fromARGB(255, 0, 255, 0),
                            value: 3,
                            groupValue: selectedRadio,
                            onChanged: (value) {
                              setState(() {
                                setSelectedRadio(value);
                              });
                            }),
                        Text('Saúde',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 255, 0),
                              fontSize: 20.0,
                            )),
                      ]),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 20, left: 83, right: 20, bottom: 20),
                      child: Row(children: [
                        Radio(
                            activeColor: Color.fromARGB(255, 0, 255, 0),
                            focusColor: Color.fromARGB(255, 0, 255, 0),
                            value: 4,
                            groupValue: selectedRadio,
                            onChanged: (value) {
                              setState(() {
                                setSelectedRadio(value);
                              });
                            }),
                        Text('Combustível',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 255, 0),
                              fontSize: 20.0,
                            )),
                      ]),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Row(children: [
                        Radio(
                            activeColor: Color.fromARGB(255, 0, 255, 0),
                            focusColor: Color.fromARGB(255, 0, 255, 0),
                            value: 5,
                            groupValue: selectedRadio,
                            onChanged: (value) {
                              setState(() {
                                setSelectedRadio(value);
                              });
                            }),
                        Text('Festas',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 255, 0),
                              fontSize: 20.0,
                            )),
                      ]),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 20, left: 80, right: 20, bottom: 20),
                      child: Row(children: [
                        Radio(
                            activeColor: Color.fromARGB(255, 0, 255, 0),
                            focusColor: Color.fromARGB(255, 0, 255, 0),
                            value: 6,
                            groupValue: selectedRadio,
                            onChanged: (value) {
                              setState(() {
                                setSelectedRadio(value);
                              });
                            }),
                        Text('Água e Luz',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 255, 0),
                              fontSize: 20.0,
                            )),
                      ]),
                    ),
                  ],
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              AlertDialog yes_no(BuildContext context, texto) {
                // configura os botões
                Widget sim = ElevatedButton(
                  child: Text("Sim"),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Gasto Cadastrado com Sucesso!'),
                    ));
                    Navigator.pop(context);
                    txtDataAtual.text = '';
                    txtNomeGasto.text = '';
                    txtDataAtual.text =
                        DateFormat('dd/MM/yyyy - hh:mm:ss').format(data);
                    txtValor.text = '0,00';
                    focus.requestFocus();
                    return 1;
                  },
                );

                Widget nao = ElevatedButton(
                  child: Text("Não"),
                  onPressed: () {
                    Navigator.pop(context);
                    return 0;
                  },
                );

                // configura o  AlertDialog
                AlertDialog alert = AlertDialog(
                  title: Text("Confirmação"),
                  content: Text(texto),
                  actions: [
                    sim,
                    nao,
                  ],
                );
                // exibe o dialogo
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              }

              yes_no(context,
                  'Você deseja realmente confirmar o cadastro desse gasto?');
            },
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 43, 43, 43), // background
                onPrimary: Color.fromARGB(255, 43, 43, 43),
                minimumSize: Size(350, 50),
                shadowColor: Color.fromARGB(255, 0, 130, 0),
                side: BorderSide(
                    color: Color.fromARGB(255, 0, 255, 0),
                    width: 0.4,
                    style: BorderStyle.solid) // foreground
                ),
            child: Text(
              'Cadastrar Gasto',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 255, 0), fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
