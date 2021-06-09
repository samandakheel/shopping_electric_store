import 'package:elec_store_app/constant.dart';
import 'package:elec_store_app/model/product.dart';
import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  const ProductCart(
    this.index,
    this.product,
    this.press,
  );
  final Product product;
  final int index;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190,
      child: InkWell(
        onTap: () {
          return press();
        },
        child: Stack(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            Positioned(
              top: -30.0,
              left: -30.0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                ),
                height: 160.0,
                width: 200.0,
                child: Image.asset(
                  product.image,

                  //fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: SizedBox(
                width: size.width - 200,
                height: 136.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                      ),
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                      ),
                      child: Text(
                        product.subTitle,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding / 2),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5,
                          vertical: kDefaultPadding / 5,
                        ),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'السعر \$${product.price}',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
