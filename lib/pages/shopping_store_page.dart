import 'package:flutter/material.dart';
import 'package:store_app_2/pages/men_clothing_page.dart';
import 'package:store_app_2/pages/electronics_page.dart';
import 'package:store_app_2/pages/jewellery_page.dart';
import 'package:store_app_2/pages/women_clothing_page.dart';
import 'package:store_app_2/widget/custom_container_to_gradient_colors_widget.dart';
import 'package:store_app_2/widget/custom_containers_in_row_widget.dart';
import 'package:store_app_2/widget/custom_gesture_detector_widget.dart';
import 'package:store_app_2/widget/custom_text_widget.dart';

class ShoppingStorePage extends StatelessWidget {
  const ShoppingStorePage({super.key});
  static String shoppingStoreId = 'ShoppingStorePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        centerTitle: true,
        title: const CustomTextWidget(
          text: 'Shopping Store',
        ),
      ),
      body: CustomContainerToGradientColorsWidget(
        firstColor: Colors.grey.shade300,
        secondColor: Colors.grey.shade400,
        thirdColor: Colors.grey.shade500,
        widget: Padding(
          padding: const EdgeInsets.only(
            left: 12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  CustomGestureDetectorWidget(
                    wordToNavigator: MenClothingPage.menClothingId,
                    widget: const CustomContainersInRowWidget(
                      color1: 0xff84A6DC,
                      color2: 0xffE3708A,
                      text: 'Cloth(M👕)',
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomGestureDetectorWidget(
                    wordToNavigator: WomenClothingPage.womenClothingId,
                    widget: const CustomContainersInRowWidget(
                      color1: 0xffE7E2CC,
                      color2: 0xff87A9A5,
                      text: 'Cloth(W👚)',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  CustomGestureDetectorWidget(
                    wordToNavigator: JewelleryPage.jewelleryId,
                    widget: const CustomContainersInRowWidget(
                      color1: 0xffF79079,
                      color2: 0xff00BBB7,
                      text: 'Jewellery 💎',
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomGestureDetectorWidget(
                    wordToNavigator: ElectronicsPage.electronicsId,
                    widget: const CustomContainersInRowWidget(
                      color1: 0xffF44336,
                      color2: 0xffFF9800,
                      text: 'Electronic 💻',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
