import 'package:flight_booking_ui/constants/colors.dart';
import 'package:flight_booking_ui/constants/sizes.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../home/home_page.dart';
import 'widgets/search_tile_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: grey,
              child: ListView(children: [
                Stack(
                  children: [
                    appBarContainer(context: context),
                    Positioned(
                      top: 20,
                      bottom: 120,
                      left: 10,
                      right: 10,
                      child: CupertinoSearchTextField(
                        backgroundColor: Colors.teal[800],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            Positioned(
              top: 180,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: double.maxFinite,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 235, 235, 240),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
            ),
            Positioned(
                top: 80,
                left: 0,
                right: 0,
                bottom: 0,
                child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemBuilder: ((context, index) {
                      return const SearchTileWidget();
                    }),
                    separatorBuilder: ((context, index) => height20),
                    itemCount: 10)),
          ],
        ),
      ),
    );
  }
}
