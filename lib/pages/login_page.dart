import 'dart:io';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:saapati_app/components/social_media_circle.dart';
import 'package:saapati_app/routes/routes.dart';
import 'package:saapati_app/static/form_decoration.dart';
import 'package:saapati_app/validator/validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Saapati',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.blue,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              NavigationBar(
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      _selectedIndex = value;
                    });
                  },
                  destinations: const [
                    NavigationDestination(
                        selectedIcon: Icon(
                          Icons.mark_email_read_rounded,
                          color: Colors.white,
                        ),
                        icon: Icon(
                          Icons.mail,
                          color: Colors.blue,
                        ),
                        label: 'E-mail'),
                    NavigationDestination(
                        selectedIcon: Icon(
                          Icons.mobile_friendly_rounded,
                          color: Colors.white,
                        ),
                        icon: Icon(
                          Icons.phone_android_rounded,
                          color: Colors.blue,
                        ),
                        label: 'Phone')
                  ]),
              const SizedBox(
                height: 10,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          style: TextStyle(fontSize: 15),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) => validateEmail(value),
                          decoration: formdecoration(
                              hint: 'johnmayor@gmail.com', label: 'E-mail'),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          style: TextStyle(fontSize: 15),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) => validatePassword(value),
                          obscureText: true,
                          decoration:
                              formdecoration(hint: '*****', label: 'Password'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.centerRight,
                        child: const Text(
                          'Forget Password?',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.065,
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushReplacementNamed(
                                    context, RouteManager.mainLayoutPage);
                              }
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 18),
                            )),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: const Icon(
                              Icons.fingerprint_rounded,
                              size: 25,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Login with Fingerprint',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 13),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(children: const <Widget>[
                        Expanded(
                            child: Divider(
                          indent: 35,
                          endIndent: 6,
                          thickness: 0.5,
                          color: Colors.black,
                        )),
                        Text(
                          "OR",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          indent: 6,
                          endIndent: 35,
                          thickness: 0.5,
                          color: Colors.black,
                        )),
                      ]),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialMediaCircle(
                              iconData: Icons.person_add_alt_1_outlined,
                              circleColor: Colors.blue),
                          const SizedBox(
                            width: 10,
                          ),
                          SocialMediaCircle(
                              iconData: Icons.facebook_rounded,
                              circleColor: Colors.blue),
                          const SizedBox(
                            width: 10,
                          ),
                          SocialMediaCircle(
                              iconData: EvaIcons.google,
                              circleColor: Colors.red),
                          const SizedBox(
                            width: 10,
                          ),
                          (Platform.isIOS)
                              ? SocialMediaCircle(
                                  iconData: Icons.apple_rounded,
                                  circleColor: Colors.black)
                              : Wrap()
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
