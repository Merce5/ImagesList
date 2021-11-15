// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, unused_import
import 'package:components/src/pages/menu_providers.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _llista(),
    );
  }
}

Widget _llista() {
  /*menuProvider.CarregarDades().then((data) {
    print('Llista: ');
    print(data);
  });*/

  return ListView(
    children: _llistaElements(),
  );
}

List<Widget> _llistaElements() {
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