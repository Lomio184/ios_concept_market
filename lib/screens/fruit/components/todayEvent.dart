import 'package:flutter/material.dart';

class TodayEvent extends StatelessWidget {
  const TodayEvent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '특별 이벤트',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 13,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              '광활한 우주 저 넘어',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w500
              ),
            ),
            Text(
              '존스와 함께 시공을 넘어',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w300
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'asset/images/retroSpace.jpeg'
                  ),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(15)
              ),
            )
          ],
        ),
      ),
    );
  }
}