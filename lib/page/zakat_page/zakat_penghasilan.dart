import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class ZakatPenghasilan extends StatefulWidget {
  const ZakatPenghasilan({Key? key}) : super(key: key);

  @override
  State<ZakatPenghasilan> createState() => _ZakatPenghasilanState();
}

class _ZakatPenghasilanState extends State<ZakatPenghasilan> {
  var _penghasilan = 0;
  var _bonusThr = 0;
  final int _nishab = 6461048; //Rp 6.461.048
  double _zakat = 0;
  String _zakatCurrency = ' Rp. - ';

  final TextEditingController _penghasilanPerBulan = TextEditingController();
  final TextEditingController _bonusThrDll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: 170,
                  child: Center(
                    child: TextField(
                      controller: _penghasilanPerBulan,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        prefixText: 'Rp. ',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        label: const Center(
                          child: Text('Penghasilan per bulan',
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 170,
                  child: Center(
                    child: TextField(
                      controller: _bonusThrDll,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        prefixText: 'Rp. ',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        label: const Center(
                          child: Text('Bonus, THR, dll',
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 120, right: 120),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.calculate_rounded),
                onPressed: () {
                  _penghasilan = int.parse(_penghasilanPerBulan.text);
                  var bonusThrSample = _bonusThrDll.text;
                  if (bonusThrSample == '') {
                    bonusThrSample = '0';
                  }
                  _bonusThr = int.parse(bonusThrSample);

                  if ((_penghasilan + _bonusThr) >= _nishab) {
                    setState(() {
                      _zakat = ((_penghasilan + _bonusThr) * 2.5) / 100;

                      _zakatCurrency = NumberFormat.currency(
                              locale: 'id', symbol: 'Rp. ', decimalDigits: 0)
                          .format(_zakat);
                    });
                  } else {
                    setState(() {
                      _zakatCurrency = 'Tidak memenuhi nishab';
                    });
                  }
                },
                label: const Text('Hitung Zakat'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                  'Penghasilan per bulan = ${NumberFormat.currency(locale: 'id', symbol: 'Rp. ', decimalDigits: 0).format(_penghasilan)}'),
            ),
            const SizedBox(height: 15.0),
            Center(
              child: Text(
                  'Bonus, THR, dll = ${NumberFormat.currency(locale: 'id', symbol: 'Rp. ', decimalDigits: 0).format(_bonusThr)}'),
            ),
            const SizedBox(height: 15.0),
            Center(
              child: Text(
                ' Zakat = $_zakatCurrency ',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    backgroundColor: Colors.black87,
                    color: Colors.yellow),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                  'Nishab = ${NumberFormat.currency(locale: 'id', symbol: 'Rp. ', decimalDigits: 0).format(_nishab)}'),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 2,
            ),
            Container(
              margin: const EdgeInsets.all(17.5),
              child: const Text(
                'Zakat Penghasilan',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: const Text(
                  '''Zakat penghasilan atau yang dikenal juga sebagai zakat profesi adalah bagian dari zakat maal yang wajib dikeluarkan atas harta yang berasal dari pendapatan / penghasilan rutin dari pekerjaan yang tidak melanggar syariah.

Nishab zakat penghasilan sebesar 85 gram emas per tahun. Kadar zakat penghasilan senilai 2,5%. Dalam praktiknya, zakat penghasilan dapat ditunaikan setiap bulan dengan nilai nishab per bulannya adalah setara dengan nilai seperduabelas dari 85 gram emas, dengan kadar 2,5%. Jadi apabila penghasilan setiap bulan telah melebihi nilai nishab bulanan, maka wajib dikeluarkan zakatnya sebesar 2,5% dari penghasilannya tersebut.

(Sumber: Al Qur'an Surah Al Baqarah ayat 267, Peraturan Menteri Agama Nomer 31 Tahun 2019, Fatwa MUI Nomer 3 Tahun 2003, dan pendapat Shaikh Yusuf Qardawi).''',
                  textAlign: TextAlign.justify),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _penghasilanPerBulan.dispose();
    _bonusThrDll.dispose();
    super.dispose();
  }
}
