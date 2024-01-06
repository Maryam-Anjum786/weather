import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/details.dart';

import 'controller.dart';
import 'modelclass.dart';

class Cloudy extends StatelessWidget {
  Cloudy({super.key});
  final Controller controller = Get.put(Controller());
  List<Modelclass> dailyprogress = [
    Modelclass(
        title: "Light Bulbs",
        icon: Icons.lightbulb_outline_sharp,
        subtitle: 'Philips hue 2'),
    Modelclass(
      title: "Smart TV",
      icon: Icons.tv_sharp,
      subtitle: 'Walton ZZ HD',
    ),
    Modelclass(
        title: "Refrigerator",
        icon: Icons.dashboard_customize_outlined,
        subtitle: 'Mitsubishi 25.5 ml'),
    Modelclass(
        title: "Wi-Fi Router ",
        icon: Icons.router_outlined,
        subtitle: 'Tp Link'),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
      backgroundColor: const Color(0xffEDF1FC),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: height * 0.309,
              decoration: const BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x264B4B4B),
                      blurRadius: 15.53,
                      offset: Offset(0, 1.94),
                      spreadRadius: 0,
                    )
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.056,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.cloudy_snowing,
                          color: const Color(0xffFFAB2E),
                          size: height * 0.05,
                        ),
                        SizedBox(
                          width: width * 0.025,
                        ),
                        Column(
                          children: [
                            Text(
                              '12 July',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.3),
                              ),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              'Cloudy',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height * 0.023,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          width: width * 0.117,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                              color: const Color(0xff3B7FEE),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.6),
                                    offset: const Offset(0.0, 0.6),
                                    blurRadius: 5)
                              ]),
                          child: const Center(
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      'General Information',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.019,
                          fontWeight: FontWeight.w500,
                          height: 0),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.02, vertical: height * 0.024),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              const Icon(
                                Icons.water_drop,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Rainy',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.3)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '25°C',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Indoor Temp',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.3)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '20°C',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Outdoor Temp',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.3)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.019,
            ),
            DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    TabBar(
                        padding: EdgeInsets.only(left: width * 0.03),
                        tabAlignment: TabAlignment.start,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black.withOpacity(0.3),
                        indicatorColor: Colors.black,
                        indicatorWeight: 0.5,
                        isScrollable: true,
                        dividerColor: Colors.transparent,
                        tabs: const [
                          Tab(
                            text: 'Living Room',
                          ),
                          Tab(
                            text: 'Kitchen',
                          ),
                          Tab(
                            text: 'Drawing Room',
                          ),
                          Tab(
                            text: 'Bathroom',
                          ),
                        ])
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.045),
              child: SizedBox(
                height: height * 0.55,
                width: width,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 18,
                            childAspectRatio: 0.97,
                            crossAxisSpacing: 18),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Obx(() => InkWell(
                            onTap: () {
                              controller.selectedContIndex.value = index;
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: controller.selectedContIndex.value ==
                                          index
                                      ? const Color(0xff3A81F7)
                                      : Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x264B4B4B),
                                      blurRadius: 15.53,
                                      offset: Offset(0, 1.94),
                                      spreadRadius: 0,
                                    )
                                  ]),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.04),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: height * 0.027,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          dailyprogress[index].icon,
                                          color: controller.selectedContIndex
                                                      .value ==
                                                  index
                                              ? Colors.white
                                              : Colors.black.withOpacity(0.7),
                                          size: 37,
                                        ),
                                        Transform.scale(
                                          scale: 0.8,
                                          child: Switch(
                                            value: controller.isSelected[index],
                                            onChanged: (value) {
                                              controller.toggleIcon(index);
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.035,
                                    ),
                                    Text(
                                      dailyprogress[index].title,
                                      style: TextStyle(
                                          color: controller.selectedContIndex
                                                      .value ==
                                                  index
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: height * 0.022,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      dailyprogress[index].subtitle,
                                      style: TextStyle(
                                        color: controller
                                                    .selectedContIndex.value ==
                                                index
                                            ? Colors.white
                                            : Colors.black.withOpacity(0.3),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ));
                    }),
              ),
            ),
            Container(
              width: width,
              height: height * 0.18,
              decoration: const BoxDecoration(
                color: Color(0xff3A81F7),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: height * 0.03,
                    left: width * 0.05,
                    right: width * 0.051),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Quick remote access',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.026,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Turn right to get fast access to your\nwireless remote control',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: height * 0.015,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(Details());
                      },
                      child: Container(
                        width: width * 0.14,
                        height: height * 0.14,
                        decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Color(0xff3A81F7),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
