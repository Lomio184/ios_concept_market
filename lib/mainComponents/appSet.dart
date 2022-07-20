import 'package:flutter/material.dart';

import 'appDirectNig.dart';

class AppSet extends StatelessWidget {
  const AppSet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10
      ),
      child: Column(
        children: [
          AppDirectNig(),
          SizedBox(height: 10,),
          AppDirectNig(),
          SizedBox(height: 10,),
          AppDirectNig(),
        ],
      ),
    );
  }
}