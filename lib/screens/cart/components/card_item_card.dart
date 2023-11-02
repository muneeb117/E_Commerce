import 'package:flutter/material.dart';
import '../../../constraints.dart ';
import '../../../models/cart.dart';
import '../../../size_config.dart';
class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key, required this.cart,
  }) : super(key: key);
  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                text: "\$${cart.product.price}",
                style: const TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                  text: " x${cart.numberOfItems}",
                  style: const TextStyle(
                    color: kTextColor,
                  )),
            ]))
          ],
        )
      ],
    );
  }
}
