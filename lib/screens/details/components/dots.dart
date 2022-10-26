import 'package:flutter/material.dart';
import 'package:unifavor/components/rounded_icon_btn.dart';
import 'package:unifavor/models/product.dart';
import 'package:unifavor/size_config.dart';

class Dots extends StatelessWidget {
  const Dots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          RoundedIconBtn(
            icon: Icons.remove,
            press: () {},
          ),
          SizedBox(width: getProportionateScreenWidth(20)),
          RoundedIconBtn(
              icon: Icons.add,
              showShadow: true,
              press: () {},
          ),
        ],
      ),
    );
  }
}