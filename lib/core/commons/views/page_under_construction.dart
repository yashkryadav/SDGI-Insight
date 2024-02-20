import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sdgi_insight/core/commons/widgets/gradient_background.dart';
import 'package:sdgi_insight/core/res/media_res.dart';

class PageUnderConstruction extends StatelessWidget {
  const PageUnderConstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        image: MediaRes.homeScreenBackground,
        child: Center(child: Lottie.asset(MediaRes.pageUnderConstruction)),
      ),
    );
  }
}
