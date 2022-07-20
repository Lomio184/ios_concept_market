import 'package:flutter/material.dart';
import 'package:market/functionalSet/FunctionSet.dart';

class TodaySection extends StatelessWidget {
  const TodaySection({
    Key key,
    @required this.formattedDate,
  }): super(key: key);

  final String formattedDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$formattedDate',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Colors.white)),
                Text('투데이',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white))
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                FunctionSet().UpScrollProfileScreen(context);
              },
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  image: DecorationImage(
                    image: AssetImage('asset/images/profile.png'),
                  ),
                ),
              ),
            )
          ],
        ),
    );
  }
}

