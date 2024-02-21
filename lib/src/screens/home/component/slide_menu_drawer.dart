import 'package:flutter/material.dart';
import 'package:sdgi_insight/core/commons/widgets/gradient_background.dart';
import 'package:sdgi_insight/core/res/media_res.dart';

class SlideMenuDrawer extends StatefulWidget {
  const SlideMenuDrawer({super.key});

  @override
  State<SlideMenuDrawer> createState() => _SlideMenuDrawerState();
}

class _SlideMenuDrawerState extends State<SlideMenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return const GradientBackground(
      image: MediaRes.profileGradientBackground,
      child: Scaffold(),
    );
  }
}
