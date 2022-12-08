import 'package:flight_booking_ui/constants/colors.dart';
import 'package:flight_booking_ui/constants/sizes.dart';
import 'package:flight_booking_ui/model/view/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/button_widget.dart';
import '../widgets/checkout_card_master_widget.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 238, 238),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Check Out',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: transperent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          height20,
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
                color: white, borderRadius: BorderRadius.circular(20)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CheckoutCardContainer(
                    image: 'assets/images/mastercard.png',
                    title: 'Master',
                    scaleSize: 4,
                  ),
                  CheckoutCardContainer(
                    image: 'assets/images/paypalpng.png',
                    title: 'Paypal',
                    scaleSize: 4,
                  ),
                  CheckoutCardContainer(
                    image: 'assets/images/visaimage.png',
                    title: 'Visa',
                    scaleSize: 2,
                  ),
                  CheckoutCardContainer(
                    image: 'assets/images/payoneerimg.png',
                    title: 'Payoneer',
                    scaleSize: 4.5,
                  )
                ]),
          ),
          height20,
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/photo-1529074963764-98f45c47344b-removebg-preview.png',
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Flight Yogyakarta',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(
                              'HJB-JKM',
                              style: TextStyle(
                                  color: grey, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      height20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('10.00AM-12.00PM'),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(children: const [
                              Text(
                                'Details',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_right,
                                color: Colors.orange,
                              )
                            ]),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                width: 80,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                  '\$150',
                  style: TextStyle(color: white),
                )),
              )
            ],
          ),
          height20,
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: double.maxFinite,
            height: 100,
            decoration: BoxDecoration(
                color: white, borderRadius: BorderRadius.circular(20)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/download (3).png',
                    scale: 6,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Departure',
                        style: TextStyle(color: grey),
                      ),
                      const Text(
                        '12.30AM',
                        style: TextStyle(color: Colors.cyan),
                      ),
                      height5,
                      const Text(
                        'Estimate',
                        style: TextStyle(color: grey),
                      ),
                      Text(
                        '03.00AM',
                        style: TextStyle(color: Colors.teal[800]),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Arrive',
                        style: TextStyle(color: grey),
                      ),
                      Text(
                        '1.00AM',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      height5,
                      Text(
                        'Price',
                        style: TextStyle(color: grey),
                      ),
                      Text(
                        '\$450',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ],
                  )
                ]),
          ),
          height20,
          CommonButton(
            buttonText: 'Procceed',
            homeScreen: HomeScreen(),
          ),
        ],
      ),
    );
  }
}
