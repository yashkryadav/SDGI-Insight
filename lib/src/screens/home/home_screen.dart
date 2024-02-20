import 'package:flutter/material.dart';
import 'package:sdgi_insight/core/commons/widgets/gradient_background.dart';
import 'package:sdgi_insight/core/res/fonts.dart';
import 'package:sdgi_insight/core/res/media_res.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return const GradientBackground(
      image: MediaRes.homeGradientBackground,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Text(
              'Home Screen',
              style: TextStyle(
                fontFamily: Fonts.poppins,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
