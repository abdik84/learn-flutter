import 'package:flutter/material.dart';
import 'package:my_first_app/pages/Home/ContactsPage.dart';
import 'package:my_first_app/pages/Home/HomePage.dart';
import 'package:my_first_app/pages/Home/SettingsPage.dart';
import 'package:my_first_app/pages/Home/ProfilePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // final Map<int, Color> color = {
  //   50: Color.fromRGBO(0X04, 0X48, 0X55, .1),
  //   100: Color.fromRGBO(0X04, 0X48, 0X55, .2),
  //   200: Color.fromRGBO(0X04, 0X48, 0X55, .3),
  //   300: Color.fromRGBO(0X04, 0X48, 0X55, .4),
  //   400: Color.fromRGBO(0X04, 0X48, 0X55, .5),
  //   500: Color.fromRGBO(0X04, 0X48, 0X55, .6),
  //   600: Color.fromRGBO(0X04, 0X48, 0X55, .7),
  //   700: Color.fromRGBO(0X04, 0X48, 0X55, .8),
  //   800: Color.fromRGBO(0X04, 0X48, 0X55, .9),
  //   900: Color.fromRGBO(0X04, 0X48, 0X55, 1),
  // };
  final Map<int, Color> color = {
    50: Color.fromRGBO(0X00, 0X79, 0X6B, .1),
    100: Color.fromRGBO(0X00, 0X79, 0X6B, .2),
    200: Color.fromRGBO(0X00, 0X79, 0X6B, .3),
    300: Color.fromRGBO(0X00, 0X79, 0X6B, .4),
    400: Color.fromRGBO(0X00, 0X79, 0X6B, .5),
    500: Color.fromRGBO(0X00, 0X79, 0X6B, .6),
    600: Color.fromRGBO(0X00, 0X79, 0X6B, .7),
    700: Color.fromRGBO(0X00, 0X79, 0X6B, .8),
    800: Color.fromRGBO(0X00, 0X79, 0X6B, .9),
    900: Color.fromRGBO(0X00, 0X79, 0X6B, 1),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Keren',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF00796B, color),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SettingsPage(),
    ContactsPage(),
    ProfilePage(),
  ];

  static List<BottomNavigationBarItem> _navigationItems =
      <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
    BottomNavigationBarItem(
        icon: new Icon(
          Icons.history,
        ),
        label: "Riwayat"),
    BottomNavigationBarItem(
        icon: new Icon(Icons.notifications_none), label: "Notifikasi"),
    BottomNavigationBarItem(
        icon: new Icon(Icons.account_circle), label: "Profil"),
  ];

  void _onTabChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: _navigationItems,
        onTap: _onTabChanged,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xFF044855),
        selectedFontSize: 11,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
