import 'package:flutter/material.dart';

class AppDirectNig extends StatelessWidget {
  const AppDirectNig({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'asset/images/logo.png'
              ),
              fit: BoxFit.contain
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'T Express',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                )
              ),
              Text(
                '우주로 나아가는 익스프레스',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  color: Colors.white
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 95,),
        Column(
          children: [
            Container(
              height: 27,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Text(
                  '받기',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 13,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            SizedBox(height: 3,),
            Text(
              '앱 내 구입',
              style: TextStyle(
                fontSize: 9,
                color: Colors.grey[300]
              ),
            )
          ],
        )
      ],
    );
  }
}