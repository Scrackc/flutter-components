import 'package:app_components/router/app_routes.dart';
import 'package:app_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold( 
      appBar: AppBar(
        title: const Text("Componenetes en Flutter"),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(menuOptions[index].name),
          leading: Icon(menuOptions[index].icon, color: AppTheme.primary,),
          onTap: () => {
            Navigator.pushNamed(context, menuOptions[index].route)
            // Navigator.push(context, MaterialPageRoute(builder: (context) => const Listview1Screen(),))
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: menuOptions.length,
      ),
    );
  }
}