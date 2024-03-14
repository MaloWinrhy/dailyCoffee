import 'package:daily_coffee/src/main_page/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final List<Widget> _pages = [
    HomeScreen(),
    ShopScreen(),
    NotificationsScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _page,
        height: 60.0,
        items: <Widget>[
          SvgPicture.asset(
            'assets/home.svg',
            color: Colors.white,
            width: 30,
            height: 30,
          ),
          SvgPicture.asset(
            'assets/bag.svg',
            color: Colors.white,
            width: 30,
            height: 30,
          ),
          SvgPicture.asset(
            'assets/heart.svg',
            color: Colors.white,
            width: 30,
            height: 30,
          ),
          SvgPicture.asset(
            'assets/notification.svg',
            color: Colors.white,
            width: 30,
            height: 30,
          ),
          Icon(Icons.person,
              size: 30, color: Colors.white), // Changed for variety
        ],
        color: Color(0xFFC67C4E),
        buttonBackgroundColor: Color(0xFFC67C4E),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: IndexedStack(
        index: _page,
        children: _pages,
      ),
    );
  }
}

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Shop Screen'));
  }
}

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Notifications Screen'));
  }
}

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Favorites Screen'));
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile Screen'));
  }
}
