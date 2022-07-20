import 'package:flutter/material.dart';
import 'package:market/functionalSet/FunctionSet.dart';

class FruitTitleSection extends StatelessWidget {
  const FruitTitleSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15
      ),
      child: Row(
        children: [
          Text(
            '오늘의 과일',
            style : TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            )
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
                  image: AssetImage(
                    'asset/images/profile.png'
                  )
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}