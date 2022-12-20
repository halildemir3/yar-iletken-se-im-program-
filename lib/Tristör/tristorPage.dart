import 'dart:convert';

import 'package:bitirme_projesi_2/Trist%C3%B6r/tristorModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../colors.dart';
import '../constans.dart';

class TristorPage extends StatefulWidget {
  const TristorPage({Key? key}) : super(key: key);

  @override
  State<TristorPage> createState() => _TristorPageState();
}

class _TristorPageState extends State<TristorPage> {
  List respose = [];
  List sabit = [];
  var select1;
  var select2;
  var select3;
  var count = 0;

  var nesne;
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/data_base/tristor.json');
    final veri = await json.decode(response.toString());
    setState(() {
      sabit = veri.map((e) => TristorModel.fromJson(e)).toList();
      respose = sabit;
      nesne = respose[1];
    });
  }

  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sacffoldBackground,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 200, bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 50,
                        color: backIconColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: Colors.white, width: 1)),
                              child: DropdownButton(
                                  underline: SizedBox(),
                                  isDense: true,
                                  hint: select1 == null
                                      ? Text(
                                          "VDRM",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      : Text(
                                          "${select1} V",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                  dropdownColor: Colors.white,
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                  iconSize: 40,
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        "650 V",
                                      ),
                                      value: "650",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "1200 V",
                                      ),
                                      value: "1200",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "1600 V",
                                      ),
                                      value: "1600",
                                    )
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      select1 = value;
                                    });
                                  }),
                            ),
                            _spacerLarge(),
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: Colors.white, width: 1)),
                              child: DropdownButton(
                                  underline: SizedBox(),
                                  isDense: true,
                                  hint: select2 == null
                                      ? Text(
                                          "VRRM",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      : Text(
                                          "${select2} V",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                  dropdownColor: Colors.white,
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                  iconSize: 40,
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        "650 V",
                                      ),
                                      value: "650",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "1200 V",
                                      ),
                                      value: "1200",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "1600 V",
                                      ),
                                      value: "1600",
                                    )
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      select2 = value;
                                    });
                                  }),
                            ),
                            _spacerLarge(),
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: Colors.white, width: 1)),
                              child: DropdownButton(
                                  underline: SizedBox(),
                                  isDense: true,
                                  hint: select3 == null
                                      ? Text(
                                          "ITSM",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      : Text(
                                          "${select3} A",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                  dropdownColor: Colors.white,
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                  iconSize: 40,
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        "180  A",
                                      ),
                                      value: "180",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "200  A",
                                      ),
                                      value: "200",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "280  A",
                                      ),
                                      value: "280",
                                    )
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      select3 = value;
                                    });
                                  }),
                            ),
                            _spacerLarge(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  count = 0;
                                  List<TristorModel> abc = [];

                                  for (var isim in sabit) {
                                    if (isim.vdrm == select1 &&
                                        isim.vrrm == select2 &&
                                        isim.itsm == select3) {
                                      abc.add(isim);
                                    }
                                  }
                                  respose = abc;
                                  nesne = respose[0];
                                });
                              },
                              child: Container(
                                width: 300,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(child: Text("Uygula")),
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: leftMenu,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 8,
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Center(
                          child: Text(
                        tristorTitle,
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: titleColor),
                      ))),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 25.0, left: 25, bottom: 50),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                nesne.ad,
                                style: TextStyle(fontSize: 50),
                              ),
                              _spacer(),
                              _spacer(),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: Container(
                                        width: 400,
                                        height: 400,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage(tristorGorsel1),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 50.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "VDRM: ${nesne.vdrm} V",
                                            style: TextStyle(fontSize: 23),
                                          ),
                                          _spacer(),
                                          Text(
                                            "VRRM: ${nesne.vrrm} V",
                                            style: TextStyle(fontSize: 23),
                                          ),
                                          _spacer(),
                                          Text(
                                            "ITSM: ${nesne.itsm} A",
                                            style: TextStyle(fontSize: 23),
                                          ),
                                          _spacer(),
                                          Text(
                                            "ITAV: ${nesne.itav} A",
                                            style: TextStyle(fontSize: 23),
                                          ),
                                          _spacer(),
                                          Text(
                                            "ITRMS: ${nesne.itrms} A",
                                            style: TextStyle(fontSize: 23),
                                          ),
                                          _spacer(),
                                          Text(
                                            "IGT: ${nesne.igt} A",
                                            style: TextStyle(fontSize: 23),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                      flex: 15,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 0.0),
                            child: ListView.builder(
                                itemCount:
                                    respose.length == 0 ? 1 : respose.length,
                                itemBuilder: (BuildContext context, int index) {
                                  if (respose.isNotEmpty) {
                                    return Card(
                                      color: count == index
                                          ? sacffoldBackground
                                          : null,
                                      key: ValueKey(respose[index].ad),
                                      margin: const EdgeInsets.all(2),
                                      child: ListTile(
                                        onTap: () {
                                          setState(() {
                                            count = index;
                                            nesne = respose[index];
                                          });
                                        },
                                        leading: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 40, left: 5),
                                          child: Text(
                                            respose[index].ad,
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                        title: Text(
                                            "VDRM: ${respose[index].vdrm}"),
                                        subtitle: Text(
                                            "ITSM: ${respose[index].itsm}"),
                                      ),
                                    );
                                  } else {
                                    return Center(
                                        child: Padding(
                                      padding: const EdgeInsets.only(top: 30.0),
                                      child: Text(
                                        "Sonuç bulunamadı",
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 20),
                                      ),
                                    ));
                                  }
                                }),
                          ),
                          decoration: BoxDecoration(
                              color: rightMenu,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                              )),
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Center(
                          child: Text(
                        "${respose.length}",
                        style: TextStyle(
                            color: titleColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  SizedBox _spacer() {
    return SizedBox(
      height: 15,
    );
  }

  SizedBox _spacerLarge() {
    return SizedBox(
      height: 25,
    );
  }
}
