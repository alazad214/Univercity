import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:university/homescreen.dart';
import 'package:university/question.dart';
import 'package:university/universitylist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;
  final _pages = [UniversityList(), HomeScreen(), Question_S()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("University"),
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Colors.teal,
        elevation: 20,
        items: [
          FloatingNavbarItem(icon: Icons.bookmarks_sharp, title: "অন্যান্য"),
          FloatingNavbarItem(icon: Icons.home, title: "হোম "),
          FloatingNavbarItem(icon: Icons.question_answer, title: "সংক্ষেপে")
        ],
        currentIndex: _currentIndex,
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
