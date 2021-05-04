import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'Logo.dart';

class ListaDeCompras extends StatefulWidget {
  @override
  _ListaDeComprasState createState() => _ListaDeComprasState();
}

class _ListaDeComprasState extends State<ListaDeCompras> {
  var gastos = List<String>();

  var txtGastos = TextEditingController();
  TextEditingController txtValor = MoneyMaskedTextController(
      initialValue: 0.0,
      decimalSeparator: ',',
      thousandSeparator: '.',
      leftSymbol: 'R\$');
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
            Text('Lista de Compras',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 255, 0),
                    fontFamily: 'Money Honey')),
            Container(
                padding: EdgeInsets.only(top: 50.0, left: 80.0),
                child: logo(20.0, 90.0, 10.0))
          ]))),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Row(children: [
              Expanded(
                child: TextField(
                  controller: txtGastos,
                  style: TextStyle(color: Color.fromARGB(255, 0, 255, 0), fontSize: 24),
                  decoration: InputDecoration(
                      labelText: 'Adicionar Gastos',
                      labelStyle: TextStyle(color: Color.fromARGB(100, 0, 255, 0)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 255, 0),
                        ),
                      )),
                ),
              ),
              Container(
                width: 20,
              ),
              Expanded(
                child: TextField(
                  controller: txtValor,
                  style: TextStyle(color: Color.fromARGB(255, 0, 255, 0),fontSize: 24),
                  decoration: InputDecoration(
                      labelText: 'Valor',
                      labelStyle: TextStyle(color: Color.fromARGB(100, 0, 255, 0)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 255, 0),
                        ),
                      )),
                ),
              ),
              SizedBox(width: 20),
              IconButton(
                  icon: Icon(Icons.add, color: Color.fromARGB(255, 0, 255, 0)),
                  onPressed: () {
                    setState(() {
                      gastos.add(txtGastos.text + ' - ' + txtValor.text);
                    });
                  })
            ]),
            SizedBox(height: 30),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                        child: ListTile(
                      title: Text(
                        gastos[index],
                        style: TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(255, 0, 255, 0)),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete_outline,
                            color: Color.fromARGB(255, 0, 255, 0)),
                        onPressed: () {
                          setState(() {
                            gastos.removeAt(index);

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Gasto removido com sucesso.'),
                              duration: Duration(seconds: 3),
                            ));
                          });
                        },
                      ),
                    ));
                  },

                  //aparência do separador
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Color.fromARGB(255, 0, 255, 0),
                      thickness: 1,
                    );
                  },

                  //quantidade de itens
                  itemCount: gastos.length),
            ),
          ],
        ),
      ),
    );
  }
}
