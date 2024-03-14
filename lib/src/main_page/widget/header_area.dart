import 'package:flutter/material.dart';

class HeaderArea extends StatelessWidget {
  const HeaderArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location,',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Rue Jeanne d\'Arc, Rouen',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        )
      ]),
    );
  }
}
