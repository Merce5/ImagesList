// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final elements = {'Element 1', 'Element 2', 'Element 3', 'Element 4'};
  final elements2 = {'Gelat', 'Donut', 'Coca', 'Ensaimada'};
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView( 
        children: _crearElementsCurt(),
      ),
    );
  }

  List<Widget> _crearElements() {
    List<Widget> llista = [];
    for(String element in elements) {
      final tempWidget = ListTile(
        title: Text(element)
      );
      llista.add(tempWidget);
      llista.add(Divider());
    }
    return llista;
  }

  List<Widget> _crearElementsCurt() {
    var widgets = elements.map((element) {
      return Column(
        children: [
          ListTile(
            title: Text('${element}!'),
            subtitle: Text('${contador++}'),
            leading: Icon(Icons.add),
            trailing: Icon(Icons.remove),
          ),
          Divider(),
        ],
      );
    });
    return widgets.toList();
  }
}