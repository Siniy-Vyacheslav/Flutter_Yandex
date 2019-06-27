import 'package:flutter/material.dart';

import 'my_mysic_route.dart';

void main() => runApp(YandexApp());

class YandexApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Raleway',
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
              displayColor: Colors.black,
            ),
      ),
      home: MyMusicRoute(),
    );
  }
}
