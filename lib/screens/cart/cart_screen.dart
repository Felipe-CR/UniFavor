import 'package:flutter/material.dart';
import 'package:unifavor/models/cart.dart';
import 'package:unifavor/screens/cart/components/body.dart';
import 'package:unifavor/screens/cart/components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  const CartScreen({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context){
    return AppBar(
      title: Column(
        children: [
          Text(
            "Carrito",
            style: TextStyle(
              color: Colors.black
            ),
          ),
          Text(
            "${demoCarts.length} Productos",
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }

}