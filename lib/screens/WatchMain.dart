import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task1/custom_icons_iconsdart_icons.dart';
import 'package:task1/screens/list/list.dart';
//import Customiconsiconsdart from '../lib/custom_icons_iconsdart.dart';
//import 'package:task1/screens/lib/custom_icons_iconsdart_icons.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int selectedIndex = 2;
  final widgetOptions = [
    Text('Beer List'),
    Text('Add new beer'),
    new BeerListPage(),
    Text('Hello')
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              labelStyle: TextStyle(color: Colors.black),
              unselectedLabelStyle:
                  TextStyle(color: Colors.black, fontSize: 19),
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Indices',
                ),
                Tab(
                  text: 'Stocks',
                ),
                Tab(
                  text: 'Mutual Fund',
                ),
                Tab(
                  text: 'Forex',
                ),
              ],
            ),
            title: Text(
              ': Watch List',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            centerTitle: false,
          ),
          body: Center(
            child: widgetOptions.elementAt(selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedLabelStyle: TextStyle(color: Colors.grey),
            showUnselectedLabels: true,

            unselectedItemColor: Color.fromRGBO(163, 163, 163, 1), //Grey-ish
            selectedItemColor: Color.fromRGBO(7, 9, 32, 1), //Black-ish
            type: BottomNavigationBarType.shifting,

//            fixedColor: Colors.white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  'Home',
//                  style: TextStyle(color: Colors.green),
                ),
//                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Custom_icons_iconsdart.customIcon),
                title: Text('News'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                title: Text('Watchlist'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                title: Text('Profile'),
              ),
            ],
            currentIndex: selectedIndex,
//            fixedColor: Colors.deepPurple,
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
