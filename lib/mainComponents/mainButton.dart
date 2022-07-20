import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.grey[700],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          '모두 보기',
          style: TextStyle(
            fontSize: 13,
            color: Colors.blue,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
