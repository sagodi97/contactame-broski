import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.teal[300],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/me.jpg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Santiago Gonzalez",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RockSalt'),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    letterSpacing: 1.0),
              ),
              SizedBox(
                height: 40.0,
                width: 250.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Container(
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        onTap: () => UrlLauncher.launch('tel:+48884055392'),
                        leading: Icon(Icons.phone_iphone),
                        title: Text(
                          "+48 884 055 392",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              letterSpacing: 1.0),
                        ),
                      )),
                ),
              ),
              Container(
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        onTap: () =>
                            UrlLauncher.launch('mailto:santiago@broski.me'),
                        leading: Icon(Icons.email),
                        title: Text("sagodi97@gmail.com",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                letterSpacing: 1.0)),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
