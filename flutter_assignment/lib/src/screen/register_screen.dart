import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'login_screen.dart';

class RegistScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegistScreenState();
  }
}

class RegistScreenState extends State<RegistScreen>{
  TextEditingController user_checking = new TextEditingController();
  TextEditingController password_checking = new TextEditingController();
  TextEditingController repassword_checking = new TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {

    // TODO: implement build
    return Center(
      child:Scaffold(
        resizeToAvoidBottomPadding: false,
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.pink,
        title: Container(
          padding: EdgeInsets.fromLTRB(60.0, 0.0, 0.0, 0.0),
          child: Text("REGISTER"),
        ),
      ),
      body: Container(
      margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
      child: Center(
        child: Form(
          child: Column(
            children:<Widget> [
              emailField(),
              passwordField(),
              repasswordField(),
              submitBtnField()
          ],
        ),
      )
      ),
      
    ),
    )
    );
  }
Widget emailField(){
    return Container(
      
      padding: EdgeInsets.only(top: 40.0),
      child: TextFormField(
        
        controller: user_checking,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
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

  Widget repasswordField(){
    return Container(
     
      padding: EdgeInsets.only(top: 10.0),
      child: TextFormField(
        controller: repassword_checking,
        decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        hintText: 'Re-Password',
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
              child: Text('Continue'),
              onPressed: (){
                if(user_checking.text.isEmpty || password_checking.text.isEmpty || repassword_checking.text.isEmpty){
                  scaffoldKey.currentState.showSnackBar(SnackBar(
                    content: Text('กรุณาระบุข้อมูลให้ครบถ้วน'),));
                }else if(user_checking.text == "admin"){
                  scaffoldKey.currentState.showSnackBar(SnackBar(
                    content: Text('user นี้มีอยู่ในระบบแล้ว'),));
                }else{
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => LoginScreen()));
                }
              },
        ),
          ),
      );
  }

}