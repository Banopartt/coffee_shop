import 'package:flutter/material.dart';
import '../widgets/item.dart';
import '../dummy_data.dart';
import '../widgets/drawer_widget.dart';

class FavoriteScreen extends StatelessWidget {
  static const String routeName = '/favorites';

  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Set<String> favoriteIds = ItemWidget.favoriteIds;
    print(favoriteIds);

    return favoriteIds.isEmpty
    ? const Center(
        child: Text(
          'No favorites yet!',
          style: TextStyle(fontSize: 18),
        ),
      )
    : GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate:
            const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          ...favoriteIds.map((id) {
            final item =
                ITEMS.firstWhere((item) => item.id == id);

            return ItemWidget(
              id: item.id,
              title: item.title,
              imageUrl: item.imageUrl,
              price: item.price,
            );
          }).toList(),
        ],
      );
             
}}