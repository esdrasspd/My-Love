import 'package:flutter/material.dart';
import 'package:my_love/screens/poems_screen.dart';
import 'package:my_love/screens/screens.dart';
import 'package:my_love/model/model.dart';

class AppRoutes{
  static const initialRoute = 'alert';

  static final menuOptions = <MenuOption> [

    //MenuOption(route: 'home', name: 'Home', screen: const HomeScreen(), icon: Icons.home_max_outlined ),
    MenuOption(route: 'card', name: 'Imagenes de nosotros', screen: const CardScreen(), icon: Icons.image_outlined ),
    MenuOption(route: 'video', name: 'Video para ti', screen: const VideoScreen(), icon: Icons.video_call_outlined ),
    MenuOption(route: 'poemas', name: 'Poemas especiales', screen: const PoemsScreen(), icon: Icons.assistant),
  ];

  static  Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});


    for (final option in menuOptions){
      appRoutes.addAll({option.route: (context) => option.screen});
    }
    return appRoutes;
  }

       static Route<dynamic> onGenerateRoute(RouteSettings settings){
         return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
          );
      }


}