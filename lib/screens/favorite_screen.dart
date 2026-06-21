import 'package:flutter/material.dart';
import '../widgets/item.dart';
import '../dummy_data.dart';
import '../widgets/drawer_widget.dart';

class FavoriteScreen extends StatelessWidget {
  static const String routeName = '/favorites';

  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteIds = ItemWidget.favoriteIds;

    return Center(
      child: favoriteIds.isEmpty
          ? const Text(
              'No favorites yet!',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            )
            : GridView(
              children: [
                ...favoriteIds.map(
                (id) => ItemWidget(
                title: ITEMS.firstWhere((item) => item.id == id).title,
                imageUrl: ITEMS.firstWhere((item) => item.id == id).imageUrl,
                price: ITEMS.firstWhere((item) => item.id == id).price,
                
  ),
).toList(),
              ],
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            ),
    );
}}