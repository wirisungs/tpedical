import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const Center(
          child: Text('CenterText'),
        ),
        bottomNavigationBar: Stack(
          children: [
            BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.folder),
                  label: 'Records',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.receipt_rounded),
                  label: 'Visits',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Notify',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: 'Account',
                ),
              ],
              selectedItemColor: const Color(0xFF0065C0),
              unselectedItemColor: const Color(0xFF767F87),
              selectedFontSize: 10,
              unselectedFontSize: 10,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              // ignore: lines_longer_than_80_chars
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
            ),
            Positioned(
              left: _selectedIndex * (MediaQuery.of(context).size.width / 5),
              child: Container(
                width: MediaQuery.of(context).size.width / 5,
                height: 2,
                color: const Color(0xFF0065C0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
