import 'package:flutter/material.dart';
import 'package:piyushPhotoSharing/widgets/blue_button.dart';

import '../../../widgets/post_field.dart';

class AddPostField extends StatelessWidget {
  const AddPostField({
    Key key,
    @required this.screenSize,
    @required this.locationController,
    @required this.tagsController,
    @required this.buttonPostPress,
  }) : super(key: key);

  final Size screenSize;
  final TextEditingController tagsController;
  final TextEditingController locationController;
  final Function buttonPostPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width,
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PostField(
            controller: locationController,
            hintText: 'Location',
            margin: screenSize.height * 0.03,
          ),
          SizedBox(height: screenSize.height * 0.08),
          BlueButton(
            screenSize: screenSize,
            buttonTap: buttonPostPress,
            buttonText: 'Post',
          )
        ],
      ),
    );
  }
}
