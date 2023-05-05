import 'package:flutter/material.dart';

import 'package:app_menucircular_bakapp/src/screens/circular_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Circular Menu - Flutter',
      home: CircularMenuWidget(),
    );
  }
}
