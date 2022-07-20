import 'package:flutter/material.dart';
import 'package:market/mainComponents/appSet.dart';
import 'package:market/mainComponents/mainButton.dart';

import 'arcadeContainer.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State < Body > {
  ScrollController _horizontalController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      panEnabled: false,
      boundaryMargin: EdgeInsets.all(20),
      minScale: 0.3,
      maxScale: 4,
      child: SingleChildScrollView(
        physics: ScrollPhysics(
          parent: BouncingScrollPhysics()
        ),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ArcadeContainer(),
            SizedBox(height: 15, ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 15
                ),
                child: Row(
                  children: [
                    Text(
                      'Popular Arcade Hack',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23
                      )
                    ),
                    Spacer(),
                    MainButton(),
                  ],
                ),
            ),
            SizedBox(height: 10, ),
            Container(
              height: 200,
              width: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  AppSet(),
                  AppSet(),
                  AppSet(),
                ],
              ),
            ),
            Divider(
              height: 30,
              indent: 30,
              endIndent: 30,
              color: Colors.grey[300],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 180,
              width: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                ],
              ),
            ),
            Divider(
              height: 20,
              indent: 30,
              endIndent: 30,
              color: Colors.grey[300],
            ),
            SizedBox(height: 5,),
            Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(15)
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(
                  'asset/images/retroSpace3.jpg'
                ),
                fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(height: 3,),
          Text(
            '우주',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}