import 'package:donasi_arrasyid/content/user.dart';
import 'package:donasi_arrasyid/page/stateless_widget/lokasi.dart';
import 'package:donasi_arrasyid/page/stateless_widget/penerimaan_santri.dart';
import 'package:donasi_arrasyid/page/zakat_calculate.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const WelcomeText(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.5),
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.grey[200],
                          child: IconButton(
                              icon: const Icon(Icons.app_registration_rounded,
                                  color: Colors.blue),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) {
                                    return PenerimaanSantri();
                                  }),
                                );
                              }),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('''Pendaftaran
Santri''', style: TextStyle(fontSize: 10.0), textAlign: TextAlign.center)
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.5),
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.grey[200],
                          child: IconButton(
                              icon: const Icon(Icons.calculate_rounded,
                                  color: Colors.orange),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) {
                                    return const ZakatCalculate();
                                  }),
                                );
                              }),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('''Kalkulator
Zakat''', style: TextStyle(fontSize: 10.0), textAlign: TextAlign.center)
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.5),
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.grey[200],
                          child: IconButton(
                              icon: const Icon(Icons.mosque_rounded,
                                  color: Colors.teal),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) {
                                    return const Location();
                                  }),
                                );
                              }),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '''Lokasi
Kami''',
                        style: TextStyle(fontSize: 10.0),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 20, right: 20, left: 20, bottom: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.5),
                  child: Image.network(
                      'https://4.bp.blogspot.com/-bCUgRUgSIFE/YTAhi-p0olI/AAAAAAAABWY/C1h9H2EVHW0AYz6MGe_2-4fKbGXe82hHwCLcBGAsYHQ/s701/masjidputra.jpg'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 5, right: 20, left: 20, bottom: 5),
                child: const Text('Profil Ponpes Ar-Rasyid',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 10, right: 20, left: 20, bottom: 10),
                child: const Text(
                    '''Pondok Pesantren Ar-Rasyid adalah lembaga pendidikan Islam swasta. Dirintis sejak 2017, didirikan pada tanggal 16 Juli 2017 oleh Dr. Ainul Haris, Lc., M.Ag. rahimahullah dengan sistem kurikulum yang terpadu, pendidikan berasrama serta pengajaran bahasa Arab dan hafalan Al-Qur’an secara intensif.
                    
Sebagai jenis pesantren modern, santri Pondok Pesantren Ar-Rasyid mempunyai pikiran terbuka dan moderat, tanpa menghilangkan unsur peran Islam. Disiplin dan kesederhanaan, diaplikasikan dalam kehidupan sehari-hari di lingkungan pesantren.

Di Pondok Pesantren Ar-Rasyid, pengelolaan pendidikan dan pengajaran serta kegiatan santri sehari-hari dilaksanakan oleh para guru / ustadz dengan latar belakang pendidikan dari berbagai perguruan tinggi dan pesantren modern, yang sebagian besar tinggal di asrama dan secara penuh mengawasi serta membimbing santri dalam proses kegiatan belajar mengajar dan kepengasuhan santri.
''',
                    textAlign: TextAlign.justify),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    height: 25,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple),
                      onPressed: () async {
                        String url = 'https://instagram.com/pondokarrasyid';
                        if (!await launchUrlString(
                          url,
                          mode: LaunchMode.externalApplication,
                        )) throw 'Could not launch';
                      },
                      child: const Text('Instagram'),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 25,
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () async {
                        String url = 'https://youtube.com/c/ArRasyidMedia';
                        if (!await launchUrlString(
                          url,
                          mode: LaunchMode.externalApplication,
                        )) throw 'Could not launch';
                      },
                      child: const Text('YouTube'),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 25,
                    child: ElevatedButton(
                      onPressed: () async {
                        String url = 'https://www.arrasyid.ponpes.id';
                        if (!await launchUrlString(url)) {
                          throw 'Could not launch';
                        }
                      },
                      child: const Text('Website'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (userName.firstName == '' || userName.firstName == 'User') {
      return Container(
        margin: const EdgeInsets.all(22.5),
        child: const Text(
          'Silakan ubah nama melalui "Akun"',
          textAlign: TextAlign.center,
          style: TextStyle(decoration: TextDecoration.underline),
        ),
      );
    } else {
      return Container(
        margin: const EdgeInsets.all(22.5),
        child: Text(
          'Assalamualaikum, selamat datang ${userName.firstName}',
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
      );
    }
  }
}
