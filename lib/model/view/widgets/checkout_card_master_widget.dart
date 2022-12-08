
import 'package:flutter/material.dart';

import '../../../constants/sizes.dart';

class CheckoutCardContainer extends StatelessWidget {
  const CheckoutCardContainer(
      {Key? key,
      required this.image,
      required this.title,
      required this.scaleSize})
      : super(key: key);
  final String image;
  final String title;
  final double scaleSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Column(children: [
        Image.asset(
          image,
          scale: scaleSize,
        ),
        height5,
        Text(title)
      ]),
    );
  }
}
