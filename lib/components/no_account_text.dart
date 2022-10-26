import 'package:flutter/material.dart';
import 'package:unifavor/constants.dart';
import 'package:unifavor/size_config.dart';
import 'package:unifavor/screens/sign_up/sign_up_screen.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "¿No tienes cuenta?",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap:() => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "  Registro",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: kColorRegister,
            ),
          ),
        ),
      ],
    );
  }
}