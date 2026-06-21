import 'package:cofe_shop/screens/favorite_screen.dart';
import 'package:flutter/material.dart';
import 'dashboard_screen.dart';
import '../widgets/drawer_widget.dart';


class TabScreen extends StatefulWidget {
  static const String routeName = '/tabs';
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Widget> _pages = [
    DashBoardScreen(),
    FavoriteScreen(),
  ];
  final List<String> _titles = [
  'Home',
  'Favorites',
];

  int _selectedPageIndex = 0;
   void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
         title: Text(_titles[_selectedPageIndex]),
         backgroundColor: Theme.of(context).primaryColor,
        ),
        body: _pages[_selectedPageIndex],
        drawer: DrawerWidget(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.brown[300],
          selectedItemColor:  Colors.white,
          currentIndex: _selectedPageIndex,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
          ],
        )
      );
  }
}