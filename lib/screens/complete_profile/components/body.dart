import 'package:flutter/material.dart';
import 'package:unifavor/constants.dart';
import 'package:unifavor/screens/complete_profile/components/complete_profile_form.dart';
import 'package:unifavor/size_config.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text(
                  "Perfil Completo",
                  style: headingStyle,
                ),
                Text(
                  "Complete sus datos \ncon su información",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                CompleteProfileForm(),
                SizedBox(height: getProportionateScreenHeight(30)),
                Text(
                  "Al continuar, confirma que está de acuerdo \ncon nuestros Términos y Condiciones",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
