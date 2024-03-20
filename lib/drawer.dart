import 'package:asdfg/helpScreen.dart';
import 'package:asdfg/menuItemClass.dart';
import 'package:asdfg/paymentPage.dart';
import 'package:asdfg/promoPage.dart';
import 'package:asdfg/screens/main-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'menu-screen.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  // SELECTED SCREEN OF DRAWER
  MenuItem currentItem = MenuItems.home;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      //MENU SCREEN OS SCREEN THAT IS SHOWN ON RIGHT SIDE OF DRAWER
      menuScreen: Builder(
          builder: (context) => MenuScreen(
              currentItem: currentItem,
              //ACTIONS TO TAKE ON SELECTING AN ITEM OF DRAWER
              onSelectedItem: (item) {
                setState(() {
                  currentItem = item;
                  ZoomDrawer.of(context)!.close();
                });
              })),
      //MAIN SCREEN ARE SCREENS WHICH ARE AVAILBLE IN DRAWER
      mainScreen: getScreen(),
      style: DrawerStyle.defaultStyle,
      borderRadius: 24.0,
      showShadow: true,
      angle: 0,
      drawerShadowsBackgroundColor: Colors.grey,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      menuScreenOverlayColor: Colors.red,
      menuBackgroundColor: Colors.red,
    );
  }

  // ===============ACTION ON MENU ITEMS OF DRAWER ========================
  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.home:
        return MainScreen(home: true, key: UniqueKey(),);
      case MenuItems.promo:
        return PromoPage();
      case MenuItems.settings:
        return MainScreen(setting: true, key: UniqueKey(),);
      case MenuItems.help:
      
        return HelpScreen();
      default:
        return PaymentPage();
    }
  }
}
