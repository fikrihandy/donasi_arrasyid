import 'package:flutter/material.dart';
import 'package:donasi_arrasyid/content/donation_data.dart';
import 'package:donasi_arrasyid/detail_screen.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DonationListPage extends StatelessWidget {
  const DonationListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          final DonationData data = donationData[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DetailScreen(data: data);
                }),
              );
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: NetworkImage(data.imageAsset),
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0.5,
                    right: 16,
                    left: 16,
                    child: Column(
                      children: [
                        Text(
                          ' ${data.donationTitle} ',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24,
                              backgroundColor: Colors.black),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          ' Terkumpul = ${NumberFormat.currency(
                            locale: 'id',
                            symbol: 'Rp.',
                            decimalDigits: 0,
                          ).format(data.collectedDonation)} ',
                          style: const TextStyle(backgroundColor: Colors.white),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        LinearPercentIndicator(
                          percent: data.collectedDonation / data.donationTarget,
                          progressColor: Colors.deepOrangeAccent,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: donationData.length,
      ),
    );
  }
}
