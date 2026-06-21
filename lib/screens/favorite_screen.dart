import "package:flutter/material.dart";


class FavoriteScreen extends StatelessWidget {
  static const String routeName = '/favorites';
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('Favorites Screen'),
      );
  }
}