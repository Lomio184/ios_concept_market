import 'package:flutter/material.dart';
import 'package:market/mainComponents/zoomInScreen/components/body.dart';

class HeroAdScreen extends StatefulWidget {
  @override
  _HeroAdScreenState createState() => _HeroAdScreenState();
}

class _HeroAdScreenState extends State<HeroAdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}