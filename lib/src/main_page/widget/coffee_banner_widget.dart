import 'package:daily_coffee/src/main_page/widget/coffee_selector_widget.dart';
import 'package:flutter/material.dart';

class CoffeeSelectorArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.10),
        color: Colors.white,
        child: CoffeeSelector(),
      ),
    );
  }
}
