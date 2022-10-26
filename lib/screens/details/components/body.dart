import 'package:flutter/material.dart';
import 'package:unifavor/components/default_button.dart';
import 'package:unifavor/models/product.dart';
import 'package:unifavor/screens/details/components/product_description.dart';
import 'package:unifavor/screens/details/components/product_images.dart';
import 'package:unifavor/screens/details/components/top_rounded_container.dart';
import 'package:unifavor/size_config.dart';

import 'dots.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(
          product: product,
        ),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Dots(product: product),
                      TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 0.15,
                              right: SizeConfig.screenWidth * 0.15,
                              bottom: getProportionateScreenWidth(40),
                              top: getProportionateScreenWidth(15),
                            ),
                            child: DefaultButton(
                              text: "Agregar al carro",
                              press: () {},
                            ),
                          )
                      ),
                    ],
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}