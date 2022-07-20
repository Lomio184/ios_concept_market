import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 15
        ),
        child: Container(
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(9)
          ),
          child: TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              enabled: true,
              hintText: "게임, 앱, 스토리 등",
              hintStyle: TextStyle(
                color: Colors.grey[400]
              ),
              icon: Icon(
                Icons.search,
                color: Colors.grey[400],
              ),
            ),
          ),
        ),
    );
  }
}