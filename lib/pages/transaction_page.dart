import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.filter_alt_rounded,
              size: 30,
            ),
            onPressed: () {}),
        appBar: AppBar(title: Text('Transactions')),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                elevation: 2,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(
                              vertical: 30, horizontal: 20),
                          child: ClipOval(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: Image.network(
                                'https://dummyimage.com/700x700.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Text(
                                'Ritesh Pandey',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Text(
                                DateTime.now().timeZoneOffset.toString(),
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 52),
                          child: Text(
                            '1000',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            }));
  }
}
