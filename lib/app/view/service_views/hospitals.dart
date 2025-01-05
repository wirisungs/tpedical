import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HospitalsListPage extends StatefulWidget {
  const HospitalsListPage({super.key});

  @override
  State<HospitalsListPage> createState() => _HospitalsListPageState();
}

class _HospitalsListPageState extends State<HospitalsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/svg/back_arrow.svg',
            color: Colors.white,
          ),
        ),
        title: const Text(
          'HOSPITAL BOOKING',
          style: TextStyle(
            color: Colors.white, // Màu của tiêu đề
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/search_background.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
