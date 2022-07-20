import 'package:flutter/material.dart';

import 'components/body.dart';

class FruitScreen extends StatefulWidget {
  @override
  _FruitScreenState createState() => _FruitScreenState();
}

class _FruitScreenState extends State<FruitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 5,
        backgroundColor: Colors.grey[500],
      ),
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(child: Body())
    );
  }
}