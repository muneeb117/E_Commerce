import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/Product.dart';
import 'components/custom_appBar.dart';
import 'package:shop_ui/screens/details/components/body.dart';
class DetailsScreen extends StatelessWidget {
  static String routeName = "/detail_screen";
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArgument? arguments =
        ModalRoute.of(context)?.settings.arguments as ProductDetailsArgument?;
    return Scaffold(
      backgroundColor: const Color(0xfff5f6f9),
      appBar: CustomAppBar(
        rating: arguments!.product.rating,
      ),
      body:Body(product: arguments.product,),
    );
  }
}

class ProductDetailsArgument {
  ProductDetailsArgument({required this.product});
  final Product product;
}
