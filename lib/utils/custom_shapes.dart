import 'package:flutter/material.dart';
class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 170);

    path.quadraticBezierTo(
      0, size.height-70,
      150, size.height-70,
    );

    path.lineTo(size.width-70 , size.height-70);
    path.quadraticBezierTo(
      size.width, size.height-70,
      size.width, size.height,
    );

    path.lineTo(size.width, 0);
    path.close();


    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
