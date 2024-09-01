import 'package:flutter/material.dart';
import 'package:moneymanagementapp/screens/home_screen/home_screen.dart';
import 'package:moneymanagementapp/screens/transaction_screen/transaction_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _navNarScreens = [
    const HomeScreen(),
    const TransactionScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navNarScreens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(color: Colors.black),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex, // The current index
        selectedItemColor: Colors.green, // Color of the selected item
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,

        onTap: (value) {
          _onItemSelected(value);
        }, // On tap callback
      ),
    );
  }
}
