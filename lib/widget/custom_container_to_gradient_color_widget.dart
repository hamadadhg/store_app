import 'package:flutter/material.dart';

class CustomContainerToGradientColorWidget extends StatelessWidget {
  const CustomContainerToGradientColorWidget({
    super.key,
    required this.firstColor,
    required this.secondColor,
    required this.widget,
  });

  final int firstColor;
  final int secondColor;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 170,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(
              firstColor,
            ),
            Color(
              secondColor,
            ),
          ],
        ),
      ),
      child: widget,
    );
  }
}
