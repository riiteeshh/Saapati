import 'package:flutter/material.dart';
import 'package:saapati_app/components/card_details_class.dart';

class MyCardPage extends StatefulWidget {
  const MyCardPage({super.key});

  @override
  State<MyCardPage> createState() => _MyCardPageState();
}

class _MyCardPageState extends State<MyCardPage> {
  final List<CardDetails> _cardDetails = [
    CardDetails(
        'Prabhu Bank',
        'Ritesh Pandey',
        '1281818181818181',
        'https://play-lh.googleusercontent.com/B_vXZ4UUXc242bE-mFHIst69QUA3bPnzANcd6piCjBW7aas3mKpeC4Fsj_4tBkmvS7c',
        Colors.red[200]!),
    CardDetails(
        'E-sewa',
        'Ritesh Pandey',
        '9898989898',
        'https://play-lh.googleusercontent.com/MRzMmiJAe0-xaEkDKB0MKwv1a3kjDieSfNuaIlRo750_EgqxjRFWKKF7xQyRSb4O95Y',
        Colors.greenAccent),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Cards')),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.4,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.wallet),
                  label: Text(
                    'Link Wallet',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.4,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.apartment_rounded),
                  label: Text(
                    'Link Bank',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Accounts',
                  style: TextStyle(
                      fontFamily: 'Poppins', fontSize: 18, color: Colors.blue),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'View All',
                  style: TextStyle(fontFamily: 'Poppins'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
                itemCount: _cardDetails.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.86,
                    height: MediaQuery.of(context).size.height * 0.23,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: _cardDetails[index].CardColor,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 15),
                                  alignment: Alignment.topLeft,
                                  child: CircleAvatar(
                                    child: ClipOval(
                                      child: Image.network(
                                        _cardDetails[index].CompanyLogo,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 20, top: 15),
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        _cardDetails[index].CardCompany,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Poppins',
                                            fontSize: 15),
                                      ),
                                    ),

                                    // Container(
                                    //   margin: const EdgeInsets.only(right: 10),
                                    //   alignment: Alignment.topLeft,
                                    //   child: const Text(
                                    //     'Rs.50000',
                                    //     style: TextStyle(
                                    //         color: Colors.white,
                                    //         fontFamily: 'Poppins',
                                    //         fontSize: 20),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.08,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 15, left: 15),
                                      child: Text(
                                        _cardDetails[index].CardHolderName,
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 19),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        _cardDetails[index].CardNumber,
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white,
                                            fontSize: 16.5),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
