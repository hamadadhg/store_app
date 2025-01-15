import 'package:flutter/material.dart';
import 'package:store_app_2/constant_file.dart';
import 'package:store_app_2/helper/show_message_to_user_helper.dart';
import 'package:store_app_2/modals/get_product_in_a_specific_category_modal.dart';
import 'package:store_app_2/widget/custom_text_widget.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});
  static String detailsId = 'DetailsPage';
  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments
        as GetProductInASpecificCategoryModal;
    return Scaffold(
      backgroundColor: greyColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: CustomTextWidget(
          text: 'Product Details',
          color: redColor,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 17,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.network(
              product.image,
              height: 250,
              width: 400,
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextWidget(
              text: 'N: ${product.productName}'.substring(
                0,
                14,
              ),
              color: redColor,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextWidget(
              text: 'D: ${product.description}'.substring(
                0,
                21,
              ),
              color: redColor,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextWidget(
              text: r'p: $' '${product.price}',
              color: redColor,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 10,
                fixedSize: const Size(
                  200,
                  75,
                ),
                side: const BorderSide(
                  width: 1,
                ),
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                showMessageToUserHelper(
                  context,
                );
              },
              child: CustomTextWidget(
                text: 'Add To Cart',
                color: whiteColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
