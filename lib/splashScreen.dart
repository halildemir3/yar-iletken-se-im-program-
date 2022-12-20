import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'HomePage/homePage.dart';
import 'colors.dart';
import 'constans.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(splashScreen), fit: BoxFit.fill)),
      child: Stack(
        children: [
          Positioned(
            bottom: 80,
            right: 0,
            child: GestureDetector(
              onTap: () => Get.to(HomePage()),
              child: Container(
                child: Center(
                  child: Text(
                    "Anasayfa'ya Git",
                    style: TextStyle(
                        fontSize: 24, color: Colors.black, inherit: false),
                  ),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [rightMenu, sacffoldBackground],
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    )),
                width: 350,
                height: 60,
              ),
            ),
          )
        ],
      ),
    );
  }
}
