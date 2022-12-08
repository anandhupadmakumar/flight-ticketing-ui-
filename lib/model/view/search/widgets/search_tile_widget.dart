
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../checkout/checkout_screen.dart';

class SearchTileWidget extends StatelessWidget {
  const SearchTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const CheckOutScreen());
      },
      child: Container(
        decoration: BoxDecoration(
            color: white, borderRadius: BorderRadius.circular(20)),
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height5,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Business Trip to New York'),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'MCL',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  Text('Jakarba')
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Image(
                    image: AssetImage('assets/images/aeroplanevector.png'),
                    width: 50,
                  ),
                  Text('1h 55m'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'ARV',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  Text('New York')
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
}
