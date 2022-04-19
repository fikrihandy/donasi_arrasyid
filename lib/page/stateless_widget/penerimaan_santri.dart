import 'package:donasi_arrasyid/content/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';

class PenerimaanSantri extends StatelessWidget {
  String nameForURL = userName.firstName.replaceAll(' ', '%20');

  PenerimaanSantri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        label: const Text('Contact Person'),
        icon: Icons.whatsapp_rounded,
        backgroundColor: Colors.green,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        children: [
          SpeedDialChild(
              child: const Icon(Icons.person_rounded),
              label: 'KMI Ar-Rasyid (setingkat SMP/SMA)',
              onTap: () async {
                String _url =
                    'https://api.whatsapp.com/send?phone=62895397743010&text=Assalamualaikum%2C%20saya%20$nameForURL%20ingin%20bertanya%20tentang%20PSB%20KMI%20Ar-Rasyid.';
                if (!await launch(_url)) throw 'Could not launch';
              }),
          SpeedDialChild(
            child: const Icon(Icons.person_rounded),
            label: 'Admin Ma\'had Aly (setingkat D3/S1)',
            onTap: () async {
              String _url =
                  'https://api.whatsapp.com/send?phone=6283836292213&text=Assalamualaikum%2C%20saya%20$nameForURL%20ingin%20bertanya%20tentang%20PSB%20Ma%27had%20Aly%20Ar-Rasyid%20Putri.';
              if (!await launch(_url)) throw 'Could not launch';
            },
          )
        ],
      ),
      appBar: AppBar(
          title: const Text('Penerimaan Santri Baru'), centerTitle: true),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 12.5),
              height: 510,
              color: Colors.red,
              child: Image.network(
                  'https://blogger.googleusercontent.com/img/a/AVvXsEhGUiU1u8ix1FP0UQBvxCb-eoiQhMLeRyZZ2YIK86i3TToMVnO_JHLR3-BedDc9nh78TSWM_0ZXA3xEj0Ljsl7anozgCDk3itWWn5GfyIBUmzXUXXRoP91B_GDIYEtS1Nam25uiNIk7xvRxQQixhrazxX7PTvapDRIoyct8JHLivIOq_0Ua14vkRTwz=s16000'),
            ),
          ],
        ),
      ),
    );
  }
}
