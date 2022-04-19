import 'package:donasi_arrasyid/page/zakat_page/zakat_maal.dart';
import 'package:donasi_arrasyid/page/zakat_page/zakat_penghasilan.dart';
import 'package:flutter/material.dart';
import '../content/donation_data.dart';
import '../detail_screen.dart';

class ZakatCalculate extends StatefulWidget {
  const ZakatCalculate({Key? key}) : super(key: key);

  @override
  State<ZakatCalculate> createState() => _ZakatCalculateState();
}

class _ZakatCalculateState extends State<ZakatCalculate> {
  late int index;

  List showWidget = [const ZakatPenghasilan(), const ZakatMaal()];

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          PopupMenuButton<MenuItem>(
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (context) =>
                  [...MenuItems.itemFirst.map(buildItem).toList()])
        ], title: const Text('Kalkulator Zakat'), centerTitle: true),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.monetization_on_rounded),
                  label: 'Zakat Penghasilan'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.assessment_rounded), label: 'Zakat Maal'),
            ]),
        body: showWidget[index]);
  }
}

class MenuItem {
  final String text;

  const MenuItem({required this.text});
}

class MenuItems {
  static const List<MenuItem> itemFirst = [itemSettings];

  static const itemSettings = MenuItem(text: 'Bayar Zakat');
}

PopupMenuItem<MenuItem> buildItem(MenuItem item) =>
    PopupMenuItem(value: item, child: Text(item.text));

void onSelected(BuildContext context, MenuItem item) {
  switch (item) {
    case MenuItems.itemSettings:
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return DetailScreen(data: donationData[4]);
      }));
  }
}
