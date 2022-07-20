import 'package:flutter/material.dart';
import 'package:market/screens/fruit/fruitScreen.dart';
import 'package:market/screens/home/components/body.dart';
import 'package:market/screens/search/searchScreen.dart';
import 'package:market/screens/vegetable/vegeScreen.dart';

final List<Widget> _screenSet = [
  Homebody(),
  FruitScreen(),
  SearchScreen(),
  VegeScreen(),
];
