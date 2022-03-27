import 'package:flutter/material.dart';
import 'package:grid_work/utils/images.dart';

class CustomCircleImage extends StatelessWidget {
  final double imageHeight;
  final double imageWidth;
  final BoxFit boxFit;
  final String image;
  final double radius;
  final String? placeholder;

  const CustomCircleImage({
    Key? key,
    required this.imageHeight,
    required this.imageWidth,
    required this.boxFit,
    required this.image,
    required this.radius,
    this.placeholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      child: ClipOval(
        child: Image.asset(
          image,
          height: imageHeight,
          width: imageWidth,
          fit: boxFit,
        ),
      ),
    );
  }
}
