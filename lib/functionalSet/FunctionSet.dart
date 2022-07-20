import 'package:flutter/material.dart';
import 'package:market/mainComponents/profileScrollScreen.dart';

class FunctionSet{
  void UpScrollProfileScreen(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      isDismissible: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20)
        )
      ),
      barrierColor: Colors.grey[900].withOpacity(.9),
      builder: (BuildContext bc) {
        return ProfileScrollScreen();
      });
    }
}