import 'package:flutter/material.dart';

import '../router/app_routes.dart';
import '../themes/app_theme.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => ListTile(
      leading: Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primary),
      title: Text(AppRoutes.menuOptions[index].name, style: const TextStyle(fontSize: 20)),
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
                },
                                              ), 
      separatorBuilder: (_, __) => const Divider(), 
      itemCount: AppRoutes.menuOptions.length
      );
  }
}