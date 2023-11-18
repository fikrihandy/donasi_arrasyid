import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Lokasi Pondok Pesantren'), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: 450,
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 380,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                        'https://4.bp.blogspot.com/-U2V-NA5x8vM/YTAf6ct6rGI/AAAAAAAABWQ/4R0dXsrjzW0W6E21Y_E0wkQ30TPPeliFgCLcBGAsYHQ/s626/masjidputri.jpg'),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 350,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        icon: const Icon(Icons.location_on),
                        onPressed: () async {
                          String url = 'https://goo.gl/maps/PbHBQdcSvfHNpBFx5';
                          if (!await launchUrlString(
                            url,
                            mode: LaunchMode.externalApplication,
                          )) throw 'Could not launch';
                        },
                        label: const Text('Pondok Putri'),
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.location_on),
                        onPressed: () async {
                          String url = 'https://goo.gl/maps/pvNUd6rLcPoZLci49';
                          if (!await launchUrlString(
                            url,
                            mode: LaunchMode.externalApplication,
                          )) throw 'Could not launch';
                        },
                        label: const Text('Pondok Putra'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 45,
                  width: 370,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                          'Pondok Putra : Mantren, Gunungan, Manyaran, Wonogiri'),
                      Text(
                          'Pondok Putri : Gunungan, Gunungan, Manyaran, Wonogiri')
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
