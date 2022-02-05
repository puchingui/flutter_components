import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter')
        ),
        body: ListView.separated(
            itemBuilder: (context, idx) => ListTile(
                  title: Text(AppRoutes.menuOptions[idx].name),
                  leading: Icon(AppRoutes.menuOptions[idx].icon, color: AppTheme.primary,),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const Listview1Screen());
                    // Navigator.pushReplacement(context, route);
                    Navigator.pushNamed(context, AppRoutes.menuOptions[idx].route);
                  }
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
