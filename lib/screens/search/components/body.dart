import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:market/screens/search/components/searchSection.dart';
import 'package:market/screens/search/components/searchTopSection.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State < Body > {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
          child: Column(
        children: [
          SizedBox(height: 60, ),
          SearchTopSection(),
          SizedBox(height: 15,),
          SearchSection(),
          SizedBox(height: 30,),
          NewArrival()
        ],
      ),
    );
  }
}

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15
      ),
      child: Container(
        height: 400,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children : [
            Text(
              '새로운 발견',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Divider(
              color: Colors.grey[400],
            ),
            Text(
              '우주 여행',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
            Divider(
              color: Colors.grey[400],
            ),
            Text(
              '소행성과의 만남',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
            Divider(
              color: Colors.grey[400],
            ),
            Text(
              '새로운 물질 발견',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
            Divider(
              color: Colors.grey[400],
            ),
            Text(
              '외계 생명체와의 조우',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
          ]
        ),
      ),
    );
  }
}

