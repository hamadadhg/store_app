import 'package:flutter/material.dart';
import 'package:store_app_2/constant_file.dart';
import 'package:store_app_2/widget/custom_text_widget.dart';

class CustomRowLikeAppBarWidget extends StatelessWidget {
  const CustomRowLikeAppBarWidget({
    super.key,
    required this.firstTextInColumn,
  });
  final String firstTextInColumn;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 40,
        ),
        const CustomTextWidget(
          text: '💫',
          fontSize: 70,
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          children: [
            CustomTextWidget(
              text: firstTextInColumn,
              color: redColor,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            CustomTextWidget(
              text: 'Shop',
              color: redColor,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ],
    );
  }
}
