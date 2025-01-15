import 'package:flutter/material.dart';

class CustomGestureDetectorWidget extends StatelessWidget {
  const CustomGestureDetectorWidget({
    super.key,
    required this.wordToNavigator,
    required this.widget,
  });
  final String wordToNavigator;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          wordToNavigator,
        );
      },
      child: widget,
    );
  }
}
