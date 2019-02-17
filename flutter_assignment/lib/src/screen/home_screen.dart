import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
 
  Widget build(BuildContext context) {
    int index = 0;
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Home"),
          ),
          body: TabBarView(
            controller: ,
          ),
        ),
      ),
    );
  }

  List<Widget> tab = [
    Center(
      child: Text("Home",
      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 80.0),),
      
    ),
    Center(child: Text("Notify",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.0),),
    
    ),
    Center(
      child: Text("Map",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.0),),
    
    ),
    Center(
      child: Text("Profile",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.0),),
    
    ),
    Center(
      child: Text("Setup",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.0),),
    
    ),
  ];

  TabController tabControling;

  
  

}