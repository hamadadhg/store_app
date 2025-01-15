/*
import 'package:flutter/material.dart';
import 'package:store_app_2/constant_file.dart';
import 'package:store_app_2/modals/get_product_in_a_specific_category_modal.dart';
import 'package:store_app_2/pages/details_page.dart';
import 'package:store_app_2/widget/custom_text_widget.dart';

class CustomContainerToSeeTheProductWidget extends StatefulWidget {
  const CustomContainerToSeeTheProductWidget({
    super.key,
    required this.getProductInASpecificCategoryModal,
  });
  final GetProductInASpecificCategoryModal getProductInASpecificCategoryModal;
  @override
  State<CustomContainerToSeeTheProductWidget> createState() =>
      _CustomContainerToSeeTheProductWidgetState();
}

class _CustomContainerToSeeTheProductWidgetState
    extends State<CustomContainerToSeeTheProductWidget> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          DetailsPage.detailsId,
          arguments: widget.getProductInASpecificCategoryModal,
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 10,
        ),
        height: 110,
        color: whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.all(
                3,
              ),
              color: greyColor,
              child: Padding(
                padding: const EdgeInsets.all(
                  6,
                ),
                child: Image.network(
                  widget.getProductInASpecificCategoryModal.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(
                  text:
                      '${widget.getProductInASpecificCategoryModal.productName}'
                          .substring(
                    0,
                    11,
                  ),
                  color: redColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextWidget(
                  text: r'$0,00',
                  color: orangeColor,
                  fontSize: 15,
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {
                isClick = !isClick;
                setState(
                  () {},
                );
              },
              icon: isClick == true
                  ? Icon(
                      Icons.favorite,
                      color: redColor,
                      size: 40,
                    )
                  : Icon(
                      Icons.favorite,
                      color: greyColor,
                      size: 40,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
