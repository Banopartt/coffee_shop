import 'package:flutter/material.dart';
import '../screens/settings_screen.dart';
import '../screens/dashboard_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildListTile(String title, IconData icon, VoidCallback tapHandler) {
      return ListTile(
        leading: Icon(icon, size: 26),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: tapHandler,
      );
    }

    return SafeArea(
      child: Drawer(
      backgroundColor: Colors.brown[300],
        child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.brown[300],
            title: const Text('Menu'),
            automaticallyImplyLeading: false,
          ),
          buildListTile('Dashboard', Icons.dashboard, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile('Settings', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed('/settings');
          }),
      ],)
    )
  );
}
}