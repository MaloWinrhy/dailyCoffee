import 'package:daily_coffee/src/main_page/view/home.dart';
import 'package:daily_coffee/src/onBoarding/view/onBoarding.dart';
import 'package:get/get.dart';

const String initialRoute = '/';
const String homeRoute = '/home';

List<GetPage> pages = [
  GetPage(name: initialRoute, page: () => OnBoarding()),
  GetPage(name: homeRoute, page: () => Home()),
];
