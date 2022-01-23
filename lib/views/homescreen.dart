import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:music/models/constants.dart';
import 'package:music/models/timer.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'dart:math' as math;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
     AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
      ),
    child:Scaffold(
      backgroundColor: kprimarycolor,
      body: Column(
        children: [
          SizedBox(
            height: Get.height * 0.8,
            child: Stack(alignment: AlignmentDirectional.topCenter, children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 40),
                    width: Get.width * 0.175,
                    child: const Icon(Icons.arrow_back_ios_new),
                  ),
                  Container(
                      //margin: const EdgeInsets.only(top: 40),
                      height: Get.height * 0.7,
                      width: Get.width * 0.65,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(130),
                            bottomRight: Radius.circular(130)),
                        image: DecorationImage(
                            image: AssetImage('Assets/back.jpg'),
                            fit: BoxFit.fitHeight),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 3,
                            offset: Offset(0, 8), // Shadow position
                          ),
                        ],
                      )),
                  Container(
                    padding: const EdgeInsets.only(top: 40),
                    width: Get.width * 0.175,
                    child: const Icon(Icons.menu_sharp),
                  ),
                ],
              ),
              Positioned(
                bottom: 50,
                left: Get.width * 0.115,
                child: SleekCircularSlider(
                  appearance: CircularSliderAppearance(
                      size: Get.width * 0.77,
                      angleRange: 140,
                      startAngle: 160,
                      counterClockwise: true,
                      customWidths: CustomSliderWidths(
                        trackWidth: 3,
                        progressBarWidth: 5,
                        shadowWidth: 5,
                        handlerSize: 7,
                      ),
                      infoProperties: InfoProperties(
                          mainLabelStyle:
                              const TextStyle(color: Colors.transparent)),
                      customColors: CustomSliderColors(
                          trackColor: ktrackcolor,
                          progressBarColor: kprogressbarcolor,
                          dotColor: Colors.black)),
                  min: 0,
                  initialValue: 30,
                  onChange: (double v) {},
                ),
              ),
              const Positioned(
                bottom: 10,
                child: TimerWidget(
                  mins: 02,
                  secs: 34,
                ),
              ),
            ]),
          ),
          SizedBox(
            height: Get.height * 0.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Image(
                  image: AssetImage(
                    'Assets/shuffle.png',
                  ),
                  height: 20,
                ),
                SizedBox(
                  width: Get.width * 0.65,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        width: Get.width * 0.6,
                        height: Get.height * 0.075,
                        decoration: BoxDecoration(
                          color: kcontainercolor,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 20,
                              spreadRadius: 2,
                              offset: Offset(-1, 5),
                               // Shadow position
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                        right: 25,
                        child: Image(
                          image: AssetImage(
                            'Assets/fast-forward.png',
                          ),
                          height: 20,
                        ),
                      ),
                       const Positioned(
                        
                        child: Image(
                          image: AssetImage(
                            'Assets/play.png',
                          ),
                          height: 75,
                        ),
                      ),
                      Positioned(
                        left: 45,
                        child: Transform(
                          // alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),

                          child: const Image(
                            image: AssetImage(
                              'Assets/fast-forward.png',
                            ),
                            height: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Image(
                  image: AssetImage(
                    'Assets/repeat.png',
                  ),
                  height: 19,
                ),
              ],
            ),
          ),
        ],
      ),
    ),);
  }
}
