// import 'package:asdfg/myDrawerWidget.dart';
// import 'package:asdfg/navbar-screens/profile-screen.dart';
// import 'package:asdfg/navbar-screens/setting-screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_zoom_drawer/config.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
// import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
// import 'navbar-screens/home-screen.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({key, this.zoomDrawerController, this.setting, this.home});
//   //COTROLLER OF DRAWER PACKAGE
//   final ZoomDrawerController? zoomDrawerController;
//   final bool? setting;
//   final bool? home;

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   @override
//   void initState() {
//     super.initState();
//     goToSettingsTab();
//   }

//   //CONTROLLER OF PERSISTENT NAVBAR PACKAGE
//   final _controller = PersistentTabController(initialIndex: 0);

//   void goToSettingsTab() {
//     if (widget.home == true) {
//       setState(() {
//         _controller.jumpToTab(0); // Switch to Settings tab
//       });
//     } else if (widget.setting == true) {
//       setState(() {
//         _controller.jumpToTab(1); // Switch to Settings tab
//       });
//     }
//   }

// // ===============================THESE ARE CHILD SCREENS OF NAVBAR=======================
//   List<Widget> screens() {
//     return [
//       HomeScreen(goToSettings: goToSettingsTab),
//       const SettingScreen(),
//       const ProfileScreen(),
//     ];
//   }

//   // ============================THIS IS BOTTOM NAVBAR APPEARENCE ICONS AND NAMES=====================
//   List<PersistentBottomNavBarItem> navBarItems() {
//     return [
//       PersistentBottomNavBarItem(
//         icon: Icon(Icons.home),
//         title: "Home",
//         activeColorPrimary: Colors.blue,
//         inactiveColorPrimary: Colors.grey,
//       ),
//       PersistentBottomNavBarItem(
//         icon: Icon(Icons.settings),
//         title: "Settings",
//         activeColorPrimary: Colors.blue,
//         inactiveColorPrimary: Colors.grey,
//       ),
//       PersistentBottomNavBarItem(
//         icon: Icon(Icons.person),
//         title: "Profile",
//         activeColorPrimary: Colors.blue,
//         inactiveColorPrimary: Colors.grey,
//       ),
//     ];
//   }

//   //==========================NAVBAR , APPBAR AND DRAWER BODY===============================
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: PersistentTabView(
//           context,
//           screens: screens(),
//           items: navBarItems(),
//           controller: _controller,
//           navBarStyle: NavBarStyle.style1,
//           popAllScreensOnTapOfSelectedTab: true,
//         ),
//         //APPBAR WITH DRAWER
//         appBar: AppBar(
//           title: Text("Payemnt"),
//           // leading: IconButton(
//           //   icon: Icon(Icons.menu),
//           //   onPressed: () => ZoomDrawer.of(context)!.toggle(),
//           // ),
//         ),
//         drawer: NavigationDrawerWidget());
//   }
// }
import 'package:asdfg/myDrawerWidget.dart';
import 'package:asdfg/navbar-screens/profile-screen.dart';
import 'package:asdfg/navbar-screens/setting-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:get/get.dart';

import 'main-screen-controller.dart';
import 'navbar-screens/home-screen.dart';


class MainScreen extends StatelessWidget {
  final MainScreenController controller = Get.put(MainScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
      ),
      body: SafeArea(
        child: GetBuilder<MainScreenController>(
          builder: (controller) => PersistentTabView(
            context,
            screens: _screens(),
            items: _navBarItems(),
            controller: controller.controller,
            navBarStyle: NavBarStyle.style1,
            popAllScreensOnTapOfSelectedTab: true,
          ),
        ),
      ),
      drawer: NavigationDrawerWidget(),
    );
  }

  // ===============================THESE ARE CHILD SCREENS OF NAVBAR=======================
  List<Widget> _screens() {
    return [
      HomeScreen(),
      SettingScreen(),
      ProfileScreen(),
    ];
  }

  // ============================THIS IS BOTTOM NAVBAR APPEARENCE ICONS AND NAMES=====================
  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings),
        title: "Settings",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: "Profile",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
}
