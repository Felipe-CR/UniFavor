import 'package:flutter/material.dart';
import 'package:unifavor/screens/profile/components/profile_menu.dart';
import 'package:unifavor/screens/profile/components/profile_pic.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
              text: "Mi cuenta",
              icon: "assets/icons/User Icons.svg",
              press: () => {},
          ),
          ProfileMenu(
              text: "Notificaciones",
              icon: "assets/icons/Bell.svg",
              press: () {},
          ),
          ProfileMenu(
              text: "Ajustes",
              icon: "assets/icons/Settings.svg",
              press: () {},
          ),
          ProfileMenu(
            text: "Ayuda", //Centro de ayuda
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Cerrar sesión",
            icon: "assets/icons/Log out.svg",
            press: () {},
          )
        ],
      ),
    );
  }
}