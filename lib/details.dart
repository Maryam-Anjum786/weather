import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modelclass.dart';

class Details extends StatelessWidget {
  Details({super.key});
  List<Modelclass> details = [
    Modelclass(
        title: "Entertainment",
        icon: Icons.music_note_sharp,
        subtitle: 'A lock is a mechanical or electr- fastening device'),
    Modelclass(
      title: "Door Lock",
      icon: Icons.sensor_door_outlined,
      subtitle: 'A lock is a mechanical or electr- fastening device',
    ),
    Modelclass(
        title: "Garage",
        icon: Icons.garage,
        subtitle: 'Automobile repair workshops that are independently'),
    Modelclass(
        title: "Water",
        icon: Icons.water_drop,
        subtitle:
            'Water is an inorganic, transpar tasteless, odorless and nearly'),
    Modelclass(
        title: "Entertainment",
        icon: Icons.music_note_sharp,
        subtitle:
            'Entertainment is a form of activity that holds the activity'),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      backgroundColor: const Color(0xffEDF1FC),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: width * 0.04,
              right: width * 0.04,
              top: height * 0.055,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: height * 0.035,
                      color: Colors.black,
                    )),
                Container(
                  width: width * 0.11,
                  height: height * 0.056,
                  decoration: BoxDecoration(
                      color: const Color(0xff3B7FEE),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: const Offset(0.1, 0.5),
                            blurRadius: 7)
                      ]),
                  child: const Center(
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.9,
            height: height * 0.86,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: height * 0.022),
                    child: Container(
                      width: width,
                      height: height * 0.15,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x264B4B4B),
                              blurRadius: 15.53,
                              offset: Offset(0, 1.94),
                              spreadRadius: 0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.03),
                            child: Row(
                              children: [
                                Container(
                                  width: width * 0.12,
                                  height: height * 0.062,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffE4ECFF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: Icon(
                                    details[index].icon,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.033,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      details[index].title,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: height * 0.023,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    SizedBox(
                                      width: width * 0.52,
                                      child: Text(
                                        details[index].subtitle,
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            fontSize: height * 0.016,
                                            height: 0),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  width: width * 0.12,
                                  height: height * 0.062,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffE4ECFF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    color: Color(0xff3B7FEE),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
