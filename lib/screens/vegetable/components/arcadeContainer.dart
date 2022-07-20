import 'package:flutter/material.dart';
import 'package:market/functionalSet/FunctionSet.dart';

class ArcadeContainer extends StatelessWidget {
  const ArcadeContainer({
    Key key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 750,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'asset/images/retroSpace4.jpg'
              ),
              fit: BoxFit.cover
            )
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 60
              ),
              child: GestureDetector(
                onTap: () {
                  FunctionSet().UpScrollProfileScreen(context);
                },
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'asset/images/profile.png'
                      )
                    )
                  ),
                ),
              ),
          ),
        ),
        Positioned(
          left: 50,
          right: 50,
          bottom: 20,
          child: Container(
            height: 250,
            width: 150,
            child: Column(
              children: [
                Text(
                  '🧚Arcade',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'Ten Hack Skill\nPremium Hack Service\n100+ More Over!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 15, ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueAccent
                  ),
                  child: Center(
                    child: Text(
                      'Free Experience',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10, ),
                Text(
                  'Free For One Month, \$5.99 for Month After Free Experience',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}