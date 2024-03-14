import 'package:daily_coffee/src/main_page/widget/coffee_banner_widget.dart';
import 'package:daily_coffee/src/main_page/widget/coffee_selector_widget.dart';
import 'package:daily_coffee/src/main_page/widget/header_area.dart';
import 'package:daily_coffee/src/main_page/widget/promo_banner_widget.dart';
import 'package:daily_coffee/src/main_page/widget/search_areaw_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SearchArea(screenWidth: screenWidth, screenHeight: screenHeight),
              CoffeeSelectorArea(),
            ],
          ),
          PromoBanner(screenWidth: screenWidth, screenHeight: screenHeight),
        ],
      ),
    );
  }
}
