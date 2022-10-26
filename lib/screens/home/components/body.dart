import 'package:flutter/material.dart';
import 'package:unifavor/screens/home/components/home_header.dart';
import 'package:unifavor/screens/home/components/discount_banner.dart';
import 'package:unifavor/screens/home/components/special_offers.dart';
import 'package:unifavor/screens/home/components/categories.dart';
import 'package:unifavor/screens/home/components/popular_product.dart';
import 'package:unifavor/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(), /// The address to the CAR missing
            SizedBox(height: getProportionateScreenHeight(10)),
            DiscountBanner(),
            Categories(), ///Change the BACKGROUND COLOR
            SpecialOffers(),
            SizedBox(height: getProportionateScreenHeight(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}