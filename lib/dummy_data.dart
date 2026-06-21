import 'package:flutter/material.dart';
import 'models/category_model.dart';
import 'models/items_models.dart';

 List DUMMY_CATEGORIES = [ 
  Category(id: 'c1', title: 'Hot Coffee', color: Colors.brown), 
  Category(id: 'c2', title: 'Cold Coffee', color: Colors.blueAccent), Category(id: 'c3', title: 'Brewed', color: Colors.greenAccent), 
  Category(id: 'c4', title: 'Espresso-Based', color: Colors.orangeAccent), Category(id: 'c5', title: 'Specialty', color: Colors.purpleAccent), Category(id: 'c6', title: 'Instant', color: Colors.redAccent), ];
 
 List ITEMS = [

  // ================= HOT COFFEE (c1) =================

  ItemsModels(
    title: 'Americano',
    price: '3.50',
    imageUrl: 'assets/images/americano.webp',
    description: 'Espresso diluted with hot water for a rich flavor.',
    ingredients: ['Espresso', 'Hot Water'],
    cId: 'c1',
  ),

  ItemsModels(
    title: 'Latte',
    price: '4.50',
    imageUrl: 'assets/images/latte-2.jpg',
    description: 'Smooth coffee with steamed milk and light foam.',
    ingredients: ['Espresso', 'Steamed Milk'],
    cId: 'c1',
  ),

  ItemsModels(
    title: 'Mocha',
    price: '5.00',
    imageUrl: 'assets/images/mocha.jpeg',
    description: 'Coffee blended with chocolate and milk.',
    ingredients: ['Espresso', 'Chocolate', 'Milk'],
    cId: 'c1',
  ),

  ItemsModels(
    title: 'Hot Chocolate Coffee',
    price: '5.50',
    imageUrl: 'assets/images/hotchocolate.jpg',
    description: 'Coffee combined with rich hot chocolate.',
    ingredients: ['Coffee', 'Chocolate', 'Milk'],
    cId: 'c1',
  ),

  ItemsModels(
    title: 'Flat White',
    price: '4.80',
    imageUrl: 'assets/images/flat.jpeg',
    description: 'Velvety espresso drink with steamed milk.',
    ingredients: ['Espresso', 'Steamed Milk'],
    cId: 'c1',
  ),

  // ================= COLD COFFEE (c2) =================

  ItemsModels(
    title: 'Iced Coffee',
    price: '3.50',
    imageUrl: 'assets/images/iced.jpeg',
    description: 'Classic chilled coffee served over ice.',
    ingredients: ['Coffee', 'Ice'],
    cId: 'c2',
  ),

  ItemsModels(
    title: 'Cold Latte',
    price: '4.20',
    imageUrl: 'assets/images/coldlatte.jpeg',
    description: 'Refreshing latte served cold.',
    ingredients: ['Espresso', 'Cold Milk', 'Ice'],
    cId: 'c2',
  ),

  ItemsModels(
    title: 'Coffee Frappé',
    price: '5.00',
    imageUrl: 'assets/images/frappe.jpeg',
    description: 'Blended iced coffee drink.',
    ingredients: ['Coffee', 'Milk', 'Ice'],
    cId: 'c2',
  ),

  ItemsModels(
    title: 'Vanilla Iced Coffee',
    price: '4.80',
    imageUrl: 'assets/images/vanilla.jpeg',
    description: 'Iced coffee flavored with vanilla syrup.',
    ingredients: ['Coffee', 'Vanilla Syrup', 'Ice'],
    cId: 'c2',
  ),

  ItemsModels(
    title: 'Caramel Cold Brew',
    price: '5.20',
    imageUrl: 'assets/images/caramel.webp',
    description: 'Cold brew topped with caramel flavor.',
    ingredients: ['Cold Brew', 'Caramel Syrup'],
    cId: 'c2',
  ),

  // ================= BREWED (c3) =================

  ItemsModels(
    title: 'Pour Over',
    price: '4.00',
    imageUrl: 'assets/images/pourover.jpeg',
    description: 'Hand-brewed coffee with clean flavors.',
    ingredients: ['Ground Coffee', 'Water'],
    cId: 'c3',
  ),

  ItemsModels(
    title: 'French Press',
    price: '4.20',
    imageUrl: 'assets/images/french.jpeg',
    description: 'Rich and full-bodied brewed coffee.',
    ingredients: ['Coffee Grounds', 'Hot Water'],
    cId: 'c3',
  ),

  ItemsModels(
    title: 'Drip Coffee',
    price: '3.00',
    imageUrl: 'assets/images/drip.jpeg',
    description: 'Classic brewed coffee.',
    ingredients: ['Coffee Grounds', 'Water'],
    cId: 'c3',
  ),

  ItemsModels(
    title: 'Chemex',
    price: '4.50',
    imageUrl: 'assets/images/chemex.jpeg',
    description: 'Smooth coffee brewed with a Chemex.',
    ingredients: ['Coffee Beans', 'Water'],
    cId: 'c3',
  ),

  ItemsModels(
    title: 'Aeropress',
    price: '4.30',
    imageUrl : 'assets/images/Aeropress.jpeg',
    description: 'Quick brewed coffee with rich flavor.',
    ingredients: ['Coffee', 'Water'],
    cId: 'c3',
  ),

  // ================= ESPRESSO-BASED (c4) =================

  ItemsModels(
    title: 'Espresso',
    price: '3.00',
    imageUrl: 'assets/images/espresso.jpeg',
    description: 'Strong concentrated coffee shot.',
    ingredients: ['Coffee Beans', 'Water'],
    cId: 'c4',
  ),

  ItemsModels(
    title: 'Cappuccino',
    price: '4.50',
    imageUrl: 'assets/images/Cappuccino.jpeg',
    description: 'Espresso with milk and foam.',
    ingredients: ['Espresso', 'Milk Foam'],
    cId: 'c4',
  ),

  ItemsModels(
    title: 'Macchiato',
    price: '4.00',
    imageUrl: 'assets/images/Macchiato.jpeg',
    description: 'Espresso marked with milk foam.',
    ingredients: ['Espresso', 'Milk Foam'],
    cId: 'c4',
  ),

  ItemsModels(
    title: 'Ristretto',
    price: '3.20',
    imageUrl: 'assets/images/Ristretto.jpeg',
    description: 'Short concentrated espresso shot.',
    ingredients: ['Coffee Beans', 'Water'],
    cId: 'c4',
  ),

  ItemsModels(
    title: 'Cortado',
    price: '4.20',
    imageUrl: 'assets/images/Cortado.jpeg',
    description: 'Espresso balanced with warm milk.',
    ingredients: ['Espresso', 'Warm Milk'],
    cId: 'c4',
  ),

  // ================= SPECIALTY (c5) =================

  ItemsModels(
    title: 'Pumpkin Spice Latte',
    price: '6.00',
    imageUrl: 'assets/images/pumpkin_spice.jpeg',
    description: 'Seasonal latte with pumpkin spice.',
    ingredients: ['Espresso', 'Milk', 'Pumpkin Spice'],
    cId: 'c5',
  ),

  ItemsModels(
    title: 'Honey Cinnamon Latte',
    price: '5.50',
    imageUrl: 'assets/images/honey_latte.jpeg',
    description: 'Sweet latte with honey and cinnamon.',
    ingredients: ['Espresso', 'Honey', 'Milk'],
    cId: 'c5',
  ),

  ItemsModels(
    title: 'Affogato',
    price: '6.50',
    imageUrl: 'assets/images/affogato.jpeg',
    description: 'Espresso poured over vanilla ice cream.',
    ingredients: ['Espresso', 'Ice Cream'],
    cId: 'c5',
  ),

  ItemsModels(
    title: 'Irish Cream Coffee',
    price: '5.80',
    imageUrl: 'assets/images/irish_cream.jpeg',
    description: 'Creamy flavored specialty coffee.',
    ingredients: ['Coffee', 'Cream', 'Syrup'],
    cId: 'c5',
  ),

  ItemsModels(
    title: 'Hazelnut Latte',
    price: '5.30',
    imageUrl: 'assets/images/hazelnut_latte.jpeg',
    description: 'Nutty flavored espresso drink.',
    ingredients: ['Espresso', 'Hazelnut Syrup', 'Milk'],
    cId: 'c5',
  ),

  // ================= INSTANT (c6) =================

  ItemsModels(
    title: 'Classic Instant Coffee',
    price: '2.00',
    imageUrl: 'assets/images/classic_instant.jpeg',
    description: 'Quick and convenient instant coffee.',
    ingredients: ['Instant Coffee', 'Water'],
    cId: 'c6',
  ),

  ItemsModels(
    title: 'Instant Cappuccino',
    price: '2.50',
    imageUrl: 'assets/images/instant_cappuccino.jpeg',
    description: 'Instant cappuccino mix.',
    ingredients: ['Coffee Mix', 'Milk Powder'],
    cId: 'c6',
  ),

  ItemsModels(
    title: 'Instant Mocha',
    price: '2.80',
    imageUrl: 'assets/images/instant_mocha.jpeg',
    description: 'Chocolate flavored instant coffee.',
    ingredients: ['Coffee Mix', 'Chocolate'],
    cId: 'c6',
  ),

  ItemsModels(
    title: '3-in-1 Coffee',
    price: '1.80',
    imageUrl: 'assets/images/3_in_1.jpeg',
    description: 'Coffee, sugar, and creamer in one.',
    ingredients: ['Coffee', 'Sugar', 'Creamer'],
    cId: 'c6',
  ),

  ItemsModels(
    title: 'Instant Vanilla Coffee',
    price: '2.60',
    imageUrl: 'assets/images/instant_vanilla.jpeg',
    description: 'Vanilla flavored instant coffee.',
    ingredients: ['Coffee Mix', 'Vanilla Flavor'],
    cId: 'c6',
  ),
];