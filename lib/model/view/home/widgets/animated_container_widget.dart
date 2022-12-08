
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

class OneWayBorderContainer extends StatelessWidget {
  const OneWayBorderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage(
                'assets/images/aeroplanevector.png',
              ),
              height: 40,
              width: 80,
            ),
            const SizedBox(
              width: 50,
            ),
            Column(
              children: const [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Form',
                  style: TextStyle(color: grey, fontSize: 15),
                ),
                Text(
                  'London,LCD',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}