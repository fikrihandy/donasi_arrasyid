import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class ZakatMaal extends StatefulWidget {
  const ZakatMaal({Key? key}) : super(key: key);

  @override
  State<ZakatMaal> createState() => _ZakatMaalState();
}

class _ZakatMaalState extends State<ZakatMaal> {
  var _emasPerak = 0;
  var _uangTunai = 0;
  var _asetLain = 0;
  var _jumlahHutang = 0;
  final int _nishab = 77532580; //harga emas * 85

  double _zakat = 0;
  String _zakatCurrency = ' Rp. - ';

  final TextEditingController _emasPerakTEC = TextEditingController();
  final TextEditingController _uangTunaiTEC = TextEditingController();
  final TextEditingController _asetLainTEC = TextEditingController();
  final TextEditingController _jumlahHutangTEC = TextEditingController();

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
                        controller: _emasPerakTEC,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            prefixText: 'Rp. ',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            label: const Center(
                                child: Text('Nilai emas, perak',
                                    textAlign: TextAlign.center)))),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 170,
                  child: Center(
                    child: TextField(
                        controller: _uangTunaiTEC,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            prefixText: 'Rp. ',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            label: const Center(
                                child: Text('Uang tunai, tabungan, deposito',
                                    textAlign: TextAlign.center)))),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: 170,
                  child: Center(
                    child: TextField(
                        controller: _asetLainTEC,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            prefixText: 'Rp. ',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            label: const Center(
                                child: Text('Aset lain',
                                    textAlign: TextAlign.center)))),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 170,
                  child: Center(
                    child: TextField(
                      controller: _jumlahHutangTEC,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        prefixText: 'Rp. ',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        label: const Center(
                          child: Text('Hutang/cicilan (optional)',
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
                  onPressed: () {
                    //validasi input

                    if (_emasPerakTEC.text.toString() == '') {
                      _emasPerak = 0;
                    } else {
                      _emasPerak = int.parse(_emasPerakTEC.text);
                    }

                    if (_uangTunaiTEC.text.toString() == '') {
                      _uangTunai = 0;
                    } else {
                      _uangTunai = int.parse(_uangTunaiTEC.text);
                    }

                    if (_asetLainTEC.text.toString() == '') {
                      _asetLain = 0;
                    } else {
                      _asetLain = int.parse(_asetLainTEC.text);
                    }

                    if (_jumlahHutangTEC.text.toString() == '') {
                      _jumlahHutang = 0;
                    } else {
                      _jumlahHutang = int.parse(_jumlahHutangTEC.text);
                    }

                    //rumus

                    if ((_emasPerak + _uangTunai + _asetLain) - _jumlahHutang >=
                        _nishab) {
                      _zakat = ((_emasPerak + _uangTunai + _asetLain) -
                              _jumlahHutang) *
                          2.5 /
                          100;
                      _zakatCurrency = NumberFormat.currency(
                              locale: 'id', symbol: 'Rp. ', decimalDigits: 0)
                          .format(_zakat);
                      setState(() {});
                    } else {
                      _zakatCurrency = 'Tidak memenuhi nishab';
                      setState(() {});
                    }
                  },
                  icon: const Icon(Icons.calculate_rounded),
                  label: const Text('Hitung Zakat')),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                  'Total aset = ${NumberFormat.currency(locale: 'id', symbol: 'Rp. ', decimalDigits: 0).format((_emasPerak + _uangTunai + _asetLain) - _jumlahHutang)}'),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
                child: Text(
              ' Zakat = $_zakatCurrency ',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  backgroundColor: Colors.black87,
                  color: Colors.yellow),
            )),
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
                'Zakat Maal',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: const Text(
                  '''Zakat maal yang dimaksud dalam perhitungan ini adalah zakat yang dikenakan atas uang, emas, surat berharga, dan aset yang disewakan. Tidak termasuk harta pertanian, pertambangan, dan lain-lain yang diatur dalam UU No.23/2011 tentang pengelolaan zakat. Zakat maal harus sudah mencapai nishab (batas minimum) dan terbebas dari hutang serta kepemilikan telah mencapai 1 tahun (haul).

Nishab zakat maal sebesar 85 gram emas. Kadar zakatnya senilai 2,5%. (Sumber: Al Qur'an Surah Al Baqarah ayat 267, Peraturan Menteri Agama Nomer 31 Tahun 2019, Fatwa MUI Nomer 3 Tahun 2003, dan pendapat Shaikh Yusuf Qardawi).

Standar harga emas yg digunakan untuk 1 gram nya adalah Rp912.148,-. Sementara nishab yang digunakan adalah sebesar 85 gram emas.''',
                  textAlign: TextAlign.justify),
            )
          ],
        ),
      ),
    );
  }
}
