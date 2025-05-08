import 'package:flutter/material.dart';
import 'package:instagramclone/responsive/dimesons.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key, required this.Webscreen, required this.MobileScreenLayout});

  final Widget Webscreen;
  final Widget MobileScreenLayout;

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          return Webscreen;
        } else {
          return MobileScreenLayout;
        }
      },
    );
  }
}