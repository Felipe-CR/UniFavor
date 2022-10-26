import 'package:flutter/material.dart';
import 'package:unifavor/enums.dart';
import 'package:unifavor/screens/home/components/body.dart';
import 'package:unifavor/components/custom_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectMenu: MenuState.home),
    );
  }
}