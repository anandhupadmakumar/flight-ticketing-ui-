
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../home/home_page.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    required this.buttonText,
    required this.homeScreen,
    Key? key,
  }) : super(key: key);
  final String buttonText;
  final HomeScreen homeScreen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Get.to(() => homeScreen);
      }),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        width: double.maxFinite,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.teal[800], borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          buttonText,
          style: const TextStyle(color: white),
        )),
      ),
    );
  }
}