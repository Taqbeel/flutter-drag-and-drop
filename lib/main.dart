import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: "Mockup pages",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: routes,
    );
  }
}
