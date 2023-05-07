import 'package:cinema_plus/widgets/assets_manager.dart';
import 'package:cinema_plus/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Future.delayed(const Duration(seconds: 3), () async {
    //   Navigator.pushReplacement(context,
    //       MaterialPageRoute(builder: (context) => const IntroductionScreen()));
    // });

    // Future.delayed(const Duration(seconds: 2)).then(
    //   (value) {
    //     AppRoutes.popUntil(context, name: AppRoutes.splashScreen);
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThemeColour,
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Transform.rotate(
                angle: 0.10,
                child: Container(
                  height: 300,
                  width: 250,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFFDD084C),
                        Color(0xFFEF3E36),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 330,
              child: Image.asset(ImageAssets.camera),
            ),
          ],
        ),
      ),
    );
  }
}
