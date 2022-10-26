import 'package:flutter/material.dart';
import 'package:unifavor/screens/home/components/section_title.dart';
import 'package:unifavor/size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Especiales",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOffersCard(
                image: "assets/images/Comida3_v2.PNG",
                name: "CheeseCake",
                press: () {},
              ),
              SpecialOffersCard(
                image: "assets/images/Comida5_v2.PNG",
                name: "Nachos",
                press: () {},
              ),
              SpecialOffersCard(
                image: "assets/images/Comida4_v2.PNG",
                name: "Chuleta de cerdo",
                press: () {},
              ),
              SpecialOffersCard(
                image: "assets/images/Comida11_v2.PNG",
                name: "Brownie con Helado",
                press: () {},
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOffersCard extends StatelessWidget {
  const SpecialOffersCard({
    Key? key,
    required this.name,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String name,image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: "$name\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}