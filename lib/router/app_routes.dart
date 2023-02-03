import 'package:flutter/material.dart';

import 'package:app_components/models/models.dart';
import 'package:app_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(route: 'listview1', name: 'List View tipo 1', screen: const Listview1Screen(), icon: Icons.list_outlined),
    MenuOption(route: 'listview2', name: 'List view tipo 2', screen: const Listview2Screen(), icon: Icons.list_rounded),
    MenuOption(route: 'aler', name: 'Alertas - Alerts', screen: const AlertScreen(), icon: Icons.notifications),
    MenuOption(route: 'card', name: 'Tarjetas - Cards', screen: const CardScreen(), icon: Icons.account_box_sharp),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_arrow_outlined),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
  ];

  // * Option 1
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const Listview1Screen(),
  //   'listview2': (context) => const Listview2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen()
  // };
  // * Option 2
  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
      appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    
    for (final options in menuOptions) {
      appRoutes.addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // Para rutas no existentes o dinamicas
    // print(settings);
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
