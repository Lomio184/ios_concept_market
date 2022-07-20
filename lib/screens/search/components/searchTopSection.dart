import 'package:flutter/material.dart';

class SearchTopSection extends StatelessWidget {
  const SearchTopSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '검색',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40
            ),
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              image: DecorationImage(
                image:  AssetImage(
                  'asset/images/profile.png'
                ),
                fit: BoxFit.cover
              )
            ),
          )
        ],
      ),
    );
  }
}