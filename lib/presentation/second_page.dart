import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const path = '/second_page';
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SecondPage'),),
      body: Container(),
    );
  }
}
