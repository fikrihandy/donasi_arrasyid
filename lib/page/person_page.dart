import 'package:donasi_arrasyid/content/user.dart';
import 'package:flutter/material.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({Key? key}) : super(key: key);

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  TextEditingController userNameGet = TextEditingController();
  TextEditingController userLastNameGet = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                width: 240,
                height: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Welcome ${userName.firstName} ${userName.lastName}'),
                    Container(
                      height: 125,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.person_rounded,
                        size: 125,
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 200,
                          child: Center(
                              child: TextField(
                            controller: userNameGet,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                label: const Center(
                                    child: Text('Nama pertama',
                                        textAlign: TextAlign.center))),
                          )),
                        ),
                        const SizedBox(
                          height: 8.5,
                        ),
                        SizedBox(
                            height: 50,
                            width: 200,
                            child: Center(
                                child: TextField(
                              controller: userLastNameGet,
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  label: const Center(
                                      child: Text('Nama akhir (optional)',
                                          textAlign: TextAlign.center))),
                            ))),
                        const SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () {
                              userName.firstName = userNameGet.text;
                              userName.lastName = userLastNameGet.text;
                              setState(() {});
                            },
                            child: const Text('Simpan'))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
