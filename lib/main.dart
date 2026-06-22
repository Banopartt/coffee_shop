import 'package:cofe_shop/screens/category_item_screen.dart';
import 'package:cofe_shop/screens/dashboard_screen.dart';
import 'package:cofe_shop/screens/favorite_screen.dart';
import 'package:cofe_shop/screens/item_detail_screen.dart';
import 'package:flutter/material.dart';
import 'widgets/myappTheme.dart';
import 'screens/tab_screen.dart';
import 'screens/settings_screen.dart';
import './screens/form_cat.dart';

void main() {
  runApp(MainApp());
}
class MainApp extends StatefulWidget {
  
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyAppTheme.lightTheme,
      home: null,
      initialRoute: '/',
      routes: {
        "/": (ctx) =>  TabScreen(),
        DashBoardScreen.routeName: (ctx) =>  DashBoardScreen(),
        CategoryItemScreen.routeName: (ctx) => CategoryItemScreen(),
        ItemDetailScreen.routeName: (ctx) => ItemDetailScreen(),
        SettingsScreen.routeName: (ctx) => SettingsScreen(),
        FavoriteScreen.routeName: (ctx) => FavoriteScreen(),
        CategoryForm.routeName: (ctx) => CategoryForm(),       
      },
    );
  }
}