import 'package:flutter/material.dart';

class Flowers extends StatelessWidget {
  const Flowers({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: width * 0.05,
              right: width * 0.05,
              top: height * 0.04,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.black,
                  size: height*0.025,
                ),
                const Spacer(),
                Icon(
                  Icons.search,
                  color: Colors.black,
                  size: height*0.03,
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: height*0.03,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.05,top: height*0.022),
            child: Text(
              'Strelitzia',
              style: TextStyle(
                color: Colors.black,
                fontSize: height * 0.029,
                fontWeight: FontWeight.bold,
                height: 0,
                letterSpacing: 1
              ),
            ),
          ),
          SizedBox(
            height: height * 0.019,
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width * 0.52,
                      height: height * 0.35,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://images.pexels.com/photos/1562262/pexels-photo-1562262.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.065,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BLOOMING',
                          style: TextStyle(
                            color: const Color(0xff9C9C9C),
                            fontSize: height*0.016,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            height: 0
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.local_florist_outlined,
                              color: Color(0xffF56702),
                            ),
                            SizedBox(
                              width: width * 0.015,
                            ),
                            Text(
                              '3 Years',
                              style: TextStyle(
                                color: const Color(0xff373737),
                                fontSize: height*0.02,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        Text(
                          'ENVIRONMENT',
                          style: TextStyle(
                            color: const Color(0xff9C9C9C),
                            fontSize: height*0.016,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            height: 0
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.sunny,
                              color: Color(0xffF56702),
                            ),
                            SizedBox(
                              width: width * 0.015,
                            ),
                            Text(
                              'Full Sun',
                              style: TextStyle(
                                color: const Color(0xff373737),
                                fontSize: height*0.02,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        Text(
                          'SIZE',
                          style: TextStyle(
                            color: const Color(0xff9C9C9C),
                            fontSize: height*0.016,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            height: 0
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.crop,
                              color: Color(0xffF56702),
                            ),
                            SizedBox(
                              width: width * 0.015,
                            ),
                            Text(
                              'Avr. 80cm',
                              style: TextStyle(
                                color: const Color(0xff373737),
                                fontSize: height*0.02,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: height * 0.25,
                left: width * 0.475,
                child: Center(
                  child: Container(
                    width: width * 0.4,
                    height: height * 0.065,
                    decoration: const BoxDecoration(
                      color: Color(0xffFCE0CC),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Learn More',
                          style: TextStyle(
                            color: Color(0xffE2701D),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: width*0.06,),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xffE2701D),
                          size: height*0.023,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Text(
              'Strelitzia is a genus of five species of perennial plants, native to South Africa. It belongs to the plant family Strelitziaceae.',
              style: TextStyle(
                color: const Color(0xff7B7B7B),
                fontSize: height * 0.02,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: height * 0.035,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Text(
              'From Same Family',
              style: TextStyle(
                color: Colors.black,
                fontSize: height * 0.029,
                fontWeight: FontWeight.bold,
                height: 0,
                letterSpacing: 1
              ),
            ),
          ),
          SizedBox(height: height*0.01,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.03),
            child: SizedBox(
              width: width,
              height: height * 0.28,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: width * 0.03),
                    child: SizedBox(
                      height: height,
                      width: width * 0.43,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: width * 0.43,
                              height: height * 0.23,
                              decoration: const BoxDecoration(
                                color: Color(0xffF3E8F9),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Helianthus',
                                    style: TextStyle(
                                      color: const Color(0xffA98BB7),
                                      fontSize: height * 0.02,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: width * 0.025,
                            right: width * 0.025,
                            top: height * 0.015,
                            child: Container(
                              width: width,
                              height: height * 0.22,
                              decoration: const BoxDecoration(
                                color: Color(0xffE8D6F0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/heli.png')),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
