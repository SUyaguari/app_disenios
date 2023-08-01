
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: ''
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: ''
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: ''
        ),
      ],
      backgroundColor: const Color(0xff373856),
    );
  }
}