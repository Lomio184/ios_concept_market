import 'package:flutter/material.dart';
import 'package:market/mainComponents/zoomInScreen/heroAd.dart';

class TodayAdSection extends StatelessWidget {
  const TodayAdSection({
    Key key, this.imageSrc, this.title,
  }) : super(key: key);
  final String imageSrc;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => HeroAdScreen()
        ));
      },
      child: Container(
        height: 400,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(
              '$imageSrc',
            ),
            fit: BoxFit.cover
          )
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$title',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30
              )
            ),
          ),
        )
      ),
    );
  }
}