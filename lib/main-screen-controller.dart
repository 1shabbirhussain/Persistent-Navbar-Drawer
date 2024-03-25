import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class MainScreenController extends GetxController {

   final controller = PersistentTabController(initialIndex: 0);

  // Observable variable to track the selected tab index
  var selectedIndex = 0.obs;

  void goToTabHome(int index) {
    controller.jumpToTab(0);
  }
   void goToTabSetting(int index) {
    controller.jumpToTab(1);
  }
}
