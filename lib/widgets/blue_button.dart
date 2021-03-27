import 'package:flutter/material.dart';
import 'package:piyushPhotoSharing/constant/color.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({
    Key key,
    @required this.screenSize,
    @required this.buttonTap,
    @required this.buttonText,
  }) : super(key: key);

  final Size screenSize;
  final Function buttonTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTap, //function that run when user tap
      child: Container(
        alignment: Alignment.center,
        width: screenSize.width,
        height: screenSize.height / 15,
        decoration: BoxDecoration(
          color: buttonBlueColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Text(
          buttonText, //button text, example login or get started
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
