import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context)=> Scaffold(
    appBar: AppBar(
      title: Text('Login'),
      centerTitle: true,
      backgroundColor: Colors.redAccent,
    ),
  );
}
