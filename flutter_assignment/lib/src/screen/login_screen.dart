import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginScreenState();
  }

}

class LoginScreenState extends State<LoginScreen>{
 List <Widget> _text = [
   Text('First'),
   Text('Second'),
   Text('Third'),
 ];
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(60.0),
      child: Center(
        child: Form(
          child: Column(
            children:<Widget> [
              emailField(),
              passwordField(),
              submitBtnField(),
          ],
        ),
      )
      ),
      
    );
  }
  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
    );
  }
  Widget passwordField(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Enter Password',
        hintText: 'Password',
      ),
      obscureText: true,
    );
  }

  Widget submitBtnField(){
    return RaisedButton(
      textColor: Colors.white,
      color: Colors.pink,
      child: Text('Continue'),
      onPressed: (){},
    );
  }

}