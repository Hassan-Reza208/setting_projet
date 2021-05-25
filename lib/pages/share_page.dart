import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SharePage extends StatefulWidget {
  @override
  _SharePageState createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Share & settings'),
      centerTitle: true,
      backgroundColor: Colors.green,
    ),
  );
}
