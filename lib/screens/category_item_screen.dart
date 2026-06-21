import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/item.dart';
import '../widgets/myappTheme.dart';

class CategoryItemScreen extends StatelessWidget {
  

  CategoryItemScreen({
    super.key,
  });

  static String get routeName => '/category-items-screen';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final categoryItems =
        ITEMS.where((item) => item.cId == routeArgs['id']).toList();

    return Scaffold(
      backgroundColor: MyAppTheme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: routeArgs['color'],
        title: Text(
          routeArgs['title'],
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          // Header Section
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  routeArgs['color'],
                  routeArgs['color'].withOpacity(0.75),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(28),
                bottomRight: Radius.circular(28),
              ),
            ),
            child: Column(
              children: [
                const Icon(
                  Icons.local_cafe,
                  color: Colors.white,
                  size: 50,
                ),
                const SizedBox(height: 10),

                Text(
                  '${categoryItems.length} items available',
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Section Title
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Popular Drinks',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          // Grid Items
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                itemCount: categoryItems.length,
                gridDelegate:
                    const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 220,
                  childAspectRatio: 0.82,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                ),
                itemBuilder: (context, index) {
                  final item = categoryItems[index];

                  return ItemWidget(
                    title: item.title,
                    imageUrl: item.imageUrl,
                    price: item.price,
                    description: item.description,
                    ingredients: item.ingredients,
                    id: item.id,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}