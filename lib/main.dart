import 'package:flutter/material.dart';
import 'package:task1/screens/WatchMain.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watchlist',
      home: HomePage(),
    );
  }
}
