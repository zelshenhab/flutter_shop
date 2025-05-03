import 'package:flutter/material.dart';
import 'package:flutter_shop/screens/home/widgets/home_best_sellers.dart';
import 'package:flutter_shop/screens/home/widgets/home_category_tabs.dart';
import 'package:flutter_shop/screens/home/widgets/home_promotions_list.dart';
import 'widgets/home_banner.dart';
import 'widgets/home_product_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HomeBanner(),
              SizedBox(height: 20),
              HomeCategoriesTabs(),
              SizedBox(height: 20),
              HomeProductList(),
              SizedBox(height: 24),
              HomePromotionsList(),
              SizedBox(height: 24),
              HomeBestSellers(),
            ],
          ),
        ),
      ),
    );
  }
}
