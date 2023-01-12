import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     name: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home),
    MenuOption(
        route: 'Listview1',
        name: 'Listview tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.view_headline),
    MenuOption(
        route: 'Listview2',
        name: 'Listview tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.subject),
    MenuOption(
        route: 'Alert',
        name: 'Alertas - Alerts',
        screen: const AlertScreen(),
        icon: Icons.circle_notifications),
    MenuOption(
        route: 'Cards',
        name: 'Tarjetas - Cards',
        screen: const CardScreen(),
        icon: Icons.dashboard),
    MenuOption(
        route: 'Avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_rounded),
    MenuOption(
        route: 'inputs',
        name: 'Text Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   '/home': (BuildContext context) => const HomeScreen(),
  //   '/Listview1': (BuildContext context) => const Listview1Screen(),
  //   '/Listview2': (BuildContext context) => const Listview2Screen(),
  //   '/alert': (BuildContext context) => const AlertScreen(),
  //   '/card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
