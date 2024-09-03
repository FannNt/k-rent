import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';



class HomeView extends GetView<HomeController> {
    const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenWidth = mediaQueryData.size.width;
    double screenHeight = mediaQueryData.size.height;
return MaterialApp(
      home: Scaffold(
        body:   
         Container(
    width: screenWidth,
    height: screenHeight,
    clipBehavior: Clip.antiAlias,
    decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF0766AD), Color(0xFFCCA44C), Color(0xFFD9D9D9)],
        ),
    ),
    child: Stack(
        children: [
            Positioned(
                left: 25,
                top: 235,
                child: Container(
                    width: 310,
                    height: 310,
                    decoration: const ShapeDecoration(
                        shape: OvalBorder(
                            side: BorderSide(width: 3, color: Color(0xFFD9D9D9)),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 85,
                top: 295,
                child: Container(
                    width: 190,
                    height: 190,
                    decoration: const ShapeDecoration(
                        shape: OvalBorder(
                            side: BorderSide(width: 3, color: Color(0xFFD9D9D9)),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 7,
                top: 340,
                child: Container(
                    width: 50,
                    height: 50,
                    decoration: const ShapeDecoration(
                        color: Color(0xFF6895D2),
                        shape: OvalBorder(
                            side: BorderSide(width: 3, color: Color(0xFFD9D9D9)),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 280,
                top: 271,
                child: Container(
                    width: 37,
                    height: 37,
                    decoration: const ShapeDecoration(
                        color: Color(0xFFD04848),
                        shape: OvalBorder(
                            side: BorderSide(width: 3, color: Color(0xFFD9D9D9)),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 313,
                top: 400,
                child: Container(
                    width: 37,
                    height: 37,
                    decoration: const ShapeDecoration(
                        color: Color(0xFF6895D2),
                        shape: OvalBorder(
                            side: BorderSide(width: 3, color: Color(0xFFD9D9D9)),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 57,
                top: 483,
                child: Container(
                    width: 37,
                    height: 37,
                    decoration: const ShapeDecoration(
                        color: Color(0xFFFCD062),
                        shape: OvalBorder(
                            side: BorderSide(width: 3, color: Color(0xFFD9D9D9)),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: -312,
                top: 73,
                child: Container(
                    width: 1000,
                    height: 1000,
                    decoration: const ShapeDecoration(
                        shape: OvalBorder(
                            side: BorderSide(width: 3, color: Color(0xFFD9D9D9)),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 25,
                top: 77,
                child: Container(
                    width: 50,
                    height: 50,
                    decoration: const ShapeDecoration(
                        color: Color(0xFFD04848),
                        shape: OvalBorder(
                            side: BorderSide(width: 3, color: Color(0xFFD9D9D9)),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 27,
                top: 719,
                child: GestureDetector(
                    onTap: () {
                      Get.toNamed("/login");
                    },
                child: Container(
                    width: 305,
                    height: 45,
                    decoration: ShapeDecoration(
                        color: const Color(0xFF191919),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                        ),
                    ),
                    child:const Center(
                    child: Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0,
                    ),
                ),
                    )
                ),
            ),
            ),
            Positioned(
                left: 156,
                top: 586,
                child: Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
            ),
            Positioned(
                left: 150,
                top: 359,
                child: Container(
                    width: 61,
                    height: 61,
                    decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
            ),
            const Positioned(
                left: 83,
                top: 639,
                child: Text(
                    'Find your item here',
                    style: TextStyle(
                        color: Color(0xFF191919),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                    ),
                ),
            ),
            Positioned(
                left: 88,
                top: 222,

                child: Container(
                    width: 58,
                    height: 59,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/58x59"),
                            fit: BoxFit.fill,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 239.14,
                top: 495.80,
                child: Transform(
                    transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.52),
                    child: Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage("https://via.placeholder.com/45x45"),
                                fit: BoxFit.fill,
                            ),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 225.03,
                top: 51,
                child: Transform(
                    transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.19),
                    child: Container(
                        width: 80,
                        height: 73,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage("https://via.placeholder.com/80x73"),
                                fit: BoxFit.fill,
                            ),
                        ),
                    ),
                ),
            ),
        ],
    ),
)
    )
  );
}
}