import 'package:flutter/material.dart';
import 'package:sdgi_insight/core/res/media_res.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset(
              MediaRes.sdgiBanner,
            ),
          ),
          ListTile(
            title: const Text('Courses'),
            onTap: () {
              // Handle item 1 tap
            },
          ),
          ListTile(
            title: const Text('Academics'),
            onTap: () {
              // Handle item 2 tap
            },
          ),
          ListTile(
            title: const Text('Placements'),
            onTap: () {
              // Handle item 3 tap
            },
          ),
          ListTile(
            title: const Text('Life@SDGI'),
            onTap: () {
              // Handle item 3 tap
            },
          ),
          ListTile(
            title: const Text('About SDGI'),
            onTap: () {
              // Handle item 3 tap
            },
          ),
        ],
      ),
    );
  }
}
