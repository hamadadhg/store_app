import 'package:flutter/material.dart';
import 'package:store_app_2/constant_file.dart';
import 'package:store_app_2/widget/custom_text_widget.dart';

void showMessageToUserHelper(BuildContext context,
    {String text = 'Done The Product Is Buying 💫'}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.brown,
      duration: const Duration(
        seconds: 3,
      ),
      content: CustomTextWidget(
        text: 'Done The Product Is Buying 💫',
        color: whiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 37,
      ),
    ),
  );
}
