import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget lateralmenu(photo, name,context) {
  return Drawer(
    child: Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 40, 40),
      body: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 20, 20, 20)),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 0),
                      child: CircleAvatar(
                        foregroundColor: Colors.black,
                        maxRadius: 50,
                        backgroundImage: NetworkImage(photo),
                      )),
                  Text(name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 255, 0),
                          fontSize: 20.0)),
                ],
              )),
          Container(
            child: Column(children: [
              ListTile(
                leading:
                    Icon(Icons.settings, color: Color.fromARGB(255, 0, 255, 0)),
                title: Text(
                  'Configurações',
                  style: TextStyle(color: Color.fromARGB(255, 0, 255, 0)),
                ),
                subtitle: Text('Notificações e Permissões',
                    style: TextStyle(color: Color.fromARGB(255, 0, 120, 0))),
                trailing: Icon(Icons.arrow_forward,
                    color: Color.fromARGB(255, 0, 255, 0)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.message_outlined,
                    color: Color.fromARGB(255, 0, 255, 0)),
                title: Text(
                  'Contatos',
                  style: TextStyle(color: Color.fromARGB(255, 0, 255, 0)),
                ),
                subtitle: Text('Lista de Contatos',
                    style: TextStyle(color: Color.fromARGB(255, 0, 120, 0))),
                trailing: Icon(Icons.arrow_forward,
                    color: Color.fromARGB(255, 0, 255, 0)),
                onTap: () {},
              ),
              ListTile(
                leading:
                    Icon(Icons.favorite, color: Color.fromARGB(255, 0, 255, 0)),
                title: Text(
                  'Listas Favoritas',
                  style: TextStyle(color: Color.fromARGB(255, 0, 255, 0)),
                ),
                subtitle: Text('Listas de Compras',
                    style: TextStyle(color: Color.fromARGB(255, 0, 120, 0))),
                trailing: Icon(Icons.arrow_forward,
                    color: Color.fromARGB(255, 0, 255, 0)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.note_add_outlined,
                    color: Color.fromARGB(255, 0, 255, 0)),
                title: Text(
                  'Anotações',
                  style: TextStyle(color: Color.fromARGB(255, 0, 255, 0)),
                ),
                subtitle: Text('Suas notas',
                    style: TextStyle(color: Color.fromARGB(255, 0, 120, 0))),
                trailing: Icon(Icons.arrow_forward,
                    color: Color.fromARGB(255, 0, 255, 0)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.support_agent,
                    color: Color.fromARGB(255, 0, 255, 0)),
                title: Text(
                  'Sugestões',
                  style: TextStyle(color: Color.fromARGB(255, 0, 255, 0)),
                ),
                subtitle: Text('Mande ideias!',
                    style: TextStyle(color: Color.fromARGB(255, 0, 120, 0))),
                trailing: Icon(Icons.arrow_forward,
                    color: Color.fromARGB(255, 0, 255, 0)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app_outlined,
                    color: Color.fromARGB(255, 0, 255, 0)),
                title: Text(
                  'Sair',
                  style: TextStyle(color: Color.fromARGB(255, 0, 255, 0)),
                ),
                subtitle: Text('Sair da conta',
                    style: TextStyle(color: Color.fromARGB(255, 0, 120, 0))),
                trailing: Icon(Icons.arrow_forward,
                    color: Color.fromARGB(255, 0, 255, 0)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              ),
            ]),
          ),
        ],
      ),
    ),
  );
}
