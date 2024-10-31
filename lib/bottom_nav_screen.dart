import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'lettuce_screen.dart';
import 'water_tank_screen.dart';
import 'web_app_screen.dart';
import 'settings_screen.dart';
import 'dart:ui';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const LettuceScreen(),
    const WaterTankScreen(),
    const WebAppScreen(),
    const SettingsScreen(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: _screens[_currentIndex],
    bottomNavigationBar: Container(
      margin: const EdgeInsets.all(10), // Margin for separation
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30), // Rounded corners for all corners
        // Optional: Add a background color with some transparency
        color: Colors.white.withOpacity(0.2), // Adjust opacity for the desired effect
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30), // Round all corners
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0), // Adjust the blur intensity
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2), // Background color with some transparency for glassy effect
            ),
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: _onTap,
              backgroundColor: Colors.transparent, // Set BottomNavigationBar background to transparent
              selectedItemColor: const Color.fromARGB(255, 3, 134, 14), // Color for selected item
              unselectedItemColor: const Color.fromARGB(255, 80, 80, 80), // Color for unselected items
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.eco), label: 'Lettuce'),
                BottomNavigationBarItem(icon: Icon(Icons.water), label: 'Water Tank'),
                BottomNavigationBarItem(icon: Icon(Icons.web), label: 'Web App'),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
}