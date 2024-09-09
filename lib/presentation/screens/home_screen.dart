import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:untitled/presentation/screens/islamic_home_page.dart';
import 'package:untitled/presentation/utility/apps_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 0;

  final List<Widget> _page = [
    const IslamicHomePage(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _page[_currentIndex],
        bottomNavigationBar: Container(
          decoration: _buildBottomDecoration(),
          child: SalomonBottomBar(
            margin: const EdgeInsets.all(15),
            currentIndex: _currentIndex,
            onTap: (int index) {
              _currentIndex = index;
              setState(() {});
            },
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: const Icon(Icons.home),
                title: const Text("Home"),
                selectedColor: AppColors.primaryColor,
              ),

              /// Likes
              SalomonBottomBarItem(
                icon: const Icon(Icons.favorite_border),
                title: const Text("Likes"),
                selectedColor: AppColors.primaryColor,
              ),

              /// Search
              SalomonBottomBarItem(
                icon: const Icon(Icons.search),
                title: const Text("Search"),
                selectedColor: AppColors.primaryColor,
              ),

              ///Bookmark
              SalomonBottomBarItem(
                icon: const Icon(Icons.bookmark_border),
                title: const Text("Search"),
                selectedColor: AppColors.primaryColor,
              ),

              /// Profile
              SalomonBottomBarItem(
                icon: const Icon(Icons.person),
                title: const Text("Profile"),
                selectedColor: AppColors.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildBottomDecoration() {
    return BoxDecoration(
      color: Colors.white, // You can set the background color here
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(0, -3), // Changes position of shadow
        ),
      ],
    );
  }
}
