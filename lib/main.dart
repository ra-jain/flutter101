import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'Card Background Image Example',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Container(
                child: Card(
                  child: Center(
                    child: Text('Text in a Card',
                        style: TextStyle(fontFamily: 'DotGothic16')),
                  ),
                ),
                width: 300,
                height: 100,
              ),
            )),
      ),
    );
  }
}
