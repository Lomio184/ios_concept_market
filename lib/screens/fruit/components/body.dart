import 'package:flutter/material.dart';
import 'package:market/mainComponents/appSet.dart';
import 'package:market/screens/fruit/components/todayEvent.dart';
import 'package:market/screens/fruit/components/todaySection.dart';

import '../../../mainComponents/appDirectNig.dart';
import 'recommendFruit.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FruitTitleSection(),
        Divider(
          height: 1,
          indent: 30,
          endIndent: 30,
          color: Colors.grey[300],
        ),
        SizedBox(height: 10,),
        EventCarousel(),
        Divider(
          height: 1,
          indent: 30,
          endIndent: 30,
          color: Colors.grey[300],
        ),
        SizedBox(height: 15,),
        Column(
          children: [
            RecommendFruit(),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15
              ),
              child: Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AppSet(),
                    AppSet(),
                    AppSet(),
                  ],
                ),
              ),
            )
          ],
        ),
        Divider(
          height: 25,
          indent: 30,
          endIndent: 30,
          color: Colors.grey[300],
        ),
        SizedBox(height: 5,),
        Container(
          height: 300,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.grey[700],
            borderRadius: BorderRadius.circular(15)
          ),
        )
      ],
    );
  }
}

class EventCarousel extends StatelessWidget {
  const EventCarousel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15
      ),
      child: Container(
        height: 350,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            TodayEvent(),
            TodayEvent(),
            TodayEvent(),
            TodayEvent(),
          ],
        ),
      ),
    );
  }
}