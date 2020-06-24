import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task1/screens/list/list.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final widgetOptions = [
    Text('Beer List'),
    Text('Add new beer'),
    new BeerListPage(),
    Text('Hello')
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Watch List'),
            centerTitle: false,
          ),
          body: Center(
            child: widgetOptions.elementAt(selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.local_drink),
                title: Text('Beers'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo),
                title: Text('New Beer'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                title: Text('Favourites'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                title: Text('Favourites'),
              ),
            ],
            currentIndex: selectedIndex,
            fixedColor: Colors.deepPurple,
            onTap: onItemTapped,
          ),
        ));
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
//import 'package:flutter/material.dart';
//
//class Home extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return _HomeState();
//  }
//}
//
//class _HomeState extends State<Home> {
//  int _currentIndex = 0;
//  final List<Widget> _children = [];
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Watchlist'),
//        centerTitle: false,
//      ),
//      body: _children[_currentIndex],
//      bottomNavigationBar: BottomNavigationBar(
//        onTap: onTabTapped,
//        currentIndex: _currentIndex,
//        type: BottomNavigationBarType.fixed,
//        items: [
//          new BottomNavigationBarItem(
//            icon: new Icon(Icons.home),
//            title: new Text('Home'),
//          ),
//          new BottomNavigationBarItem(
//            icon: new Icon(Icons.mail),
//            title: new Text('News'),
//          ),
//          new BottomNavigationBarItem(
//            icon: Icon(Icons.person),
//            title: Text('Watchlist'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.call),
//            title: Text('Profile'),
//          )
//        ],
//      ),
//    );
//  }
//
//  void onTabTapped(int index) {
//    setState(() {
//      _currentIndex = index;
//    });
//  }
//}
