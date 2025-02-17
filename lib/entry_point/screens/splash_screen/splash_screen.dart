
import 'package:b2b/constants/image_strings.dart';
import 'package:b2b/constants/sizes.dart';
import 'package:b2b/constants/text_strings.dart';
import 'package:b2b/entry_point/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(()=> AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              top: 80,
              left: splashController.animate.value ? myDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      myAppName,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      myAppTagLine,
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  ],
                ),
              ),
            ),),
          Obx(()=> AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 100 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Center(child: const Image(width: 430,image: AssetImage(myClothesSearching))),
              ),
            ),),
        ],
      ),
    );
  }
}