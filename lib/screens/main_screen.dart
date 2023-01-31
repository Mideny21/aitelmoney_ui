import 'package:airtelmoney_ui/components/service_panel.dart';
import 'package:airtelmoney_ui/components/top_part.dart';
import 'package:airtelmoney_ui/pages/airtel_money.dart';
import 'package:airtelmoney_ui/pages/airtel_tv.dart';
import 'package:airtelmoney_ui/pages/home_screen.dart';
import 'package:airtelmoney_ui/pages/zaidi_screen.dart';
import 'package:airtelmoney_ui/utils/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/painters.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  late List<Widget> _pages;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pages = <Widget>[
      const HomeScreen(),
      const AirtelMoneyScreen(),
      const AirtelTVScreen(),
      const ZaidiScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Nyumbani',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Airtel Money',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv_outlined),
            label: 'Airtel TV',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Zaidi',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        iconSize: 35,
        selectedFontSize: 15.0,
        elevation: 5,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        selectedIconTheme: IconThemeData(color: Colors.red[400], size: 35),
        selectedItemColor: Colors.red[400],
        selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            letterSpacing: 0.8,
            color: Colors.white),
        unselectedIconTheme: IconThemeData(
          color: Colors.grey,
        ),
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
