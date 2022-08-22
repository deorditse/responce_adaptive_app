import 'package:flutter/material.dart';

import 'my_app.dart';

void main() {
  runApp(AppInitial());
}

class AppInitial extends StatelessWidget {
  const AppInitial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.cyan,
        appBarTheme:
            AppBarTheme(backgroundColor: Theme.of(context).primaryColor),
      ),
    );
  }
}
