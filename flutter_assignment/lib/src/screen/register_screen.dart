import 'package:flutter/material.dart';

class RegistScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegistScreenState();
  }
}

class RegistScreenState extends State<RegistScreen>{
 
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Second Screen"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("Back First Screen"),
          onPressed: (){
            Navigator.pop(context);
          },
        )
        ,),
    );
  }

}