import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  int index = 0;
  

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: _tabList.length);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink,
            centerTitle: true,
            title: Text("Home"),
          ),
          body: TabBarView(
            controller: controller,
            children: _tabList,
          ),
          bottomNavigationBar: new Theme(
            data: Theme.of(context).copyWith(
                // sets the background color of the `BottomNavigationBar`
                canvasColor: Colors.pink,
                // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                primaryColor: Colors.white,
                textTheme: Theme.of(context).textTheme.copyWith(
                    caption: new TextStyle(color: Colors.pink[100]))),
            child: BottomNavigationBar(
              currentIndex: index,
              onTap: (currentIndex) {
                setState(() {
                  index = currentIndex;
                });

                controller.animateTo(index);
              },
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.line_style), title: Text("")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications), title: Text("")
                    // icon: Icon(Icons.notifications),title: Visibility(child: Text("") ,visible: false,)
                    ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore), title: Text("")
                    // icon: Icon(Icons.explore), title: Visibility(child: Text("") ,visible: false,)
                    ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: Text("")
                    // icon: Icon(Icons.person), title: Visibility(child: Text("") ,visible: false,)
                    ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), title: Text("")
                    // icon: Icon(Icons.settings),title: Text("")
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  List<Widget> _tabList = [
    Center(
      child: Text(
        "Home",
        style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        "Notify",
        style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        "Map",
        style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        "Profile",
        style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        "Setup",
        style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
      ),
    ),
  ];
}