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
  TextEditingController user_checking = new TextEditingController();
  TextEditingController password_checking = new TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: scaffoldKey,
        resizeToAvoidBottomPadding: false,
        body: Container(
      margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
      child: Center(
        child: Form(
          child: Column(
            children:<Widget> [
              img(),
              emailField(),
              passwordField(),
              submitBtnField(),
              registBtn(),
          ],
        ),
      )
      ),
      
    ),
      );
    
  }
  Widget emailField(){
    return Container(
      
      padding: EdgeInsets.only(top: 40.0),
      child: TextFormField(
        controller: user_checking,
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
        controller: password_checking,
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
            minWidth: 325,
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.pink.shade500,
              child: Text('Login'),
              onPressed: (){
                if(user_checking.text.isEmpty || password_checking.text.isEmpty){
                  scaffoldKey.currentState.showSnackBar(SnackBar(
                    content: Text('กรุณาระบุ user or password'),));
                }else if(user_checking.text == "admin" &&
                password_checking.text == "admin"){
                  scaffoldKey.currentState.showSnackBar(SnackBar(
                    content: Text('user or password ไม่ถูกต้อง'),));
                }else{
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => HomeScreen()));
                }
              },
        ),
          ),
      );
  }
  Widget registBtn(){
    return Align(
      alignment: Alignment.centerRight,
      child: ButtonTheme(
        
        padding: EdgeInsets.only(top: 0),
        child: FlatButton(
          textColor: Colors.blue.shade400,
          onPressed: (){
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => RegistScreen()
              ));
          },
          child: Container(
            padding: EdgeInsets.only(top: 5.0),
            child: Text("Register New Account"),
          ),
        ),
      ),
    );
  }

  Widget img(){
    return Container(
      padding: EdgeInsets.all(0.0),
      margin: EdgeInsets.all(0.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("resource/sexy-foods.jpg",height: 200,
            ),
          ],
        ),
      ),
    );
  }

}