import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  const PromoBanner(
      {Key? key, required this.screenWidth, required this.screenHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight * 0.27,
      left: 0,
      right: 0,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  'assets/imageHome.png',
                  width: screenWidth * 0.8,
                ),
              ),
              Positioned(
                top: 10,
                left: 20,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xFFED5151),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Promo',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 20,
                right: 0,
                child: Container(
                  child: Text(
                    'Buy one get one FREE',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
