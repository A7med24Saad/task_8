import 'package:flutter/material.dart';
import 'package:task_8/core/app_colors.dart';
import 'package:task_8/features/Homescreen.dart';
import 'package:task_8/features/notfication.dart';
import 'package:task_8/features/person.dart';
import 'package:task_8/features/search.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  List<Widget> screens = [
    const Homescreen(),
    const search(),
    const notfication(),
    const person()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.scaffoldbg,
        selectedItemColor: AppColors.tapcolorafter,
        unselectedItemColor: AppColors.tapcolorbefore,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile')
        ],
      ),
    );
  }
}
