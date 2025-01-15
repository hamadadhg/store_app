/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app_2/constant_file.dart';
import 'package:store_app_2/cubits/store_cubit/store_cubit.dart';
import 'package:store_app_2/cubits/store_cubit/store_state.dart';
import 'package:store_app_2/helper/show_message_to_user_helper.dart';
import 'package:store_app_2/widget/custom_row_like_app_bar_widget.dart';
import 'package:store_app_2/widget/custom_container_to_see_the_product_widget.dart';
import 'package:store_app_2/widget/custom_text_widget.dart';

class JewelleryPage extends StatefulWidget {
  const JewelleryPage({super.key});
  static String jewelleryId = 'JewelleryPage';

  @override
  State<JewelleryPage> createState() => _JewelleryPageState();
}

class _JewelleryPageState extends State<JewelleryPage> {
  @override
  void initState() {
    context.read<StoreCubit>().storeMethod(
          category: 'jewelery',
          limit: 4,
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          const CustomRowLikeAppBarWidget(
            firstTextInColumn: 'Jewellery',
          ),
          const SizedBox(
            height: 7,
          ),
          BlocConsumer<StoreCubit, StoreState>(
            listener: (context, state) {
              if (state is FailureStoreState) {
                showMessageToUserHelper(
                  context,
                  text: state.errorMessage,
                );
              }
            },
            builder: (context, state) {
              if (state is LoadingStoreState) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is SuccessStoreState) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: state.limit,
                    itemBuilder: (context, index) {
                      return CustomContainerToSeeTheProductWidget(
                        getProductInASpecificCategoryModal:
                            BlocProvider.of<StoreCubit>(context)
                                .emptyList[index],
                      );
                    },
                  ),
                );
              } else {
                return CustomTextWidget(
                  text: 'No Data Available',
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
*/
