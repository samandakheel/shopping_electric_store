import 'package:elec_store_app/constant.dart';
import 'package:elec_store_app/widget/home_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: aapBar(),
      body: HomeBody(),
    );
  }

  AppBar aapBar() {
    return AppBar(
      title: Text(
        'متجر الكترونيات ',
      ),
      centerTitle: false,
      elevation: 0.0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ],
    );
  }
}
