import 'package:donasi_arrasyid/page/donation_list_page.dart';
import 'package:donasi_arrasyid/page/home_page.dart';
import 'package:donasi_arrasyid/page/person_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int index;

  final List _showWidget = [
    const HomePage(),
    const DonationListPage(),
    const PersonPage()
  ];

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Donasi Ponpes Ar-Rasyid'),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_rounded), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.text_snippet_rounded), label: 'Donasi'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun')
            ]),
        body: _showWidget[index]);
  }
}
