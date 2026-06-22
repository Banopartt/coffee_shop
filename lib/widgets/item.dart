import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../screens/item_detail_screen.dart';


class ItemWidget extends StatefulWidget {
  static const String routeName = '/item_detail';
  final String title;
  final String imageUrl;
  final String price;
  final String? description;
  final List<String>? ingredients;
  final String? id;

  const ItemWidget({super.key, required this.title, required this.imageUrl, required this.price, this.description, this.ingredients, this.id,});
  static Set<String> get favoriteIds => _ItemWidgetState.favoriteIds;
  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  static final Set<String> _favoriteIds = {};
  static bool isFavorite(String id) {
    return _favoriteIds.contains(id);
  }
  static Set<String> get favoriteIds => _favoriteIds;

  void _toggleFavorite() {
    setState(() {
      if (_favoriteIds.contains(widget.id)) {
        _favoriteIds.remove(widget.id);
      } else {
        _favoriteIds.add(widget.id!);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
  Navigator.of(context).pushNamed(
    ItemDetailScreen.routeName,
    arguments: {
      'title': widget.title,
      'price': widget.price,
      'imageUrl': widget.imageUrl,
      'description': widget.description!,
      'ingredients': widget.ingredients!,
      'cId': widget.id!,
    },
  );
},
      child: Card(
        child: Column(
          children: [
            Image.asset(widget.imageUrl, fit: BoxFit.cover, height: 100, width: double.infinity),
            Text(widget.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Price: ${widget.price} dr", style: const TextStyle(fontSize: 16, color: Colors.grey)),
                IconButton(
                    icon: Icon(
                          isFavorite(widget.id!)
                          ? Icons.favorite
                           : Icons.favorite_border,
                        ),
                  onPressed: () {
                    _toggleFavorite();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}