import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'adSection.dart';
import 'todaySection.dart';

class Homebody extends StatefulWidget {
  @override
  _HomebodyState createState() => _HomebodyState();
}

class _HomebodyState extends State<Homebody> {
  String formattedDate = DateFormat("MM월 dd일").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 40
        ),
        child: Column(
          children: [
            TodaySection(formattedDate: formattedDate),
            SizedBox(height: 20),
            TodayAdSection(
                imageSrc: 'asset/images/retroSpace.jpeg', 
                title: '가상 세계 속으로'
            ),
            SizedBox(height: 30),
            TodayAdSection(
                imageSrc: 'asset/images/retroSpace2.jpg',
                title: '오직 그녀를 구하기 위해!'
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      image: DecorationImage(
                          image: AssetImage('asset/images/retroSpace3.jpg'),
                          fit: BoxFit.cover)),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            '화제의 에디터',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ),
                          ),
                      ),
                    ),
                ),
                Container(
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        color: Colors.blue[900]),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'HAZARD Hack Skill',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 23),
                              ),
                              Text('해킹이란 무엇인가?',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 13,
                                  )),
                              Text('우주에서 하는 해킹!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 13,
                                  )),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Text(
                                  '읽기',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
