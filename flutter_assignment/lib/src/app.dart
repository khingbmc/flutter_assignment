import 'package:flutter/material.dart';
import 'screen/login_screen.dart';
import 'screen/home_screen.dart';
import 'screen/register_screen.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/login": (context) => LoginScreen(),
        // "/home": (context) => HomeScreen(),
        "/regist": (context) => RegistScreen(),
      },
      title: 'Log me in',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }

}