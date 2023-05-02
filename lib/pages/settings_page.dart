import 'package:flutter/material.dart';
import 'package:saapati_app/components/settings_list_tiles.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            // color: Colors.red,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                      child: ClipOval(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: CircleAvatar(
                          radius: 55,
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
                            '+977-9865762048',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 5,
          ),
          SettingsListTiles(
              title: 'Your Information',
              subtitle: 'Access your personal information',
              leading: Icons.face_2_rounded),
          SettingsListTiles(
              title: 'Password',
              subtitle: 'Change/Reset your password',
              leading: Icons.password_rounded),
          SettingsListTiles(
              title: 'Bio-metrics',
              subtitle: 'Set your bio-metric info',
              leading: Icons.fingerprint_rounded),
          SettingsListTiles(
              title: 'Log-Out',
              subtitle: 'Log-out of the current account',
              leading: Icons.logout_rounded)
        ],
      ),
    );
  }
}
