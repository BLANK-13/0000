import 'package:flutter/material.dart';

class AppBarImage extends StatelessWidget {
  AppBarImage({Key? key, required this.img}) : super(key: key);
  String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              opacity: 0.08, image: AssetImage(img), fit: BoxFit.fill)),
    );
  }
}
