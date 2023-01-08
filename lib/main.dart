import 'package:flutter/material.dart';

import './main_page.dart';
import './Page1.dart';

void main() => runApp(new ExampleApplication());

class ExampleApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffc6a28b),
        scaffoldBackgroundColor: Color(0xffc6a28b),

      ),
      //home: Page1(),
      initialRoute: '/',
      routes: {
        '/': (context) => Page1(),
        '/connectBlu': (context) => MainPage(),
      },
    );
  }
}
