import 'dart:developer';

import 'package:flight_booking_ui/constants/colors.dart';
import 'package:flight_booking_ui/constants/sizes.dart';
import 'package:flight_booking_ui/model/view/search/search_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:group_button/group_button.dart';

import 'widgets/animated_container_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  
  final List<String> itemList = [
    'Highest price',
    'Lowest price',
  ];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 228, 228),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 500,
                    left: 0,
                    right: 0,
                    child: appBarContainer(
                      context: context,
                      text: const Text(
                        '''Let's Book Your\nFlight ✈''',
                        style: TextStyle(color: white, fontSize: 30),
                      ),
                      circleAvatar: const CircleAvatar(
                        radius: 30,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 250,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      height: 100,
                      width: double.maxFinite,
                      child: Column(children: [
                        const SizedBox(
                          height: 110,
                        ),
                        SizedBox(
                          height: 100,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              const Text('Sort by'),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: DropdownButton<String>(
                                    isDense: true,
                                    value: value,
                                    hint: const Text('heighest price'),
                                    borderRadius: BorderRadius.circular(20),
                                    items: itemList.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (String? value) {
                                      if (value != null) {
                                      } else {
                                        return;
                                      }
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              height: double.infinity,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 300,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            color: Colors.cyan,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/photo-1529074963764-98f45c47344b-removebg-preview.png'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            height: 40,
                                            width: 80,
                                            child: const Center(
                                              child: Text(
                                                '\$150',
                                                style: TextStyle(color: white),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  height20,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      Text(
                                        'Flight Yogyakarta',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'HJB -JKM',
                                        style: TextStyle(
                                            color: grey, fontSize: 15),
                                      )
                                    ],
                                  ),
                                  height20,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const Text(
                                        '10.00AM-12.00PM',
                                        style: TextStyle(
                                            color: grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.to(() => const SearchScreen());

                                          //Book now function
                                        },
                                        child: Container(
                                          width: 100,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Row(
                                            children: const [
                                              Text(
                                                'Book Now',
                                                style: TextStyle(
                                                    color: Colors.orange),
                                              ),
                                              Icon(
                                                Icons.arrow_right,
                                                color: Colors.orange,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 20,
                    right: 20,
                    bottom: 400,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          height20,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GroupButton(
                                options: GroupButtonOptions(
                                    selectedColor:
                                        const Color.fromARGB(255, 8, 116, 82),
                                    borderRadius: BorderRadius.circular(20),
                                    buttonWidth: 100,
                                    buttonHeight: 80),
                                isRadio: true,
                                onSelected: (
                                  _,
                                  int index,
                                  bool isSelected,
                                ) =>
                                    log('$index button is selected'),
                                buttons: const [
                                  "One way",
                                  "Round Trip",
                                  "Multy-City",
                                ],
                              ),
                            ],
                          ),
                          height20,
                          Stack(
                            children: [
                              Column(
                                children: const [
                                  OneWayBorderContainer(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  OneWayBorderContainer(),
                                ],
                              ),
                              Positioned(
                                top: 200,
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  color: const Color.fromARGB(255, 32, 14, 12),
                                  height: 100,
                                  width: double.maxFinite,
                                ),
                              ),
                              Positioned(
                                right: 40,
                                top: 40,
                                bottom: 40,
                                child: CircleAvatar(
                                  backgroundColor: Colors.orange[300],
                                  child: const Center(
                                    child: Icon(
                                      Icons.import_export,
                                      color: white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container appBarContainer(
    {required BuildContext context, Widget? text, Widget? circleAvatar}) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/flightbgimg.png'),
          fit: BoxFit.cover),
    ),
    width: MediaQuery.of(context).size.width,
    height: 200,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          text ?? const Text(''),
          const SizedBox(
            width: 20,
          ),
          circleAvatar ?? const SizedBox(),
        ],
      ),
    ),
  );
}


