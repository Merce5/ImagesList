// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors

import 'package:components/src/pages/home_page.dart';
import 'package:components/src/pages/home_temp.dart';
import 'package:components/src/pages/menu_providers.dart';
import "package:flutter/material.dart";

void main() {
  runApp(new laMevaApp());
  MenuProvider();
}

class laMevaApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Components',
        home: HomePage(),
    );
  }
}
