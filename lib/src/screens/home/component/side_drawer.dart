import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sdgi_insight/core/res/fonts.dart';
import 'package:sdgi_insight/core/res/media_res.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            child: Image.asset(
              MediaRes.sdgiBanner,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.book,
                    color: Color(0xff111d5e),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      textAlign: TextAlign.start,
                      'Courses',
                      style: TextStyle(fontSize: 17, fontFamily: Fonts.poppins),
                    ),
                  ),
                  onTap: () {
                    // Handle item 1 tap
                  },
                ),
                ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.graduationCap,
                    color: Color(0xff111d5e),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      textAlign: TextAlign.start,
                      'Academics',
                      style: TextStyle(fontSize: 17, fontFamily: Fonts.poppins),
                    ),
                  ),
                  onTap: () {
                    // Handle item 2 tap
                  },
                ),
                ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.briefcase,
                    color: Color(0xff111d5e),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      textAlign: TextAlign.start,
                      'Placements',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: Fonts.poppins,
                      ),
                    ),
                  ),
                  onTap: () {
                    // Handle item 3 tap
                  },
                ),
                ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.heartCircleBolt,
                    color: Color(0xff111d5e),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      textAlign: TextAlign.start,
                      'Life@SDGI',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: Fonts.poppins,
                      ),
                    ),
                  ),
                  onTap: () {
                    // Handle item 3 tap
                  },
                ),
                ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.buildingCircleCheck,
                    color: Color(0xff111d5e),
                  ),
                  title: const Text(
                    textAlign: TextAlign.start,
                    'About SDGI',
                    style: TextStyle(fontSize: 17, fontFamily: Fonts.poppins),
                  ),
                  onTap: () {
                    // Handle item 3 tap
                  },
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text(
              'Developed by Yash Yadav with ❤',
              style: TextStyle(
                fontSize: 14,
                fontFamily: Fonts.poppins,
                color: Colors.grey,
              ),
            ),
            onTap: () {
              // Handle developer information tap
            },
          ),
        ],
      ),
    );
  }
}
