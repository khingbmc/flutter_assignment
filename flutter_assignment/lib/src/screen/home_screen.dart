import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen>{
 
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Third Screen"),
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