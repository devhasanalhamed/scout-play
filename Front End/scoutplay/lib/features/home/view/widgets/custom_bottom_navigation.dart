import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scoutplay/features/home/logic/home_controller.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = context.read<HomeController>();
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(left: 32.0, right: 32.0, bottom: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.black87,
          border: Border.all(color: Colors.white, width: 1.0),
        ),
        clipBehavior: Clip.hardEdge,
        child: BottomNavigationBar(
          currentIndex: homeController.index,
          onTap: (value) => homeController.updateIndex(value),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          elevation: 0.0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer),
              label: 'Play',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports),
              label: 'Challenge',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
