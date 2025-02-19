// ignore_for_file: file_names, library_private_types_in_public_api, prefer_const_constructors
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:depoware/Pages/HomePage.dart';
import 'package:lottie/lottie.dart';

class SplashUlaz extends StatefulWidget {
  const SplashUlaz({Key? key}) : super(key: key);

  @override
  _SplashUlazState createState() => _SplashUlazState();
}

class _SplashUlazState extends State<SplashUlaz>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
              height: 250,
              width: 250,
              child: Lottie.network(
                  'https://assets8.lottiefiles.com/packages/lf20_wc1axoqt.json',
                  repeat: false)),
          SizedBox(
            height: 50,
          ),
          Text('USPJEŠAN UNOS',
              style: GoogleFonts.bebasNeue(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.green)),
        ],
      ),
    ));
  }
}
