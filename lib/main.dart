/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app_2/cubits/store_cubit/store_cubit.dart';
import 'package:store_app_2/pages/men_clothing_page.dart';
import 'package:store_app_2/pages/details_page.dart';
import 'package:store_app_2/pages/electronics_page.dart';
import 'package:store_app_2/pages/home_page.dart';
import 'package:store_app_2/pages/jewellery_page.dart';
import 'package:store_app_2/pages/shopping_store_page.dart';
import 'package:store_app_2/pages/women_clothing_page.dart';
import 'package:store_app_2/simple_bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(
    const StoreApp(),
  );
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StoreCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomePage.homeId: (context) => const HomePage(),
          ShoppingStorePage.shoppingStoreId: (context) =>
              const ShoppingStorePage(),
          MenClothingPage.menClothingId: (context) => const MenClothingPage(),
          ElectronicsPage.electronicsId: (context) => const ElectronicsPage(),
          JewelleryPage.jewelleryId: (context) => const JewelleryPage(),
          WomenClothingPage.womenClothingId: (context) =>
              const WomenClothingPage(),
          DetailsPage.detailsId: (context) => const DetailsPage(),
        },
        initialRoute: HomePage.homeId,
      ),
    );
  }
}
*/
