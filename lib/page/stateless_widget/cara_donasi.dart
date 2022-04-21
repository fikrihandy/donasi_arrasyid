import 'package:flutter/material.dart';

class CaraDonasi extends StatelessWidget {
  const CaraDonasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cara Donasi'),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  child: const Text(
                      '1. Transfer donasi ke nomor rekening berikut :'),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 170,
                          child: Column(
                            children: [
                              Image.network(
                                'https://mwahyunz.id/007/2021/08/BSI-Bank-Syariah-Indonesia-1000x563.png',
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(height: 5),
                              const Center(
                                child: Text('BSI = 8666766750'),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 170,
                          child: Column(
                            children: [
                              Image.network(
                                'https://ika.um.ac.id/wp-content/uploads/2019/06/Logo-BRI.jpg',
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(height: 5),
                              const Center(
                                child: Text('BRI = 6950-01-024901-53-4'),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(
                        'atas nama : MARKAZ AITAM AR-RASYID',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  child: const Text(
                      '2. Simpan bukti transaksi (screenshot/gambar kamera)'),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  width: double.infinity,
                  child: const Text(
                      '3. Konfirmasi dengan klik tombol "Donasi Sekarang"'),
                ),
                const SizedBox(
                  height: 150,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
