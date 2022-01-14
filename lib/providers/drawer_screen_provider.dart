import 'package:flutter/material.dart';
import '../screens/home_page.dart';
import '../screens/my_account.dart';

class DrawerScreenProvider extends ChangeNotifier {
  late Widget _currentScreen = const HomePage();
  Widget get currentScreen => _currentScreen;
  set currentScreen(Widget newScreen) {
    _currentScreen = newScreen;
    notifyListeners();
  }

  void changeCurrentScreen(CustomScreensEnum screen){
    switch(screen){
      case CustomScreensEnum.homeScreen:
        currentScreen = const HomePage();
        break;
      case CustomScreensEnum.profileScreen:
        currentScreen = const MyAccount();
        break;
      default:
        currentScreen = const HomePage();
        break;
    }
  }
}

enum CustomScreensEnum {
  homeScreen,
  profileScreen
}