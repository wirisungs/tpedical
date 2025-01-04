import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tpedical/components/colors.dart';

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
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBarArea(),
            SizedBox(
              height: 16,
            ),
            ServiceArea(),
          ],
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

class SearchBarArea extends StatefulWidget {
  const SearchBarArea({super.key});

  @override
  State<SearchBarArea> createState() => _SearchBarAreaState();
}

class _SearchBarAreaState extends State<SearchBarArea> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 212,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/search_background.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'MEDICAL APPOINTMENT BOOKING',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Book Your Doctor Appointments Effortlessly',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              Text(
                'Anytime, Anywhere',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter symptoms, hospital name, specialty,...',
                  hintStyle: TextStyle(color: AppColor.normalGray),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(color: AppColor.primary),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(color: AppColor.primary),
                  ),
                ),
                style: TextStyle(
                  color: AppColor.normalGray,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceArea extends StatelessWidget {
  const ServiceArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'SERVICES',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColor.normalGray,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Column(
                children: [
                  IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    icon: Image.asset(
                      'assets/svg/hospital.png',
                      width: 72,
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 100,
                    child: Text(
                      'BOOKING HOSPITAL APPOINTMENT',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    icon: Image.asset(
                      'assets/svg/clinic.png',
                      width: 72,
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 100,
                    child: Text(
                      'BOOKING CLINIC APPOINTMENT',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
