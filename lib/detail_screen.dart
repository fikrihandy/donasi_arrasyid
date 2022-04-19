import 'package:donasi_arrasyid/page/stateless_widget/cara_donasi.dart';
import 'package:flutter/material.dart';
import 'package:donasi_arrasyid/content/donation_data.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'content/user.dart';
import 'package:intl/intl.dart';

class DetailScreen extends StatefulWidget {
  final DonationData data;

  const DetailScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  double persen() {
    return widget.data.donasiTerkumpul / widget.data.targetDonasi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Donasi Sekarang',
          ),
          centerTitle: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.teal,
                      width: double.infinity,
                      height: 150,
                      child: Image.network(widget.data.imageAsset,
                          fit: BoxFit.fill),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.grey,
                      width: double.infinity,
                      height: 150,
                      child: Center(
                          child: CircularPercentIndicator(
                              radius: 140,
                              lineWidth: 20.0,
                              percent: persen(),
                              progressColor: Colors.deepOrange,
                              backgroundColor: Colors.deepOrange.shade100,
                              circularStrokeCap: CircularStrokeCap.butt,
                              center: Text(
                                '''Terpenuhi:
${(persen() * 100).round()}%
''',
                                style: const TextStyle(
                                    fontSize: 10.8,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Center(
                    child: Text(
                  widget.data.judul,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                //color: Colors.deepOrange,
                padding: const EdgeInsets.only(left: 30, right: 30),
                width: double.infinity,
                child:
                    Text(widget.data.description, textAlign: TextAlign.justify),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text('Terkumpul // Target'),
              const SizedBox(
                height: 5,
              ),
              Text(
                  '${NumberFormat.currency(locale: 'id', symbol: 'Rp.', decimalDigits: 0).format(widget.data.donasiTerkumpul)} // ${NumberFormat.currency(locale: 'id', symbol: 'Rp.', decimalDigits: 0).format(widget.data.targetDonasi)}',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                        child: ElevatedButton.icon(
                            icon: const Icon(Icons.announcement_rounded),
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const CaraDonasi();
                              }));
                            },
                            label: const Text('Cara Donasi'))),
                    Center(
                        child: ElevatedButton.icon(
                            icon: Icon(Icons.mobile_friendly_rounded,
                                color: Colors.orangeAccent.shade100),
                            onPressed: () async {
                              String nameForURL =
                                  userName.firstName.replaceAll(' ', '%20');
                              String titleForURL =
                                  widget.data.judul.replaceAll(' ', '%20');
                              String _url =
                                  'https://api.whatsapp.com/send?phone=6289692703057&text=_Assalamualaikum%20warahmatullahi%20wabarakatuh_%2C%0D%0A--------%0D%0ANama%20%3A%20%2A$nameForURL%2A%0D%0ADonasi%20%3A%20%2A$titleForURL%2A%0D%0APesan%2FDoa%20%3A%20';
                              if (!await launch(_url)) {
                                throw 'Could not launch';
                              }
                            },
                            label: Text(
                              'Donasi Sekarang',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orangeAccent.shade100,
                                  fontSize: 16.0),
                            ))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
