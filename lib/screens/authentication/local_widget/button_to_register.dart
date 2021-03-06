import 'package:flutter/material.dart';
import 'package:piyushPhotoSharing/widgets/dark_button.dart';

class ButtonToRegister extends StatelessWidget {
  const ButtonToRegister({
    Key key,
    @required this.screenSize,
    @required this.buttonText,
    @required this.buttonTap,
  }) : super(key: key);

  final Size screenSize;
  final String buttonText;
  final Function buttonTap;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: screenSize.height / 50.0,
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            "Don't have an account?",
            style: TextStyle(fontSize: 14),
          ),
        ),
        //create account button
        //screen size for screen size
        //button text  for text in button
        //button tap, function that run when user tap
        DarkButton(
          screenSize: screenSize,
          buttonText: buttonText,
          buttonTap: buttonTap,
        ),
      ],
    );
  }
}
