import 'package:aressa_commerce/feature/account/view/accountView.dart';
import 'package:aressa_commerce/feature/cart/view/cartView.dart';
import 'package:aressa_commerce/feature/home/view/homeView.dart';
import 'package:aressa_commerce/feature/offer/view/offerView.dart';
import 'package:aressa_commerce/feature/search/view/searchResultView.dart';
import 'package:aressa_commerce/feature/search/view/searchView.dart';
import 'package:aressa_commerce/generated/l10n.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainTabbar extends StatefulWidget {
  const MainTabbar({Key key}) : super(key: key);

  @override
  _MainTabbarState createState() => _MainTabbarState();
}

class _MainTabbarState extends State<MainTabbar> {

  var screen = [
    HomeView(),
    SearchResultView(),
    CartView(),
    AccountView()
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
        unselectedItemColor: ColorConfig.textColor1,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          fontFamily: "PoppinsBold",
          fontSize: 10
        ),unselectedLabelStyle: TextStyle(
          fontFamily: "PoppinsRegular",
          fontSize: 10
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: S.of(context).home
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: S.of(context).searchProduct
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: S.of(context).yourCart
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: S.of(context).account
          )
        ],
      ),
    );
  }
}
