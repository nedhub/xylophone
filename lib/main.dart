import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget soundTile({required Color color, required String soundNumber}) {
    final player = new AudioCache();

    return FlatButton(
      height: MediaQuery.of(context).size.height / 7,
      color: color,
      onPressed: () {
        // player.play("assets_note1.wav");
        player.play("assets_note$soundNumber.wav");
      },
      child: Text(""),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            soundTile(color: Colors.red, soundNumber: "1"),
            soundTile(color: Colors.yellow, soundNumber: "2"),
            soundTile(color: Colors.orange, soundNumber: "3"),
            soundTile(color: Colors.green, soundNumber: "4"),
            // soundTile(color: Colors.teal),
            soundTile(color: Colors.purple, soundNumber: "5"),
            soundTile(color: Colors.amber, soundNumber: "6"),
            // soundTile(color: Colors.indigo),
          ],
        ),
      ),
    );
  }
}
