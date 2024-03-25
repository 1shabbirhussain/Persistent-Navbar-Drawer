import 'package:asdfg/drawer-screens/helpScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'drawer-screens/promoPage.dart';
import 'main-screen-controller.dart';
import 'main-screen.dart';

class NavigationDrawerWidget extends StatelessWidget {
  NavigationDrawerWidget({Key? key}) : super(key: key);
  
  final MainScreenController controller = Get.find<MainScreenController>();
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      elevation: 50,
      child: Material(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(30)),
        color: Colors.red,
        child: Column(
          // padding: padding,
          children: [
            Spacer(),
            // SizedBox(
            //   height: 100,
            // ),
            buildMenuItem(
              text: "Home",
              icon: Icons.home,
              OnCliked: () => selectedItem(context, 0),
            ),
            SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: "setting",
              icon: Icons.settings,
              OnCliked: () => selectedItem(context, 1),
            ),
            SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: "Promo",
              icon: Icons.card_giftcard_outlined,
              OnCliked: () => selectedItem(context, 2),
            ),
            SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: "Help",
              icon: Icons.help,
              OnCliked: () => selectedItem(context, 3),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(
      {required String text, required IconData icon, VoidCallback? OnCliked}) {
    final color = Colors.white;
    final hoverColor = Colors.white60;

    return ListTile(
      leading: Icon(icon),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: () {
        OnCliked?.call();
      },
    );
  }

  selectedItem(BuildContext context, int index) {
    Get.back();
    switch (index) {
      case 0:
      // Get.off(MainScreen(
      //   home: true,
      //   key: UniqueKey(),
      // ));
      controller.goToTabHome(index);
      break;

      case 1:
      controller.goToTabSetting(index);
        break;

      case 2:
        Get.to(PromoPage());
        break;

      case 3:
        Get.to(HelpScreen());
        break;
    }
  }
}
