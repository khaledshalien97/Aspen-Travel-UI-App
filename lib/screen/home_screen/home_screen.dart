import 'package:aspen_travel_app_ui/screen/home_screen/widgets/bottom_nav_bar.dart';
import 'package:aspen_travel_app_ui/screen/home_screen/widgets/category_list.dart';
import 'package:aspen_travel_app_ui/screen/home_screen/widgets/popular_list.dart';
import 'package:aspen_travel_app_ui/screen/home_screen/widgets/recommended_list.dart';
import 'package:aspen_travel_app_ui/screen/home_screen/widgets/search_text_field.dart';
import 'package:aspen_travel_app_ui/screen/home_screen/widgets/title_and_location.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              titleandLocation(),
              SizedBox(height: 24),
              // Search Text Field
              searchTextField(),
              SizedBox(height: 32),
              // Category List (location, Hotels, Food)
              CategoryList(),
              SizedBox(height: 32),
              // Popular List
              PopularList(),
              SizedBox(height: 32),
              // Recommended List
              RecommendedList(),
            ],
          ),
        ),
      ),

      bottomNavigationBar: bottomNavBarWidget(),
    );
  }
}
