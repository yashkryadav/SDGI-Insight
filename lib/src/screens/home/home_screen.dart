import 'package:flutter/material.dart';
import 'package:sdgi_insight/core/commons/widgets/college_carousal.dart';
import 'package:sdgi_insight/core/commons/widgets/gradient_background.dart';
import 'package:sdgi_insight/core/res/media_res.dart';
import 'package:sdgi_insight/src/screens/home/component/side_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final homeCarousalImages = <String>[
      MediaRes.homePageSliderImg1,
      MediaRes.homePageSliderImg2,
      MediaRes.homePageSliderImg3,
      MediaRes.homePageSliderImg4,
      MediaRes.homePageSliderImg5,
      MediaRes.homePageSliderImg6,
    ];
    return GradientBackground(
      image: MediaRes.leaderboardGradientBackground,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'SDGI Insight',
            style: TextStyle(
              fontFamily: 'SourceSerifPro',
              fontSize: 25,
              color: Color(0xff1B1B1B),
            ),
          ),
          backgroundColor:
              Theme.of(context).colorScheme.inversePrimary.withOpacity(0),
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Image.asset(
                  MediaRes.sdgiLogo,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        drawer: const SafeArea(
          child: SideDrawer(),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            CollegeCarousal(imagePaths: homeCarousalImages),
          ],
        ),
      ),
    );
  }
}
