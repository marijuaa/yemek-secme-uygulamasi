import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mate INC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(accentColor: Colors.white),
      home: const YemekSec(),
    );
  }
}

class YemekSec extends StatefulWidget {
  const YemekSec({Key? key}) : super(key: key);

  @override
  State<YemekSec> createState() => _YemekSecState();
}

class _YemekSecState extends State<YemekSec> {
  String yemek = "Döner";
  String yanyemek = "Baklava";
  String icme = "Pepsi";
  var menu = ["Çorba", "Makarna", "Pilav"];
  var tatli = ["Kadayıf", "Künefe", "Baklava"];
  var icecek = ["Su", "Cola", "Ayran"];
  void degisken() {
    setState(() {
        int i = 0;
        yemek = menu[i+1];
        yanyemek = tatli[i+1];
        icme = icecek[i+1];
        i++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "YEMEK LİSTESİ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              InkWell(
                onTap: degisken,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/coffe.jpg',
                          ),
                          width: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(yemek),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 50.0, right: 50.0, top: 10.0),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: degisken,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/coffe.jpg',
                          ),
                          width: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(yanyemek),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 50.0, right: 50.0, top: 10.0),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: degisken,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/coffe.jpg',
                          ),
                          width: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(icme),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
