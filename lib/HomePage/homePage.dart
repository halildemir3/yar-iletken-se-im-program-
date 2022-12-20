import 'package:bitirme_projesi_2/Diyot/diyotPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Mosfet/mosfetPage.dart';
import '../Transistör/transistorPage.dart';
import '../Tristör/tristorPage.dart';
import '../constans.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(anaEkranGorsel), fit: BoxFit.fill)),
      child: Container(
        color: Colors.black.withOpacity(0.7),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  child: MenuItem(
                    photo: diyotGorsel,
                  ),
                  onTap: () => Get.to(DiyotPage()),
                ),
                _spacer(),
                GestureDetector(
                  child: MenuItem(
                    photo: transistorGorsel,
                  ),
                  onTap: () => Get.to(TransistorPage()),
                ),
                _spacer(),
                GestureDetector(
                  child: MenuItem(
                    photo: tristorGorsel,
                  ),
                  onTap: () => Get.to(TristorPage()),
                ),
                _spacer(),
                GestureDetector(
                  child: MenuItem(
                    photo: mosfetGorsel,
                  ),
                  onTap: () => Get.to(MosfetPage()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _spacer() {
    return SizedBox(
      width: 50,
    );
  }
}

class MenuItem extends StatelessWidget {
  final String photo;
  MenuItem({required this.photo}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: anaEkranContainerSize,
      height: anaEkranContainerSize,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(photo), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(20),
          color: Colors.red),
    );
  }
}
