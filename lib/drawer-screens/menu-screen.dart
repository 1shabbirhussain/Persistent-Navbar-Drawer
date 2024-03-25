import 'package:flutter/material.dart';
import '../drawer.dart';

// THIS CLASS CONTAINS NAMES AND ICONS FOR CUSTOM WIDGET OF DRAWER
class MenuItems {
  static const home = MenuItem("Home", Icons.home);
  static const promo = MenuItem("promo", Icons.card_giftcard);
  static const settings = MenuItem("Settings", Icons.settings);
  static const help = MenuItem("help", Icons.help);

  static const all = <MenuItem>[home, promo, settings, help];
}

class MenuScreen extends StatelessWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  const MenuScreen(
      {Key? key, required this.currentItem, required this.onSelectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Spacer(),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 50.0,
            ),
          ),
          Spacer(),
          ...MenuItems.all.map(buildMenuItem).toList(),
          Spacer(
            flex: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Text("Extra Details and info etc"),
          )
        ],
      )),
    );
  }

  // THIS IS CUSTOM WIDGET THAT LIST NAME OF SCREENS INSIDE DRAWER USING MenuItem CLASS AND ON TAP IS USED TO CHANGE TILE PROPERTIES ONLY
  Widget buildMenuItem(MenuItem item) => ListTile(
        selected: currentItem == item,
        selectedTileColor: Colors.black12,
        selectedColor: Colors.white,
        minLeadingWidth: 20,
        leading: Icon(item.icon),
        title: Text(item.title),
        onTap: () {
          onSelectedItem(item);
        },
      );
}
