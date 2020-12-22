import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Components {
  var myStyle = GoogleFonts.adventPro(color: Colors.white, fontSize: 36);

  myCard(String text, IconData icon, double size) {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.teal,
            size: size,
          ),
          title: Text(text),
          trailing: Icon(Icons.ac_unit),
        ),
      ),
    );
  }

  myText(String text, TextStyle myStyle) {
    return new Text(
      text,
      style: myStyle,
    );
  }

  myAvatar() {
    return CircleAvatar(
      backgroundImage: AssetImage('images/me.jpg'),
      radius: 80,
    );
  }

  myDivider() {
    return Divider(
      color: Colors.white,
      indent: 36,
      endIndent: 36,
    );
  }

  myButton(Function click) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: BorderSide(color: Colors.grey)),
        color: Colors.blueGrey,
        textColor: Colors.white,
        onPressed: () {
          print("TESTER");
          click();
        },
        child: Text("Go to the Game"),
      ),
    );
  }
}
