import 'package:flutter/material.dart';
import 'package:instagramclone/responsive/mobilescreen.dart';
import 'package:instagramclone/responsive/webscreen.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Webscreen();
        } else {
          return MobileScreenLayout();
        }
      },
    );
  }
}