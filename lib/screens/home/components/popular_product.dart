import 'package:flutter/material.dart';
import 'package:unifavor/models/product.dart';
import 'package:unifavor/components/product_card.dart';
import 'package:unifavor/screens/home/components/section_title.dart';
import 'package:unifavor/size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Productos polulares",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  demoProducts.length,
                  (index) {
                    if(demoProducts[index].isPopular)
                      return ProductCard(product: demoProducts[index]);

                    return SizedBox.shrink();
                  }
              ),
            ],
          ),
        )
      ],
    );
  }
}