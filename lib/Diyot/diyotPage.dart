import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../colors.dart';
import '../constans.dart';
import 'diyotModel.dart';

class DiyotPage extends StatefulWidget {
  const DiyotPage({Key? key}) : super(key: key);

  @override
  State<DiyotPage> createState() => _DiyotPageState();
}

class _DiyotPageState extends State<DiyotPage> {
  List respose = [];
  List sabit = [];
  var select1;
  var select2;
  var select3;
  var count = 0;
  var nesne;
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/data_base/diyot.json');
    final veri = await json.decode(response.toString());
    setState(() {
      sabit = veri.map((e) => DiyotModel.fromJson(e)).toList();
      respose = sabit;
      nesne = respose[1];
    });
  }

  void initState() {
    // TODO: implement initState
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
                                          "ZZK",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      : Text(
                                          "${select1} Ohm",
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
                                        "400 Ohm",
                                      ),
                                      value: "400",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "700 Ohm",
                                      ),
                                      value: "700",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "1000 Ohm",
                                      ),
                                      value: "1000",
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
                                          "IZK",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      : Text(
                                          "${select2} mA",
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
                                        "1,0 mA",
                                      ),
                                      value: "1,0",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "0,5 mA",
                                      ),
                                      value: "0,5",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "0,25 mA",
                                      ),
                                      value: "0,25",
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
                                          "IR",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      : Text(
                                          "${select3} micro A",
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
                                        "100 mikro A",
                                      ),
                                      value: "100",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "10 mikro A",
                                      ),
                                      value: "10",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "5 mikro A",
                                      ),
                                      value: "5",
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
                                  List<DiyotModel> abc = [];

                                  for (var isim in sabit) {
                                    if (isim.zzk == select1 &&
                                        isim.izk == select2 &&
                                        isim.iR == select3) {
                                      abc.add(isim);
                                    }
                                  }
                                  respose = abc;
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
                        diyotTitle,
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
                                                image: AssetImage(diyotGorsel1),
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
                                            "Vz: ${nesne.vz} V",
                                            style: TextStyle(fontSize: 23),
                                          ),
                                          _spacer(),
                                          Text(
                                            "Izt: ${nesne.izt} mA",
                                            style: TextStyle(fontSize: 23),
                                          ),
                                          _spacer(),
                                          Text(
                                            "Zzt at Izk: ${nesne.zztAtIzk} Ohm",
                                            style: TextStyle(fontSize: 23),
                                          ),
                                          _spacer(),
                                          Text(
                                            "Zzk: ${nesne.zzk} Ohm",
                                            style: TextStyle(fontSize: 23),
                                          ),
                                          _spacer(),
                                          Text(
                                            "Izk: ${nesne.izk} mA",
                                            style: TextStyle(fontSize: 23),
                                          ),
                                          _spacer(),
                                          Text(
                                            "Izm: ${nesne.izm} mA",
                                            style: TextStyle(fontSize: 23),
                                          ),
                                          _spacer(),
                                          Text(
                                            "TA: ${nesne.tA} mA",
                                            style: TextStyle(fontSize: 23),
                                          ),
                                          _spacer(),
                                          Text(
                                            "IR: ${nesne.iR} mikro A",
                                            style: TextStyle(fontSize: 23),
                                          ),
                                          _spacer(),
                                          Text(
                                            "VR: ${nesne.vR} V",
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
                                        title: Text("VR: ${respose[index].vR}"),
                                        subtitle:
                                            Text("Izm: ${respose[index].izm}"),
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
