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
      margin: EdgeInsets.fromLTRB(60.0, 20.0, 60.0, 10.0),
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
    return Container(
      padding: EdgeInsets.only(top: 40.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        hintText: 'User Id',
      ),
    ),
    );
  }
  Widget passwordField(){
    return Container(
     
      padding: EdgeInsets.only(top: 10.0),
      child: TextFormField(
        decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        hintText: 'Password',
      ),
      obscureText: true,
    ),
    );
  }

  Widget submitBtnField(){
    return Container(
      padding: EdgeInsets.only(top: 25.0),
          child: ButtonTheme(
            minWidth: 275,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.pink.shade500,
              child: Text('Login'),
              onPressed: (){},
        ),
          ),
      );
  }

}