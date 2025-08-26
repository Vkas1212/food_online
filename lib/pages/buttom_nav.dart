import 'package:flutter/material.dart';
import 'package:food_online/pages/home_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:food_online/pages/order_page.dart';
import 'package:food_online/pages/profile_page.dart';
import 'package:food_online/pages/wallet_page.dart';

class ButtomNav extends StatefulWidget {
  const ButtomNav({super.key});

  @override
  State<ButtomNav> createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {
  late List<Widget> pages;

  late HomePage homePage;
  late OrderPage orderPage;
  late WalletPage walletPage;
  late ProfilePage profilePage;

  int currentTableIndex = 0;

  @override
  void initState() {
    homePage = HomePage();
    orderPage = OrderPage();
    walletPage = WalletPage();
    profilePage = ProfilePage();

    pages = [homePage, orderPage, walletPage, profilePage];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 47,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTableIndex = index;
          });
        },
        items: [
          Icon(Icons.home, color: Colors.white, size: 30.0),
          Icon(Icons.shopping_bag, color: Colors.white, size: 30.0),
          Icon(Icons.wallet, color: Colors.white, size: 30.0),
          Icon(Icons.person, color: Colors.white, size: 30.0),
        ],
      ),
      body: pages[currentTableIndex],
    );
  }
}
