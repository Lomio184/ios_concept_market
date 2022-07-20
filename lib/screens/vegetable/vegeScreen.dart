import 'package:flutter/material.dart';

import 'components/body.dart';

class VegeScreen extends StatefulWidget {
  @override
  _VegeScreenState createState() => _VegeScreenState();
}

class _VegeScreenState extends State<VegeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Body(),
    );
  }
}
