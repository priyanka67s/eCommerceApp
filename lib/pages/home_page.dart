import 'package:ecommerceapp/components/bottom_nav_bar.dart';
import 'package:ecommerceapp/pages/cart_page.dart';
import 'package:ecommerceapp/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  //this method will update our selected index
  // when the user taps on the bottom bar
  void navigatorBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  //pages to display
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
    // cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigatorBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon:  const Padding(
              padding: const EdgeInsets.only(left:12.0),
              child: Icon(Icons.menu, color: Colors.black),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                //logo
                DrawerHeader(
                    child: Image.asset(
                      'images/Nike Logo.jpeg',

                    )),
                //drawer Header
                Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(color: Colors.grey[800],),),
                //other page
                const Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.white,),
                    title: Text('Home', style: TextStyle(color: Colors.white)),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.info, color: Colors.white,),
                    title: Text('Info', style: TextStyle(color: Colors.white)),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 25.0,bottom: 25),
                  child: ListTile(
                    leading: Icon(Icons.logout, color: Colors.white,),
                    title: Text('Logout', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
