import 'package:flight_booking_ui/constants/colors.dart';
import 'package:flight_booking_ui/model/view/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/sizes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/flightbgimg.png'),
                fit: BoxFit.cover),
          ),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              height50,
              const Text(
                'Find And Book',
                style: TextStyle(
                    color: white, fontSize: 30, fontWeight: FontWeight.bold),
              ),
              height5,
              const Text(
                'A Great Experience',
                style: TextStyle(
                    color: white, fontSize: 30, fontWeight: FontWeight.bold),
              ),
              height20,
              const Text(
                'Going forward after a pandemic that \n devastated the airline industry',
                style: TextStyle(
                  color: grey,
                ),
              ),
              height20,
              const GetTicketButton(),
              Image.asset(
                'assets/images/man-and-woman-dressed-up-wearing-glasses-to-travel.png',
                height: 460,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GetTicketButton extends StatelessWidget {
  const GetTicketButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 200),
      child: InkWell(
        onTap: () {
          Get.to(() => HomeScreen());
        },
        child: Container(
          width: 100,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.orange[300],
              borderRadius: BorderRadius.circular(20)),
          child: const Center(
            child: Text(
              'Get Tickets',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
