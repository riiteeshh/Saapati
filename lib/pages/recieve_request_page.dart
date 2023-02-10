import 'package:flutter/material.dart';

class RecieveRequestPage extends StatefulWidget {
  const RecieveRequestPage({super.key});

  @override
  State<RecieveRequestPage> createState() => _RecieveRequestPageState();
}

class _RecieveRequestPageState extends State<RecieveRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ping Recieve'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.blue.withOpacity(0.9),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10, top: 15),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Total Balance',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 12),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Rs.50000',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(top: 15),
                                  child: const Icon(
                                    Icons.arrow_upward,
                                    color: Colors.yellow,
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 15, right: 20),
                                child: const Text(
                                  'To Recieve',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Rs.50000',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Ritesh Pandey',
                            style: TextStyle(fontFamily: 'Poppins'),
                          ),
                          subtitle: Text('Total: Rs.1232'),
                          trailing: Container(
                            width: 75,
                            height: 30,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(elevation: 0),
                                onPressed: () {},
                                child: Text(
                                  'Ping',
                                  style: TextStyle(
                                      fontSize: 10, fontFamily: 'Poppins'),
                                )),
                          ),
                        ),
                        Divider(
                          thickness: 1.0,
                          indent: MediaQuery.of(context).size.width * 0.04,
                          endIndent: MediaQuery.of(context).size.width * 0.04,
                        )
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
    ;
  }
}
