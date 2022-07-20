import 'package:flutter/material.dart';
import 'package:market/mainComponents/mainButton.dart';

class RecommendFruit extends StatelessWidget {
  const RecommendFruit({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '핵심 과일의 로고',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '에디터가 직접 골랐습니다',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                  fontWeight: FontWeight.w300
                )
              ),
            ],
          ),
          Spacer(),
          MainButton()
        ],
      ),
    );
  }
}

