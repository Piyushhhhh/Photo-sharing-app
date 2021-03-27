import 'package:flutter/material.dart';

class PlaceHolderWidget extends StatelessWidget {
  final double height;
  PlaceHolderWidget({this.height = 50});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Card(
        elevation: 0.0,
        child: Center(
          child: Icon(
            Icons.image,
          ),
        ),
      ),
    );
  }
}
