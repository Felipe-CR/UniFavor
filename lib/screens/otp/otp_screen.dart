import 'package:flutter/material.dart';
import 'package:unifavor/screens/otp/components/body.dart';
import 'package:unifavor/size_config.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  const OtpScreen({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Verificación OTP"),
      ),
      body: Body(),
    );
  }
}