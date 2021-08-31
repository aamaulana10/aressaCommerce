import 'package:aressa_commerce/feature/cart/view/cartView.dart';
import 'package:aressa_commerce/feature/home/view/homeView.dart';
import 'package:aressa_commerce/feature/search/view/searchView.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/material.dart';

class MainTabbar extends StatefulWidget {
  const MainTabbar({Key key}) : super(key: key);

  @override
  _MainTabbarState createState() => _MainTabbarState();
}

class _MainTabbarState extends State<MainTabbar> {

  var screen = [
    HomeView(),
    SearchView(),
    CartView()
  ];

  var currentIndex = 0;

  void onChangeTab(int index) {

    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (e) => { onChangeTab(e) },
        currentIndex: currentIndex,
        selectedItemColor: ColorConfig.bluePrimary,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart"
          )
        ],
      ),
    );
  }
}
