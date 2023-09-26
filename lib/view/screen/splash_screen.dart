import 'dart:async';
import 'package:ecommerce_store/core/constant/color_const.dart';
import 'package:ecommerce_store/core/constant/image_const.dart';
import 'package:ecommerce_store/core/services/my_services.dart';
import 'package:ecommerce_store/router/binding/on_boarding_binding.dart';
import 'package:ecommerce_store/router/routes.dart';
import 'package:ecommerce_store/view/screen/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  final MyServices myServicesController = Get.find();
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;

  double _opacity = 0;
  bool _value = true;

  @override
  void initState() {
    super.initState();
    scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    )..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            (myServicesController.getBox.read('rankPage') == '1')
                ? Get.offAllNamed(ScreenNames.signUpScreen)
                : Get.offNamed(ScreenNames.onBoardingScreen);
          }
        },
      );

    scaleAnimation =
        Tween<double>(begin: 0.0, end: 12).animate(scaleController);

    Timer(const Duration(milliseconds: 600), () {
      setState(() {
        _opacity = 1.0;
        _value = false;
      });
    });
    Timer(const Duration(milliseconds: 2000), () {
      setState(() {
        scaleController.forward();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Image.asset(
                    ImageConst.myLogo,
                    height: 150,
                    width: 150,
                  )),
            ],
          ),
          Center(
            child: AnimatedOpacity(
              curve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(seconds: 6),
              opacity: _opacity,
              child: AnimatedContainer(
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 2),
                height: _value ? 50 : 200,
                width: _value ? 50 : 200,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurpleAccent.withOpacity(.2),
                      blurRadius: 100,
                      spreadRadius: 10,
                    ),
                  ],
                  color: ColorConst.secondaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: ColorConst.secondaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Stack(alignment: Alignment.center, children: [
                      AnimatedBuilder(
                        animation: scaleAnimation,
                        builder: (c, child) => Transform.scale(
                          scale: scaleAnimation.value,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorConst.secondaryColor,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Ecommerce Store',
                        style: context.textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
