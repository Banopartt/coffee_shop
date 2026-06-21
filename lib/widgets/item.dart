import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../screens/item_detail_screen.dart';


class ItemWidget extends StatelessWidget {
  static const String routeName = '/item_detail';
  final String title;
  final String imageUrl;
  final String price;
  final String? description;
  final List<String>? ingredients;
  final String? cId;

  const ItemWidget({super.key, required this.title, required this.imageUrl, required this.price, this.description, this.ingredients, this.cId});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      onTap: () {
            Navigator.of(context).pushNamed(
              ItemDetailScreen.routeName,
              arguments: {
                'title': title,
                'price': price,
                'imageUrl': imageUrl,
                'description': ITEMS.firstWhere((item) => item.title == title).description,
                'ingredients': ITEMS.firstWhere((item) => item.title == title).ingredients,
                'cId': ITEMS.firstWhere((item) => item.title == title).cId,
              },
            );
      },
      child: Card(
        child: Column(
          children: [
            Image.asset(imageUrl, fit: BoxFit.cover, height: 100, width: double.infinity),
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text("Price: ${price} dr", style: const TextStyle(fontSize: 16, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}