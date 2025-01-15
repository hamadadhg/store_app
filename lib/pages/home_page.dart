/*
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app_2/pages/shopping_store_page.dart';
import 'package:store_app_2/widget/custom_container_to_gradient_colors_widget.dart';
import 'package:store_app_2/widget/custom_text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String homeId = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        centerTitle: true,
        title: const CustomTextWidget(
          text: 'Store App',
          fontSize: 50,
        ),
      ),
      body: CustomContainerToGradientColorsWidget(
        firstColor: Colors.amber.shade300,
        secondColor: Colors.amber.shade400,
        thirdColor: Colors.amber.shade500,
        widget: Center(
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                ShoppingStorePage.shoppingStoreId,
              );
            },
            icon: const FaIcon(
              FontAwesomeIcons.cartPlus,
              color: Colors.black,
              size: 250,
            ),
          ),
        ),
      ),
    );
  }
}
*/
