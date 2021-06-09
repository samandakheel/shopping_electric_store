import 'package:elec_store_app/constant.dart';
import 'package:elec_store_app/model/product.dart';
import 'package:elec_store_app/widget/detail_body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        title: Text(
          'رجوع',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        leading: IconButton(
          color: kPrimaryColor,
          padding: EdgeInsets.only(
            right: kDefaultPadding,
          ),
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: DetailsBody(product: product),
    );
  }
}
