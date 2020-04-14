import 'dart:io';
import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Panorama',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Panorama'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File _imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Panorama(
        isCompass: true,
        animSpeed: 0.0,
        interactive: true,
        child: _imageFile != null
            ? Image.file(_imageFile)
            : Image.asset('assets/panorama.jpg'),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () async {
          //_imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
          setState(() {});
        },
        child: Icon(Icons.panorama),
      ),
    );
  }
}
