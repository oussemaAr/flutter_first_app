import 'package:flutter/material.dart';
import 'package:myfirstapplication/wonder.dart';

import 'Componenets.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var comp = Components();
    return Material(
      child: Scaffold(
        backgroundColor: Colors.teal[300],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              comp.myAvatar(),
              comp.myText("Oussema AROUA", comp.myStyle),
              comp.myText("Mobile Developer", comp.myStyle),
              comp.myDivider(),
              comp.myCard("+216 50 000 00", Icons.phone, 26),
              comp.myCard("oussema.aroua@email.com", Icons.email, 26),
              comp.myButton(() {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (BuildContext context) {
                  return WonderScreen();
                }));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
