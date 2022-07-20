import 'package:flutter/material.dart';

class ProfileScrollScreen extends StatelessWidget {
  const ProfileScrollScreen({
    Key key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: 800,
        decoration: BoxDecoration(
          color: Colors.grey[700],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: new BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 160),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Accounts',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Clear',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20, ),
                  ],
                ),
              )
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 150,
              color: Colors.grey[800],
              child: Column(
                children: [
                  Container(
                    height: 90,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 85,
                              width: 85,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'asset/images/profile.png'
                                  ),
                                  fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(45)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 25
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '김민성',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    Text(
                                      'minsung830@icloud.com',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey[400],
                                        fontWeight: FontWeight.w400
                                      )
                                    )
                                  ],
                                ),
                            )
                          ],
                        ),
                    ),
                  ),
                  Divider(
                    height: 0,
                    indent: 100,
                    color: Colors.grey[400],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Game Center',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w300
                            )
                          ),
                          Container(
                            width: 150,
                            height: 30,
                            child: Row(
                              children: [
                                Text(
                                  'Mac In Hazard',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w300
                                  )
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  size: 25,
                                  color: Colors.grey[500],
                                )
                              ]
                            ),
                          )
                        ],
                      ),
                  )
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}