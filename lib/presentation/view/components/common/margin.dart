import 'package:flutter/material.dart';

class MarginVertical extends StatelessWidget {
  const MarginVertical(
    this.height, {
    super.key,
  });
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class MarginHorizontal extends StatelessWidget {
  const MarginHorizontal(
    this.width, {
    super.key,
  });
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
