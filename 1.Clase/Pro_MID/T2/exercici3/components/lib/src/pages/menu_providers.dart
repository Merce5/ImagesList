// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
class MenuProvider {
  List<dynamic> opcions = [];
  MenuProvider() {
    CarregarDades();
    print(opcions);
  }

  CarregarDades() async {
    final resposta = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resposta);
    print(dataMap);
    opcions = dataMap['rutes'];
    return opcions;
  }
}

final menuProvider = new MenuProvider();